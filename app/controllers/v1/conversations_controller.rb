class V1::ConversationsController < ApiController
  before_action :authenticate_v1_user!

  # [GET] Conversations
  def index
    conversations = current_v1_user.conversations.uniq
    render json: conversations
  end

  def create
    # Find conversations with the other user
    conversations = current_v1_user.conversations.uniq.select{ |x| x.participants.pluck(:user_id).include?(params[:user_id]) }

    # if conversations were found, return the first one
    # else create a new one and return it
    if conversations.size > 0
      conversation = conversations.first
    else
      # Create the conversation
      conversation = Conversation.create
      # Create the participants
      conversation.participants.create([ {user: current_v1_user}, {user_id: params[:user_id]} ])
    end

    render json: conversation
  end

  def show
    # Find conversation
    conversation = current_v1_user.conversations.find(params[:id])

    # Order messages by created_at date at a descending order
    messages = conversation.messages.order('messages.created_at desc')

    # if a date is provided, take only messages that are before that date
    messages = messages.where('messages.created_at < ?', params[:date]) if params[:date]

    # get how much messages are left
    left_messages_count = messages.size - 20

    # Take first 20 messages
    messages = messages.first(20)

    # Build a link to get previous message
    get_more_link = v1_get_messages_path(id:params[:id], date: messages.last.created_at) if left_messages_count > 0

    render json: {
      conversation: conversation,
      messages: messages,
      get_more: get_more_link
    }
  end

  def add
    participant = current_v1_user.conversation_participants.where(conversation_id: params[:id]).first
    message = participant.messages.new(text: params[:text])
    render json: message, status: message.save ? 200 : 400
  end

end