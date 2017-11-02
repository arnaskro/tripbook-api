Country.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('countries')
Country.create([
  {
    "name": "Andorra",
    "capital": "Andorra la Vella",
    "key": "AD"
  },
  {
    "name": "United Arab Emirates",
    "capital": "Abu Dhabi",
    "key": "AE"
  },
  {
    "name": "Afghanistan",
    "capital": "Kabul",
    "key": "AF"
  },
  {
    "name": "Antigua and Barbuda",
    "capital": "Saint John's",
    "key": "AG"
  },
  {
    "name": "Anguilla",
    "capital": "The Valley",
    "key": "AI"
  },
  {
    "name": "Albania",
    "capital": "Tirana",
    "key": "AL"
  },
  {
    "name": "Armenia",
    "capital": "Yerevan",
    "key": "AM"
  },
  {
    "name": "Angola",
    "capital": "Luanda",
    "key": "AO"
  },
  {
    "name": "Antarctica",
    "capital": "",
    "key": "AQ"
  },
  {
    "name": "Argentina",
    "capital": "Buenos Aires",
    "key": "AR"
  },
  {
    "name": "American Samoa",
    "capital": "Pago Pago",
    "key": "AS"
  },
  {
    "name": "Austria",
    "capital": "Vienna",
    "key": "AT"
  },
  {
    "name": "Australia",
    "capital": "Canberra",
    "key": "AU"
  },
  {
    "name": "Aruba",
    "capital": "Oranjestad",
    "key": "AW"
  },
  {
    "name": "Åland",
    "capital": "Mariehamn",
    "key": "AX"
  },
  {
    "name": "Azerbaijan",
    "capital": "Baku",
    "key": "AZ"
  },
  {
    "name": "Bosnia and Herzegovina",
    "capital": "Sarajevo",
    "key": "BA"
  },
  {
    "name": "Barbados",
    "capital": "Bridgetown",
    "key": "BB"
  },
  {
    "name": "Bangladesh",
    "capital": "Dhaka",
    "key": "BD"
  },
  {
    "name": "Belgium",
    "capital": "Brussels",
    "key": "BE"
  },
  {
    "name": "Burkina Faso",
    "capital": "Ouagadougou",
    "key": "BF"
  },
  {
    "name": "Bulgaria",
    "capital": "Sofia",
    "key": "BG"
  },
  {
    "name": "Bahrain",
    "capital": "Manama",
    "key": "BH"
  },
  {
    "name": "Burundi",
    "capital": "Bujumbura",
    "key": "BI"
  },
  {
    "name": "Benin",
    "capital": "Porto-Novo",
    "key": "BJ"
  },
  {
    "name": "Saint Barthélemy",
    "capital": "Gustavia",
    "key": "BL"
  },
  {
    "name": "Bermuda",
    "capital": "Hamilton",
    "key": "BM"
  },
  {
    "name": "Brunei",
    "capital": "Bandar Seri Begawan",
    "key": "BN"
  },
  {
    "name": "Bolivia",
    "capital": "Sucre",
    "key": "BO"
  },
  {
    "name": "Bonaire",
    "capital": "Kralendijk",
    "key": "BQ"
  },
  {
    "name": "Brazil",
    "capital": "Brasília",
    "key": "BR"
  },
  {
    "name": "Bahamas",
    "capital": "Nassau",
    "key": "BS"
  },
  {
    "name": "Bhutan",
    "capital": "Thimphu",
    "key": "BT"
  },
  {
    "name": "Bouvet Island",
    "capital": "",
    "key": "BV"
  },
  {
    "name": "Botswana",
    "capital": "Gaborone",
    "key": "BW"
  },
  {
    "name": "Belarus",
    "capital": "Minsk",
    "key": "BY"
  },
  {
    "name": "Belize",
    "capital": "Belmopan",
    "key": "BZ"
  },
  {
    "name": "Canada",
    "capital": "Ottawa",
    "key": "CA"
  },
  {
    "name": "Cocos [Keeling] Islands",
    "capital": "West Island",
    "key": "CC"
  },
  {
    "name": "Democratic Republic of the Congo",
    "capital": "Kinshasa",
    "key": "CD"
  },
  {
    "name": "Central African Republic",
    "capital": "Bangui",
    "key": "CF"
  },
  {
    "name": "Republic of the Congo",
    "capital": "Brazzaville",
    "key": "CG"
  },
  {
    "name": "Switzerland",
    "capital": "Bern",
    "key": "CH"
  },
  {
    "name": "Ivory Coast",
    "capital": "Yamoussoukro",
    "key": "CI"
  },
  {
    "name": "Cook Islands",
    "capital": "Avarua",
    "key": "CK"
  },
  {
    "name": "Chile",
    "capital": "Santiago",
    "key": "CL"
  },
  {
    "name": "Cameroon",
    "capital": "Yaoundé",
    "key": "CM"
  },
  {
    "name": "China",
    "capital": "Beijing",
    "key": "CN"
  },
  {
    "name": "Colombia",
    "capital": "Bogotá",
    "key": "CO"
  },
  {
    "name": "Costa Rica",
    "capital": "San José",
    "key": "CR"
  },
  {
    "name": "Cuba",
    "capital": "Havana",
    "key": "CU"
  },
  {
    "name": "Cape Verde",
    "capital": "Praia",
    "key": "CV"
  },
  {
    "name": "Curacao",
    "capital": "Willemstad",
    "key": "CW"
  },
  {
    "name": "Christmas Island",
    "capital": "Flying Fish Cove",
    "key": "CX"
  },
  {
    "name": "Cyprus",
    "capital": "Nicosia",
    "key": "CY"
  },
  {
    "name": "Czech Republic",
    "capital": "Prague",
    "key": "CZ"
  },
  {
    "name": "Germany",
    "capital": "Berlin",
    "key": "DE"
  },
  {
    "name": "Djibouti",
    "capital": "Djibouti",
    "key": "DJ"
  },
  {
    "name": "Denmark",
    "capital": "Copenhagen",
    "key": "DK"
  },
  {
    "name": "Dominica",
    "capital": "Roseau",
    "key": "DM"
  },
  {
    "name": "Dominican Republic",
    "capital": "Santo Domingo",
    "key": "DO"
  },
  {
    "name": "Algeria",
    "capital": "Algiers",
    "key": "DZ"
  },
  {
    "name": "Ecuador",
    "capital": "Quito",
    "key": "EC"
  },
  {
    "name": "Estonia",
    "capital": "Tallinn",
    "key": "EE"
  },
  {
    "name": "Egypt",
    "capital": "Cairo",
    "key": "EG"
  },
  {
    "name": "Western Sahara",
    "capital": "El Aaiún",
    "key": "EH"
  },
  {
    "name": "Eritrea",
    "capital": "Asmara",
    "key": "ER"
  },
  {
    "name": "Spain",
    "capital": "Madrid",
    "key": "ES"
  },
  {
    "name": "Ethiopia",
    "capital": "Addis Ababa",
    "key": "ET"
  },
  {
    "name": "Finland",
    "capital": "Helsinki",
    "key": "FI"
  },
  {
    "name": "Fiji",
    "capital": "Suva",
    "key": "FJ"
  },
  {
    "name": "Falkland Islands",
    "capital": "Stanley",
    "key": "FK"
  },
  {
    "name": "Micronesia",
    "capital": "Palikir",
    "key": "FM"
  },
  {
    "name": "Faroe Islands",
    "capital": "Tórshavn",
    "key": "FO"
  },
  {
    "name": "France",
    "capital": "Paris",
    "key": "FR"
  },
  {
    "name": "Gabon",
    "capital": "Libreville",
    "key": "GA"
  },
  {
    "name": "United Kingdom",
    "capital": "London",
    "key": "GB"
  },
  {
    "name": "Grenada",
    "capital": "St. George's",
    "key": "GD"
  },
  {
    "name": "Georgia",
    "capital": "Tbilisi",
    "key": "GE"
  },
  {
    "name": "French Guiana",
    "capital": "Cayenne",
    "key": "GF"
  },
  {
    "name": "Guernsey",
    "capital": "St. Peter Port",
    "key": "GG"
  },
  {
    "name": "Ghana",
    "capital": "Accra",
    "key": "GH"
  },
  {
    "name": "Gibraltar",
    "capital": "Gibraltar",
    "key": "GI"
  },
  {
    "name": "Greenland",
    "capital": "Nuuk",
    "key": "GL"
  },
  {
    "name": "Gambia",
    "capital": "Banjul",
    "key": "GM"
  },
  {
    "name": "Guinea",
    "capital": "Conakry",
    "key": "GN"
  },
  {
    "name": "Guadeloupe",
    "capital": "Basse-Terre",
    "key": "GP"
  },
  {
    "name": "Equatorial Guinea",
    "capital": "Malabo",
    "key": "GQ"
  },
  {
    "name": "Greece",
    "capital": "Athens",
    "key": "GR"
  },
  {
    "name": "South Georgia and the South Sandwich Islands",
    "capital": "King Edward Point",
    "key": "GS"
  },
  {
    "name": "Guatemala",
    "capital": "Guatemala City",
    "key": "GT"
  },
  {
    "name": "Guam",
    "capital": "Hagåtña",
    "key": "GU"
  },
  {
    "name": "Guinea-Bissau",
    "capital": "Bissau",
    "key": "GW"
  },
  {
    "name": "Guyana",
    "capital": "Georgetown",
    "key": "GY"
  },
  {
    "name": "Hong Kong",
    "capital": "City of Victoria",
    "key": "HK"
  },
  {
    "name": "Heard Island and McDonald Islands",
    "capital": "",
    "key": "HM"
  },
  {
    "name": "Honduras",
    "capital": "Tegucigalpa",
    "key": "HN"
  },
  {
    "name": "Croatia",
    "capital": "Zagreb",
    "key": "HR"
  },
  {
    "name": "Haiti",
    "capital": "Port-au-Prince",
    "key": "HT"
  },
  {
    "name": "Hungary",
    "capital": "Budapest",
    "key": "HU"
  },
  {
    "name": "Indonesia",
    "capital": "Jakarta",
    "key": "ID"
  },
  {
    "name": "Ireland",
    "capital": "Dublin",
    "key": "IE"
  },
  {
    "name": "Israel",
    "capital": "Jerusalem",
    "key": "IL"
  },
  {
    "name": "Isle of Man",
    "capital": "Douglas",
    "key": "IM"
  },
  {
    "name": "India",
    "capital": "New Delhi",
    "key": "IN"
  },
  {
    "name": "British Indian Ocean Territory",
    "capital": "Diego Garcia",
    "key": "IO"
  },
  {
    "name": "Iraq",
    "capital": "Baghdad",
    "key": "IQ"
  },
  {
    "name": "Iran",
    "capital": "Tehran",
    "key": "IR"
  },
  {
    "name": "Iceland",
    "capital": "Reykjavik",
    "key": "IS"
  },
  {
    "name": "Italy",
    "capital": "Rome",
    "key": "IT"
  },
  {
    "name": "Jersey",
    "capital": "Saint Helier",
    "key": "JE"
  },
  {
    "name": "Jamaica",
    "capital": "Kingston",
    "key": "JM"
  },
  {
    "name": "Jordan",
    "capital": "Amman",
    "key": "JO"
  },
  {
    "name": "Japan",
    "capital": "Tokyo",
    "key": "JP"
  },
  {
    "name": "Kenya",
    "capital": "Nairobi",
    "key": "KE"
  },
  {
    "name": "Kyrgyzstan",
    "capital": "Bishkek",
    "key": "KG"
  },
  {
    "name": "Cambodia",
    "capital": "Phnom Penh",
    "key": "KH"
  },
  {
    "name": "Kiribati",
    "capital": "South Tarawa",
    "key": "KI"
  },
  {
    "name": "Comoros",
    "capital": "Moroni",
    "key": "KM"
  },
  {
    "name": "Saint Kitts and Nevis",
    "capital": "Basseterre",
    "key": "KN"
  },
  {
    "name": "North Korea",
    "capital": "Pyongyang",
    "key": "KP"
  },
  {
    "name": "South Korea",
    "capital": "Seoul",
    "key": "KR"
  },
  {
    "name": "Kuwait",
    "capital": "Kuwait City",
    "key": "KW"
  },
  {
    "name": "Cayman Islands",
    "capital": "George Town",
    "key": "KY"
  },
  {
    "name": "Kazakhstan",
    "capital": "Astana",
    "key": "KZ"
  },
  {
    "name": "Laos",
    "capital": "Vientiane",
    "key": "LA"
  },
  {
    "name": "Lebanon",
    "capital": "Beirut",
    "key": "LB"
  },
  {
    "name": "Saint Lucia",
    "capital": "Castries",
    "key": "LC"
  },
  {
    "name": "Liechtenstein",
    "capital": "Vaduz",
    "key": "LI"
  },
  {
    "name": "Sri Lanka",
    "capital": "Colombo",
    "key": "LK"
  },
  {
    "name": "Liberia",
    "capital": "Monrovia",
    "key": "LR"
  },
  {
    "name": "Lesotho",
    "capital": "Maseru",
    "key": "LS"
  },
  {
    "name": "Lithuania",
    "capital": "Vilnius",
    "key": "LT"
  },
  {
    "name": "Luxembourg",
    "capital": "Luxembourg",
    "key": "LU"
  },
  {
    "name": "Latvia",
    "capital": "Riga",
    "key": "LV"
  },
  {
    "name": "Libya",
    "capital": "Tripoli",
    "key": "LY"
  },
  {
    "name": "Morocco",
    "capital": "Rabat",
    "key": "MA"
  },
  {
    "name": "Monaco",
    "capital": "Monaco",
    "key": "MC"
  },
  {
    "name": "Moldova",
    "capital": "Chișinău",
    "key": "MD"
  },
  {
    "name": "Montenegro",
    "capital": "Podgorica",
    "key": "ME"
  },
  {
    "name": "Saint Martin",
    "capital": "Marigot",
    "key": "MF"
  },
  {
    "name": "Madagascar",
    "capital": "Antananarivo",
    "key": "MG"
  },
  {
    "name": "Marshall Islands",
    "capital": "Majuro",
    "key": "MH"
  },
  {
    "name": "Macedonia",
    "capital": "Skopje",
    "key": "MK"
  },
  {
    "name": "Mali",
    "capital": "Bamako",
    "key": "ML"
  },
  {
    "name": "Myanmar [Burma]",
    "capital": "Naypyidaw",
    "key": "MM"
  },
  {
    "name": "Mongolia",
    "capital": "Ulan Bator",
    "key": "MN"
  },
  {
    "name": "Macao",
    "capital": "",
    "key": "MO"
  },
  {
    "name": "Northern Mariana Islands",
    "capital": "Saipan",
    "key": "MP"
  },
  {
    "name": "Martinique",
    "capital": "Fort-de-France",
    "key": "MQ"
  },
  {
    "name": "Mauritania",
    "capital": "Nouakchott",
    "key": "MR"
  },
  {
    "name": "Montserrat",
    "capital": "Plymouth",
    "key": "MS"
  },
  {
    "name": "Malta",
    "capital": "Valletta",
    "key": "MT"
  },
  {
    "name": "Mauritius",
    "capital": "Port Louis",
    "key": "MU"
  },
  {
    "name": "Maldives",
    "capital": "Malé",
    "key": "MV"
  },
  {
    "name": "Malawi",
    "capital": "Lilongwe",
    "key": "MW"
  },
  {
    "name": "Mexico",
    "capital": "Mexico City",
    "key": "MX"
  },
  {
    "name": "Malaysia",
    "capital": "Kuala Lumpur",
    "key": "MY"
  },
  {
    "name": "Mozambique",
    "capital": "Maputo",
    "key": "MZ"
  },
  {
    "name": "Namibia",
    "capital": "Windhoek",
    "key": "NA"
  },
  {
    "name": "New Caledonia",
    "capital": "Nouméa",
    "key": "NC"
  },
  {
    "name": "Niger",
    "capital": "Niamey",
    "key": "NE"
  },
  {
    "name": "Norfolk Island",
    "capital": "Kingston",
    "key": "NF"
  },
  {
    "name": "Nigeria",
    "capital": "Abuja",
    "key": "NG"
  },
  {
    "name": "Nicaragua",
    "capital": "Managua",
    "key": "NI"
  },
  {
    "name": "Netherlands",
    "capital": "Amsterdam",
    "key": "NL"
  },
  {
    "name": "Norway",
    "capital": "Oslo",
    "key": "NO"
  },
  {
    "name": "Nepal",
    "capital": "Kathmandu",
    "key": "NP"
  },
  {
    "name": "Nauru",
    "capital": "Yaren",
    "key": "NR"
  },
  {
    "name": "Niue",
    "capital": "Alofi",
    "key": "NU"
  },
  {
    "name": "New Zealand",
    "capital": "Wellington",
    "key": "NZ"
  },
  {
    "name": "Oman",
    "capital": "Muscat",
    "key": "OM"
  },
  {
    "name": "Panama",
    "capital": "Panama City",
    "key": "PA"
  },
  {
    "name": "Peru",
    "capital": "Lima",
    "key": "PE"
  },
  {
    "name": "French Polynesia",
    "capital": "Papeetē",
    "key": "PF"
  },
  {
    "name": "Papua New Guinea",
    "capital": "Port Moresby",
    "key": "PG"
  },
  {
    "name": "Philippines",
    "capital": "Manila",
    "key": "PH"
  },
  {
    "name": "Pakistan",
    "capital": "Islamabad",
    "key": "PK"
  },
  {
    "name": "Poland",
    "capital": "Warsaw",
    "key": "PL"
  },
  {
    "name": "Saint Pierre and Miquelon",
    "capital": "Saint-Pierre",
    "key": "PM"
  },
  {
    "name": "Pitcairn Islands",
    "capital": "Adamstown",
    "key": "PN"
  },
  {
    "name": "Puerto Rico",
    "capital": "San Juan",
    "key": "PR"
  },
  {
    "name": "Palestine",
    "capital": "Ramallah",
    "key": "PS"
  },
  {
    "name": "Portugal",
    "capital": "Lisbon",
    "key": "PT"
  },
  {
    "name": "Palau",
    "capital": "Ngerulmud",
    "key": "PW"
  },
  {
    "name": "Paraguay",
    "capital": "Asunción",
    "key": "PY"
  },
  {
    "name": "Qatar",
    "capital": "Doha",
    "key": "QA"
  },
  {
    "name": "Réunion",
    "capital": "Saint-Denis",
    "key": "RE"
  },
  {
    "name": "Romania",
    "capital": "Bucharest",
    "key": "RO"
  },
  {
    "name": "Serbia",
    "capital": "Belgrade",
    "key": "RS"
  },
  {
    "name": "Russia",
    "capital": "Moscow",
    "key": "RU"
  },
  {
    "name": "Rwanda",
    "capital": "Kigali",
    "key": "RW"
  },
  {
    "name": "Saudi Arabia",
    "capital": "Riyadh",
    "key": "SA"
  },
  {
    "name": "Solomon Islands",
    "capital": "Honiara",
    "key": "SB"
  },
  {
    "name": "Seychelles",
    "capital": "Victoria",
    "key": "SC"
  },
  {
    "name": "Sudan",
    "capital": "Khartoum",
    "key": "SD"
  },
  {
    "name": "Sweden",
    "capital": "Stockholm",
    "key": "SE"
  },
  {
    "name": "Singapore",
    "capital": "Singapore",
    "key": "SG"
  },
  {
    "name": "Saint Helena",
    "capital": "Jamestown",
    "key": "SH"
  },
  {
    "name": "Slovenia",
    "capital": "Ljubljana",
    "key": "SI"
  },
  {
    "name": "Svalbard and Jan Mayen",
    "capital": "Longyearbyen",
    "key": "SJ"
  },
  {
    "name": "Slovakia",
    "capital": "Bratislava",
    "key": "SK"
  },
  {
    "name": "Sierra Leone",
    "capital": "Freetown",
    "key": "SL"
  },
  {
    "name": "San Marino",
    "capital": "City of San Marino",
    "key": "SM"
  },
  {
    "name": "Senegal",
    "capital": "Dakar",
    "key": "SN"
  },
  {
    "name": "Somalia",
    "capital": "Mogadishu",
    "key": "SO"
  },
  {
    "name": "Suriname",
    "capital": "Paramaribo",
    "key": "SR"
  },
  {
    "name": "South Sudan",
    "capital": "Juba",
    "key": "SS"
  },
  {
    "name": "São Tomé and Príncipe",
    "capital": "São Tomé",
    "key": "ST"
  },
  {
    "name": "El Salvador",
    "capital": "San Salvador",
    "key": "SV"
  },
  {
    "name": "Sint Maarten",
    "capital": "Philipsburg",
    "key": "SX"
  },
  {
    "name": "Syria",
    "capital": "Damascus",
    "key": "SY"
  },
  {
    "name": "Swaziland",
    "capital": "Lobamba",
    "key": "SZ"
  },
  {
    "name": "Turks and Caicos Islands",
    "capital": "Cockburn Town",
    "key": "TC"
  },
  {
    "name": "Chad",
    "capital": "N'Djamena",
    "key": "TD"
  },
  {
    "name": "French Southern Territories",
    "capital": "Port-aux-Français",
    "key": "TF"
  },
  {
    "name": "Togo",
    "capital": "Lomé",
    "key": "TG"
  },
  {
    "name": "Thailand",
    "capital": "Bangkok",
    "key": "TH"
  },
  {
    "name": "Tajikistan",
    "capital": "Dushanbe",
    "key": "TJ"
  },
  {
    "name": "Tokelau",
    "capital": "Fakaofo",
    "key": "TK"
  },
  {
    "name": "East Timor",
    "capital": "Dili",
    "key": "TL"
  },
  {
    "name": "Turkmenistan",
    "capital": "Ashgabat",
    "key": "TM"
  },
  {
    "name": "Tunisia",
    "capital": "Tunis",
    "key": "TN"
  },
  {
    "name": "Tonga",
    "capital": "Nuku'alofa",
    "key": "TO"
  },
  {
    "name": "Turkey",
    "capital": "Ankara",
    "key": "TR"
  },
  {
    "name": "Trinidad and Tobago",
    "capital": "Port of Spain",
    "key": "TT"
  },
  {
    "name": "Tuvalu",
    "capital": "Funafuti",
    "key": "TV"
  },
  {
    "name": "Taiwan",
    "capital": "Taipei",
    "key": "TW"
  },
  {
    "name": "Tanzania",
    "capital": "Dodoma",
    "key": "TZ"
  },
  {
    "name": "Ukraine",
    "capital": "Kyiv",
    "key": "UA"
  },
  {
    "name": "Uganda",
    "capital": "Kampala",
    "key": "UG"
  },
  {
    "name": "U.S. Minor Outlying Islands",
    "capital": "",
    "key": "UM"
  },
  {
    "name": "United States",
    "capital": "Washington D.C.",
    "key": "US"
  },
  {
    "name": "Uruguay",
    "capital": "Montevideo",
    "key": "UY"
  },
  {
    "name": "Uzbekistan",
    "capital": "Tashkent",
    "key": "UZ"
  },
  {
    "name": "Vatican City",
    "capital": "Vatican City",
    "key": "VA"
  },
  {
    "name": "Saint Vincent and the Grenadines",
    "capital": "Kingstown",
    "key": "VC"
  },
  {
    "name": "Venezuela",
    "capital": "Caracas",
    "key": "VE"
  },
  {
    "name": "British Virgin Islands",
    "capital": "Road Town",
    "key": "VG"
  },
  {
    "name": "U.S. Virgin Islands",
    "capital": "Charlotte Amalie",
    "key": "VI"
  },
  {
    "name": "Vietnam",
    "capital": "Hanoi",
    "key": "VN"
  },
  {
    "name": "Vanuatu",
    "capital": "Port Vila",
    "key": "VU"
  },
  {
    "name": "Wallis and Futuna",
    "capital": "Mata-Utu",
    "key": "WF"
  },
  {
    "name": "Samoa",
    "capital": "Apia",
    "key": "WS"
  },
  {
    "name": "Kosovo",
    "capital": "Pristina",
    "key": "XK"
  },
  {
    "name": "Yemen",
    "capital": "Sana'a",
    "key": "YE"
  },
  {
    "name": "Mayotte",
    "capital": "Mamoudzou",
    "key": "YT"
  },
  {
    "name": "South Africa",
    "capital": "Pretoria",
    "key": "ZA"
  },
  {
    "name": "Zambia",
    "capital": "Lusaka",
    "key": "ZM"
  },
  {
    "name": "Zimbabwe",
    "capital": "Harare",
    "key": "ZW"
  }
])