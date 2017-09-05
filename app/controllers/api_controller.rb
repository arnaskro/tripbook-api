class ApiController < ApplicationController
  before_action :set_default_format

  def hello_world
    data = {
      title: "Hello, world!",
      text: "Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec sollicitudin molestie malesuada. Nulla porttitor accumsan tincidunt.\n\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Cras ultricies ligula sed magna dictum porta. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt.\n\nDonec sollicitudin molestie malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Quisque velit nisi, pretium ut lacinia in, elementum id enim.",
      image: "https://i.imgur.com/JkSqWDF.jpg",
      tags: ["helloworld", "newproject", "bachelor", "tripbook"],
      random: 100.times.map{ Random.rand(99) } 
    }
    render json: data, status: :ok
  end

  private 

    def set_default_format
      request.format = :json
    end

end