City.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('cities')

cities_raw = [
  {
    "country": "AD",
    "name": "Sant Julià de Lòria",
    "lat": "42.46372",
    "lng": "1.49129"
  },
  {
    "country": "AD",
    "name": "Pas de la Casa",
    "lat": "42.54277",
    "lng": "1.73361"
  },
  {
    "country": "AD",
    "name": "Ordino",
    "lat": "42.55623",
    "lng": "1.53319"
  },
  {
    "country": "AD",
    "name": "les Escaldes",
    "lat": "42.50729",
    "lng": "1.53414"
  },
  {
    "country": "AD",
    "name": "la Massana",
    "lat": "42.54499",
    "lng": "1.51483"
  },
  {
    "country": "AD",
    "name": "Encamp",
    "lat": "42.53474",
    "lng": "1.58014"
  },
  {
    "country": "AD",
    "name": "Canillo",
    "lat": "42.5676",
    "lng": "1.59756"
  },
  {
    "country": "AD",
    "name": "Arinsal",
    "lat": "42.57205",
    "lng": "1.48453"
  },
  {
    "country": "AD",
    "name": "Andorra la Vella",
    "lat": "42.50779",
    "lng": "1.52109"
  },
  {
    "country": "AE",
    "name": "Umm al Qaywayn",
    "lat": "25.56473",
    "lng": "55.55517"
  },
  {
    "country": "AE",
    "name": "Ras al-Khaimah",
    "lat": "25.78953",
    "lng": "55.9432"
  },
  {
    "country": "AE",
    "name": "Muzayri‘",
    "lat": "23.14355",
    "lng": "53.7881"
  },
  {
    "country": "AE",
    "name": "Khawr Fakkān",
    "lat": "25.33132",
    "lng": "56.34199"
  },
  {
    "country": "AE",
    "name": "Dubai",
    "lat": "25.0657",
    "lng": "55.17128"
  },
  {
    "country": "AE",
    "name": "Dibba Al-Fujairah",
    "lat": "25.59246",
    "lng": "56.26176"
  },
  {
    "country": "AE",
    "name": "Dibba Al-Hisn",
    "lat": "25.61955",
    "lng": "56.27291"
  },
  {
    "country": "AE",
    "name": "Sharjah",
    "lat": "25.33737",
    "lng": "55.41206"
  },
  {
    "country": "AE",
    "name": "Ar Ruways",
    "lat": "24.11028",
    "lng": "52.73056"
  },
  {
    "country": "AE",
    "name": "Al Fujayrah",
    "lat": "25.11641",
    "lng": "56.34141"
  },
  {
    "country": "AE",
    "name": "Al Ain",
    "lat": "24.19167",
    "lng": "55.76056"
  },
  {
    "country": "AE",
    "name": "Ajman",
    "lat": "25.41111",
    "lng": "55.43504"
  },
  {
    "country": "AE",
    "name": "Adh Dhayd",
    "lat": "25.28812",
    "lng": "55.88157"
  },
  {
    "country": "AE",
    "name": "Abu Dhabi",
    "lat": "24.46667",
    "lng": "54.36667"
  },
  {
    "country": "AF",
    "name": "Zorkot",
    "lat": "33.54149",
    "lng": "69.73446"
  },
  {
    "country": "AF",
    "name": "Wulêswālī Bihsūd",
    "lat": "34.3436",
    "lng": "67.90567"
  },
  {
    "country": "AF",
    "name": "Kuhsān",
    "lat": "34.65389",
    "lng": "61.19778"
  },
  {
    "country": "AF",
    "name": "Lāsh",
    "lat": "35.3782",
    "lng": "64.77457"
  },
  {
    "country": "AF",
    "name": "Tukzār",
    "lat": "35.94831",
    "lng": "66.42132"
  },
  {
    "country": "AF",
    "name": "Mīray",
    "lat": "33.32462",
    "lng": "68.44068"
  },
  {
    "country": "AF",
    "name": "Āq Kupruk",
    "lat": "36.08352",
    "lng": "66.84029"
  },
  {
    "country": "AF",
    "name": "Zurmat",
    "lat": "33.43778",
    "lng": "69.02774"
  },
  {
    "country": "AF",
    "name": "Zaybāk",
    "lat": "36.52947",
    "lng": "71.3441"
  },
  {
    "country": "AF",
    "name": "Zīārat-e Shāh Maqşūd",
    "lat": "31.9848",
    "lng": "65.4736"
  },
  {
    "country": "AF",
    "name": "Zindah Jān",
    "lat": "34.34264",
    "lng": "61.74675"
  },
  {
    "country": "AF",
    "name": "Zarghūn Shahr",
    "lat": "32.84734",
    "lng": "68.44573"
  },
  {
    "country": "AF",
    "name": "Zaṟah Sharan",
    "lat": "33.14641",
    "lng": "68.79213"
  },
  {
    "country": "AF",
    "name": "Zaranj",
    "lat": "30.95962",
    "lng": "61.86037"
  },
  {
    "country": "AF",
    "name": "Zamtō Kêlay",
    "lat": "32.3726",
    "lng": "66.17708"
  },
  {
    "country": "AF",
    "name": "Yangī Qal‘ah",
    "lat": "37.46572",
    "lng": "69.61131"
  },
  {
    "country": "AF",
    "name": "Yaḩyá Khēl",
    "lat": "32.93742",
    "lng": "68.64622"
  },
  {
    "country": "AF",
    "name": "Wāshēr",
    "lat": "32.25122",
    "lng": "63.85553"
  },
  {
    "country": "AF",
    "name": "Tōrmay",
    "lat": "33.68847",
    "lng": "68.40205"
  },
  {
    "country": "AF",
    "name": "Tūlak",
    "lat": "33.97509",
    "lng": "63.72868"
  },
  {
    "country": "AF",
    "name": "Tītān",
    "lat": "33.69032",
    "lng": "63.86361"
  },
  {
    "country": "AF",
    "name": "Tīr Pul",
    "lat": "34.59431",
    "lng": "61.26895"
  },
  {
    "country": "AF",
    "name": "Taywarah",
    "lat": "33.52118",
    "lng": "64.42116"
  },
  {
    "country": "AF",
    "name": "Bāzār-e Tashkān",
    "lat": "36.88168",
    "lng": "70.27674"
  },
  {
    "country": "AF",
    "name": "Tarinkot",
    "lat": "32.62998",
    "lng": "65.87806"
  },
  {
    "country": "AF",
    "name": "Taloqan",
    "lat": "36.73605",
    "lng": "69.53451"
  },
  {
    "country": "AF",
    "name": "Tagāw-Bāy",
    "lat": "35.69941",
    "lng": "66.06164"
  },
  {
    "country": "AF",
    "name": "Tagāb",
    "lat": "34.85501",
    "lng": "69.64917"
  },
  {
    "country": "AF",
    "name": "Markaz-e Ḩukūmat-e Sulţān-e Bakwāh",
    "lat": "32.24139",
    "lng": "62.94936"
  },
  {
    "country": "AF",
    "name": "Spīn Bōldak",
    "lat": "31.00575",
    "lng": "66.40001"
  },
  {
    "country": "AF",
    "name": "Spērah",
    "lat": "33.20204",
    "lng": "69.5152"
  },
  {
    "country": "AF",
    "name": "Sōzmah Qal‘ah",
    "lat": "36.09916",
    "lng": "66.20823"
  },
  {
    "country": "AF",
    "name": "Siyāhgird",
    "lat": "35.00553",
    "lng": "68.85578"
  },
  {
    "country": "AF",
    "name": "Sheywah",
    "lat": "34.57169",
    "lng": "70.58859"
  },
  {
    "country": "AF",
    "name": "Shīnḏanḏ",
    "lat": "33.30294",
    "lng": "62.1474"
  },
  {
    "country": "AF",
    "name": "Shaykh Amīr Kêlay",
    "lat": "33.28744",
    "lng": "69.91283"
  },
  {
    "country": "AF",
    "name": "Qāshqāl",
    "lat": "35.03975",
    "lng": "69.00685"
  },
  {
    "country": "AF",
    "name": "Shibirghān",
    "lat": "36.66757",
    "lng": "65.7529"
  },
  {
    "country": "AF",
    "name": "Shwāk",
    "lat": "33.42386",
    "lng": "69.37684"
  },
  {
    "country": "AF",
    "name": "Shahr-e Şafā",
    "lat": "31.80347",
    "lng": "66.32376"
  },
  {
    "country": "AF",
    "name": "Shahrān",
    "lat": "36.97984",
    "lng": "70.73928"
  },
  {
    "country": "AF",
    "name": "Shahrak",
    "lat": "34.10737",
    "lng": "64.3052"
  },
  {
    "country": "AF",
    "name": "‘Alāqahdārī Shāh Jōy",
    "lat": "32.52154",
    "lng": "67.41315"
  },
  {
    "country": "AF",
    "name": "Wulêswālī Sayyid Karam",
    "lat": "33.69056",
    "lng": "69.36881"
  },
  {
    "country": "AF",
    "name": "Markaz-e Sayyidābād",
    "lat": "34.00037",
    "lng": "68.71346"
  },
  {
    "country": "AF",
    "name": "Şayād",
    "lat": "36.13529",
    "lng": "65.8297"
  },
  {
    "country": "AF",
    "name": "Sidqābād",
    "lat": "35.02298",
    "lng": "69.35112"
  },
  {
    "country": "AF",
    "name": "Sāyagaz",
    "lat": "32.56521",
    "lng": "67.03324"
  },
  {
    "country": "AF",
    "name": "Sar-e Tayghān",
    "lat": "33.50998",
    "lng": "65.67632"
  },
  {
    "country": "AF",
    "name": "Sarōbī",
    "lat": "34.58962",
    "lng": "69.76005"
  },
  {
    "country": "AF",
    "name": "Sar Kāṉī",
    "lat": "34.79023",
    "lng": "71.10962"
  },
  {
    "country": "AF",
    "name": "Sarfirāz Kalā",
    "lat": "32.98333",
    "lng": "67.96517"
  },
  {
    "country": "AF",
    "name": "Sar-e Pul",
    "lat": "36.21544",
    "lng": "65.93249"
  },
  {
    "country": "AF",
    "name": "Sar Chakān",
    "lat": "35.70177",
    "lng": "65.23055"
  },
  {
    "country": "AF",
    "name": "Sangīn",
    "lat": "32.07275",
    "lng": "64.8359"
  },
  {
    "country": "AF",
    "name": "Sang-e Māshah",
    "lat": "33.1396",
    "lng": "67.44046"
  },
  {
    "country": "AF",
    "name": "Sang-e Chārak",
    "lat": "35.84972",
    "lng": "66.43694"
  },
  {
    "country": "AF",
    "name": "Sang Atesh",
    "lat": "35.248",
    "lng": "63.0044"
  },
  {
    "country": "AF",
    "name": "Sangar Sarāy",
    "lat": "34.40744",
    "lng": "70.63937"
  },
  {
    "country": "AF",
    "name": "Aībak",
    "lat": "36.26468",
    "lng": "68.01551"
  },
  {
    "country": "AF",
    "name": "Rū-ye Sang",
    "lat": "35.31999",
    "lng": "67.63387"
  },
  {
    "country": "AF",
    "name": "Rūdbār",
    "lat": "30.15",
    "lng": "62.6"
  },
  {
    "country": "AF",
    "name": "Rustāq",
    "lat": "37.12604",
    "lng": "69.83045"
  },
  {
    "country": "AF",
    "name": "Rabāţ-e Sangī-ye Pā’īn",
    "lat": "34.79951",
    "lng": "62.13917"
  },
  {
    "country": "AF",
    "name": "Rāmak",
    "lat": "33.52234",
    "lng": "68.6264"
  },
  {
    "country": "AF",
    "name": "Qurghān",
    "lat": "36.91939",
    "lng": "65.0649"
  },
  {
    "country": "AF",
    "name": "Quchanghī",
    "lat": "34.06183",
    "lng": "66.27801"
  },
  {
    "country": "AF",
    "name": "Sangalak-i-Kaisar",
    "lat": "35.68747",
    "lng": "64.29318"
  },
  {
    "country": "AF",
    "name": "Qarqīn",
    "lat": "37.41853",
    "lng": "66.04358"
  },
  {
    "country": "AF",
    "name": "Qarghah’ī",
    "lat": "34.55402",
    "lng": "70.24292"
  },
  {
    "country": "AF",
    "name": "Qarchī Gak",
    "lat": "37.03999",
    "lng": "66.78891"
  },
  {
    "country": "AF",
    "name": "Qarāwul",
    "lat": "37.21959",
    "lng": "68.7802"
  },
  {
    "country": "AF",
    "name": "Qarah Bāgh",
    "lat": "34.94023",
    "lng": "61.77589"
  },
  {
    "country": "AF",
    "name": "Qarah Bāgh",
    "lat": "33.19801",
    "lng": "68.10798"
  },
  {
    "country": "AF",
    "name": "Qala i Naw",
    "lat": "34.98735",
    "lng": "63.12891"
  },
  {
    "country": "AF",
    "name": "Qal‘ah-ye Kūf",
    "lat": "38.04119",
    "lng": "70.47298"
  },
  {
    "country": "AF",
    "name": "Qal‘ah-ye Kuhnah",
    "lat": "32.61591",
    "lng": "63.66681"
  },
  {
    "country": "AF",
    "name": "Qal‘ah-ye Shahr",
    "lat": "35.54729",
    "lng": "65.5676"
  },
  {
    "country": "AF",
    "name": "Qalāt",
    "lat": "32.10575",
    "lng": "66.90833"
  },
  {
    "country": "AF",
    "name": "Qal‘ah-ye Shāhī",
    "lat": "34.64921",
    "lng": "70.5914"
  },
  {
    "country": "AF",
    "name": "Qādis",
    "lat": "34.8085",
    "lng": "63.43003"
  },
  {
    "country": "AF",
    "name": "Pārūn",
    "lat": "35.42064",
    "lng": "70.92261"
  },
  {
    "country": "AF",
    "name": "Pul-e Khumrī",
    "lat": "35.94458",
    "lng": "68.71512"
  },
  {
    "country": "AF",
    "name": "Pul-e ‘Alam",
    "lat": "33.99529",
    "lng": "69.02274"
  },
  {
    "country": "AF",
    "name": "Pasnay",
    "lat": "35.76664",
    "lng": "65.76486"
  },
  {
    "country": "AF",
    "name": "Pāshmūl",
    "lat": "31.5572",
    "lng": "65.4343"
  },
  {
    "country": "AF",
    "name": "Pasāband",
    "lat": "33.68956",
    "lng": "64.8531"
  },
  {
    "country": "AF",
    "name": "Panjāb",
    "lat": "34.38795",
    "lng": "67.02327"
  },
  {
    "country": "AF",
    "name": "Paghmān",
    "lat": "34.58787",
    "lng": "68.95091"
  },
  {
    "country": "AF",
    "name": "Ōmnah",
    "lat": "32.90029",
    "lng": "68.79627"
  },
  {
    "country": "AF",
    "name": "Qaryeh-ye Owbeh",
    "lat": "34.36972",
    "lng": "63.17639"
  },
  {
    "country": "AF",
    "name": "Uruzgān",
    "lat": "32.92775",
    "lng": "66.63253"
  },
  {
    "country": "AF",
    "name": "Urgūn",
    "lat": "32.94111",
    "lng": "69.18"
  },
  {
    "country": "AF",
    "name": "Nūsay",
    "lat": "38.4435",
    "lng": "70.80413"
  },
  {
    "country": "AF",
    "name": "Nūrgal",
    "lat": "34.61341",
    "lng": "70.76498"
  },
  {
    "country": "AF",
    "name": "Now Zād",
    "lat": "32.40315",
    "lng": "64.46959"
  },
  {
    "country": "AF",
    "name": "Nīlī",
    "lat": "33.72178",
    "lng": "66.13023"
  },
  {
    "country": "AF",
    "name": "Nayak",
    "lat": "34.73414",
    "lng": "66.95292"
  },
  {
    "country": "AF",
    "name": "Nāyak",
    "lat": "32.5723",
    "lng": "66.77403"
  },
  {
    "country": "AF",
    "name": "Now Dahānak",
    "lat": "35.62398",
    "lng": "70.00511"
  },
  {
    "country": "AF",
    "name": "Ōkak",
    "lat": "33.89793",
    "lng": "67.95652"
  },
  {
    "country": "AF",
    "name": "Nāṟay",
    "lat": "35.21995",
    "lng": "71.52284"
  },
  {
    "country": "AF",
    "name": "Narang",
    "lat": "34.76009",
    "lng": "71.04738"
  },
  {
    "country": "AF",
    "name": "Nīkêh",
    "lat": "33.18934",
    "lng": "69.27179"
  },
  {
    "country": "AF",
    "name": "Nahrīn",
    "lat": "36.0649",
    "lng": "69.13343"
  },
  {
    "country": "AF",
    "name": "Ḩukūmat-e Nād ‘Alī",
    "lat": "31.64286",
    "lng": "64.23982"
  },
  {
    "country": "AF",
    "name": "Mūsá Qal‘ah",
    "lat": "32.44565",
    "lng": "64.74486"
  },
  {
    "country": "AF",
    "name": "Bala Murghab",
    "lat": "35.58408",
    "lng": "63.32886"
  },
  {
    "country": "AF",
    "name": "Muqêr",
    "lat": "32.82009",
    "lng": "67.76934"
  },
  {
    "country": "AF",
    "name": "Muḩammad Āghah Wuluswālī",
    "lat": "34.21422",
    "lng": "69.10026"
  },
  {
    "country": "AF",
    "name": "Mīzān ‘Alāqahdārī",
    "lat": "32.17635",
    "lng": "66.51271"
  },
  {
    "country": "AF",
    "name": "Mīr Bachah Kōṯ",
    "lat": "34.74999",
    "lng": "69.11899"
  },
  {
    "country": "AF",
    "name": "Mīrān",
    "lat": "34.22037",
    "lng": "68.31259"
  },
  {
    "country": "AF",
    "name": "Mīrābād",
    "lat": "30.43624",
    "lng": "61.8383"
  },
  {
    "country": "AF",
    "name": "Maymana",
    "lat": "35.92139",
    "lng": "64.78361"
  },
  {
    "country": "AF",
    "name": "Maīdān Khūlah",
    "lat": "33.64916",
    "lng": "69.7812"
  },
  {
    "country": "AF",
    "name": "Mingajik",
    "lat": "37.0279",
    "lng": "66.12817"
  },
  {
    "country": "AF",
    "name": "Mehtar Lām",
    "lat": "34.67139",
    "lng": "70.20944"
  },
  {
    "country": "AF",
    "name": "Mazār-e Sharīf",
    "lat": "36.70904",
    "lng": "67.11087"
  },
  {
    "country": "AF",
    "name": "Māymay",
    "lat": "38.40856",
    "lng": "71.03839"
  },
  {
    "country": "AF",
    "name": "Mutā Khān",
    "lat": "33.24001",
    "lng": "68.8663"
  },
  {
    "country": "AF",
    "name": "Mashhad",
    "lat": "36.81665",
    "lng": "70.10211"
  },
  {
    "country": "AF",
    "name": "Mardīān",
    "lat": "36.99252",
    "lng": "66.29654"
  },
  {
    "country": "AF",
    "name": "Mandōl",
    "lat": "35.28403",
    "lng": "70.17017"
  },
  {
    "country": "AF",
    "name": "Māmā Khēl",
    "lat": "34.24494",
    "lng": "69.9968"
  },
  {
    "country": "AF",
    "name": "Lashkar Gāh",
    "lat": "31.59382",
    "lng": "64.37161"
  },
  {
    "country": "AF",
    "name": "Lāsh-e Juwayn",
    "lat": "31.71382",
    "lng": "61.62272"
  },
  {
    "country": "AF",
    "name": "Larkird",
    "lat": "35.48936",
    "lng": "66.66409"
  },
  {
    "country": "AF",
    "name": "La‘l",
    "lat": "34.50141",
    "lng": "66.27997"
  },
  {
    "country": "AF",
    "name": "Kushk",
    "lat": "33.29565",
    "lng": "61.95221"
  },
  {
    "country": "AF",
    "name": "Kōṯowāl",
    "lat": "34.10319",
    "lng": "70.46073"
  },
  {
    "country": "AF",
    "name": "Kushk-e Kuhnah",
    "lat": "34.8711",
    "lng": "62.54762"
  },
  {
    "country": "AF",
    "name": "Kuran wa Munjan",
    "lat": "36.02866",
    "lng": "70.77258"
  },
  {
    "country": "AF",
    "name": "Kunduz",
    "lat": "36.72895",
    "lng": "68.857"
  },
  {
    "country": "AF",
    "name": "Khōshī",
    "lat": "33.99916",
    "lng": "69.21582"
  },
  {
    "country": "AF",
    "name": "Khōshāmand",
    "lat": "32.68567",
    "lng": "68.23801"
  },
  {
    "country": "AF",
    "name": "Khwājah Ghār",
    "lat": "37.06588",
    "lng": "69.42126"
  },
  {
    "country": "AF",
    "name": "Khwājah Dū Kōh",
    "lat": "36.82881",
    "lng": "65.62432"
  },
  {
    "country": "AF",
    "name": "Deh Khwāhān",
    "lat": "37.88965",
    "lng": "70.21875"
  },
  {
    "country": "AF",
    "name": "Khulbisāt",
    "lat": "33.4948",
    "lng": "70.00605"
  },
  {
    "country": "AF",
    "name": "Khūgyāṉī",
    "lat": "31.56267",
    "lng": "66.5814"
  },
  {
    "country": "AF",
    "name": "Khōst",
    "lat": "33.33951",
    "lng": "69.92041"
  },
  {
    "country": "AF",
    "name": "Khulm",
    "lat": "36.69736",
    "lng": "67.69826"
  },
  {
    "country": "AF",
    "name": "Khudāydād Khēl",
    "lat": "35.17835",
    "lng": "67.68758"
  },
  {
    "country": "AF",
    "name": "Khinjān",
    "lat": "35.58908",
    "lng": "68.90093"
  },
  {
    "country": "AF",
    "name": "Khinj",
    "lat": "35.42898",
    "lng": "69.73482"
  },
  {
    "country": "AF",
    "name": "Khāsh",
    "lat": "31.52919",
    "lng": "62.79055"
  },
  {
    "country": "AF",
    "name": "Khān Neshīn",
    "lat": "30.5488",
    "lng": "63.7888"
  },
  {
    "country": "AF",
    "name": "Khānaqāh",
    "lat": "36.62587",
    "lng": "69.53695"
  },
  {
    "country": "AF",
    "name": "Chahār Bāgh",
    "lat": "37.00108",
    "lng": "65.22392"
  },
  {
    "country": "AF",
    "name": "Khandūd",
    "lat": "36.95127",
    "lng": "72.318"
  },
  {
    "country": "AF",
    "name": "Khānaqāh",
    "lat": "36.86279",
    "lng": "66.16656"
  },
  {
    "country": "AF",
    "name": "Khanabad",
    "lat": "36.6825",
    "lng": "69.11556"
  },
  {
    "country": "AF",
    "name": "Khamyāb",
    "lat": "37.5275",
    "lng": "65.75833"
  },
  {
    "country": "AF",
    "name": "Khākirān",
    "lat": "32.8385",
    "lng": "67.07377"
  },
  {
    "country": "AF",
    "name": "Kaz̲h̲ah",
    "lat": "34.24088",
    "lng": "70.18274"
  },
  {
    "country": "AF",
    "name": "Kishk-e Nakhūd",
    "lat": "31.62519",
    "lng": "65.05511"
  },
  {
    "country": "AF",
    "name": "Karukh",
    "lat": "34.48108",
    "lng": "62.5863"
  },
  {
    "country": "AF",
    "name": "Kanḏay",
    "lat": "34.9536",
    "lng": "70.77897"
  },
  {
    "country": "AF",
    "name": "Kandahār",
    "lat": "31.61332",
    "lng": "65.71013"
  },
  {
    "country": "AF",
    "name": "Kalān Deh",
    "lat": "33.83676",
    "lng": "68.40233"
  },
  {
    "country": "AF",
    "name": "Kalakān",
    "lat": "34.78371",
    "lng": "69.15001"
  },
  {
    "country": "AF",
    "name": "Kalafgān",
    "lat": "36.77226",
    "lng": "69.94489"
  },
  {
    "country": "AF",
    "name": "Kajrān",
    "lat": "33.20357",
    "lng": "65.47311"
  },
  {
    "country": "AF",
    "name": "Kai",
    "lat": "34.12819",
    "lng": "70.71828"
  },
  {
    "country": "AF",
    "name": "Kabul",
    "lat": "34.52813",
    "lng": "69.17233"
  },
  {
    "country": "AF",
    "name": "Jurm",
    "lat": "36.86477",
    "lng": "70.83421"
  },
  {
    "country": "AF",
    "name": "Jawand",
    "lat": "35.06361",
    "lng": "64.14917"
  },
  {
    "country": "AF",
    "name": "Jānī Khēl",
    "lat": "32.76315",
    "lng": "68.39722"
  },
  {
    "country": "AF",
    "name": "Jalrēz",
    "lat": "34.4708",
    "lng": "68.65438"
  },
  {
    "country": "AF",
    "name": "Jalālābād",
    "lat": "34.42647",
    "lng": "70.45153"
  },
  {
    "country": "AF",
    "name": "Jabal os Saraj",
    "lat": "35.11833",
    "lng": "69.23778"
  },
  {
    "country": "AF",
    "name": "Ḩukūmat-e Shīnkaī",
    "lat": "31.98303",
    "lng": "67.33558"
  },
  {
    "country": "AF",
    "name": "Herāt",
    "lat": "34.34817",
    "lng": "62.19967"
  },
  {
    "country": "AF",
    "name": "Ḩājī Khēl",
    "lat": "35.10922",
    "lng": "69.43341"
  },
  {
    "country": "AF",
    "name": "Ḩāfiz̧ Moghul",
    "lat": "37.05643",
    "lng": "70.40061"
  },
  {
    "country": "AF",
    "name": "Khafizan",
    "lat": "34.28665",
    "lng": "70.37247"
  },
  {
    "country": "AF",
    "name": "Guz̄arah",
    "lat": "34.21223",
    "lng": "62.21235"
  },
  {
    "country": "AF",
    "name": "Gōshtah",
    "lat": "34.35822",
    "lng": "70.76264"
  },
  {
    "country": "AF",
    "name": "Gōmal Kêlay",
    "lat": "32.50989",
    "lng": "68.85598"
  },
  {
    "country": "AF",
    "name": "‘Alāqahdārī Gēlān",
    "lat": "32.72692",
    "lng": "67.63696"
  },
  {
    "country": "AF",
    "name": "Ghōriyān",
    "lat": "34.3448",
    "lng": "61.49321"
  },
  {
    "country": "AF",
    "name": "Ghormach",
    "lat": "35.73062",
    "lng": "63.78264"
  },
  {
    "country": "AF",
    "name": "Ghurayd Gharamē",
    "lat": "36.5222",
    "lng": "70.79063"
  },
  {
    "country": "AF",
    "name": "Ghazni",
    "lat": "33.55391",
    "lng": "68.42096"
  },
  {
    "country": "AF",
    "name": "Gereshk",
    "lat": "31.82089",
    "lng": "64.57005"
  },
  {
    "country": "AF",
    "name": "Gardez",
    "lat": "33.59744",
    "lng": "69.22592"
  },
  {
    "country": "AF",
    "name": "Fayzabad",
    "lat": "37.11664",
    "lng": "70.58002"
  },
  {
    "country": "AF",
    "name": "Faīẕābād",
    "lat": "36.82091",
    "lng": "66.45921"
  },
  {
    "country": "AF",
    "name": "Fayẕābād",
    "lat": "36.29111",
    "lng": "64.86222"
  },
  {
    "country": "AF",
    "name": "Qal‘ah-ye Fārsī",
    "lat": "33.78529",
    "lng": "63.24735"
  },
  {
    "country": "AF",
    "name": "Farkhār",
    "lat": "36.57288",
    "lng": "69.85783"
  },
  {
    "country": "AF",
    "name": "Farah",
    "lat": "32.37451",
    "lng": "62.11638"
  },
  {
    "country": "AF",
    "name": "Istālif",
    "lat": "34.83268",
    "lng": "69.07756"
  },
  {
    "country": "AF",
    "name": "Kafir Qala",
    "lat": "34.66667",
    "lng": "61.06667"
  },
  {
    "country": "AF",
    "name": "Injīl",
    "lat": "34.30157",
    "lng": "62.2465"
  },
  {
    "country": "AF",
    "name": "Imām Şāḩib",
    "lat": "37.18897",
    "lng": "68.93644"
  },
  {
    "country": "AF",
    "name": "Dōshī",
    "lat": "35.60918",
    "lng": "68.68473"
  },
  {
    "country": "AF",
    "name": "Dowlatyār",
    "lat": "34.55132",
    "lng": "65.79302"
  },
  {
    "country": "AF",
    "name": "Dowlat Shāh",
    "lat": "34.9504",
    "lng": "70.07102"
  },
  {
    "country": "AF",
    "name": "Dowlatābād",
    "lat": "36.98821",
    "lng": "66.82069"
  },
  {
    "country": "AF",
    "name": "Dowlatābād",
    "lat": "36.43259",
    "lng": "64.92071"
  },
  {
    "country": "AF",
    "name": "Dū Qal‘ah",
    "lat": "32.14237",
    "lng": "61.4469"
  },
  {
    "country": "AF",
    "name": "Dūāb",
    "lat": "35.56277",
    "lng": "67.82191"
  },
  {
    "country": "AF",
    "name": "Dê Nārkhēl Kêlay",
    "lat": "32.43205",
    "lng": "65.63484"
  },
  {
    "country": "AF",
    "name": "Dehī",
    "lat": "35.95806",
    "lng": "67.27998"
  },
  {
    "country": "AF",
    "name": "Deh-e Şalāḩ",
    "lat": "35.69031",
    "lng": "69.31511"
  },
  {
    "country": "AF",
    "name": "Deh-e Now",
    "lat": "34.74767",
    "lng": "69.04784"
  },
  {
    "country": "AF",
    "name": "Dehdādī",
    "lat": "36.66319",
    "lng": "66.99339"
  },
  {
    "country": "AF",
    "name": "Dwah Manḏay",
    "lat": "33.28159",
    "lng": "69.58531"
  },
  {
    "country": "AF",
    "name": "Dasht-e Qal‘ah",
    "lat": "37.1539",
    "lng": "69.4435"
  },
  {
    "country": "AF",
    "name": "Dasht-e Qal‘ah",
    "lat": "33.02978",
    "lng": "63.8395"
  },
  {
    "country": "AF",
    "name": "Dasht-e Archī",
    "lat": "37.13333",
    "lng": "69.16667"
  },
  {
    "country": "AF",
    "name": "Darzāb",
    "lat": "35.97744",
    "lng": "65.37828"
  },
  {
    "country": "AF",
    "name": "Markaz-e Ḩukūmat-e Darwēshān",
    "lat": "31.13231",
    "lng": "64.1934"
  },
  {
    "country": "AF",
    "name": "Darqad",
    "lat": "37.38414",
    "lng": "69.45294"
  },
  {
    "country": "AF",
    "name": "Darāyim",
    "lat": "36.86667",
    "lng": "70.38333"
  },
  {
    "country": "AF",
    "name": "Dāngām",
    "lat": "34.99249",
    "lng": "71.41935"
  },
  {
    "country": "AF",
    "name": "Ḏanḏar",
    "lat": "34.79095",
    "lng": "69.47504"
  },
  {
    "country": "AF",
    "name": "Ḩukūmatī Dahanah-ye Ghōrī",
    "lat": "35.90617",
    "lng": "68.48869"
  },
  {
    "country": "AF",
    "name": "Tsowkêy",
    "lat": "34.69246",
    "lng": "70.92688"
  },
  {
    "country": "AF",
    "name": "Chīras",
    "lat": "35.41674",
    "lng": "65.98234"
  },
  {
    "country": "AF",
    "name": "Chisht-e Sharīf",
    "lat": "34.34731",
    "lng": "63.73966"
  },
  {
    "country": "AF",
    "name": "Chinār",
    "lat": "32.01583",
    "lng": "65.10721"
  },
  {
    "country": "AF",
    "name": "Chimtāl",
    "lat": "36.67818",
    "lng": "66.80325"
  },
  {
    "country": "AF",
    "name": "Charkh",
    "lat": "33.79712",
    "lng": "68.93749"
  },
  {
    "country": "AF",
    "name": "Charikar",
    "lat": "35.01361",
    "lng": "69.17139"
  },
  {
    "country": "AF",
    "name": "Dowr-e Rabāţ",
    "lat": "36.69132",
    "lng": "68.79093"
  },
  {
    "country": "AF",
    "name": "Tsapêraī",
    "lat": "33.83003",
    "lng": "69.9192"
  },
  {
    "country": "AF",
    "name": "Tsamkanī",
    "lat": "33.80298",
    "lng": "69.81671"
  },
  {
    "country": "AF",
    "name": "Chakaray",
    "lat": "34.34099",
    "lng": "69.4377"
  },
  {
    "country": "AF",
    "name": "Chākarān",
    "lat": "36.91112",
    "lng": "71.0688"
  },
  {
    "country": "AF",
    "name": "Chahār Qal‘ah",
    "lat": "33.55267",
    "lng": "68.29828"
  },
  {
    "country": "AF",
    "name": "Chahār Burj",
    "lat": "34.24475",
    "lng": "62.19165"
  },
  {
    "country": "AF",
    "name": "Chāh Āb",
    "lat": "37.39773",
    "lng": "69.81464"
  },
  {
    "country": "AF",
    "name": "Fayrōz Kōh",
    "lat": "34.51952",
    "lng": "65.25093"
  },
  {
    "country": "AF",
    "name": "Bulōlah",
    "lat": "34.87706",
    "lng": "68.0879"
  },
  {
    "country": "AF",
    "name": "Bal Chirāgh",
    "lat": "35.84026",
    "lng": "65.2309"
  },
  {
    "country": "AF",
    "name": "Bāzār-e Tālah",
    "lat": "35.39205",
    "lng": "68.22317"
  },
  {
    "country": "AF",
    "name": "Bāsawul",
    "lat": "34.24749",
    "lng": "70.87218"
  },
  {
    "country": "AF",
    "name": "Būrkah",
    "lat": "36.22242",
    "lng": "69.15037"
  },
  {
    "country": "AF",
    "name": "Barg-e Matāl",
    "lat": "35.67283",
    "lng": "71.34339"
  },
  {
    "country": "AF",
    "name": "Baraki Barak",
    "lat": "33.96744",
    "lng": "68.9492"
  },
  {
    "country": "AF",
    "name": "Banū",
    "lat": "35.63348",
    "lng": "69.26019"
  },
  {
    "country": "AF",
    "name": "Bāmyān",
    "lat": "34.82156",
    "lng": "67.82734"
  },
  {
    "country": "AF",
    "name": "Balkh",
    "lat": "36.75635",
    "lng": "66.8972"
  },
  {
    "country": "AF",
    "name": "Bahārak",
    "lat": "37.00254",
    "lng": "70.90664"
  },
  {
    "country": "AF",
    "name": "Bagrāmī",
    "lat": "34.49376",
    "lng": "69.27427"
  },
  {
    "country": "AF",
    "name": "Baghlān",
    "lat": "36.13068",
    "lng": "68.70829"
  },
  {
    "country": "AF",
    "name": "Ḩukūmatī Azrah",
    "lat": "34.17355",
    "lng": "69.64573"
  },
  {
    "country": "AF",
    "name": "Ārt Khwājah",
    "lat": "37.08571",
    "lng": "69.47958"
  },
  {
    "country": "AF",
    "name": "‘Alāqahdārī Aṯghar",
    "lat": "31.73506",
    "lng": "67.3574"
  },
  {
    "country": "AF",
    "name": "Āsmār",
    "lat": "35.03333",
    "lng": "71.35809"
  },
  {
    "country": "AF",
    "name": "Ashkāsham",
    "lat": "36.68333",
    "lng": "71.53333"
  },
  {
    "country": "AF",
    "name": "Asadābād",
    "lat": "34.87311",
    "lng": "71.14697"
  },
  {
    "country": "AF",
    "name": "Āqchah",
    "lat": "36.905",
    "lng": "66.18341"
  },
  {
    "country": "AF",
    "name": "Andkhōy",
    "lat": "36.95293",
    "lng": "65.12376"
  },
  {
    "country": "AF",
    "name": "’Unābah",
    "lat": "35.23251",
    "lng": "69.37719"
  },
  {
    "country": "AF",
    "name": "Anār Darah",
    "lat": "32.7587",
    "lng": "61.65397"
  },
  {
    "country": "AF",
    "name": "Amānzī",
    "lat": "30.21144",
    "lng": "66.04765"
  },
  {
    "country": "AF",
    "name": "‘Alāqahdārī-ye Almār",
    "lat": "35.84616",
    "lng": "64.53074"
  },
  {
    "country": "AF",
    "name": "‘Alī Shēr ‘Alāqahdārī",
    "lat": "33.4362",
    "lng": "70.06711"
  },
  {
    "country": "AF",
    "name": "Wuluswālī ‘Alīngār",
    "lat": "34.83529",
    "lng": "70.3593"
  },
  {
    "country": "AF",
    "name": "‘Alī Khēl",
    "lat": "33.94253",
    "lng": "69.71908"
  },
  {
    "country": "AF",
    "name": "‘Alāqahdārī Yōsuf Khēl",
    "lat": "33.05195",
    "lng": "68.65"
  },
  {
    "country": "AF",
    "name": "‘Alāqahdārī Dīshū",
    "lat": "30.43206",
    "lng": "63.29802"
  },
  {
    "country": "AF",
    "name": "Alah Sāy",
    "lat": "34.8965",
    "lng": "69.72049"
  },
  {
    "country": "AF",
    "name": "Pachīr wa Āgām",
    "lat": "34.20011",
    "lng": "70.27806"
  },
  {
    "country": "AF",
    "name": "Afaki",
    "lat": "36.66172",
    "lng": "69.35095"
  },
  {
    "country": "AF",
    "name": "Adraskan",
    "lat": "33.64573",
    "lng": "62.26959"
  },
  {
    "country": "AF",
    "name": "Āb-e Kamarī",
    "lat": "35.08796",
    "lng": "63.0678"
  },
  {
    "country": "AF",
    "name": "Khadīr",
    "lat": "33.92232",
    "lng": "65.93398"
  },
  {
    "country": "AF",
    "name": "Ghulām ‘Alī",
    "lat": "34.95076",
    "lng": "69.2287"
  },
  {
    "country": "AF",
    "name": "Qarah Bāgh Bāzār",
    "lat": "34.8529",
    "lng": "69.17062"
  },
  {
    "country": "AF",
    "name": "Zargarān",
    "lat": "34.78764",
    "lng": "69.05878"
  },
  {
    "country": "AF",
    "name": "Surkh Bilandī",
    "lat": "34.68474",
    "lng": "69.02863"
  },
  {
    "country": "AF",
    "name": "Pul-e Sangī",
    "lat": "34.59972",
    "lng": "69.25993"
  },
  {
    "country": "AF",
    "name": "Langar",
    "lat": "35.99474",
    "lng": "68.05081"
  },
  {
    "country": "AF",
    "name": "Bāgh-e Maīdān",
    "lat": "35.22156",
    "lng": "69.21397"
  },
  {
    "country": "AF",
    "name": "Ibrāhīm Khān",
    "lat": "35.05352",
    "lng": "69.25654"
  },
  {
    "country": "AF",
    "name": "Qaranghū Tōghaī",
    "lat": "37.21528",
    "lng": "67.63972"
  },
  {
    "country": "AF",
    "name": "Bāzārak",
    "lat": "35.31292",
    "lng": "69.51519"
  },
  {
    "country": "AF",
    "name": "Shērwānī-ye Bālā",
    "lat": "35.01468",
    "lng": "69.59934"
  },
  {
    "country": "AF",
    "name": "Kirāmān",
    "lat": "35.2973",
    "lng": "69.68125"
  },
  {
    "country": "AF",
    "name": "‘Alāqahdārī Saṟōbī",
    "lat": "32.79331",
    "lng": "69.0866"
  },
  {
    "country": "AF",
    "name": "Zerok-Alakadari",
    "lat": "33.15806",
    "lng": "69.31278"
  },
  {
    "country": "AF",
    "name": "Kushkak",
    "lat": "32.28991",
    "lng": "61.52194"
  },
  {
    "country": "AF",
    "name": "Khayr Kōṯ",
    "lat": "32.85355",
    "lng": "68.44971"
  },
  {
    "country": "AF",
    "name": "Chowṉêy",
    "lat": "33.38278",
    "lng": "66.27233"
  },
  {
    "country": "AF",
    "name": "Wuṯahpūr",
    "lat": "34.91914",
    "lng": "71.09863"
  },
  {
    "country": "AF",
    "name": "Karbori",
    "lat": "34.96597",
    "lng": "71.2746"
  },
  {
    "country": "AF",
    "name": "Sulţānpūr-e ‘Ulyā",
    "lat": "34.41204",
    "lng": "70.29634"
  },
  {
    "country": "AF",
    "name": "Babasakhib",
    "lat": "31.66144",
    "lng": "65.66098"
  },
  {
    "country": "AF",
    "name": "Chandal Bā’ī",
    "lat": "34.58469",
    "lng": "68.95524"
  },
  {
    "country": "AF",
    "name": "Dahan-e Jarf",
    "lat": "34.92891",
    "lng": "68.46273"
  },
  {
    "country": "AF",
    "name": "Maydanshakhr",
    "lat": "34.39561",
    "lng": "68.86618"
  },
  {
    "country": "AF",
    "name": "Dū Laīnah",
    "lat": "34.15599",
    "lng": "64.78566"
  },
  {
    "country": "AF",
    "name": "Qaram Qōl",
    "lat": "36.83006",
    "lng": "65.04299"
  },
  {
    "country": "AF",
    "name": "Pul-e Ḩişār",
    "lat": "35.61794",
    "lng": "69.47134"
  },
  {
    "country": "AF",
    "name": "Lab-Sar",
    "lat": "36.02634",
    "lng": "66.83799"
  },
  {
    "country": "AF",
    "name": "Ţāqchah Khānah",
    "lat": "36.61922",
    "lng": "69.62805"
  },
  {
    "country": "AF",
    "name": "March",
    "lat": "37.52845",
    "lng": "70.4482"
  },
  {
    "country": "AF",
    "name": "Zīrakī",
    "lat": "37.59233",
    "lng": "70.55814"
  },
  {
    "country": "AF",
    "name": "Aliabad",
    "lat": "36.52115",
    "lng": "68.89985"
  },
  {
    "country": "AF",
    "name": "Pas Pul",
    "lat": "37.47355",
    "lng": "70.61617"
  },
  {
    "country": "AF",
    "name": "Qal‘ah-ye Na‘īm",
    "lat": "34.39951",
    "lng": "69.16705"
  },
  {
    "country": "AF",
    "name": "Markaz-e Woluswalī-ye Āchīn",
    "lat": "34.12583",
    "lng": "70.70778"
  },
  {
    "country": "AF",
    "name": "Manogay",
    "lat": "34.99015",
    "lng": "70.91302"
  },
  {
    "country": "AF",
    "name": "Stêr Giyān",
    "lat": "32.97704",
    "lng": "69.37308"
  },
  {
    "country": "AF",
    "name": "Sharan",
    "lat": "33.17568",
    "lng": "68.73045"
  },
  {
    "country": "AF",
    "name": "Salām Khēl",
    "lat": "33.67067",
    "lng": "69.32983"
  },
  {
    "country": "AG",
    "name": "Saint John’s",
    "lat": "17.12096",
    "lng": "-61.84329"
  },
  {
    "country": "AG",
    "name": "Potters Village",
    "lat": "17.08333",
    "lng": "-61.81667"
  },
  {
    "country": "AG",
    "name": "Piggotts",
    "lat": "17.11667",
    "lng": "-61.8"
  },
  {
    "country": "AG",
    "name": "Parham",
    "lat": "17.09682",
    "lng": "-61.77046"
  },
  {
    "country": "AG",
    "name": "Liberta",
    "lat": "17.03333",
    "lng": "-61.78333"
  },
  {
    "country": "AG",
    "name": "Falmouth",
    "lat": "17.02741",
    "lng": "-61.78136"
  },
  {
    "country": "AG",
    "name": "Codrington",
    "lat": "17.63333",
    "lng": "-61.83333"
  },
  {
    "country": "AG",
    "name": "Bolands",
    "lat": "17.06565",
    "lng": "-61.87466"
  },
  {
    "country": "AG",
    "name": "All Saints",
    "lat": "17.06671",
    "lng": "-61.79303"
  },
  {
    "country": "AI",
    "name": "West End Village",
    "lat": "18.17191",
    "lng": "-63.14941"
  },
  {
    "country": "AI",
    "name": "The Valley",
    "lat": "18.21704",
    "lng": "-63.05783"
  },
  {
    "country": "AI",
    "name": "The Quarter",
    "lat": "18.20799",
    "lng": "-63.04178"
  },
  {
    "country": "AI",
    "name": "Farrington",
    "lat": "18.215",
    "lng": "-63.02238"
  },
  {
    "country": "AI",
    "name": "Stoney Ground",
    "lat": "18.22026",
    "lng": "-63.04607"
  },
  {
    "country": "AI",
    "name": "South Hill Village",
    "lat": "18.19201",
    "lng": "-63.08779"
  },
  {
    "country": "AI",
    "name": "Sandy Ground Village",
    "lat": "18.20118",
    "lng": "-63.08998"
  },
  {
    "country": "AI",
    "name": "North Side",
    "lat": "18.22919",
    "lng": "-63.04401"
  },
  {
    "country": "AI",
    "name": "North Hill Village",
    "lat": "18.20542",
    "lng": "-63.07847"
  },
  {
    "country": "AI",
    "name": "Island Harbour",
    "lat": "18.25601",
    "lng": "-63.0102"
  },
  {
    "country": "AI",
    "name": "George Hill",
    "lat": "18.19939",
    "lng": "-63.0665"
  },
  {
    "country": "AI",
    "name": "East End Village",
    "lat": "18.23333",
    "lng": "-63"
  },
  {
    "country": "AI",
    "name": "Blowing Point Village",
    "lat": "18.17648",
    "lng": "-63.09375"
  },
  {
    "country": "AI",
    "name": "Sandy Hill",
    "lat": "18.22104",
    "lng": "-63.01329"
  },
  {
    "country": "AL",
    "name": "Xarrë",
    "lat": "39.72833",
    "lng": "20.05444"
  },
  {
    "country": "AL",
    "name": "Sarandë",
    "lat": "39.87556",
    "lng": "20.00528"
  },
  {
    "country": "AL",
    "name": "Mesopotam",
    "lat": "39.91028",
    "lng": "20.09222"
  },
  {
    "country": "AL",
    "name": "Markat",
    "lat": "39.73278",
    "lng": "20.19528"
  },
  {
    "country": "AL",
    "name": "Livadhja",
    "lat": "39.78917",
    "lng": "20.12194"
  },
  {
    "country": "AL",
    "name": "Konispol",
    "lat": "39.65889",
    "lng": "20.18139"
  },
  {
    "country": "AL",
    "name": "Kakavijë",
    "lat": "39.90778",
    "lng": "20.35833"
  },
  {
    "country": "AL",
    "name": "Finiq",
    "lat": "39.90639",
    "lng": "20.05833"
  },
  {
    "country": "AL",
    "name": "Dhivër",
    "lat": "39.83611",
    "lng": "20.16861"
  },
  {
    "country": "AL",
    "name": "Delvinë",
    "lat": "39.95111",
    "lng": "20.09778"
  },
  {
    "country": "AL",
    "name": "Aliko",
    "lat": "39.85861",
    "lng": "20.07917"
  },
  {
    "country": "AL",
    "name": "Buçimas",
    "lat": "40.89139",
    "lng": "20.68139"
  },
  {
    "country": "AL",
    "name": "Zhepë",
    "lat": "40.67778",
    "lng": "20.28694"
  },
  {
    "country": "AL",
    "name": "Zerqan",
    "lat": "41.50222",
    "lng": "20.36056"
  },
  {
    "country": "AL",
    "name": "Zavalinë",
    "lat": "40.98083",
    "lng": "20.28083"
  },
  {
    "country": "AL",
    "name": "Zapod",
    "lat": "42.05056",
    "lng": "20.5525"
  },
  {
    "country": "AL",
    "name": "Zall-Reç",
    "lat": "41.87611",
    "lng": "20.32"
  },
  {
    "country": "AL",
    "name": "Zall-Dardhë",
    "lat": "41.80667",
    "lng": "20.33611"
  },
  {
    "country": "AL",
    "name": "Xibër-Murrizë",
    "lat": "41.45472",
    "lng": "20.02556"
  },
  {
    "country": "AL",
    "name": "Vreshtas",
    "lat": "40.79694",
    "lng": "20.77694"
  },
  {
    "country": "AL",
    "name": "Voskopojë",
    "lat": "40.63306",
    "lng": "20.58889"
  },
  {
    "country": "AL",
    "name": "Voskop",
    "lat": "40.61194",
    "lng": "20.69028"
  },
  {
    "country": "AL",
    "name": "Vithkuq",
    "lat": "40.525",
    "lng": "20.5825"
  },
  {
    "country": "AL",
    "name": "Vithkuq",
    "lat": "40.20472",
    "lng": "20.25944"
  },
  {
    "country": "AL",
    "name": "Vërtop",
    "lat": "40.62889",
    "lng": "20.05389"
  },
  {
    "country": "AL",
    "name": "Vergo",
    "lat": "40.00667",
    "lng": "20.00889"
  },
  {
    "country": "AL",
    "name": "Vendresha e Vogël",
    "lat": "40.50722",
    "lng": "20.13472"
  },
  {
    "country": "AL",
    "name": "Velçan",
    "lat": "40.95472",
    "lng": "20.46222"
  },
  {
    "country": "AL",
    "name": "Ujmisht",
    "lat": "41.90833",
    "lng": "20.34694"
  },
  {
    "country": "AL",
    "name": "Udënisht",
    "lat": "40.96333",
    "lng": "20.63917"
  },
  {
    "country": "AL",
    "name": "Tunjë",
    "lat": "40.83417",
    "lng": "20.11194"
  },
  {
    "country": "AL",
    "name": "Tregan",
    "lat": "41.02472",
    "lng": "20.07833"
  },
  {
    "country": "AL",
    "name": "Trebisht-Muçinë",
    "lat": "41.41111",
    "lng": "20.53556"
  },
  {
    "country": "AL",
    "name": "Trebinjë",
    "lat": "40.91333",
    "lng": "20.55306"
  },
  {
    "country": "AL",
    "name": "Topojan",
    "lat": "40.37722",
    "lng": "20.21333"
  },
  {
    "country": "AL",
    "name": "Tomin",
    "lat": "41.69083",
    "lng": "20.42167"
  },
  {
    "country": "AL",
    "name": "Tepelenë",
    "lat": "40.29583",
    "lng": "20.01917"
  },
  {
    "country": "AL",
    "name": "Surroj",
    "lat": "41.99222",
    "lng": "20.34417"
  },
  {
    "country": "AL",
    "name": "Sult",
    "lat": "40.88472",
    "lng": "20.09944"
  },
  {
    "country": "AL",
    "name": "Sukë",
    "lat": "40.37528",
    "lng": "20.15472"
  },
  {
    "country": "AL",
    "name": "Suç",
    "lat": "41.57694",
    "lng": "20.05139"
  },
  {
    "country": "AL",
    "name": "Stravaj",
    "lat": "41.00528",
    "lng": "20.42306"
  },
  {
    "country": "AL",
    "name": "Steblevë",
    "lat": "41.33722",
    "lng": "20.47"
  },
  {
    "country": "AL",
    "name": "Sllovë",
    "lat": "41.80111",
    "lng": "20.40833"
  },
  {
    "country": "AL",
    "name": "Skore",
    "lat": "40.10722",
    "lng": "20.36639"
  },
  {
    "country": "AL",
    "name": "Skënderbegas",
    "lat": "40.77611",
    "lng": "20.24056"
  },
  {
    "country": "AL",
    "name": "Shushicë",
    "lat": "41.0975",
    "lng": "20.14833"
  },
  {
    "country": "AL",
    "name": "Shupenzë",
    "lat": "41.53",
    "lng": "20.42361"
  },
  {
    "country": "AL",
    "name": "Shtiqën",
    "lat": "42.04056",
    "lng": "20.43417"
  },
  {
    "country": "AL",
    "name": "Shishtavec",
    "lat": "41.98",
    "lng": "20.60583"
  },
  {
    "country": "AL",
    "name": "Shirgjan",
    "lat": "41.05194",
    "lng": "20.05333"
  },
  {
    "country": "AL",
    "name": "Shëngjin",
    "lat": "41.92611",
    "lng": "20.18833"
  },
  {
    "country": "AL",
    "name": "Shënmëri",
    "lat": "42.10417",
    "lng": "20.23833"
  },
  {
    "country": "AL",
    "name": "Selishtë",
    "lat": "41.6275",
    "lng": "20.27917"
  },
  {
    "country": "AL",
    "name": "Saraqinishtë",
    "lat": "40.10528",
    "lng": "20.22944"
  },
  {
    "country": "AL",
    "name": "Rukaj",
    "lat": "41.68361",
    "lng": "20.01917"
  },
  {
    "country": "AL",
    "name": "Rajcë",
    "lat": "41.09028",
    "lng": "20.57639"
  },
  {
    "country": "AL",
    "name": "Roshnik",
    "lat": "40.73278",
    "lng": "20.03944"
  },
  {
    "country": "AL",
    "name": "Qukës-Skënderbe",
    "lat": "41.08389",
    "lng": "20.43806"
  },
  {
    "country": "AL",
    "name": "Qestorat",
    "lat": "40.1175",
    "lng": "20.19972"
  },
  {
    "country": "AL",
    "name": "Qafëmal",
    "lat": "42.09333",
    "lng": "20.09056"
  },
  {
    "country": "AL",
    "name": "Përrenjas-Fshat",
    "lat": "41.06667",
    "lng": "20.53528"
  },
  {
    "country": "AL",
    "name": "Përrenjas",
    "lat": "41.07306",
    "lng": "20.54889"
  },
  {
    "country": "AL",
    "name": "Proptisht",
    "lat": "40.98611",
    "lng": "20.5025"
  },
  {
    "country": "AL",
    "name": "Progër",
    "lat": "40.69417",
    "lng": "20.94028"
  },
  {
    "country": "AL",
    "name": "Potom",
    "lat": "40.48833",
    "lng": "20.37333"
  },
  {
    "country": "AL",
    "name": "Poroçan",
    "lat": "40.94194",
    "lng": "20.29861"
  },
  {
    "country": "AL",
    "name": "Polis-Gostimë",
    "lat": "41.13333",
    "lng": "20.25833"
  },
  {
    "country": "AL",
    "name": "Poliçan",
    "lat": "40.61222",
    "lng": "20.09806"
  },
  {
    "country": "AL",
    "name": "Pojan",
    "lat": "40.72583",
    "lng": "20.8375"
  },
  {
    "country": "AL",
    "name": "Pogradec",
    "lat": "40.9025",
    "lng": "20.6525"
  },
  {
    "country": "AL",
    "name": "Pishaj",
    "lat": "40.88111",
    "lng": "20.18278"
  },
  {
    "country": "AL",
    "name": "Pirg",
    "lat": "40.785",
    "lng": "20.70611"
  },
  {
    "country": "AL",
    "name": "Gjinkar",
    "lat": "40.19944",
    "lng": "20.40611"
  },
  {
    "country": "AL",
    "name": "Petran",
    "lat": "40.20944",
    "lng": "20.41833"
  },
  {
    "country": "AL",
    "name": "Peshkopi",
    "lat": "41.685",
    "lng": "20.42889"
  },
  {
    "country": "AL",
    "name": "Përmet",
    "lat": "40.23361",
    "lng": "20.35167"
  },
  {
    "country": "AL",
    "name": "Ostreni i Math",
    "lat": "41.43083",
    "lng": "20.45556"
  },
  {
    "country": "AL",
    "name": "Orosh",
    "lat": "41.83333",
    "lng": "20.08333"
  },
  {
    "country": "AL",
    "name": "Orenjë",
    "lat": "41.28472",
    "lng": "20.21194"
  },
  {
    "country": "AL",
    "name": "Odrie",
    "lat": "40.13333",
    "lng": "20.16667"
  },
  {
    "country": "AL",
    "name": "Novoselë",
    "lat": "40.76139",
    "lng": "20.69833"
  },
  {
    "country": "AL",
    "name": "Picar",
    "lat": "40.16667",
    "lng": "20.04833"
  },
  {
    "country": "AL",
    "name": "Mollas",
    "lat": "40.92694",
    "lng": "20.00361"
  },
  {
    "country": "AL",
    "name": "Mollas",
    "lat": "40.42556",
    "lng": "20.67444"
  },
  {
    "country": "AL",
    "name": "Mollaj",
    "lat": "40.56028",
    "lng": "20.74028"
  },
  {
    "country": "AL",
    "name": "Miras",
    "lat": "40.50917",
    "lng": "20.92833"
  },
  {
    "country": "AL",
    "name": "Melan",
    "lat": "41.65417",
    "lng": "20.46528"
  },
  {
    "country": "AL",
    "name": "Martanesh",
    "lat": "41.4",
    "lng": "20.2"
  },
  {
    "country": "AL",
    "name": "Maqellarë",
    "lat": "41.58889",
    "lng": "20.48306"
  },
  {
    "country": "AL",
    "name": "Maliq",
    "lat": "40.70583",
    "lng": "20.69972"
  },
  {
    "country": "AL",
    "name": "Macukull",
    "lat": "41.68861",
    "lng": "20.11028"
  },
  {
    "country": "AL",
    "name": "Lunik",
    "lat": "41.28917",
    "lng": "20.32361"
  },
  {
    "country": "AL",
    "name": "Llugaj",
    "lat": "42.34139",
    "lng": "20.10861"
  },
  {
    "country": "AL",
    "name": "Lis",
    "lat": "41.6275",
    "lng": "20.08528"
  },
  {
    "country": "AL",
    "name": "Liqenas",
    "lat": "40.78667",
    "lng": "20.90222"
  },
  {
    "country": "AL",
    "name": "Librazhd",
    "lat": "41.17944",
    "lng": "20.315"
  },
  {
    "country": "AL",
    "name": "Libonik",
    "lat": "40.70444",
    "lng": "20.70861"
  },
  {
    "country": "AL",
    "name": "Libohovë",
    "lat": "40.03111",
    "lng": "20.26306"
  },
  {
    "country": "AL",
    "name": "Leskovik",
    "lat": "40.15139",
    "lng": "20.59722"
  },
  {
    "country": "AL",
    "name": "Leshnjë",
    "lat": "40.53694",
    "lng": "20.31333"
  },
  {
    "country": "AL",
    "name": "Lenias",
    "lat": "40.76667",
    "lng": "20.39139"
  },
  {
    "country": "AL",
    "name": "Lekas",
    "lat": "40.60222",
    "lng": "20.5125"
  },
  {
    "country": "AL",
    "name": "Lazarat",
    "lat": "40.04667",
    "lng": "20.1475"
  },
  {
    "country": "AL",
    "name": "Labinot-Mal",
    "lat": "41.20083",
    "lng": "20.15222"
  },
  {
    "country": "AL",
    "name": "Labinot-Fushë",
    "lat": "41.14056",
    "lng": "20.14611"
  },
  {
    "country": "AL",
    "name": "Kushovë",
    "lat": "40.78889",
    "lng": "20.18889"
  },
  {
    "country": "AL",
    "name": "Kurbnesh",
    "lat": "41.77972",
    "lng": "20.08361"
  },
  {
    "country": "AL",
    "name": "Kukur",
    "lat": "40.86778",
    "lng": "20.36361"
  },
  {
    "country": "AL",
    "name": "Kukës",
    "lat": "42.07694",
    "lng": "20.42194"
  },
  {
    "country": "AL",
    "name": "Kthella e Epërme",
    "lat": "41.81194",
    "lng": "20.05889"
  },
  {
    "country": "AL",
    "name": "Krumë",
    "lat": "42.19694",
    "lng": "20.41333"
  },
  {
    "country": "AL",
    "name": "Korçë",
    "lat": "40.61861",
    "lng": "20.78083"
  },
  {
    "country": "AL",
    "name": "Kolsh",
    "lat": "42.07806",
    "lng": "20.34194"
  },
  {
    "country": "AL",
    "name": "Kodovjat",
    "lat": "40.80556",
    "lng": "20.25111"
  },
  {
    "country": "AL",
    "name": "Klos",
    "lat": "41.50694",
    "lng": "20.08667"
  },
  {
    "country": "AL",
    "name": "Klos",
    "lat": "40.94611",
    "lng": "20.00972"
  },
  {
    "country": "AL",
    "name": "Këlcyrë",
    "lat": "40.31306",
    "lng": "20.18944"
  },
  {
    "country": "AL",
    "name": "Kastriot",
    "lat": "41.72944",
    "lng": "20.37722"
  },
  {
    "country": "AL",
    "name": "Kardhiq",
    "lat": "40.12167",
    "lng": "20.0275"
  },
  {
    "country": "AL",
    "name": "Kalis",
    "lat": "41.83889",
    "lng": "20.36667"
  },
  {
    "country": "AL",
    "name": "Iballë",
    "lat": "42.1875",
    "lng": "20.0025"
  },
  {
    "country": "AL",
    "name": "Hotolisht",
    "lat": "41.15667",
    "lng": "20.39722"
  },
  {
    "country": "AL",
    "name": "Hoçisht",
    "lat": "40.60833",
    "lng": "20.91417"
  },
  {
    "country": "AL",
    "name": "Gramsh",
    "lat": "40.86972",
    "lng": "20.18444"
  },
  {
    "country": "AL",
    "name": "Gostimë",
    "lat": "41.14556",
    "lng": "20.24"
  },
  {
    "country": "AL",
    "name": "Golaj",
    "lat": "42.2475",
    "lng": "20.38028"
  },
  {
    "country": "AL",
    "name": "Gjorica e Sipërme",
    "lat": "41.53444",
    "lng": "20.45"
  },
  {
    "country": "AL",
    "name": "Gjirokastër",
    "lat": "40.07583",
    "lng": "20.13889"
  },
  {
    "country": "AL",
    "name": "Gjinar",
    "lat": "41.0225",
    "lng": "20.18889"
  },
  {
    "country": "AL",
    "name": "Gjinaj",
    "lat": "42.11806",
    "lng": "20.43583"
  },
  {
    "country": "AL",
    "name": "Gjergjan",
    "lat": "41.04306",
    "lng": "20.02972"
  },
  {
    "country": "AL",
    "name": "Gjegjan",
    "lat": "41.93778",
    "lng": "20.01111"
  },
  {
    "country": "AL",
    "name": "Fushë-Muhurr",
    "lat": "41.67972",
    "lng": "20.33139"
  },
  {
    "country": "AL",
    "name": "Fushë-Lurë",
    "lat": "41.80611",
    "lng": "20.23194"
  },
  {
    "country": "AL",
    "name": "Fushë-Çidhnë",
    "lat": "41.76056",
    "lng": "20.34111"
  },
  {
    "country": "AL",
    "name": "Fushë-Bulqizë",
    "lat": "41.52194",
    "lng": "20.28222"
  },
  {
    "country": "AL",
    "name": "Fushë-Arrëz",
    "lat": "42.06222",
    "lng": "20.01667"
  },
  {
    "country": "AL",
    "name": "Frashër",
    "lat": "40.36889",
    "lng": "20.42444"
  },
  {
    "country": "AL",
    "name": "Fierzë",
    "lat": "42.26056",
    "lng": "20.01694"
  },
  {
    "country": "AL",
    "name": "Fajzë",
    "lat": "42.16694",
    "lng": "20.35083"
  },
  {
    "country": "AL",
    "name": "Ersekë",
    "lat": "40.33778",
    "lng": "20.67889"
  },
  {
    "country": "AL",
    "name": "Elbasan",
    "lat": "41.1125",
    "lng": "20.08222"
  },
  {
    "country": "AL",
    "name": "Drenovë",
    "lat": "40.58333",
    "lng": "20.79222"
  },
  {
    "country": "AL",
    "name": "Dishnicë",
    "lat": "40.65139",
    "lng": "20.81361"
  },
  {
    "country": "AL",
    "name": "Derviçian",
    "lat": "40.0325",
    "lng": "20.17333"
  },
  {
    "country": "AL",
    "name": "Derjan",
    "lat": "41.67361",
    "lng": "20.05833"
  },
  {
    "country": "AL",
    "name": "Gjerbës",
    "lat": "40.62917",
    "lng": "20.25111"
  },
  {
    "country": "AL",
    "name": "Çorovodë",
    "lat": "40.50417",
    "lng": "20.22722"
  },
  {
    "country": "AL",
    "name": "Çlirim",
    "lat": "40.4175",
    "lng": "20.55028"
  },
  {
    "country": "AL",
    "name": "Cerava",
    "lat": "40.85139",
    "lng": "20.725"
  },
  {
    "country": "AL",
    "name": "Çepan",
    "lat": "40.42056",
    "lng": "20.26056"
  },
  {
    "country": "AL",
    "name": "Çarshovë",
    "lat": "40.11806",
    "lng": "20.54083"
  },
  {
    "country": "AL",
    "name": "Kokaj",
    "lat": "41.87833",
    "lng": "20.50472"
  },
  {
    "country": "AL",
    "name": "Buz",
    "lat": "40.445",
    "lng": "20.00472"
  },
  {
    "country": "AL",
    "name": "Bushtricë",
    "lat": "41.87861",
    "lng": "20.42194"
  },
  {
    "country": "AL",
    "name": "Burrel",
    "lat": "41.61028",
    "lng": "20.00889"
  },
  {
    "country": "AL",
    "name": "Bulqizë",
    "lat": "41.49167",
    "lng": "20.22194"
  },
  {
    "country": "AL",
    "name": "Bujan",
    "lat": "42.32639",
    "lng": "20.07639"
  },
  {
    "country": "AL",
    "name": "Bradashesh",
    "lat": "41.105",
    "lng": "20.0225"
  },
  {
    "country": "AL",
    "name": "Blinisht",
    "lat": "41.86139",
    "lng": "20"
  },
  {
    "country": "AL",
    "name": "Blerim",
    "lat": "42.16056",
    "lng": "20.19194"
  },
  {
    "country": "AL",
    "name": "Bilisht",
    "lat": "40.6275",
    "lng": "20.99"
  },
  {
    "country": "AL",
    "name": "Bicaj",
    "lat": "41.99472",
    "lng": "20.4125"
  },
  {
    "country": "AL",
    "name": "Dardhas",
    "lat": "40.84583",
    "lng": "20.65722"
  },
  {
    "country": "AL",
    "name": "Barmash",
    "lat": "40.27778",
    "lng": "20.61833"
  },
  {
    "country": "AL",
    "name": "Ballaban",
    "lat": "40.41667",
    "lng": "20.13444"
  },
  {
    "country": "AL",
    "name": "Arrën",
    "lat": "41.91306",
    "lng": "20.28833"
  },
  {
    "country": "AL",
    "name": "Arras",
    "lat": "41.73583",
    "lng": "20.32417"
  },
  {
    "country": "AL",
    "name": "Fierzë",
    "lat": "42.26472",
    "lng": "20.02694"
  },
  {
    "country": "AL",
    "name": "Bytyç",
    "lat": "42.31",
    "lng": "20.20278"
  },
  {
    "country": "AL",
    "name": "Librazhd-Qendër",
    "lat": "41.19694",
    "lng": "20.33556"
  },
  {
    "country": "AL",
    "name": "Funarë",
    "lat": "41.19639",
    "lng": "20.05972"
  },
  {
    "country": "AL",
    "name": "Moglicë",
    "lat": "40.71806",
    "lng": "20.43806"
  },
  {
    "country": "AL",
    "name": "Bogovë",
    "lat": "40.57111",
    "lng": "20.15"
  },
  {
    "country": "AL",
    "name": "Piskovë",
    "lat": "40.27917",
    "lng": "20.2725"
  },
  {
    "country": "AL",
    "name": "Lukovë",
    "lat": "39.99222",
    "lng": "19.91389"
  },
  {
    "country": "AL",
    "name": "Zharrëz",
    "lat": "40.70917",
    "lng": "19.64972"
  },
  {
    "country": "AL",
    "name": "Zejmen",
    "lat": "41.70778",
    "lng": "19.68917"
  },
  {
    "country": "AL",
    "name": "Zall-Herr",
    "lat": "41.38944",
    "lng": "19.8275"
  },
  {
    "country": "AL",
    "name": "Zall-Bastar",
    "lat": "41.42972",
    "lng": "19.93028"
  },
  {
    "country": "AL",
    "name": "Xhafzotaj",
    "lat": "41.34444",
    "lng": "19.5475"
  },
  {
    "country": "AL",
    "name": "Vukatanë",
    "lat": "42.02806",
    "lng": "19.54778"
  },
  {
    "country": "AL",
    "name": "Vranisht",
    "lat": "40.20972",
    "lng": "19.69083"
  },
  {
    "country": "AL",
    "name": "Vorë",
    "lat": "41.39083",
    "lng": "19.655"
  },
  {
    "country": "AL",
    "name": "Vlorë",
    "lat": "40.46667",
    "lng": "19.48972"
  },
  {
    "country": "AL",
    "name": "Velipojë",
    "lat": "41.87833",
    "lng": "19.40556"
  },
  {
    "country": "AL",
    "name": "Velabisht",
    "lat": "40.70167",
    "lng": "19.93222"
  },
  {
    "country": "AL",
    "name": "Vaqarr",
    "lat": "41.29917",
    "lng": "19.74417"
  },
  {
    "country": "AL",
    "name": "Ura Vajgurore",
    "lat": "40.76889",
    "lng": "19.87778"
  },
  {
    "country": "AL",
    "name": "Ungrej",
    "lat": "41.87528",
    "lng": "19.79472"
  },
  {
    "country": "AL",
    "name": "Ulëz",
    "lat": "41.68278",
    "lng": "19.89333"
  },
  {
    "country": "AL",
    "name": "Topojë",
    "lat": "40.76306",
    "lng": "19.43278"
  },
  {
    "country": "AL",
    "name": "Tirana",
    "lat": "41.3275",
    "lng": "19.81889"
  },
  {
    "country": "AL",
    "name": "Thumanë",
    "lat": "41.5475",
    "lng": "19.67778"
  },
  {
    "country": "AL",
    "name": "Tërbuf",
    "lat": "41.04",
    "lng": "19.61417"
  },
  {
    "country": "AL",
    "name": "Synej",
    "lat": "41.18",
    "lng": "19.5425"
  },
  {
    "country": "AL",
    "name": "Sukth",
    "lat": "41.38056",
    "lng": "19.53778"
  },
  {
    "country": "AL",
    "name": "Strum",
    "lat": "40.75111",
    "lng": "19.7375"
  },
  {
    "country": "AL",
    "name": "Sinjë",
    "lat": "40.64806",
    "lng": "19.86806"
  },
  {
    "country": "AL",
    "name": "Sinaballaj",
    "lat": "41.06889",
    "lng": "19.69944"
  },
  {
    "country": "AL",
    "name": "Shkodër",
    "lat": "42.06828",
    "lng": "19.51258"
  },
  {
    "country": "AL",
    "name": "Shijak",
    "lat": "41.34556",
    "lng": "19.56722"
  },
  {
    "country": "AL",
    "name": "Shezë",
    "lat": "41.02417",
    "lng": "19.81611"
  },
  {
    "country": "AL",
    "name": "Shënkoll",
    "lat": "41.69083",
    "lng": "19.65333"
  },
  {
    "country": "AL",
    "name": "Shëngjin",
    "lat": "41.81361",
    "lng": "19.59389"
  },
  {
    "country": "AL",
    "name": "Shëngjergj",
    "lat": "41.18333",
    "lng": "19.53333"
  },
  {
    "country": "AL",
    "name": "Shalës",
    "lat": "40.99861",
    "lng": "19.94778"
  },
  {
    "country": "AL",
    "name": "Nicaj-Shalë",
    "lat": "42.29944",
    "lng": "19.805"
  },
  {
    "country": "AL",
    "name": "Sevaster",
    "lat": "40.39639",
    "lng": "19.72972"
  },
  {
    "country": "AL",
    "name": "Selitë",
    "lat": "41.63528",
    "lng": "19.755"
  },
  {
    "country": "AL",
    "name": "Valbonë",
    "lat": "42.45139",
    "lng": "19.89167"
  },
  {
    "country": "AL",
    "name": "Selenicë",
    "lat": "40.53056",
    "lng": "19.63583"
  },
  {
    "country": "AL",
    "name": "Ruzhdie",
    "lat": "40.67083",
    "lng": "19.69833"
  },
  {
    "country": "AL",
    "name": "Rubik",
    "lat": "41.77444",
    "lng": "19.78611"
  },
  {
    "country": "AL",
    "name": "Rrogozhinë",
    "lat": "41.07639",
    "lng": "19.66528"
  },
  {
    "country": "AL",
    "name": "Rrëshen",
    "lat": "41.7675",
    "lng": "19.87556"
  },
  {
    "country": "AL",
    "name": "Rrashbull",
    "lat": "41.32278",
    "lng": "19.51028"
  },
  {
    "country": "AL",
    "name": "Rrasa e Sipërme",
    "lat": "40.96778",
    "lng": "19.82111"
  },
  {
    "country": "AL",
    "name": "Rrapë",
    "lat": "42.04444",
    "lng": "19.97056"
  },
  {
    "country": "AL",
    "name": "Roskovec",
    "lat": "40.7375",
    "lng": "19.70222"
  },
  {
    "country": "AL",
    "name": "Remas",
    "lat": "40.88639",
    "lng": "19.51139"
  },
  {
    "country": "AL",
    "name": "Qerret",
    "lat": "42.05306",
    "lng": "19.83722"
  },
  {
    "country": "AL",
    "name": "Qelëz",
    "lat": "42.08972",
    "lng": "19.895"
  },
  {
    "country": "AL",
    "name": "Pukë",
    "lat": "42.04444",
    "lng": "19.89972"
  },
  {
    "country": "AL",
    "name": "Progonat",
    "lat": "40.21333",
    "lng": "19.94472"
  },
  {
    "country": "AL",
    "name": "Prezë",
    "lat": "41.42722",
    "lng": "19.67278"
  },
  {
    "country": "AL",
    "name": "Poshnje",
    "lat": "40.78028",
    "lng": "19.84417"
  },
  {
    "country": "AL",
    "name": "Portëz",
    "lat": "40.69917",
    "lng": "19.57444"
  },
  {
    "country": "AL",
    "name": "Peza e Madhe",
    "lat": "41.2175",
    "lng": "19.69611"
  },
  {
    "country": "AL",
    "name": "Petrelë",
    "lat": "41.25306",
    "lng": "19.85306"
  },
  {
    "country": "AL",
    "name": "Përparim",
    "lat": "41.05",
    "lng": "19.79917"
  },
  {
    "country": "AL",
    "name": "Perondi",
    "lat": "40.77889",
    "lng": "19.92306"
  },
  {
    "country": "AL",
    "name": "Peqin",
    "lat": "41.04611",
    "lng": "19.75111"
  },
  {
    "country": "AL",
    "name": "Patos Fshat",
    "lat": "40.64278",
    "lng": "19.65083"
  },
  {
    "country": "AL",
    "name": "Patos",
    "lat": "40.68333",
    "lng": "19.61944"
  },
  {
    "country": "AL",
    "name": "Paskuqan",
    "lat": "41.35389",
    "lng": "19.80667"
  },
  {
    "country": "AL",
    "name": "Papër",
    "lat": "41.05167",
    "lng": "19.96083"
  },
  {
    "country": "AL",
    "name": "Pajovë",
    "lat": "41.05472",
    "lng": "19.8375"
  },
  {
    "country": "AL",
    "name": "Otllak",
    "lat": "40.74389",
    "lng": "19.93528"
  },
  {
    "country": "AL",
    "name": "Orikum",
    "lat": "40.32528",
    "lng": "19.47139"
  },
  {
    "country": "AL",
    "name": "Novoselë",
    "lat": "40.625",
    "lng": "19.46694"
  },
  {
    "country": "AL",
    "name": "Nikël",
    "lat": "41.44417",
    "lng": "19.74833"
  },
  {
    "country": "AL",
    "name": "Nicaj-Shosh",
    "lat": "42.24444",
    "lng": "19.75806"
  },
  {
    "country": "AL",
    "name": "Ngraçan",
    "lat": "40.64444",
    "lng": "19.7925"
  },
  {
    "country": "AL",
    "name": "Ndroq",
    "lat": "41.26389",
    "lng": "19.65583"
  },
  {
    "country": "AL",
    "name": "Milot",
    "lat": "41.68389",
    "lng": "19.71556"
  },
  {
    "country": "AL",
    "name": "Memaliaj",
    "lat": "40.35167",
    "lng": "19.98028"
  },
  {
    "country": "AL",
    "name": "Mbrostar-Urë",
    "lat": "40.75361",
    "lng": "19.57944"
  },
  {
    "country": "AL",
    "name": "Manzë",
    "lat": "41.42861",
    "lng": "19.59306"
  },
  {
    "country": "AL",
    "name": "Mamurras",
    "lat": "41.5775",
    "lng": "19.69222"
  },
  {
    "country": "AL",
    "name": "Maminas",
    "lat": "41.37917",
    "lng": "19.6075"
  },
  {
    "country": "AL",
    "name": "Luzi i Vogël",
    "lat": "41.1275",
    "lng": "19.57389"
  },
  {
    "country": "AL",
    "name": "Lushnjë",
    "lat": "40.94194",
    "lng": "19.705"
  },
  {
    "country": "AL",
    "name": "Luftinjë",
    "lat": "40.44278",
    "lng": "19.95444"
  },
  {
    "country": "AL",
    "name": "Libofshë",
    "lat": "40.83444",
    "lng": "19.55222"
  },
  {
    "country": "AL",
    "name": "Lezhë",
    "lat": "41.78361",
    "lng": "19.64361"
  },
  {
    "country": "AL",
    "name": "Levan",
    "lat": "40.67611",
    "lng": "19.48972"
  },
  {
    "country": "AL",
    "name": "Lekbibaj",
    "lat": "42.29472",
    "lng": "19.93167"
  },
  {
    "country": "AL",
    "name": "Lekaj",
    "lat": "41.11444",
    "lng": "19.60972"
  },
  {
    "country": "AL",
    "name": "Laç",
    "lat": "41.63556",
    "lng": "19.71306"
  },
  {
    "country": "AL",
    "name": "Kutë",
    "lat": "40.47333",
    "lng": "19.76639"
  },
  {
    "country": "AL",
    "name": "Kutalli",
    "lat": "40.78389",
    "lng": "19.78667"
  },
  {
    "country": "AL",
    "name": "Kurjan",
    "lat": "40.7175",
    "lng": "19.74556"
  },
  {
    "country": "AL",
    "name": "Kuman",
    "lat": "40.72667",
    "lng": "19.68667"
  },
  {
    "country": "AL",
    "name": "Kuçovë",
    "lat": "40.80028",
    "lng": "19.91667"
  },
  {
    "country": "AL",
    "name": "Kuç",
    "lat": "42.03972",
    "lng": "19.52528"
  },
  {
    "country": "AL",
    "name": "Kryevidh",
    "lat": "41.10056",
    "lng": "19.5275"
  },
  {
    "country": "AL",
    "name": "Krutja e Poshtme",
    "lat": "40.87194",
    "lng": "19.68083"
  },
  {
    "country": "AL",
    "name": "Krujë",
    "lat": "41.50917",
    "lng": "19.79278"
  },
  {
    "country": "AL",
    "name": "Krrabë",
    "lat": "41.21556",
    "lng": "19.97139"
  },
  {
    "country": "AL",
    "name": "Krahës",
    "lat": "40.43861",
    "lng": "19.84444"
  },
  {
    "country": "AL",
    "name": "Kozarë",
    "lat": "40.83083",
    "lng": "19.90056"
  },
  {
    "country": "AL",
    "name": "Kotë",
    "lat": "40.38944",
    "lng": "19.60222"
  },
  {
    "country": "AL",
    "name": "Koplik",
    "lat": "42.21361",
    "lng": "19.43639"
  },
  {
    "country": "AL",
    "name": "Kombësi",
    "lat": "41.58167",
    "lng": "19.98556"
  },
  {
    "country": "AL",
    "name": "Kolonjë",
    "lat": "40.82417",
    "lng": "19.60389"
  },
  {
    "country": "AL",
    "name": "Kolç",
    "lat": "41.78667",
    "lng": "19.67611"
  },
  {
    "country": "AL",
    "name": "Kavajë",
    "lat": "41.18556",
    "lng": "19.55694"
  },
  {
    "country": "AL",
    "name": "Katundi i Ri",
    "lat": "41.40306",
    "lng": "19.51806"
  },
  {
    "country": "AL",
    "name": "Kastrat",
    "lat": "42.3525",
    "lng": "19.48917"
  },
  {
    "country": "AL",
    "name": "Kashar",
    "lat": "41.34972",
    "lng": "19.71028"
  },
  {
    "country": "AL",
    "name": "Karinë",
    "lat": "41.06306",
    "lng": "19.71611"
  },
  {
    "country": "AL",
    "name": "Karbunara e Vogël",
    "lat": "40.92194",
    "lng": "19.71778"
  },
  {
    "country": "AL",
    "name": "Kamëz",
    "lat": "41.38167",
    "lng": "19.76028"
  },
  {
    "country": "AL",
    "name": "Kallmeti i Madh",
    "lat": "41.84889",
    "lng": "19.68694"
  },
  {
    "country": "AL",
    "name": "Kallmet",
    "lat": "41.41806",
    "lng": "19.82139"
  },
  {
    "country": "AL",
    "name": "Kalenjë",
    "lat": "40.59",
    "lng": "19.77833"
  },
  {
    "country": "AL",
    "name": "Kajan",
    "lat": "40.91417",
    "lng": "19.88944"
  },
  {
    "country": "AL",
    "name": "Kaçinar",
    "lat": "41.89333",
    "lng": "19.89861"
  },
  {
    "country": "AL",
    "name": "Ishëm",
    "lat": "41.54528",
    "lng": "19.6"
  },
  {
    "country": "AL",
    "name": "Hysgjokaj",
    "lat": "40.97167",
    "lng": "19.78972"
  },
  {
    "country": "AL",
    "name": "Hot",
    "lat": "42.36194",
    "lng": "19.44417"
  },
  {
    "country": "AL",
    "name": "Himarë",
    "lat": "40.10167",
    "lng": "19.74472"
  },
  {
    "country": "AL",
    "name": "Helmas",
    "lat": "41.18028",
    "lng": "19.60694"
  },
  {
    "country": "AL",
    "name": "Hekal",
    "lat": "40.56194",
    "lng": "19.73583"
  },
  {
    "country": "AL",
    "name": "Hasan",
    "lat": "41.48278",
    "lng": "19.69972"
  },
  {
    "country": "AL",
    "name": "Hajmel",
    "lat": "41.95306",
    "lng": "19.63778"
  },
  {
    "country": "AL",
    "name": "Gurra e Vogël",
    "lat": "41.53611",
    "lng": "19.99083"
  },
  {
    "country": "AL",
    "name": "Guri i Zi",
    "lat": "42.045",
    "lng": "19.57472"
  },
  {
    "country": "AL",
    "name": "Gruemirë",
    "lat": "42.15917",
    "lng": "19.51889"
  },
  {
    "country": "AL",
    "name": "Greshicë",
    "lat": "40.55194",
    "lng": "19.77833"
  },
  {
    "country": "AL",
    "name": "Grekan",
    "lat": "40.92944",
    "lng": "19.9475"
  },
  {
    "country": "AL",
    "name": "Gradishtë",
    "lat": "40.88806",
    "lng": "19.58583"
  },
  {
    "country": "AL",
    "name": "Gracen",
    "lat": "41.15194",
    "lng": "19.96361"
  },
  {
    "country": "AL",
    "name": "Grabjan",
    "lat": "40.95306",
    "lng": "19.58083"
  },
  {
    "country": "AL",
    "name": "Gosë e Madhe",
    "lat": "41.09056",
    "lng": "19.62472"
  },
  {
    "country": "AL",
    "name": "Golem",
    "lat": "40.96778",
    "lng": "19.68528"
  },
  {
    "country": "AL",
    "name": "Gjoçaj",
    "lat": "41.02556",
    "lng": "19.72389"
  },
  {
    "country": "AL",
    "name": "Gjepalaj",
    "lat": "41.33306",
    "lng": "19.57806"
  },
  {
    "country": "AL",
    "name": "Fushëkuqe",
    "lat": "41.65028",
    "lng": "19.62"
  },
  {
    "country": "AL",
    "name": "Fushë-Krujë",
    "lat": "41.47833",
    "lng": "19.71778"
  },
  {
    "country": "AL",
    "name": "Fratar",
    "lat": "40.5",
    "lng": "19.81667"
  },
  {
    "country": "AL",
    "name": "Frakulla e Madhe",
    "lat": "40.65583",
    "lng": "19.5025"
  },
  {
    "country": "AL",
    "name": "Fier-Shegan",
    "lat": "40.86722",
    "lng": "19.78528"
  },
  {
    "country": "AL",
    "name": "Fier-Çifçi",
    "lat": "40.71667",
    "lng": "19.56667"
  },
  {
    "country": "AL",
    "name": "Fier",
    "lat": "40.72389",
    "lng": "19.55611"
  },
  {
    "country": "AL",
    "name": "Farka e Madhe",
    "lat": "41.30556",
    "lng": "19.86694"
  },
  {
    "country": "AL",
    "name": "Durrës",
    "lat": "41.32306",
    "lng": "19.44139"
  },
  {
    "country": "AL",
    "name": "Drenovë",
    "lat": "40.60056",
    "lng": "19.70083"
  },
  {
    "country": "AL",
    "name": "Divjakë",
    "lat": "40.99667",
    "lng": "19.52944"
  },
  {
    "country": "AL",
    "name": "Dërmënas",
    "lat": "40.74556",
    "lng": "19.49389"
  },
  {
    "country": "AL",
    "name": "Vau i Dejës",
    "lat": "42.01",
    "lng": "19.62472"
  },
  {
    "country": "AL",
    "name": "Dajt",
    "lat": "41.39361",
    "lng": "19.91583"
  },
  {
    "country": "AL",
    "name": "Dajç",
    "lat": "41.99167",
    "lng": "19.41056"
  },
  {
    "country": "AL",
    "name": "Dajç",
    "lat": "41.91556",
    "lng": "19.60444"
  },
  {
    "country": "AL",
    "name": "Cukalat",
    "lat": "40.73028",
    "lng": "19.79056"
  },
  {
    "country": "AL",
    "name": "Cudhi Zall",
    "lat": "41.50944",
    "lng": "19.84583"
  },
  {
    "country": "AL",
    "name": "Cërrik",
    "lat": "41.03167",
    "lng": "19.97583"
  },
  {
    "country": "AL",
    "name": "Cakran",
    "lat": "40.60333",
    "lng": "19.62611"
  },
  {
    "country": "AL",
    "name": "Bushat",
    "lat": "42.11944",
    "lng": "19.89972"
  },
  {
    "country": "AL",
    "name": "Bubullimë",
    "lat": "40.81806",
    "lng": "19.64083"
  },
  {
    "country": "AL",
    "name": "Bubq",
    "lat": "41.47417",
    "lng": "19.65167"
  },
  {
    "country": "AL",
    "name": "Brataj",
    "lat": "40.26778",
    "lng": "19.66917"
  },
  {
    "country": "AL",
    "name": "Bërzhitë",
    "lat": "41.24528",
    "lng": "19.90111"
  },
  {
    "country": "AL",
    "name": "Bërxull",
    "lat": "41.38",
    "lng": "19.6875"
  },
  {
    "country": "AL",
    "name": "Bërdica e Madhe",
    "lat": "42.01528",
    "lng": "19.48167"
  },
  {
    "country": "AL",
    "name": "Berat",
    "lat": "40.70583",
    "lng": "19.95222"
  },
  {
    "country": "AL",
    "name": "Belsh",
    "lat": "40.975",
    "lng": "19.88194"
  },
  {
    "country": "AL",
    "name": "Baz",
    "lat": "41.63194",
    "lng": "19.92917"
  },
  {
    "country": "AL",
    "name": "Banaj",
    "lat": "40.82472",
    "lng": "19.83917"
  },
  {
    "country": "AL",
    "name": "Ballsh",
    "lat": "40.59889",
    "lng": "19.73472"
  },
  {
    "country": "AL",
    "name": "Ballagat",
    "lat": "40.99528",
    "lng": "19.76528"
  },
  {
    "country": "AL",
    "name": "Baldushk",
    "lat": "41.21389",
    "lng": "19.79694"
  },
  {
    "country": "AL",
    "name": "Armen",
    "lat": "40.53639",
    "lng": "19.59611"
  },
  {
    "country": "AL",
    "name": "Aranitas",
    "lat": "40.59444",
    "lng": "19.80667"
  },
  {
    "country": "AL",
    "name": "Allkaj",
    "lat": "40.8575",
    "lng": "19.75528"
  },
  {
    "country": "AL",
    "name": "Golem",
    "lat": "41.24583",
    "lng": "19.53472"
  },
  {
    "country": "AL",
    "name": "Balldreni i Ri",
    "lat": "41.81917",
    "lng": "19.64028"
  },
  {
    "country": "AL",
    "name": "Grudë-Fushë",
    "lat": "42.16222",
    "lng": "19.49667"
  },
  {
    "country": "AL",
    "name": "Fierzë",
    "lat": "40.92056",
    "lng": "19.84694"
  },
  {
    "country": "AL",
    "name": "Dushk",
    "lat": "40.72667",
    "lng": "19.75722"
  },
  {
    "country": "AL",
    "name": "Selitë",
    "lat": "40.5475",
    "lng": "19.84806"
  },
  {
    "country": "AL",
    "name": "Vllahinë",
    "lat": "40.45694",
    "lng": "19.64361"
  },
  {
    "country": "AL",
    "name": "Bajram Curri",
    "lat": "42.35734",
    "lng": "20.07679"
  },
  {
    "country": "AM",
    "name": "Zarrit’ap’",
    "lat": "39.63892",
    "lng": "45.51111"
  },
  {
    "country": "AM",
    "name": "Zangakatun",
    "lat": "39.82233",
    "lng": "45.04169"
  },
  {
    "country": "AM",
    "name": "Goravan",
    "lat": "39.90832",
    "lng": "44.73328"
  },
  {
    "country": "AM",
    "name": "Yeghegnavan",
    "lat": "39.83893",
    "lng": "44.61951"
  },
  {
    "country": "AM",
    "name": "Yeghegnadzor",
    "lat": "39.76389",
    "lng": "45.33239"
  },
  {
    "country": "AM",
    "name": "Vostan",
    "lat": "39.96515",
    "lng": "44.55937"
  },
  {
    "country": "AM",
    "name": "Vosketap’",
    "lat": "39.88114",
    "lng": "44.64917"
  },
  {
    "country": "AM",
    "name": "Vernashen",
    "lat": "39.79236",
    "lng": "45.36389"
  },
  {
    "country": "AM",
    "name": "Verishen",
    "lat": "39.53543",
    "lng": "46.32063"
  },
  {
    "country": "AM",
    "name": "Vedi",
    "lat": "39.91388",
    "lng": "44.7251"
  },
  {
    "country": "AM",
    "name": "Vayk’",
    "lat": "39.6889",
    "lng": "45.46668"
  },
  {
    "country": "AM",
    "name": "Tegh",
    "lat": "39.55826",
    "lng": "46.48054"
  },
  {
    "country": "AM",
    "name": "Surenavan",
    "lat": "39.79449",
    "lng": "44.77508"
  },
  {
    "country": "AM",
    "name": "Sisavan",
    "lat": "39.90802",
    "lng": "44.66721"
  },
  {
    "country": "AM",
    "name": "Shinuhayr",
    "lat": "39.4367",
    "lng": "46.31787"
  },
  {
    "country": "AM",
    "name": "Shahumyan",
    "lat": "39.94171",
    "lng": "44.57233"
  },
  {
    "country": "AM",
    "name": "Shatin",
    "lat": "39.83612",
    "lng": "45.30292"
  },
  {
    "country": "AM",
    "name": "Shaghat",
    "lat": "39.55829",
    "lng": "45.91669"
  },
  {
    "country": "AM",
    "name": "Rrind",
    "lat": "39.76111",
    "lng": "45.17792"
  },
  {
    "country": "AM",
    "name": "Noyakert",
    "lat": "39.83069",
    "lng": "44.66949"
  },
  {
    "country": "AM",
    "name": "Mrgavan",
    "lat": "39.97251",
    "lng": "44.53565"
  },
  {
    "country": "AM",
    "name": "Meghri",
    "lat": "38.90292",
    "lng": "46.24458"
  },
  {
    "country": "AM",
    "name": "Malishka",
    "lat": "39.74731",
    "lng": "45.4057"
  },
  {
    "country": "AM",
    "name": "Khndzoresk",
    "lat": "39.50568",
    "lng": "46.4361"
  },
  {
    "country": "AM",
    "name": "Kapan",
    "lat": "39.20755",
    "lng": "46.40576"
  },
  {
    "country": "AM",
    "name": "Jermuk",
    "lat": "39.84168",
    "lng": "45.66949"
  },
  {
    "country": "AM",
    "name": "Goris",
    "lat": "39.51111",
    "lng": "46.34168"
  },
  {
    "country": "AM",
    "name": "Gladzor",
    "lat": "39.7807",
    "lng": "45.34729"
  },
  {
    "country": "AM",
    "name": "Getap’",
    "lat": "39.76392",
    "lng": "45.30829"
  },
  {
    "country": "AM",
    "name": "Dzorastan",
    "lat": "39.27059",
    "lng": "46.3572"
  },
  {
    "country": "AM",
    "name": "Dalar",
    "lat": "39.97653",
    "lng": "44.52649"
  },
  {
    "country": "AM",
    "name": "Burastan",
    "lat": "39.99157",
    "lng": "44.49681"
  },
  {
    "country": "AM",
    "name": "Akner",
    "lat": "39.53491",
    "lng": "46.30732"
  },
  {
    "country": "AM",
    "name": "Brrnakot’",
    "lat": "39.49742",
    "lng": "45.97241"
  },
  {
    "country": "AM",
    "name": "Berk’anush",
    "lat": "39.9779",
    "lng": "44.51672"
  },
  {
    "country": "AM",
    "name": "Aygezard",
    "lat": "39.95436",
    "lng": "44.60229"
  },
  {
    "country": "AM",
    "name": "Aygepat",
    "lat": "39.95845",
    "lng": "44.59981"
  },
  {
    "country": "AM",
    "name": "Aygavan",
    "lat": "39.87327",
    "lng": "44.66984"
  },
  {
    "country": "AM",
    "name": "Avshar",
    "lat": "39.85553",
    "lng": "44.65832"
  },
  {
    "country": "AM",
    "name": "Hats’avan",
    "lat": "39.46405",
    "lng": "45.97047"
  },
  {
    "country": "AM",
    "name": "Artashat",
    "lat": "39.96144",
    "lng": "44.54447"
  },
  {
    "country": "AM",
    "name": "Yeghegis",
    "lat": "39.87231",
    "lng": "45.3501"
  },
  {
    "country": "AM",
    "name": "Armash",
    "lat": "39.76672",
    "lng": "44.8111"
  },
  {
    "country": "AM",
    "name": "Areni",
    "lat": "39.71668",
    "lng": "45.18329"
  },
  {
    "country": "AM",
    "name": "Ararat",
    "lat": "39.83069",
    "lng": "44.70569"
  },
  {
    "country": "AM",
    "name": "Angeghakot’",
    "lat": "39.56952",
    "lng": "45.94452"
  },
  {
    "country": "AM",
    "name": "Aghavnadzor",
    "lat": "39.78607",
    "lng": "45.2279"
  },
  {
    "country": "AM",
    "name": "Agarakadzor",
    "lat": "39.73608",
    "lng": "45.35553"
  },
  {
    "country": "AM",
    "name": "Agarak",
    "lat": "39.20684",
    "lng": "46.5446"
  },
  {
    "country": "AM",
    "name": "Aralez",
    "lat": "39.90008",
    "lng": "44.6557"
  },
  {
    "country": "AM",
    "name": "Horrom",
    "lat": "40.65973",
    "lng": "43.89032"
  },
  {
    "country": "AM",
    "name": "Margara",
    "lat": "40.03332",
    "lng": "44.18048"
  },
  {
    "country": "AM",
    "name": "Zovuni",
    "lat": "40.51111",
    "lng": "44.4389"
  },
  {
    "country": "AM",
    "name": "Zovaber",
    "lat": "40.56671",
    "lng": "44.79028"
  },
  {
    "country": "AM",
    "name": "Zorak",
    "lat": "40.09168",
    "lng": "44.39447"
  },
  {
    "country": "AM",
    "name": "Zarr",
    "lat": "40.25848",
    "lng": "44.73328"
  },
  {
    "country": "AM",
    "name": "Yerevan",
    "lat": "40.18111",
    "lng": "44.51361"
  },
  {
    "country": "AM",
    "name": "Yerazgavors",
    "lat": "40.69505",
    "lng": "43.74722"
  },
  {
    "country": "AM",
    "name": "Yeraskhahun",
    "lat": "40.07233",
    "lng": "44.21948"
  },
  {
    "country": "AM",
    "name": "Yeranos",
    "lat": "40.20428",
    "lng": "45.19209"
  },
  {
    "country": "AM",
    "name": "Yeghegnut",
    "lat": "40.90302",
    "lng": "44.63155"
  },
  {
    "country": "AM",
    "name": "Yeghegnut",
    "lat": "40.08893",
    "lng": "44.16669"
  },
  {
    "country": "AM",
    "name": "Ejmiatsin",
    "lat": "40.16557",
    "lng": "44.29462"
  },
  {
    "country": "AM",
    "name": "Yeghvard",
    "lat": "40.32507",
    "lng": "44.48608"
  },
  {
    "country": "AM",
    "name": "Voskevaz",
    "lat": "40.27508",
    "lng": "44.30011"
  },
  {
    "country": "AM",
    "name": "Voskevan",
    "lat": "41.12081",
    "lng": "45.06381"
  },
  {
    "country": "AM",
    "name": "Voskehask",
    "lat": "40.76426",
    "lng": "43.77474"
  },
  {
    "country": "AM",
    "name": "Verin Getashen",
    "lat": "40.13068",
    "lng": "45.25293"
  },
  {
    "country": "AM",
    "name": "Verin Dvin",
    "lat": "40.02434",
    "lng": "44.59038"
  },
  {
    "country": "AM",
    "name": "Verin Artashat",
    "lat": "39.99731",
    "lng": "44.58893"
  },
  {
    "country": "AM",
    "name": "Akht’ala",
    "lat": "41.16838",
    "lng": "44.75811"
  },
  {
    "country": "AM",
    "name": "Varser",
    "lat": "40.55548",
    "lng": "44.90832"
  },
  {
    "country": "AM",
    "name": "Vardenis",
    "lat": "40.18329",
    "lng": "45.73053"
  },
  {
    "country": "AM",
    "name": "Vardenik",
    "lat": "40.13348",
    "lng": "45.44311"
  },
  {
    "country": "AM",
    "name": "Vahan",
    "lat": "40.57549",
    "lng": "45.39769"
  },
  {
    "country": "AM",
    "name": "Vaghashen",
    "lat": "40.13611",
    "lng": "45.33069"
  },
  {
    "country": "AM",
    "name": "Vahagni",
    "lat": "40.90698",
    "lng": "44.60873"
  },
  {
    "country": "AM",
    "name": "Ushi",
    "lat": "40.34729",
    "lng": "44.37512"
  },
  {
    "country": "AM",
    "name": "Urrut",
    "lat": "41.06778",
    "lng": "44.39628"
  },
  {
    "country": "AM",
    "name": "Tsovinar",
    "lat": "40.15959",
    "lng": "45.46786"
  },
  {
    "country": "AM",
    "name": "Tsovazard",
    "lat": "40.4751",
    "lng": "45.05011"
  },
  {
    "country": "AM",
    "name": "Tsovak",
    "lat": "40.18254",
    "lng": "45.63286"
  },
  {
    "country": "AM",
    "name": "Tsovagyugh",
    "lat": "40.63348",
    "lng": "44.96112"
  },
  {
    "country": "AM",
    "name": "Tsaghkunk’",
    "lat": "40.18048",
    "lng": "44.27228"
  },
  {
    "country": "AM",
    "name": "Tsaghkahovit",
    "lat": "40.63428",
    "lng": "44.22241"
  },
  {
    "country": "AM",
    "name": "Tsaghkaber",
    "lat": "40.79849",
    "lng": "44.10144"
  },
  {
    "country": "AM",
    "name": "Tsaghkadzor",
    "lat": "40.53259",
    "lng": "44.72025"
  },
  {
    "country": "AM",
    "name": "Tsovasar",
    "lat": "40.1382",
    "lng": "45.19096"
  },
  {
    "country": "AM",
    "name": "Tashir",
    "lat": "41.12072",
    "lng": "44.28462"
  },
  {
    "country": "AM",
    "name": "Tandzut",
    "lat": "40.06952",
    "lng": "44.07788"
  },
  {
    "country": "AM",
    "name": "T’alin",
    "lat": "40.39172",
    "lng": "43.87793"
  },
  {
    "country": "AM",
    "name": "Step’anavan",
    "lat": "41.00995",
    "lng": "44.38531"
  },
  {
    "country": "AM",
    "name": "Spitak",
    "lat": "40.83221",
    "lng": "44.26731"
  },
  {
    "country": "AM",
    "name": "Spandaryan",
    "lat": "40.66105",
    "lng": "44.01551"
  },
  {
    "country": "AM",
    "name": "Alashkert",
    "lat": "40.10712",
    "lng": "44.05108"
  },
  {
    "country": "AM",
    "name": "Solak",
    "lat": "40.46252",
    "lng": "44.70709"
  },
  {
    "country": "AM",
    "name": "Sis",
    "lat": "40.05829",
    "lng": "44.38892"
  },
  {
    "country": "AM",
    "name": "Shnogh",
    "lat": "41.14693",
    "lng": "44.84043"
  },
  {
    "country": "AM",
    "name": "Shirak",
    "lat": "40.84042",
    "lng": "43.91582"
  },
  {
    "country": "AM",
    "name": "Shenavan",
    "lat": "40.48328",
    "lng": "44.38348"
  },
  {
    "country": "AM",
    "name": "Shenavan",
    "lat": "40.05548",
    "lng": "43.93048"
  },
  {
    "country": "AM",
    "name": "Sevan",
    "lat": "40.5473",
    "lng": "44.94171"
  },
  {
    "country": "AM",
    "name": "Sarukhan",
    "lat": "40.29169",
    "lng": "45.13068"
  },
  {
    "country": "AM",
    "name": "Sarigyugh",
    "lat": "41.03531",
    "lng": "45.14486"
  },
  {
    "country": "AM",
    "name": "Saratak",
    "lat": "40.6709",
    "lng": "43.87231"
  },
  {
    "country": "AM",
    "name": "Saramej",
    "lat": "40.77487",
    "lng": "44.2222"
  },
  {
    "country": "AM",
    "name": "Sarahart’",
    "lat": "40.87043",
    "lng": "44.21407"
  },
  {
    "country": "AM",
    "name": "Geghakert",
    "lat": "40.18516",
    "lng": "44.24331"
  },
  {
    "country": "AM",
    "name": "Ptghni",
    "lat": "40.25568",
    "lng": "44.58612"
  },
  {
    "country": "AM",
    "name": "Ptghunk’",
    "lat": "40.16388",
    "lng": "44.36389"
  },
  {
    "country": "AM",
    "name": "P’shatavan",
    "lat": "40.03888",
    "lng": "44.06671"
  },
  {
    "country": "AM",
    "name": "Prroshyan",
    "lat": "40.24731",
    "lng": "44.41949"
  },
  {
    "country": "AM",
    "name": "P’ok’r Mant’ash",
    "lat": "40.64026",
    "lng": "44.04666"
  },
  {
    "country": "AM",
    "name": "Zoravan",
    "lat": "40.35553",
    "lng": "44.52228"
  },
  {
    "country": "AM",
    "name": "Pemzashen",
    "lat": "40.58612",
    "lng": "43.94311"
  },
  {
    "country": "AM",
    "name": "Parravak’ar",
    "lat": "40.98248",
    "lng": "45.36696"
  },
  {
    "country": "AM",
    "name": "Oshakan",
    "lat": "40.26392",
    "lng": "44.31671"
  },
  {
    "country": "AM",
    "name": "Sardarapat",
    "lat": "40.13206",
    "lng": "44.00969"
  },
  {
    "country": "AM",
    "name": "Odzun",
    "lat": "41.05321",
    "lng": "44.61341"
  },
  {
    "country": "AM",
    "name": "Noyemberyan",
    "lat": "41.17244",
    "lng": "44.99917"
  },
  {
    "country": "AM",
    "name": "Nor Gyugh",
    "lat": "40.26672",
    "lng": "44.65832"
  },
  {
    "country": "AM",
    "name": "Nor Geghi",
    "lat": "40.32233",
    "lng": "44.58331"
  },
  {
    "country": "AM",
    "name": "Norashen",
    "lat": "41.18886",
    "lng": "44.33336"
  },
  {
    "country": "AM",
    "name": "Norashen",
    "lat": "40.0013",
    "lng": "44.59296"
  },
  {
    "country": "AM",
    "name": "Nor Armavir",
    "lat": "40.08612",
    "lng": "43.99451"
  },
  {
    "country": "AM",
    "name": "Noramarg",
    "lat": "40.02228",
    "lng": "44.42511"
  },
  {
    "country": "AM",
    "name": "Norakert",
    "lat": "40.19733",
    "lng": "44.3501"
  },
  {
    "country": "AM",
    "name": "Noratus",
    "lat": "40.37793",
    "lng": "45.18048"
  },
  {
    "country": "AM",
    "name": "Nerk’in Getashen",
    "lat": "40.14172",
    "lng": "45.27087"
  },
  {
    "country": "AM",
    "name": "Navur",
    "lat": "40.86695",
    "lng": "45.34179"
  },
  {
    "country": "AM",
    "name": "Nalbandyan",
    "lat": "40.0639",
    "lng": "43.98889"
  },
  {
    "country": "AM",
    "name": "Basen",
    "lat": "40.75767",
    "lng": "43.99274"
  },
  {
    "country": "AM",
    "name": "Hovtamej",
    "lat": "40.18329",
    "lng": "44.25848"
  },
  {
    "country": "AM",
    "name": "Mrgashen",
    "lat": "40.28607",
    "lng": "44.54449"
  },
  {
    "country": "AM",
    "name": "Mrgashat",
    "lat": "40.13068",
    "lng": "44.08069"
  },
  {
    "country": "AM",
    "name": "Mrganush",
    "lat": "40.02857",
    "lng": "44.55831"
  },
  {
    "country": "AM",
    "name": "Mosesgegh",
    "lat": "40.90534",
    "lng": "45.48838"
  },
  {
    "country": "AM",
    "name": "Mets Parni",
    "lat": "40.83472",
    "lng": "44.11108"
  },
  {
    "country": "AM",
    "name": "Mets Masrik",
    "lat": "40.21948",
    "lng": "45.76391"
  },
  {
    "country": "AM",
    "name": "Mets Mant’ash",
    "lat": "40.64376",
    "lng": "44.05653"
  },
  {
    "country": "AM",
    "name": "Metsavan",
    "lat": "41.20156",
    "lng": "44.22877"
  },
  {
    "country": "AM",
    "name": "Metsamor",
    "lat": "40.07233",
    "lng": "44.29169"
  },
  {
    "country": "AM",
    "name": "Merdzavan",
    "lat": "40.1814",
    "lng": "44.40033"
  },
  {
    "country": "AM",
    "name": "Meghrashen",
    "lat": "40.6723",
    "lng": "43.95831"
  },
  {
    "country": "AM",
    "name": "Meghradzor",
    "lat": "40.60611",
    "lng": "44.65147"
  },
  {
    "country": "AM",
    "name": "Mayakovski",
    "lat": "40.25293",
    "lng": "44.63892"
  },
  {
    "country": "AM",
    "name": "Masis",
    "lat": "40.06542",
    "lng": "44.41618"
  },
  {
    "country": "AM",
    "name": "Martuni",
    "lat": "40.13892",
    "lng": "45.30548"
  },
  {
    "country": "AM",
    "name": "Marmarashen",
    "lat": "40.05829",
    "lng": "44.47229"
  },
  {
    "country": "AM",
    "name": "Marmashen",
    "lat": "40.83486",
    "lng": "43.7779"
  },
  {
    "country": "AM",
    "name": "Margahovit",
    "lat": "40.73381",
    "lng": "44.68474"
  },
  {
    "country": "AM",
    "name": "Maralik",
    "lat": "40.57507",
    "lng": "43.87231"
  },
  {
    "country": "AM",
    "name": "Mayisyan",
    "lat": "40.84715",
    "lng": "43.83938"
  },
  {
    "country": "AM",
    "name": "Madina",
    "lat": "40.07637",
    "lng": "45.25507"
  },
  {
    "country": "AM",
    "name": "Lukashin",
    "lat": "40.18726",
    "lng": "44.0039"
  },
  {
    "country": "AM",
    "name": "Lorut",
    "lat": "40.93717",
    "lng": "44.77142"
  },
  {
    "country": "AM",
    "name": "Lichk’",
    "lat": "40.15933",
    "lng": "45.23467"
  },
  {
    "country": "AM",
    "name": "Lerrnavan",
    "lat": "40.7882",
    "lng": "44.16024"
  },
  {
    "country": "AM",
    "name": "Lerrnapat",
    "lat": "40.81538",
    "lng": "44.39344"
  },
  {
    "country": "AM",
    "name": "Lerrnants’k’",
    "lat": "40.79532",
    "lng": "44.27435"
  },
  {
    "country": "AM",
    "name": "Lerrnanist",
    "lat": "40.46676",
    "lng": "44.79249"
  },
  {
    "country": "AM",
    "name": "Lerrnakert",
    "lat": "40.5625",
    "lng": "43.9389"
  },
  {
    "country": "AM",
    "name": "Khoronk’",
    "lat": "40.13611",
    "lng": "44.24731"
  },
  {
    "country": "AM",
    "name": "Lchashen",
    "lat": "40.51947",
    "lng": "44.93048"
  },
  {
    "country": "AM",
    "name": "Lchap’",
    "lat": "40.45569",
    "lng": "45.07507"
  },
  {
    "country": "AM",
    "name": "Lanjaghbyur",
    "lat": "40.26947",
    "lng": "45.14447"
  },
  {
    "country": "AM",
    "name": "Kotayk’",
    "lat": "40.27789",
    "lng": "44.66388"
  },
  {
    "country": "AM",
    "name": "Kosh",
    "lat": "40.30011",
    "lng": "44.16107"
  },
  {
    "country": "AM",
    "name": "Vanadzor",
    "lat": "40.80456",
    "lng": "44.4939"
  },
  {
    "country": "AM",
    "name": "Hnaberd",
    "lat": "40.63721",
    "lng": "44.14058"
  },
  {
    "country": "AM",
    "name": "Khasht’arrak",
    "lat": "40.93668",
    "lng": "45.1821"
  },
  {
    "country": "AM",
    "name": "Kasakh",
    "lat": "40.53697",
    "lng": "44.41046"
  },
  {
    "country": "AM",
    "name": "Karchaghbyur",
    "lat": "40.17048",
    "lng": "45.57785"
  },
  {
    "country": "AM",
    "name": "Karbi",
    "lat": "40.33069",
    "lng": "44.37793"
  },
  {
    "country": "AM",
    "name": "Karanlukh",
    "lat": "40.10444",
    "lng": "45.28972"
  },
  {
    "country": "AM",
    "name": "Kaputan",
    "lat": "40.32507",
    "lng": "44.70007"
  },
  {
    "country": "AM",
    "name": "K’anak’erravan",
    "lat": "40.24739",
    "lng": "44.53511"
  },
  {
    "country": "AM",
    "name": "Kamo",
    "lat": "40.82572",
    "lng": "43.95071"
  },
  {
    "country": "AM",
    "name": "Gavarr",
    "lat": "40.35398",
    "lng": "45.12386"
  },
  {
    "country": "AM",
    "name": "Mayisyan",
    "lat": "40.15701",
    "lng": "44.09192"
  },
  {
    "country": "AM",
    "name": "Shahumyan",
    "lat": "40.77482",
    "lng": "44.54596"
  },
  {
    "country": "AM",
    "name": "Ijevan",
    "lat": "40.87877",
    "lng": "45.14851"
  },
  {
    "country": "AM",
    "name": "Hrazdan",
    "lat": "40.49748",
    "lng": "44.7662"
  },
  {
    "country": "AM",
    "name": "Armavir",
    "lat": "40.15446",
    "lng": "44.03815"
  },
  {
    "country": "AM",
    "name": "Hayanist",
    "lat": "40.12231",
    "lng": "44.37793"
  },
  {
    "country": "AM",
    "name": "Haghartsin",
    "lat": "40.77614",
    "lng": "44.96847"
  },
  {
    "country": "AM",
    "name": "Gyumri",
    "lat": "40.7942",
    "lng": "43.84528"
  },
  {
    "country": "AM",
    "name": "Gyulagarak",
    "lat": "40.96715",
    "lng": "44.47144"
  },
  {
    "country": "AM",
    "name": "Ghukasavan",
    "lat": "40.12793",
    "lng": "44.41669"
  },
  {
    "country": "AM",
    "name": "Geghamasar",
    "lat": "40.31091",
    "lng": "45.67924"
  },
  {
    "country": "AM",
    "name": "Gugark’",
    "lat": "40.8046",
    "lng": "44.54025"
  },
  {
    "country": "AM",
    "name": "Tsiatsan",
    "lat": "40.1861",
    "lng": "44.26947"
  },
  {
    "country": "AM",
    "name": "Goght’",
    "lat": "40.1347",
    "lng": "44.78332"
  },
  {
    "country": "AM",
    "name": "Gogaran",
    "lat": "40.89255",
    "lng": "44.19915"
  },
  {
    "country": "AM",
    "name": "Getazat",
    "lat": "40.03844",
    "lng": "44.56369"
  },
  {
    "country": "AM",
    "name": "Getashen",
    "lat": "40.04449",
    "lng": "43.94171"
  },
  {
    "country": "AM",
    "name": "Geghanist",
    "lat": "40.14587",
    "lng": "44.43048"
  },
  {
    "country": "AM",
    "name": "Geghamavan",
    "lat": "40.5625",
    "lng": "44.88892"
  },
  {
    "country": "AM",
    "name": "Garrni",
    "lat": "40.11931",
    "lng": "44.73442"
  },
  {
    "country": "AM",
    "name": "Gagarin",
    "lat": "40.54026",
    "lng": "44.86962"
  },
  {
    "country": "AM",
    "name": "Fantan",
    "lat": "40.39447",
    "lng": "44.6861"
  },
  {
    "country": "AM",
    "name": "Fioletovo",
    "lat": "40.72241",
    "lng": "44.71769"
  },
  {
    "country": "AM",
    "name": "Dzoraghbyur",
    "lat": "40.20412",
    "lng": "44.6415"
  },
  {
    "country": "AM",
    "name": "Dzoragyugh",
    "lat": "40.16957",
    "lng": "45.18337"
  },
  {
    "country": "AM",
    "name": "Dzit’hank’ov",
    "lat": "40.50848",
    "lng": "43.82092"
  },
  {
    "country": "AM",
    "name": "Jrashen",
    "lat": "40.79028",
    "lng": "44.18664"
  },
  {
    "country": "AM",
    "name": "Jrashen",
    "lat": "40.05275",
    "lng": "44.51259"
  },
  {
    "country": "AM",
    "name": "Jrahovit",
    "lat": "40.0473",
    "lng": "44.4751"
  },
  {
    "country": "AM",
    "name": "Janfida",
    "lat": "40.04449",
    "lng": "44.02789"
  },
  {
    "country": "AM",
    "name": "Dvin",
    "lat": "40.01984",
    "lng": "44.58376"
  },
  {
    "country": "AM",
    "name": "Dsegh",
    "lat": "40.9617",
    "lng": "44.65003"
  },
  {
    "country": "AM",
    "name": "Drakhtik",
    "lat": "40.56497",
    "lng": "45.2367"
  },
  {
    "country": "AM",
    "name": "Doghs",
    "lat": "40.22229",
    "lng": "44.27228"
  },
  {
    "country": "AM",
    "name": "Dilijan",
    "lat": "40.7417",
    "lng": "44.8501"
  },
  {
    "country": "AM",
    "name": "Ddmashen",
    "lat": "40.57028",
    "lng": "44.82295"
  },
  {
    "country": "AM",
    "name": "Darpas",
    "lat": "40.83674",
    "lng": "44.42494"
  },
  {
    "country": "AM",
    "name": "Dalarik",
    "lat": "40.2279",
    "lng": "43.87793"
  },
  {
    "country": "AM",
    "name": "Chochkan",
    "lat": "41.18118",
    "lng": "44.83217"
  },
  {
    "country": "AM",
    "name": "Chambarak",
    "lat": "40.59655",
    "lng": "45.35498"
  },
  {
    "country": "AM",
    "name": "Bjni",
    "lat": "40.45831",
    "lng": "44.65008"
  },
  {
    "country": "AM",
    "name": "Byureghavan",
    "lat": "40.31417",
    "lng": "44.59333"
  },
  {
    "country": "AM",
    "name": "Byurakan",
    "lat": "40.33894",
    "lng": "44.27275"
  },
  {
    "country": "AM",
    "name": "Buzhakan",
    "lat": "40.45569",
    "lng": "44.51947"
  },
  {
    "country": "AM",
    "name": "Berd",
    "lat": "40.88135",
    "lng": "45.38901"
  },
  {
    "country": "AM",
    "name": "Bazum",
    "lat": "40.86763",
    "lng": "44.43978"
  },
  {
    "country": "AM",
    "name": "Byuravan",
    "lat": "40.01604",
    "lng": "44.51889"
  },
  {
    "country": "AM",
    "name": "Bambakashat",
    "lat": "40.10828",
    "lng": "44.01947"
  },
  {
    "country": "AM",
    "name": "Balahovit",
    "lat": "40.25153",
    "lng": "44.60828"
  },
  {
    "country": "AM",
    "name": "Bagratashen",
    "lat": "41.24358",
    "lng": "44.81737"
  },
  {
    "country": "AM",
    "name": "Azatan",
    "lat": "40.71959",
    "lng": "43.82727"
  },
  {
    "country": "AM",
    "name": "Haykavan",
    "lat": "40.80312",
    "lng": "43.75173"
  },
  {
    "country": "AM",
    "name": "Aygestan",
    "lat": "40.00293",
    "lng": "44.55829"
  },
  {
    "country": "AM",
    "name": "Aygeshat",
    "lat": "40.23608",
    "lng": "44.28888"
  },
  {
    "country": "AM",
    "name": "Aygeshat",
    "lat": "40.07507",
    "lng": "44.0611"
  },
  {
    "country": "AM",
    "name": "Aknalich",
    "lat": "40.14728",
    "lng": "44.16669"
  },
  {
    "country": "AM",
    "name": "Aygehovit",
    "lat": "40.97951",
    "lng": "45.25033"
  },
  {
    "country": "AM",
    "name": "Artimet",
    "lat": "40.15008",
    "lng": "44.26672"
  },
  {
    "country": "AM",
    "name": "Astghadzor",
    "lat": "40.12231",
    "lng": "45.35553"
  },
  {
    "country": "AM",
    "name": "Ashtarak",
    "lat": "40.2991",
    "lng": "44.36204"
  },
  {
    "country": "AM",
    "name": "Ashnak",
    "lat": "40.33069",
    "lng": "43.91669"
  },
  {
    "country": "AM",
    "name": "Arzni",
    "lat": "40.2973",
    "lng": "44.59869"
  },
  {
    "country": "AM",
    "name": "Arzakan",
    "lat": "40.45007",
    "lng": "44.60828"
  },
  {
    "country": "AM",
    "name": "Arteni",
    "lat": "40.2973",
    "lng": "43.76672"
  },
  {
    "country": "AM",
    "name": "Arshaluys",
    "lat": "40.16949",
    "lng": "44.21393"
  },
  {
    "country": "AM",
    "name": "Argel",
    "lat": "40.37793",
    "lng": "44.6001"
  },
  {
    "country": "AM",
    "name": "Argavand",
    "lat": "40.15289",
    "lng": "44.4389"
  },
  {
    "country": "AM",
    "name": "Argavand",
    "lat": "40.0611",
    "lng": "44.09448"
  },
  {
    "country": "AM",
    "name": "Arevshat",
    "lat": "40.65345",
    "lng": "44.04419"
  },
  {
    "country": "AM",
    "name": "Arevshat",
    "lat": "40.03963",
    "lng": "44.54179"
  },
  {
    "country": "AM",
    "name": "Arevik",
    "lat": "40.7417",
    "lng": "43.9043"
  },
  {
    "country": "AM",
    "name": "Arevik",
    "lat": "40.1001",
    "lng": "44.09448"
  },
  {
    "country": "AM",
    "name": "Arevashogh",
    "lat": "40.86039",
    "lng": "44.27438"
  },
  {
    "country": "AM",
    "name": "Arevashat",
    "lat": "40.14447",
    "lng": "44.37512"
  },
  {
    "country": "AM",
    "name": "Archis",
    "lat": "41.16351",
    "lng": "44.87631"
  },
  {
    "country": "AM",
    "name": "Arbat’",
    "lat": "40.13892",
    "lng": "44.40289"
  },
  {
    "country": "AM",
    "name": "Arazap’",
    "lat": "40.04169",
    "lng": "44.14728"
  },
  {
    "country": "AM",
    "name": "Arrap’i",
    "lat": "40.78276",
    "lng": "43.80583"
  },
  {
    "country": "AM",
    "name": "Aramus",
    "lat": "40.25095",
    "lng": "44.66351"
  },
  {
    "country": "AM",
    "name": "Arak’s",
    "lat": "40.05548",
    "lng": "44.30292"
  },
  {
    "country": "AM",
    "name": "Aragats",
    "lat": "40.48889",
    "lng": "44.3529"
  },
  {
    "country": "AM",
    "name": "Aparan",
    "lat": "40.59323",
    "lng": "44.3589"
  },
  {
    "country": "AM",
    "name": "Apaga",
    "lat": "40.09729",
    "lng": "44.25293"
  },
  {
    "country": "AM",
    "name": "Anushavan",
    "lat": "40.65008",
    "lng": "43.98053"
  },
  {
    "country": "AM",
    "name": "Amasia",
    "lat": "40.95442",
    "lng": "43.7872"
  },
  {
    "country": "AM",
    "name": "Alaverdi",
    "lat": "41.09766",
    "lng": "44.67316"
  },
  {
    "country": "AM",
    "name": "Akunk’",
    "lat": "40.26672",
    "lng": "44.6861"
  },
  {
    "country": "AM",
    "name": "Akunk’",
    "lat": "40.15886",
    "lng": "45.72568"
  },
  {
    "country": "AM",
    "name": "Akhuryan",
    "lat": "40.78003",
    "lng": "43.90027"
  },
  {
    "country": "AM",
    "name": "Aghavnatun",
    "lat": "40.2333",
    "lng": "44.25295"
  },
  {
    "country": "AM",
    "name": "Aghavnadzor",
    "lat": "40.58195",
    "lng": "44.69581"
  },
  {
    "country": "AM",
    "name": "Agarak",
    "lat": "41.01072",
    "lng": "44.46845"
  },
  {
    "country": "AM",
    "name": "Agarakavan",
    "lat": "40.33069",
    "lng": "44.07233"
  },
  {
    "country": "AM",
    "name": "Abovyan",
    "lat": "40.27368",
    "lng": "44.63348"
  },
  {
    "country": "AM",
    "name": "Abovyan",
    "lat": "40.04851",
    "lng": "44.54742"
  },
  {
    "country": "AM",
    "name": "Vardablur",
    "lat": "40.97083",
    "lng": "44.50889"
  },
  {
    "country": "AM",
    "name": "Bardzrashen",
    "lat": "40.08533",
    "lng": "44.57957"
  },
  {
    "country": "AM",
    "name": "Nshavan",
    "lat": "40.02787",
    "lng": "44.52565"
  },
  {
    "country": "AM",
    "name": "Norabats’",
    "lat": "40.10553",
    "lng": "44.43329"
  },
  {
    "country": "AM",
    "name": "Berdavan",
    "lat": "41.20503",
    "lng": "44.99967"
  },
  {
    "country": "AM",
    "name": "Shirakamut",
    "lat": "40.86056",
    "lng": "44.15278"
  },
  {
    "country": "AM",
    "name": "Azatamut",
    "lat": "40.98204",
    "lng": "45.18551"
  },
  {
    "country": "AM",
    "name": "Getahovit",
    "lat": "40.89784",
    "lng": "45.13971"
  },
  {
    "country": "AM",
    "name": "Artsvaberd",
    "lat": "40.83947",
    "lng": "45.47033"
  },
  {
    "country": "AM",
    "name": "Nor Yerznka",
    "lat": "40.30011",
    "lng": "44.38892"
  },
  {
    "country": "AM",
    "name": "Sasunik",
    "lat": "40.25012",
    "lng": "44.34448"
  },
  {
    "country": "AM",
    "name": "Kamaris",
    "lat": "40.23539",
    "lng": "44.69459"
  },
  {
    "country": "AM",
    "name": "Gandzak",
    "lat": "40.31472",
    "lng": "45.11139"
  },
  {
    "country": "AM",
    "name": "Myasnikyan",
    "lat": "40.18048",
    "lng": "43.91949"
  },
  {
    "country": "AM",
    "name": "Lenughi",
    "lat": "40.12512",
    "lng": "43.96393"
  },
  {
    "country": "AM",
    "name": "Metsamor",
    "lat": "40.14447",
    "lng": "44.1167"
  },
  {
    "country": "AM",
    "name": "Gay",
    "lat": "40.08444",
    "lng": "44.30528"
  },
  {
    "country": "AM",
    "name": "Baghramyan",
    "lat": "40.19452",
    "lng": "44.36951"
  },
  {
    "country": "AM",
    "name": "Musalerr",
    "lat": "40.1557",
    "lng": "44.37793"
  },
  {
    "country": "AM",
    "name": "Darakert",
    "lat": "40.10553",
    "lng": "44.41388"
  },
  {
    "country": "AM",
    "name": "Dashtavan",
    "lat": "40.1001",
    "lng": "44.39172"
  },
  {
    "country": "AM",
    "name": "Nizami",
    "lat": "40.09168",
    "lng": "44.4057"
  },
  {
    "country": "AM",
    "name": "Artsvanist",
    "lat": "40.14617",
    "lng": "45.51711"
  },
  {
    "country": "AM",
    "name": "Vardadzor",
    "lat": "40.18701",
    "lng": "45.19212"
  },
  {
    "country": "AM",
    "name": "Taronik",
    "lat": "40.13367",
    "lng": "44.19957"
  },
  {
    "country": "AM",
    "name": "Aknashen",
    "lat": "40.09551",
    "lng": "44.28604"
  },
  {
    "country": "AM",
    "name": "Haykashen",
    "lat": "40.07233",
    "lng": "44.30829"
  },
  {
    "country": "AM",
    "name": "Hovtashat",
    "lat": "40.09729",
    "lng": "44.34448"
  },
  {
    "country": "AM",
    "name": "Sayat’-Nova",
    "lat": "40.07507",
    "lng": "44.40008"
  },
  {
    "country": "AM",
    "name": "Voskehat",
    "lat": "40.14172",
    "lng": "44.33069"
  },
  {
    "country": "AM",
    "name": "Griboyedov",
    "lat": "40.11307",
    "lng": "44.27169"
  },
  {
    "country": "AM",
    "name": "Gmbet’",
    "lat": "40.22369",
    "lng": "44.25409"
  },
  {
    "country": "AM",
    "name": "Aygek",
    "lat": "40.1889",
    "lng": "44.38611"
  },
  {
    "country": "AM",
    "name": "Hovtashen",
    "lat": "40.02508",
    "lng": "44.45007"
  },
  {
    "country": "AM",
    "name": "Dimitrov",
    "lat": "40.00848",
    "lng": "44.4917"
  },
  {
    "country": "AM",
    "name": "Mrgavet",
    "lat": "40.02789",
    "lng": "44.48328"
  },
  {
    "country": "AM",
    "name": "Arevabuyr",
    "lat": "40.03607",
    "lng": "44.46948"
  },
  {
    "country": "AO",
    "name": "Saurimo",
    "lat": "-9.66078",
    "lng": "20.39155"
  },
  {
    "country": "AO",
    "name": "Lucapa",
    "lat": "-8.41915",
    "lng": "20.74466"
  },
  {
    "country": "AO",
    "name": "Lumeje",
    "lat": "-11.55",
    "lng": "20.78333"
  },
  {
    "country": "AO",
    "name": "Luau",
    "lat": "-10.70727",
    "lng": "22.22466"
  },
  {
    "country": "AO",
    "name": "Léua",
    "lat": "-11.65",
    "lng": "20.45"
  },
  {
    "country": "AO",
    "name": "Cazaji",
    "lat": "-11.06715",
    "lng": "20.70148"
  },
  {
    "country": "AO",
    "name": "Uíge",
    "lat": "-7.60874",
    "lng": "15.06131"
  },
  {
    "country": "AO",
    "name": "Soio",
    "lat": "-6.1349",
    "lng": "12.36894"
  },
  {
    "country": "AO",
    "name": "N'zeto",
    "lat": "-7.23116",
    "lng": "12.8666"
  },
  {
    "country": "AO",
    "name": "N’dalatando",
    "lat": "-9.29782",
    "lng": "14.91162"
  },
  {
    "country": "AO",
    "name": "Mbanza Congo",
    "lat": "-6.26703",
    "lng": "14.2401"
  },
  {
    "country": "AO",
    "name": "Malanje",
    "lat": "-9.54015",
    "lng": "16.34096"
  },
  {
    "country": "AO",
    "name": "Luanda",
    "lat": "-8.83682",
    "lng": "13.23432"
  },
  {
    "country": "AO",
    "name": "Caxito",
    "lat": "-8.57848",
    "lng": "13.66425"
  },
  {
    "country": "AO",
    "name": "Camabatela",
    "lat": "-8.18812",
    "lng": "15.37495"
  },
  {
    "country": "AO",
    "name": "Cabinda",
    "lat": "-5.55",
    "lng": "12.2"
  },
  {
    "country": "AO",
    "name": "Uacu Cungo",
    "lat": "-11.35669",
    "lng": "15.11719"
  },
  {
    "country": "AO",
    "name": "Sumbe",
    "lat": "-11.20605",
    "lng": "13.84371"
  },
  {
    "country": "AO",
    "name": "Quibala",
    "lat": "-10.73366",
    "lng": "14.97995"
  },
  {
    "country": "AO",
    "name": "Ondjiva",
    "lat": "-17.06667",
    "lng": "15.73333"
  },
  {
    "country": "AO",
    "name": "Namibe",
    "lat": "-15.19611",
    "lng": "12.15222"
  },
  {
    "country": "AO",
    "name": "Menongue",
    "lat": "-14.6585",
    "lng": "17.69099"
  },
  {
    "country": "AO",
    "name": "Luena",
    "lat": "-11.78333",
    "lng": "19.91667"
  },
  {
    "country": "AO",
    "name": "Lubango",
    "lat": "-14.91717",
    "lng": "13.4925"
  },
  {
    "country": "AO",
    "name": "Longonjo",
    "lat": "-12.90667",
    "lng": "15.25333"
  },
  {
    "country": "AO",
    "name": "Lobito",
    "lat": "-12.3644",
    "lng": "13.53601"
  },
  {
    "country": "AO",
    "name": "Cuito",
    "lat": "-12.38333",
    "lng": "16.93333"
  },
  {
    "country": "AO",
    "name": "Huambo",
    "lat": "-12.77611",
    "lng": "15.73917"
  },
  {
    "country": "AO",
    "name": "Chissamba",
    "lat": "-12.16667",
    "lng": "17.33333"
  },
  {
    "country": "AO",
    "name": "Catumbela",
    "lat": "-12.43002",
    "lng": "13.54677"
  },
  {
    "country": "AO",
    "name": "Catabola",
    "lat": "-12.15",
    "lng": "17.28333"
  },
  {
    "country": "AO",
    "name": "Camacupa",
    "lat": "-12.01667",
    "lng": "17.48333"
  },
  {
    "country": "AO",
    "name": "Caluquembe",
    "lat": "-13.78333",
    "lng": "14.68333"
  },
  {
    "country": "AO",
    "name": "Caconda",
    "lat": "-13.73333",
    "lng": "15.06667"
  },
  {
    "country": "AO",
    "name": "Caála",
    "lat": "-12.8525",
    "lng": "15.56056"
  },
  {
    "country": "AO",
    "name": "Benguela",
    "lat": "-12.57626",
    "lng": "13.40547"
  },
  {
    "country": "AO",
    "name": "Chela",
    "lat": "-12.30261",
    "lng": "15.43358"
  },
  {
    "country": "AO",
    "name": "Chinjenje",
    "lat": "-12.93244",
    "lng": "14.99238"
  },
  {
    "country": "AQ",
    "name": "McMurdo Station",
    "lat": "-77.846",
    "lng": "166.676"
  },
  {
    "country": "AR",
    "name": "Zárate",
    "lat": "-34.09814",
    "lng": "-59.02858"
  },
  {
    "country": "AR",
    "name": "Yataity Calle",
    "lat": "-29.01913",
    "lng": "-58.90846"
  },
  {
    "country": "AR",
    "name": "Yapeyú",
    "lat": "-29.46914",
    "lng": "-56.81841"
  },
  {
    "country": "AR",
    "name": "Villa Paranacito",
    "lat": "-33.72207",
    "lng": "-58.65798"
  },
  {
    "country": "AR",
    "name": "Villa Ortúzar",
    "lat": "-34.57973",
    "lng": "-58.46829"
  },
  {
    "country": "AR",
    "name": "Villa Ocampo",
    "lat": "-28.48752",
    "lng": "-59.35515"
  },
  {
    "country": "AR",
    "name": "Villa María Grande",
    "lat": "-31.66565",
    "lng": "-59.90182"
  },
  {
    "country": "AR",
    "name": "Villa Mantero",
    "lat": "-32.39727",
    "lng": "-58.74596"
  },
  {
    "country": "AR",
    "name": "Villa Lugano",
    "lat": "-34.67907",
    "lng": "-58.47263"
  },
  {
    "country": "AR",
    "name": "Villa Hernandarias",
    "lat": "-31.23101",
    "lng": "-59.985"
  },
  {
    "country": "AR",
    "name": "Villaguay",
    "lat": "-31.8653",
    "lng": "-59.02689"
  },
  {
    "country": "AR",
    "name": "Villa Gesell",
    "lat": "-37.26394",
    "lng": "-56.97304"
  },
  {
    "country": "AR",
    "name": "Villa Escolar",
    "lat": "-26.62209",
    "lng": "-58.67134"
  },
  {
    "country": "AR",
    "name": "Villa Elisa",
    "lat": "-32.1632",
    "lng": "-58.40082"
  },
  {
    "country": "AR",
    "name": "Villa del Rosario",
    "lat": "-30.79567",
    "lng": "-57.91257"
  },
  {
    "country": "AR",
    "name": "Verónica",
    "lat": "-35.38796",
    "lng": "-57.33691"
  },
  {
    "country": "AR",
    "name": "Veinticinco de Mayo",
    "lat": "-27.37679",
    "lng": "-54.74312"
  },
  {
    "country": "AR",
    "name": "Urdinarrain",
    "lat": "-32.68573",
    "lng": "-58.89323"
  },
  {
    "country": "AR",
    "name": "Ubajay",
    "lat": "-31.79358",
    "lng": "-58.3135"
  },
  {
    "country": "AR",
    "name": "Tres Capones",
    "lat": "-28.00641",
    "lng": "-55.60471"
  },
  {
    "country": "AR",
    "name": "Tigre",
    "lat": "-34.42603",
    "lng": "-58.57962"
  },
  {
    "country": "AR",
    "name": "Tandil",
    "lat": "-37.32167",
    "lng": "-59.13316"
  },
  {
    "country": "AR",
    "name": "Tacuarendí",
    "lat": "-28.41265",
    "lng": "-59.26"
  },
  {
    "country": "AR",
    "name": "Tabossi",
    "lat": "-31.80135",
    "lng": "-59.93477"
  },
  {
    "country": "AR",
    "name": "Suipacha",
    "lat": "-34.7702",
    "lng": "-59.68783"
  },
  {
    "country": "AR",
    "name": "Sauce de Luna",
    "lat": "-31.23794",
    "lng": "-59.21872"
  },
  {
    "country": "AR",
    "name": "Sauce",
    "lat": "-30.08671",
    "lng": "-58.78777"
  },
  {
    "country": "AR",
    "name": "San Vicente",
    "lat": "-35.025",
    "lng": "-58.42276"
  },
  {
    "country": "AR",
    "name": "San Vicente",
    "lat": "-26.61667",
    "lng": "-54.13333"
  },
  {
    "country": "AR",
    "name": "Santo Tomé",
    "lat": "-28.54939",
    "lng": "-56.04077"
  },
  {
    "country": "AR",
    "name": "Santo Pipó",
    "lat": "-27.14132",
    "lng": "-55.40867"
  },
  {
    "country": "AR",
    "name": "Santa Rosa",
    "lat": "-28.26318",
    "lng": "-58.11891"
  },
  {
    "country": "AR",
    "name": "Santa María",
    "lat": "-27.90357",
    "lng": "-55.38541"
  },
  {
    "country": "AR",
    "name": "Santa Lucía",
    "lat": "-28.98746",
    "lng": "-59.10287"
  },
  {
    "country": "AR",
    "name": "Santa Elena",
    "lat": "-30.94768",
    "lng": "-59.78696"
  },
  {
    "country": "AR",
    "name": "Santa Anita",
    "lat": "-32.17476",
    "lng": "-58.78622"
  },
  {
    "country": "AR",
    "name": "Santa Ana",
    "lat": "-30.90004",
    "lng": "-57.93162"
  },
  {
    "country": "AR",
    "name": "Santa Ana",
    "lat": "-27.3674",
    "lng": "-55.58091"
  },
  {
    "country": "AR",
    "name": "San Salvador",
    "lat": "-31.62487",
    "lng": "-58.50524"
  },
  {
    "country": "AR",
    "name": "San Roque",
    "lat": "-28.57457",
    "lng": "-58.70817"
  },
  {
    "country": "AR",
    "name": "San Pedro",
    "lat": "-33.67913",
    "lng": "-59.66663"
  },
  {
    "country": "AR",
    "name": "San Pedro",
    "lat": "-26.62207",
    "lng": "-54.10842"
  },
  {
    "country": "AR",
    "name": "San Miguel del Monte",
    "lat": "-35.43962",
    "lng": "-58.80675"
  },
  {
    "country": "AR",
    "name": "San Miguel",
    "lat": "-27.99585",
    "lng": "-57.58964"
  },
  {
    "country": "AR",
    "name": "San Luis del Palmar",
    "lat": "-27.5079",
    "lng": "-58.55454"
  },
  {
    "country": "AR",
    "name": "San Lorenzo",
    "lat": "-28.13306",
    "lng": "-58.76733"
  },
  {
    "country": "AR",
    "name": "San Justo",
    "lat": "-34.6766",
    "lng": "-58.56058"
  },
  {
    "country": "AR",
    "name": "San Justo",
    "lat": "-32.44654",
    "lng": "-58.43569"
  },
  {
    "country": "AR",
    "name": "San José de Feliciano",
    "lat": "-30.38452",
    "lng": "-58.75167"
  },
  {
    "country": "AR",
    "name": "San José",
    "lat": "-27.76979",
    "lng": "-55.7826"
  },
  {
    "country": "AR",
    "name": "San Javier",
    "lat": "-30.57781",
    "lng": "-59.9317"
  },
  {
    "country": "AR",
    "name": "San Javier",
    "lat": "-27.87427",
    "lng": "-55.13509"
  },
  {
    "country": "AR",
    "name": "San Isidro",
    "lat": "-34.4721",
    "lng": "-58.52708"
  },
  {
    "country": "AR",
    "name": "San Ignacio",
    "lat": "-27.25586",
    "lng": "-55.5339"
  },
  {
    "country": "AR",
    "name": "San Gustavo",
    "lat": "-30.68961",
    "lng": "-59.3984"
  },
  {
    "country": "AR",
    "name": "San Francisco de Laishí",
    "lat": "-26.24262",
    "lng": "-58.63039"
  },
  {
    "country": "AR",
    "name": "San Cosme",
    "lat": "-27.37123",
    "lng": "-58.51214"
  },
  {
    "country": "AR",
    "name": "San Clemente del Tuyú",
    "lat": "-36.35694",
    "lng": "-56.72351"
  },
  {
    "country": "AR",
    "name": "San Cayetano",
    "lat": "-38.34653",
    "lng": "-59.60954"
  },
  {
    "country": "AR",
    "name": "San Carlos",
    "lat": "-27.74586",
    "lng": "-55.89731"
  },
  {
    "country": "AR",
    "name": "San Antonio de Areco",
    "lat": "-34.2503",
    "lng": "-59.47163"
  },
  {
    "country": "AR",
    "name": "San Andrés de Giles",
    "lat": "-34.44721",
    "lng": "-59.44451"
  },
  {
    "country": "AR",
    "name": "Saladillo",
    "lat": "-35.63708",
    "lng": "-59.77788"
  },
  {
    "country": "AR",
    "name": "Saladas",
    "lat": "-28.25384",
    "lng": "-58.62591"
  },
  {
    "country": "AR",
    "name": "Ruiz de Montoya",
    "lat": "-26.98333",
    "lng": "-55.05"
  },
  {
    "country": "AR",
    "name": "Rosario del Tala",
    "lat": "-32.30286",
    "lng": "-59.14545"
  },
  {
    "country": "AR",
    "name": "Roque Pérez",
    "lat": "-35.39794",
    "lng": "-59.33271"
  },
  {
    "country": "AR",
    "name": "Riachuelo",
    "lat": "-27.57754",
    "lng": "-58.73945"
  },
  {
    "country": "AR",
    "name": "Riacho Eh-Eh",
    "lat": "-25.36209",
    "lng": "-58.2775"
  },
  {
    "country": "AR",
    "name": "Retiro",
    "lat": "-34.58333",
    "lng": "-58.38333"
  },
  {
    "country": "AR",
    "name": "Resistencia",
    "lat": "-27.46056",
    "lng": "-58.98389"
  },
  {
    "country": "AR",
    "name": "Reconquista",
    "lat": "-29.15",
    "lng": "-59.65"
  },
  {
    "country": "AR",
    "name": "Rauch",
    "lat": "-36.7745",
    "lng": "-59.08973"
  },
  {
    "country": "AR",
    "name": "Ranchos",
    "lat": "-35.51619",
    "lng": "-58.31733"
  },
  {
    "country": "AR",
    "name": "Quilmes",
    "lat": "-34.72904",
    "lng": "-58.26374"
  },
  {
    "country": "AR",
    "name": "Puerto Yeruá",
    "lat": "-31.53713",
    "lng": "-58.01527"
  },
  {
    "country": "AR",
    "name": "Puerto Vilelas",
    "lat": "-27.51414",
    "lng": "-58.93906"
  },
  {
    "country": "AR",
    "name": "Puerto Tirol",
    "lat": "-27.37218",
    "lng": "-59.08206"
  },
  {
    "country": "AR",
    "name": "Puerto Rico",
    "lat": "-26.79598",
    "lng": "-55.02402"
  },
  {
    "country": "AR",
    "name": "Puerto Piray",
    "lat": "-26.46779",
    "lng": "-54.71476"
  },
  {
    "country": "AR",
    "name": "Puerto Libertad",
    "lat": "-25.91641",
    "lng": "-54.62089"
  },
  {
    "country": "AR",
    "name": "Puerto Leoni",
    "lat": "-26.96069",
    "lng": "-55.1657"
  },
  {
    "country": "AR",
    "name": "Puerto Iguazú",
    "lat": "-25.59912",
    "lng": "-54.57355"
  },
  {
    "country": "AR",
    "name": "Puerto Ibicuy",
    "lat": "-33.73333",
    "lng": "-59.18333"
  },
  {
    "country": "AR",
    "name": "Puerto Esperanza",
    "lat": "-26.01517",
    "lng": "-54.67306"
  },
  {
    "country": "AR",
    "name": "Puerto Eldorado",
    "lat": "-26.40843",
    "lng": "-54.69463"
  },
  {
    "country": "AR",
    "name": "Puerto Bermejo",
    "lat": "-26.93173",
    "lng": "-58.50538"
  },
  {
    "country": "AR",
    "name": "Pueblo Libertador",
    "lat": "-30.22087",
    "lng": "-59.38981"
  },
  {
    "country": "AR",
    "name": "Pronunciamiento",
    "lat": "-32.34617",
    "lng": "-58.43287"
  },
  {
    "country": "AR",
    "name": "Presidencia Roca",
    "lat": "-26.1409",
    "lng": "-59.59541"
  },
  {
    "country": "AR",
    "name": "Presidencia de la Plaza",
    "lat": "-27.00147",
    "lng": "-59.84243"
  },
  {
    "country": "AR",
    "name": "Posadas",
    "lat": "-27.36708",
    "lng": "-55.89608"
  },
  {
    "country": "AR",
    "name": "Pontevedra",
    "lat": "-34.74785",
    "lng": "-58.70072"
  },
  {
    "country": "AR",
    "name": "Pirané",
    "lat": "-25.73239",
    "lng": "-59.10879"
  },
  {
    "country": "AR",
    "name": "Pinamar",
    "lat": "-37.10795",
    "lng": "-56.8614"
  },
  {
    "country": "AR",
    "name": "Pilar",
    "lat": "-34.45866",
    "lng": "-58.9142"
  },
  {
    "country": "AR",
    "name": "Pila",
    "lat": "-36.00058",
    "lng": "-58.14391"
  },
  {
    "country": "AR",
    "name": "Piedras Blancas",
    "lat": "-31.18623",
    "lng": "-59.95957"
  },
  {
    "country": "AR",
    "name": "Picada Gobernador López",
    "lat": "-27.67069",
    "lng": "-55.24585"
  },
  {
    "country": "AR",
    "name": "Perugorría",
    "lat": "-29.34132",
    "lng": "-58.61059"
  },
  {
    "country": "AR",
    "name": "Pedro R. Fernández",
    "lat": "-28.75097",
    "lng": "-58.65583"
  },
  {
    "country": "AR",
    "name": "Paso de los Libres",
    "lat": "-29.71251",
    "lng": "-57.08771"
  },
  {
    "country": "AR",
    "name": "Paso de la Patria",
    "lat": "-27.31676",
    "lng": "-58.57197"
  },
  {
    "country": "AR",
    "name": "Panambí",
    "lat": "-27.72369",
    "lng": "-54.91515"
  },
  {
    "country": "AR",
    "name": "Pampa del Indio",
    "lat": "-26.06468",
    "lng": "-59.91898"
  },
  {
    "country": "AR",
    "name": "Pampa Almirón",
    "lat": "-26.7",
    "lng": "-59.13333"
  },
  {
    "country": "AR",
    "name": "Palo Santo",
    "lat": "-25.56332",
    "lng": "-59.33781"
  },
  {
    "country": "AR",
    "name": "Palmar Grande",
    "lat": "-27.94195",
    "lng": "-57.90057"
  },
  {
    "country": "AR",
    "name": "Olivos",
    "lat": "-34.50747",
    "lng": "-58.48703"
  },
  {
    "country": "AR",
    "name": "Oberá",
    "lat": "-27.48706",
    "lng": "-55.11994"
  },
  {
    "country": "AR",
    "name": "Nueve de Julio",
    "lat": "-28.84051",
    "lng": "-58.8265"
  },
  {
    "country": "AR",
    "name": "Nuestra Señora del Rosario de Caa Catí",
    "lat": "-27.75072",
    "lng": "-57.62073"
  },
  {
    "country": "AR",
    "name": "Nogoyá",
    "lat": "-32.39387",
    "lng": "-59.78953"
  },
  {
    "country": "AR",
    "name": "Necochea",
    "lat": "-38.5545",
    "lng": "-58.73961"
  },
  {
    "country": "AR",
    "name": "Navarro",
    "lat": "-35.00559",
    "lng": "-59.27699"
  },
  {
    "country": "AR",
    "name": "Morón",
    "lat": "-34.6509",
    "lng": "-58.61956"
  },
  {
    "country": "AR",
    "name": "Monte Caseros",
    "lat": "-30.25359",
    "lng": "-57.63626"
  },
  {
    "country": "AR",
    "name": "Montecarlo",
    "lat": "-26.5662",
    "lng": "-54.757"
  },
  {
    "country": "AR",
    "name": "Mojón Grande",
    "lat": "-27.71165",
    "lng": "-55.15631"
  },
  {
    "country": "AR",
    "name": "Mocoretá",
    "lat": "-30.61891",
    "lng": "-57.96344"
  },
  {
    "country": "AR",
    "name": "Miramar",
    "lat": "-38.27161",
    "lng": "-57.8389"
  },
  {
    "country": "AR",
    "name": "Merlo",
    "lat": "-34.66627",
    "lng": "-58.72927"
  },
  {
    "country": "AR",
    "name": "Mercedes",
    "lat": "-34.65145",
    "lng": "-59.43068"
  },
  {
    "country": "AR",
    "name": "Mercedes",
    "lat": "-29.18416",
    "lng": "-58.07519"
  },
  {
    "country": "AR",
    "name": "Mburucuyá",
    "lat": "-28.04532",
    "lng": "-58.22835"
  },
  {
    "country": "AR",
    "name": "Mártires",
    "lat": "-27.43333",
    "lng": "-55.38333"
  },
  {
    "country": "AR",
    "name": "Mariano I. Loza",
    "lat": "-29.37667",
    "lng": "-58.19436"
  },
  {
    "country": "AR",
    "name": "Margarita Belén",
    "lat": "-27.2616",
    "lng": "-58.97219"
  },
  {
    "country": "AR",
    "name": "Mar del Tuyú",
    "lat": "-36.57531",
    "lng": "-56.68883"
  },
  {
    "country": "AR",
    "name": "Mar del Plata",
    "lat": "-38.00228",
    "lng": "-57.55754"
  },
  {
    "country": "AR",
    "name": "Marcos Paz",
    "lat": "-34.78063",
    "lng": "-58.8379"
  },
  {
    "country": "AR",
    "name": "Malabrigo",
    "lat": "-29.34636",
    "lng": "-59.96957"
  },
  {
    "country": "AR",
    "name": "Makallé",
    "lat": "-27.20687",
    "lng": "-59.28696"
  },
  {
    "country": "AR",
    "name": "Maipú",
    "lat": "-36.86274",
    "lng": "-57.88094"
  },
  {
    "country": "AR",
    "name": "Magdalena",
    "lat": "-35.08065",
    "lng": "-57.51301"
  },
  {
    "country": "AR",
    "name": "Maciá",
    "lat": "-32.1722",
    "lng": "-59.39947"
  },
  {
    "country": "AR",
    "name": "Luján",
    "lat": "-34.57028",
    "lng": "-59.105"
  },
  {
    "country": "AR",
    "name": "Lucas González",
    "lat": "-32.3843",
    "lng": "-59.53013"
  },
  {
    "country": "AR",
    "name": "Los Helechos",
    "lat": "-27.5576",
    "lng": "-55.07683"
  },
  {
    "country": "AR",
    "name": "Los Conquistadores",
    "lat": "-30.5908",
    "lng": "-58.46773"
  },
  {
    "country": "AR",
    "name": "Los Charrúas",
    "lat": "-31.17548",
    "lng": "-58.18774"
  },
  {
    "country": "AR",
    "name": "Loreto",
    "lat": "-27.76834",
    "lng": "-57.27531"
  },
  {
    "country": "AR",
    "name": "Loreto",
    "lat": "-27.33635",
    "lng": "-55.52225"
  },
  {
    "country": "AR",
    "name": "Lomas de Zamora",
    "lat": "-34.76088",
    "lng": "-58.40632"
  },
  {
    "country": "AR",
    "name": "Lomas de Vallejos",
    "lat": "-27.73501",
    "lng": "-57.9185"
  },
  {
    "country": "AR",
    "name": "Lobos",
    "lat": "-35.18286",
    "lng": "-59.08975"
  },
  {
    "country": "AR",
    "name": "Lobería",
    "lat": "-38.15574",
    "lng": "-58.7913"
  },
  {
    "country": "AR",
    "name": "Libertad",
    "lat": "-30.043",
    "lng": "-57.8202"
  },
  {
    "country": "AR",
    "name": "Leandro N. Alem",
    "lat": "-27.60341",
    "lng": "-55.32491"
  },
  {
    "country": "AR",
    "name": "La Verde",
    "lat": "-27.12634",
    "lng": "-59.37352"
  },
  {
    "country": "AR",
    "name": "Las Toscas",
    "lat": "-28.3529",
    "lng": "-59.25795"
  },
  {
    "country": "AR",
    "name": "Las Garcitas",
    "lat": "-26.58333",
    "lng": "-59.8"
  },
  {
    "country": "AR",
    "name": "Las Flores",
    "lat": "-36.01403",
    "lng": "-59.09984"
  },
  {
    "country": "AR",
    "name": "Larroque",
    "lat": "-33.03595",
    "lng": "-59.00125"
  },
  {
    "country": "AR",
    "name": "La Plata",
    "lat": "-34.92145",
    "lng": "-57.95453"
  },
  {
    "country": "AR",
    "name": "La Paz",
    "lat": "-30.74485",
    "lng": "-59.64566"
  },
  {
    "country": "AR",
    "name": "Lapachito",
    "lat": "-27.15997",
    "lng": "-59.38605"
  },
  {
    "country": "AR",
    "name": "Lanús",
    "lat": "-34.70252",
    "lng": "-58.3955"
  },
  {
    "country": "AR",
    "name": "La Leonesa",
    "lat": "-27.03786",
    "lng": "-58.70347"
  },
  {
    "country": "AR",
    "name": "Laguna Naick-Neck",
    "lat": "-25.24769",
    "lng": "-58.09383"
  },
  {
    "country": "AR",
    "name": "Laguna Limpia",
    "lat": "-26.49565",
    "lng": "-59.68083"
  },
  {
    "country": "AR",
    "name": "La Escondida",
    "lat": "-27.10724",
    "lng": "-59.44784"
  },
  {
    "country": "AR",
    "name": "La Eduvigis",
    "lat": "-26.85545",
    "lng": "-59.06842"
  },
  {
    "country": "AR",
    "name": "La Cruz",
    "lat": "-29.17443",
    "lng": "-56.64326"
  },
  {
    "country": "AR",
    "name": "La Criolla",
    "lat": "-31.26904",
    "lng": "-58.10558"
  },
  {
    "country": "AR",
    "name": "Juan Pujol",
    "lat": "-30.41873",
    "lng": "-57.85612"
  },
  {
    "country": "AR",
    "name": "Jardín América",
    "lat": "-27.04346",
    "lng": "-55.22698"
  },
  {
    "country": "AR",
    "name": "Ituzaingó",
    "lat": "-34.65803",
    "lng": "-58.66317"
  },
  {
    "country": "AR",
    "name": "Ituzaingó",
    "lat": "-27.58162",
    "lng": "-56.68231"
  },
  {
    "country": "AR",
    "name": "Itatí",
    "lat": "-27.27043",
    "lng": "-58.24458"
  },
  {
    "country": "AR",
    "name": "Itá Ibaté",
    "lat": "-27.42573",
    "lng": "-57.33758"
  },
  {
    "country": "AR",
    "name": "Ibarreta",
    "lat": "-25.21438",
    "lng": "-59.85851"
  },
  {
    "country": "AR",
    "name": "Hurlingham",
    "lat": "-34.59168",
    "lng": "-58.64608"
  },
  {
    "country": "AR",
    "name": "Herrera",
    "lat": "-32.43516",
    "lng": "-58.62462"
  },
  {
    "country": "AR",
    "name": "Herradura",
    "lat": "-26.48705",
    "lng": "-58.31198"
  },
  {
    "country": "AR",
    "name": "Herlitzka",
    "lat": "-27.56516",
    "lng": "-58.25557"
  },
  {
    "country": "AR",
    "name": "Hasenkamp",
    "lat": "-31.51226",
    "lng": "-59.83545"
  },
  {
    "country": "AR",
    "name": "Guaraní",
    "lat": "-27.51667",
    "lng": "-55.16667"
  },
  {
    "country": "AR",
    "name": "Gualeguaychú",
    "lat": "-33.00937",
    "lng": "-58.51722"
  },
  {
    "country": "AR",
    "name": "Gualeguay",
    "lat": "-33.14156",
    "lng": "-59.30966"
  },
  {
    "country": "AR",
    "name": "Goya",
    "lat": "-29.14395",
    "lng": "-59.2651"
  },
  {
    "country": "AR",
    "name": "Gobernador Roca",
    "lat": "-27.18636",
    "lng": "-55.46433"
  },
  {
    "country": "AR",
    "name": "Gobernador Mansilla",
    "lat": "-32.54453",
    "lng": "-59.3548"
  },
  {
    "country": "AR",
    "name": "Gobernador Juan E. Martínez",
    "lat": "-28.91705",
    "lng": "-58.93292"
  },
  {
    "country": "AR",
    "name": "Gobernador Ingeniero Valentín Virasoro",
    "lat": "-28.05",
    "lng": "-56.03333"
  },
  {
    "country": "AR",
    "name": "General Vedia",
    "lat": "-26.93382",
    "lng": "-58.6604"
  },
  {
    "country": "AR",
    "name": "General San Martín",
    "lat": "-34.57424",
    "lng": "-58.53496"
  },
  {
    "country": "AR",
    "name": "General Rodríguez",
    "lat": "-34.60838",
    "lng": "-58.95253"
  },
  {
    "country": "AR",
    "name": "General Lavalle",
    "lat": "-36.40633",
    "lng": "-56.94329"
  },
  {
    "country": "AR",
    "name": "General Las Heras",
    "lat": "-34.92726",
    "lng": "-58.94621"
  },
  {
    "country": "AR",
    "name": "General Juan Madariaga",
    "lat": "-36.99725",
    "lng": "-57.13951"
  },
  {
    "country": "AR",
    "name": "General José de San Martín",
    "lat": "-26.53743",
    "lng": "-59.34158"
  },
  {
    "country": "AR",
    "name": "General Guido",
    "lat": "-36.64074",
    "lng": "-57.79174"
  },
  {
    "country": "AR",
    "name": "General Galarza",
    "lat": "-32.72034",
    "lng": "-59.39615"
  },
  {
    "country": "AR",
    "name": "General Conesa",
    "lat": "-36.52013",
    "lng": "-57.32537"
  },
  {
    "country": "AR",
    "name": "General Campos",
    "lat": "-31.52311",
    "lng": "-58.4049"
  },
  {
    "country": "AR",
    "name": "General Belgrano",
    "lat": "-35.76952",
    "lng": "-58.49341"
  },
  {
    "country": "AR",
    "name": "General Alvear",
    "lat": "-27.43333",
    "lng": "-55.16667"
  },
  {
    "country": "AR",
    "name": "Garupá",
    "lat": "-27.48171",
    "lng": "-55.82921"
  },
  {
    "country": "AR",
    "name": "Garuhapé",
    "lat": "-26.81768",
    "lng": "-54.95665"
  },
  {
    "country": "AR",
    "name": "Garruchos",
    "lat": "-28.18514",
    "lng": "-55.63947"
  },
  {
    "country": "AR",
    "name": "Formosa",
    "lat": "-26.17753",
    "lng": "-58.17814"
  },
  {
    "country": "AR",
    "name": "Fontana",
    "lat": "-27.41813",
    "lng": "-59.02392"
  },
  {
    "country": "AR",
    "name": "Florentino Ameghino",
    "lat": "-27.56667",
    "lng": "-55.13333"
  },
  {
    "country": "AR",
    "name": "Florencio Varela",
    "lat": "-34.82722",
    "lng": "-58.39556"
  },
  {
    "country": "AR",
    "name": "Felipe Yofré",
    "lat": "-29.10226",
    "lng": "-58.33772"
  },
  {
    "country": "AR",
    "name": "Federal",
    "lat": "-30.95465",
    "lng": "-58.78326"
  },
  {
    "country": "AR",
    "name": "Federación",
    "lat": "-31.00621",
    "lng": "-57.89962"
  },
  {
    "country": "AR",
    "name": "José María Ezeiza",
    "lat": "-34.84787",
    "lng": "-58.52869"
  },
  {
    "country": "AR",
    "name": "Esquina",
    "lat": "-30.01444",
    "lng": "-59.52719"
  },
  {
    "country": "AR",
    "name": "Espinillo",
    "lat": "-24.98132",
    "lng": "-58.5521"
  },
  {
    "country": "AR",
    "name": "Ensenada",
    "lat": "-34.86186",
    "lng": "-57.91126"
  },
  {
    "country": "AR",
    "name": "Empedrado",
    "lat": "-27.95125",
    "lng": "-58.80542"
  },
  {
    "country": "AR",
    "name": "El Soberbio",
    "lat": "-27.29847",
    "lng": "-54.19877"
  },
  {
    "country": "AR",
    "name": "Eldorado",
    "lat": "-26.40484",
    "lng": "-54.62478"
  },
  {
    "country": "AR",
    "name": "El Colorado",
    "lat": "-26.30808",
    "lng": "-59.37291"
  },
  {
    "country": "AR",
    "name": "El Alcázar",
    "lat": "-26.71459",
    "lng": "-54.81523"
  },
  {
    "country": "AR",
    "name": "Dos de Mayo",
    "lat": "-27.02277",
    "lng": "-54.68669"
  },
  {
    "country": "AR",
    "name": "Dos Arroyos",
    "lat": "-27.70784",
    "lng": "-55.23364"
  },
  {
    "country": "AR",
    "name": "Domínguez",
    "lat": "-31.9871",
    "lng": "-58.96197"
  },
  {
    "country": "AR",
    "name": "Dolores",
    "lat": "-36.31321",
    "lng": "-57.67918"
  },
  {
    "country": "AR",
    "name": "Curuzú Cuatiá",
    "lat": "-29.79171",
    "lng": "-58.0546"
  },
  {
    "country": "AR",
    "name": "Cruz de los Milagros",
    "lat": "-28.83646",
    "lng": "-59.00476"
  },
  {
    "country": "AR",
    "name": "Coté-Lai",
    "lat": "-27.5",
    "lng": "-59.6"
  },
  {
    "country": "AR",
    "name": "Corrientes",
    "lat": "-27.4806",
    "lng": "-58.8341"
  },
  {
    "country": "AR",
    "name": "Coronel Vidal",
    "lat": "-37.44604",
    "lng": "-57.72865"
  },
  {
    "country": "AR",
    "name": "Conscripto Bernardi",
    "lat": "-31.04837",
    "lng": "-59.08435"
  },
  {
    "country": "AR",
    "name": "Concordia",
    "lat": "-31.39296",
    "lng": "-58.02089"
  },
  {
    "country": "AR",
    "name": "Concepción del Uruguay",
    "lat": "-32.48249",
    "lng": "-58.23722"
  },
  {
    "country": "AR",
    "name": "Concepción de la Sierra",
    "lat": "-27.98311",
    "lng": "-55.52031"
  },
  {
    "country": "AR",
    "name": "Concepción",
    "lat": "-28.39175",
    "lng": "-57.88777"
  },
  {
    "country": "AR",
    "name": "Comandante Fontana",
    "lat": "-25.33453",
    "lng": "-59.68212"
  },
  {
    "country": "AR",
    "name": "Colonia Wanda",
    "lat": "-25.97408",
    "lng": "-54.42806"
  },
  {
    "country": "AR",
    "name": "Colonias Unidas",
    "lat": "-26.69825",
    "lng": "-59.63154"
  },
  {
    "country": "AR",
    "name": "Colonia Elisa",
    "lat": "-26.93041",
    "lng": "-59.51861"
  },
  {
    "country": "AR",
    "name": "Colonia Elía",
    "lat": "-32.66625",
    "lng": "-58.32148"
  },
  {
    "country": "AR",
    "name": "Colonia Benítez",
    "lat": "-27.33099",
    "lng": "-58.94622"
  },
  {
    "country": "AR",
    "name": "Colonia Aurora",
    "lat": "-27.47428",
    "lng": "-54.52498"
  },
  {
    "country": "AR",
    "name": "Colón",
    "lat": "-32.22337",
    "lng": "-58.14341"
  },
  {
    "country": "AR",
    "name": "Colegiales",
    "lat": "-34.57365",
    "lng": "-58.44924"
  },
  {
    "country": "AR",
    "name": "Clorinda",
    "lat": "-25.28481",
    "lng": "-57.71851"
  },
  {
    "country": "AR",
    "name": "Ciervo Petiso",
    "lat": "-26.58041",
    "lng": "-59.63094"
  },
  {
    "country": "AR",
    "name": "Chavarría",
    "lat": "-28.95489",
    "lng": "-58.57277"
  },
  {
    "country": "AR",
    "name": "Chascomús",
    "lat": "-35.57297",
    "lng": "-58.00809"
  },
  {
    "country": "AR",
    "name": "Charadai",
    "lat": "-27.63333",
    "lng": "-59.9"
  },
  {
    "country": "AR",
    "name": "Chajarí",
    "lat": "-30.75048",
    "lng": "-57.97962"
  },
  {
    "country": "AR",
    "name": "Cerro Corá",
    "lat": "-27.5131",
    "lng": "-55.60896"
  },
  {
    "country": "AR",
    "name": "Cerro Azul",
    "lat": "-27.6331",
    "lng": "-55.4962"
  },
  {
    "country": "AR",
    "name": "Ceibas",
    "lat": "-33.43333",
    "lng": "-58.75"
  },
  {
    "country": "AR",
    "name": "Castelli",
    "lat": "-36.08949",
    "lng": "-57.80393"
  },
  {
    "country": "AR",
    "name": "Caseros",
    "lat": "-34.60333",
    "lng": "-58.56409"
  },
  {
    "country": "AR",
    "name": "Caseros",
    "lat": "-32.46325",
    "lng": "-58.47872"
  },
  {
    "country": "AR",
    "name": "Carmen de Areco",
    "lat": "-34.37743",
    "lng": "-59.82395"
  },
  {
    "country": "AR",
    "name": "Caraguatay",
    "lat": "-26.60587",
    "lng": "-54.78093"
  },
  {
    "country": "AR",
    "name": "Capitán Solari",
    "lat": "-26.80215",
    "lng": "-59.56089"
  },
  {
    "country": "AR",
    "name": "Capitán Sarmiento",
    "lat": "-34.17238",
    "lng": "-59.79048"
  },
  {
    "country": "AR",
    "name": "Capioví",
    "lat": "-26.92998",
    "lng": "-55.06084"
  },
  {
    "country": "AR",
    "name": "Capilla del Señor",
    "lat": "-34.29207",
    "lng": "-59.10179"
  },
  {
    "country": "AR",
    "name": "Cañuelas",
    "lat": "-35.05184",
    "lng": "-58.76061"
  },
  {
    "country": "AR",
    "name": "Candelaria",
    "lat": "-27.4595",
    "lng": "-55.74536"
  },
  {
    "country": "AR",
    "name": "Campo Viera",
    "lat": "-27.38333",
    "lng": "-55.03333"
  },
  {
    "country": "AR",
    "name": "Campo Ramón",
    "lat": "-27.46108",
    "lng": "-55.01901"
  },
  {
    "country": "AR",
    "name": "Campo Grande",
    "lat": "-27.2077",
    "lng": "-54.97977"
  },
  {
    "country": "AR",
    "name": "Campana",
    "lat": "-34.16874",
    "lng": "-58.95914"
  },
  {
    "country": "AR",
    "name": "Buenos Aires",
    "lat": "-34.61315",
    "lng": "-58.37723"
  },
  {
    "country": "AR",
    "name": "Brandsen",
    "lat": "-35.16842",
    "lng": "-58.23427"
  },
  {
    "country": "AR",
    "name": "Bovril",
    "lat": "-31.34311",
    "lng": "-59.44512"
  },
  {
    "country": "AR",
    "name": "Bonpland",
    "lat": "-29.81708",
    "lng": "-57.42974"
  },
  {
    "country": "AR",
    "name": "Bonpland",
    "lat": "-27.48218",
    "lng": "-55.47756"
  },
  {
    "country": "AR",
    "name": "Berón de Astrada",
    "lat": "-27.55067",
    "lng": "-57.5346"
  },
  {
    "country": "AR",
    "name": "Bernardo de Irigoyen",
    "lat": "-26.2552",
    "lng": "-53.64581"
  },
  {
    "country": "AR",
    "name": "Berisso",
    "lat": "-34.8735",
    "lng": "-57.88303"
  },
  {
    "country": "AR",
    "name": "Benito Juárez",
    "lat": "-37.67188",
    "lng": "-59.80653"
  },
  {
    "country": "AR",
    "name": "Bella Vista",
    "lat": "-28.50918",
    "lng": "-59.04009"
  },
  {
    "country": "AR",
    "name": "Belén de Escobar",
    "lat": "-34.34833",
    "lng": "-58.79265"
  },
  {
    "country": "AR",
    "name": "Basail",
    "lat": "-27.86667",
    "lng": "-59.3"
  },
  {
    "country": "AR",
    "name": "Barranqueras",
    "lat": "-27.48132",
    "lng": "-58.93925"
  },
  {
    "country": "AR",
    "name": "Baradero",
    "lat": "-33.81105",
    "lng": "-59.50807"
  },
  {
    "country": "AR",
    "name": "Balcarce",
    "lat": "-37.84616",
    "lng": "-58.25522"
  },
  {
    "country": "AR",
    "name": "Azul",
    "lat": "-36.77698",
    "lng": "-59.85854"
  },
  {
    "country": "AR",
    "name": "Azara",
    "lat": "-28.0616",
    "lng": "-55.67797"
  },
  {
    "country": "AR",
    "name": "Ayacucho",
    "lat": "-37.15185",
    "lng": "-58.48691"
  },
  {
    "country": "AR",
    "name": "Avellaneda",
    "lat": "-29.11761",
    "lng": "-59.65834"
  },
  {
    "country": "AR",
    "name": "Arroyo del Medio",
    "lat": "-27.7",
    "lng": "-55.41667"
  },
  {
    "country": "AR",
    "name": "Aristóbulo del Valle",
    "lat": "-27.09625",
    "lng": "-54.89626"
  },
  {
    "country": "AR",
    "name": "Apóstoles",
    "lat": "-27.91421",
    "lng": "-55.75355"
  },
  {
    "country": "AR",
    "name": "Alvear",
    "lat": "-29.09683",
    "lng": "-56.55043"
  },
  {
    "country": "AR",
    "name": "Almafuerte",
    "lat": "-27.50518",
    "lng": "-55.39497"
  },
  {
    "country": "AR",
    "name": "Aldea San Antonio",
    "lat": "-32.62376",
    "lng": "-58.70333"
  },
  {
    "country": "AR",
    "name": "Alba Posse",
    "lat": "-27.56978",
    "lng": "-54.68262"
  },
  {
    "country": "AR",
    "name": "Guernica",
    "lat": "-34.91722",
    "lng": "-58.38694"
  },
  {
    "country": "AR",
    "name": "Villa Basilio Nievas",
    "lat": "-31.55",
    "lng": "-68.73333"
  },
  {
    "country": "AR",
    "name": "Zapala",
    "lat": "-38.89916",
    "lng": "-70.05442"
  },
  {
    "country": "AR",
    "name": "Yuto",
    "lat": "-23.64342",
    "lng": "-64.47194"
  },
  {
    "country": "AR",
    "name": "Yerba Buena",
    "lat": "-26.81667",
    "lng": "-65.31667"
  },
  {
    "country": "AR",
    "name": "Yacimiento Río Turbio",
    "lat": "-51.57321",
    "lng": "-72.3508"
  },
  {
    "country": "AR",
    "name": "Winifreda",
    "lat": "-36.22643",
    "lng": "-64.23388"
  },
  {
    "country": "AR",
    "name": "Wenceslao Escalante",
    "lat": "-33.17303",
    "lng": "-62.77078"
  },
  {
    "country": "AR",
    "name": "Vista Alegre",
    "lat": "-38.75",
    "lng": "-68.18333"
  },
  {
    "country": "AR",
    "name": "Vinchina",
    "lat": "-28.75964",
    "lng": "-68.20692"
  },
  {
    "country": "AR",
    "name": "Villa Valeria",
    "lat": "-34.34093",
    "lng": "-64.9203"
  },
  {
    "country": "AR",
    "name": "Villa Urquiza",
    "lat": "-31.64731",
    "lng": "-60.3748"
  },
  {
    "country": "AR",
    "name": "Villa Unión",
    "lat": "-29.41347",
    "lng": "-62.78822"
  },
  {
    "country": "AR",
    "name": "Villa Unión",
    "lat": "-29.31595",
    "lng": "-68.22658"
  },
  {
    "country": "AR",
    "name": "Villa Tulumba",
    "lat": "-30.39552",
    "lng": "-64.12241"
  },
  {
    "country": "AR",
    "name": "Villa Trinidad",
    "lat": "-30.21329",
    "lng": "-61.87597"
  },
  {
    "country": "AR",
    "name": "Villa Santa Rosa",
    "lat": "-31.74434",
    "lng": "-68.31411"
  },
  {
    "country": "AR",
    "name": "Villa Rumipal",
    "lat": "-32.1879",
    "lng": "-64.48027"
  },
  {
    "country": "AR",
    "name": "Villa Regina",
    "lat": "-39.1",
    "lng": "-67.06667"
  },
  {
    "country": "AR",
    "name": "Villa Reducción",
    "lat": "-33.20105",
    "lng": "-63.86234"
  },
  {
    "country": "AR",
    "name": "Villa Paula de Sarmiento",
    "lat": "-31.4933",
    "lng": "-68.53838"
  },
  {
    "country": "AR",
    "name": "Villa Ojo de Agua",
    "lat": "-29.50003",
    "lng": "-63.69377"
  },
  {
    "country": "AR",
    "name": "Villa Nueva",
    "lat": "-32.89722",
    "lng": "-68.78038"
  },
  {
    "country": "AR",
    "name": "Villa Nueva",
    "lat": "-32.43293",
    "lng": "-63.24763"
  },
  {
    "country": "AR",
    "name": "Villa Media Agua",
    "lat": "-31.98267",
    "lng": "-68.42394"
  },
  {
    "country": "AR",
    "name": "Villa María",
    "lat": "-32.40751",
    "lng": "-63.24016"
  },
  {
    "country": "AR",
    "name": "Villa Las Rosas",
    "lat": "-31.95021",
    "lng": "-65.05354"
  },
  {
    "country": "AR",
    "name": "Villa La Angostura",
    "lat": "-40.76173",
    "lng": "-71.64631"
  },
  {
    "country": "AR",
    "name": "Villa Krause",
    "lat": "-31.56667",
    "lng": "-68.53333"
  },
  {
    "country": "AR",
    "name": "Villa Huidobro",
    "lat": "-34.83826",
    "lng": "-64.58686"
  },
  {
    "country": "AR",
    "name": "Villa Giardino",
    "lat": "-31.03333",
    "lng": "-64.48333"
  },
  {
    "country": "AR",
    "name": "Villa General Roca",
    "lat": "-32.66535",
    "lng": "-66.45052"
  },
  {
    "country": "AR",
    "name": "Villa General Mitre",
    "lat": "-29.1431",
    "lng": "-62.65248"
  },
  {
    "country": "AR",
    "name": "Villa General Belgrano",
    "lat": "-31.97542",
    "lng": "-64.5559"
  },
  {
    "country": "AR",
    "name": "Villa Dolores",
    "lat": "-31.94585",
    "lng": "-65.18958"
  },
  {
    "country": "AR",
    "name": "Villa de Soto",
    "lat": "-30.85523",
    "lng": "-64.99947"
  },
  {
    "country": "AR",
    "name": "Villa de María",
    "lat": "-29.90195",
    "lng": "-63.72289"
  },
  {
    "country": "AR",
    "name": "Villa del Totoral",
    "lat": "-30.81667",
    "lng": "-63.71667"
  },
  {
    "country": "AR",
    "name": "Villa del Salvador",
    "lat": "-31.44155",
    "lng": "-68.39745"
  },
  {
    "country": "AR",
    "name": "Villa del Rosario",
    "lat": "-31.5566",
    "lng": "-63.53452"
  },
  {
    "country": "AR",
    "name": "Villa del Dique",
    "lat": "-32.17667",
    "lng": "-64.45543"
  },
  {
    "country": "AR",
    "name": "Villa Cura Brochero",
    "lat": "-31.70578",
    "lng": "-65.01796"
  },
  {
    "country": "AR",
    "name": "Villa Constitución",
    "lat": "-33.22778",
    "lng": "-60.3297"
  },
  {
    "country": "AR",
    "name": "Villa Concepción del Tío",
    "lat": "-31.32259",
    "lng": "-62.81354"
  },
  {
    "country": "AR",
    "name": "Chañar Ladeado",
    "lat": "-33.32524",
    "lng": "-62.03831"
  },
  {
    "country": "AR",
    "name": "Villa Castelli",
    "lat": "-29.00295",
    "lng": "-68.21277"
  },
  {
    "country": "AR",
    "name": "Villa Carlos Paz",
    "lat": "-31.42414",
    "lng": "-64.49778"
  },
  {
    "country": "AR",
    "name": "Villa Cañás",
    "lat": "-34.00565",
    "lng": "-61.60757"
  },
  {
    "country": "AR",
    "name": "Villa Bustos",
    "lat": "-29.28483",
    "lng": "-67.03308"
  },
  {
    "country": "AR",
    "name": "Villa Berthet",
    "lat": "-27.29174",
    "lng": "-60.41263"
  },
  {
    "country": "AR",
    "name": "Villa Atamisqui",
    "lat": "-28.49609",
    "lng": "-63.81609"
  },
  {
    "country": "AR",
    "name": "Villa Ascasubi",
    "lat": "-32.16351",
    "lng": "-63.89157"
  },
  {
    "country": "AR",
    "name": "Villa Ángela",
    "lat": "-27.57383",
    "lng": "-60.71526"
  },
  {
    "country": "AR",
    "name": "Villa Allende",
    "lat": "-31.29458",
    "lng": "-64.29538"
  },
  {
    "country": "AR",
    "name": "Villa Aberastain",
    "lat": "-31.65",
    "lng": "-68.58333"
  },
  {
    "country": "AR",
    "name": "Viedma",
    "lat": "-40.81345",
    "lng": "-62.99668"
  },
  {
    "country": "AR",
    "name": "Vicuña Mackenna",
    "lat": "-33.91965",
    "lng": "-64.39215"
  },
  {
    "country": "AR",
    "name": "Victorica",
    "lat": "-36.21505",
    "lng": "-65.43586"
  },
  {
    "country": "AR",
    "name": "Victoria",
    "lat": "-32.61841",
    "lng": "-60.15478"
  },
  {
    "country": "AR",
    "name": "Viamonte",
    "lat": "-33.74647",
    "lng": "-63.09764"
  },
  {
    "country": "AR",
    "name": "Viale",
    "lat": "-31.86782",
    "lng": "-60.00722"
  },
  {
    "country": "AR",
    "name": "Vera",
    "lat": "-29.4593",
    "lng": "-60.21261"
  },
  {
    "country": "AR",
    "name": "Venado Tuerto",
    "lat": "-33.74556",
    "lng": "-61.96885"
  },
  {
    "country": "AR",
    "name": "28 de Noviembre",
    "lat": "-51.5839",
    "lng": "-72.21382"
  },
  {
    "country": "AR",
    "name": "Veinticinco de Mayo",
    "lat": "-37.7741",
    "lng": "-67.71638"
  },
  {
    "country": "AR",
    "name": "Veinticinco de Mayo",
    "lat": "-35.4323",
    "lng": "-60.17271"
  },
  {
    "country": "AR",
    "name": "Vedia",
    "lat": "-34.49558",
    "lng": "-61.54138"
  },
  {
    "country": "AR",
    "name": "Valle Hermoso",
    "lat": "-31.11732",
    "lng": "-64.48084"
  },
  {
    "country": "AR",
    "name": "Valle Grande",
    "lat": "-23.47735",
    "lng": "-64.9425"
  },
  {
    "country": "AR",
    "name": "Valcheta",
    "lat": "-40.7",
    "lng": "-66.15"
  },
  {
    "country": "AR",
    "name": "Ushuaia",
    "lat": "-54.8",
    "lng": "-68.3"
  },
  {
    "country": "AR",
    "name": "Uriburu",
    "lat": "-36.50682",
    "lng": "-63.86225"
  },
  {
    "country": "AR",
    "name": "Unquillo",
    "lat": "-31.23073",
    "lng": "-64.31615"
  },
  {
    "country": "AR",
    "name": "Unión",
    "lat": "-35.15282",
    "lng": "-65.94602"
  },
  {
    "country": "AR",
    "name": "Ulapes",
    "lat": "-31.57362",
    "lng": "-66.2365"
  },
  {
    "country": "AR",
    "name": "Ucacha",
    "lat": "-33.03203",
    "lng": "-63.50666"
  },
  {
    "country": "AR",
    "name": "Tupungato",
    "lat": "-33.37146",
    "lng": "-69.14845"
  },
  {
    "country": "AR",
    "name": "Tunuyán",
    "lat": "-33.57653",
    "lng": "-69.01538"
  },
  {
    "country": "AR",
    "name": "Tumbaya",
    "lat": "-23.85626",
    "lng": "-65.45741"
  },
  {
    "country": "AR",
    "name": "Trevelin",
    "lat": "-43.0858",
    "lng": "-71.46386"
  },
  {
    "country": "AR",
    "name": "Tres Lomas",
    "lat": "-36.45722",
    "lng": "-62.86047"
  },
  {
    "country": "AR",
    "name": "Tres Isletas",
    "lat": "-26.34067",
    "lng": "-60.43207"
  },
  {
    "country": "AR",
    "name": "Tres Arroyos",
    "lat": "-38.37394",
    "lng": "-60.27978"
  },
  {
    "country": "AR",
    "name": "Tres Algarrobos",
    "lat": "-35.19471",
    "lng": "-62.77396"
  },
  {
    "country": "AR",
    "name": "Trenque Lauquen",
    "lat": "-35.97035",
    "lng": "-62.73432"
  },
  {
    "country": "AR",
    "name": "Trenel",
    "lat": "-35.69837",
    "lng": "-64.13218"
  },
  {
    "country": "AR",
    "name": "Trelew",
    "lat": "-43.24895",
    "lng": "-65.30505"
  },
  {
    "country": "AR",
    "name": "Trancas",
    "lat": "-26.21575",
    "lng": "-65.28492"
  },
  {
    "country": "AR",
    "name": "Totoras",
    "lat": "-32.5844",
    "lng": "-61.16852"
  },
  {
    "country": "AR",
    "name": "Tostado",
    "lat": "-29.23202",
    "lng": "-61.76917"
  },
  {
    "country": "AR",
    "name": "Tornquist",
    "lat": "-38.10122",
    "lng": "-62.22267"
  },
  {
    "country": "AR",
    "name": "Toledo",
    "lat": "-31.55574",
    "lng": "-64.00947"
  },
  {
    "country": "AR",
    "name": "Toay",
    "lat": "-36.67338",
    "lng": "-64.3786"
  },
  {
    "country": "AR",
    "name": "Tío Pujio",
    "lat": "-32.2879",
    "lng": "-63.35598"
  },
  {
    "country": "AR",
    "name": "Tintina",
    "lat": "-27.03333",
    "lng": "-62.71667"
  },
  {
    "country": "AR",
    "name": "Tinogasta",
    "lat": "-28.06319",
    "lng": "-67.56488"
  },
  {
    "country": "AR",
    "name": "Tilisarao",
    "lat": "-32.73292",
    "lng": "-65.29109"
  },
  {
    "country": "AR",
    "name": "Tilcara",
    "lat": "-23.57757",
    "lng": "-65.3509"
  },
  {
    "country": "AR",
    "name": "Ticino",
    "lat": "-32.6935",
    "lng": "-63.43606"
  },
  {
    "country": "AR",
    "name": "Termas de Río Hondo",
    "lat": "-27.49362",
    "lng": "-64.85972"
  },
  {
    "country": "AR",
    "name": "Telsen",
    "lat": "-42.43553",
    "lng": "-66.94078"
  },
  {
    "country": "AR",
    "name": "Telén",
    "lat": "-36.26429",
    "lng": "-65.51018"
  },
  {
    "country": "AR",
    "name": "Tecka",
    "lat": "-43.49489",
    "lng": "-70.8102"
  },
  {
    "country": "AR",
    "name": "Tartagal",
    "lat": "-22.51637",
    "lng": "-63.80131"
  },
  {
    "country": "AR",
    "name": "Tapalqué",
    "lat": "-36.35493",
    "lng": "-60.0264"
  },
  {
    "country": "AR",
    "name": "Tancacha",
    "lat": "-32.24309",
    "lng": "-63.9807"
  },
  {
    "country": "AR",
    "name": "Tamberías",
    "lat": "-31.46646",
    "lng": "-69.4255"
  },
  {
    "country": "AR",
    "name": "Tama",
    "lat": "-30.50798",
    "lng": "-66.5298"
  },
  {
    "country": "AR",
    "name": "Tafí Viejo",
    "lat": "-26.73201",
    "lng": "-65.25921"
  },
  {
    "country": "AR",
    "name": "Tafí del Valle",
    "lat": "-26.85275",
    "lng": "-65.70983"
  },
  {
    "country": "AR",
    "name": "Taco Pozo",
    "lat": "-25.61667",
    "lng": "-63.28333"
  },
  {
    "country": "AR",
    "name": "Susques",
    "lat": "-23.39864",
    "lng": "-66.36701"
  },
  {
    "country": "AR",
    "name": "Suncho Corral",
    "lat": "-27.93357",
    "lng": "-63.42938"
  },
  {
    "country": "AR",
    "name": "Sunchales",
    "lat": "-30.94404",
    "lng": "-61.56148"
  },
  {
    "country": "AR",
    "name": "Sumampa",
    "lat": "-29.3847",
    "lng": "-63.46907"
  },
  {
    "country": "AR",
    "name": "Simoca",
    "lat": "-27.26272",
    "lng": "-65.35647"
  },
  {
    "country": "AR",
    "name": "Sierra Grande",
    "lat": "-41.60603",
    "lng": "-65.35574"
  },
  {
    "country": "AR",
    "name": "Sierra Colorada",
    "lat": "-40.58487",
    "lng": "-67.75674"
  },
  {
    "country": "AR",
    "name": "Serrezuela",
    "lat": "-30.63761",
    "lng": "-65.38692"
  },
  {
    "country": "AR",
    "name": "Serrano",
    "lat": "-34.46971",
    "lng": "-63.53842"
  },
  {
    "country": "AR",
    "name": "Senillosa",
    "lat": "-39.01412",
    "lng": "-68.43281"
  },
  {
    "country": "AR",
    "name": "Selva",
    "lat": "-29.76776",
    "lng": "-62.0477"
  },
  {
    "country": "AR",
    "name": "Seguí",
    "lat": "-31.95642",
    "lng": "-60.12488"
  },
  {
    "country": "AR",
    "name": "Sebastián Elcano",
    "lat": "-30.16105",
    "lng": "-63.5936"
  },
  {
    "country": "AR",
    "name": "Saujil",
    "lat": "-28.17442",
    "lng": "-66.21177"
  },
  {
    "country": "AR",
    "name": "Saturnino M. Laspiur",
    "lat": "-31.70287",
    "lng": "-62.48202"
  },
  {
    "country": "AR",
    "name": "Sastre",
    "lat": "-31.76762",
    "lng": "-61.82887"
  },
  {
    "country": "AR",
    "name": "Sarmiento",
    "lat": "-45.58815",
    "lng": "-69.06996"
  },
  {
    "country": "AR",
    "name": "Santo Tomé",
    "lat": "-31.66274",
    "lng": "-60.7653"
  },
  {
    "country": "AR",
    "name": "Santiago Temple",
    "lat": "-31.38731",
    "lng": "-63.41821"
  },
  {
    "country": "AR",
    "name": "Santiago del Estero",
    "lat": "-27.79511",
    "lng": "-64.26149"
  },
  {
    "country": "AR",
    "name": "Santa Victoria",
    "lat": "-22.25",
    "lng": "-64.96667"
  },
  {
    "country": "AR",
    "name": "Santa Sylvina",
    "lat": "-27.83261",
    "lng": "-61.13747"
  },
  {
    "country": "AR",
    "name": "Santa Rosa de Tastil",
    "lat": "-24.45166",
    "lng": "-65.97452"
  },
  {
    "country": "AR",
    "name": "Santa Rosa de Río Primero",
    "lat": "-31.15231",
    "lng": "-63.40191"
  },
  {
    "country": "AR",
    "name": "Santa Rosa del Conlara",
    "lat": "-32.34286",
    "lng": "-65.20323"
  },
  {
    "country": "AR",
    "name": "Santa Rosa de Calamuchita",
    "lat": "-32.06905",
    "lng": "-64.53631"
  },
  {
    "country": "AR",
    "name": "Santa Rosa",
    "lat": "-36.61667",
    "lng": "-64.28333"
  },
  {
    "country": "AR",
    "name": "Santa Rosa",
    "lat": "-33.25407",
    "lng": "-68.14937"
  },
  {
    "country": "AR",
    "name": "Santa María",
    "lat": "-26.69547",
    "lng": "-66.04732"
  },
  {
    "country": "AR",
    "name": "Santa Magdalena",
    "lat": "-34.51776",
    "lng": "-63.94409"
  },
  {
    "country": "AR",
    "name": "Santa Lucía",
    "lat": "-31.53987",
    "lng": "-68.49503"
  },
  {
    "country": "AR",
    "name": "Santa Isabel",
    "lat": "-36.22724",
    "lng": "-66.9424"
  },
  {
    "country": "AR",
    "name": "Santa Fe de la Vera Cruz",
    "lat": "-31.63333",
    "lng": "-60.7"
  },
  {
    "country": "AR",
    "name": "Santa Eufemia",
    "lat": "-33.17659",
    "lng": "-63.28281"
  },
  {
    "country": "AR",
    "name": "Santa Clara",
    "lat": "-24.30921",
    "lng": "-64.66253"
  },
  {
    "country": "AR",
    "name": "Santa Catalina",
    "lat": "-21.94467",
    "lng": "-66.05219"
  },
  {
    "country": "AR",
    "name": "San Salvador de Jujuy",
    "lat": "-24.19457",
    "lng": "-65.29712"
  },
  {
    "country": "AR",
    "name": "San Ramón de la Nueva Orán",
    "lat": "-23.13705",
    "lng": "-64.32426"
  },
  {
    "country": "AR",
    "name": "San Rafael",
    "lat": "-34.61772",
    "lng": "-68.33007"
  },
  {
    "country": "AR",
    "name": "San Pedro",
    "lat": "-27.95386",
    "lng": "-65.16651"
  },
  {
    "country": "AR",
    "name": "San Pedro",
    "lat": "-24.23127",
    "lng": "-64.86614"
  },
  {
    "country": "AR",
    "name": "Sañogasta",
    "lat": "-29.0952",
    "lng": "-67.11586"
  },
  {
    "country": "AR",
    "name": "San Nicolás de los Arroyos",
    "lat": "-33.33578",
    "lng": "-60.22523"
  },
  {
    "country": "AR",
    "name": "San Miguel de Tucumán",
    "lat": "-26.82414",
    "lng": "-65.2226"
  },
  {
    "country": "AR",
    "name": "San Martín de los Andes",
    "lat": "-40.15789",
    "lng": "-71.35337"
  },
  {
    "country": "AR",
    "name": "San Martín",
    "lat": "-33.08103",
    "lng": "-68.46814"
  },
  {
    "country": "AR",
    "name": "San Martín",
    "lat": "-31.42957",
    "lng": "-68.50065"
  },
  {
    "country": "AR",
    "name": "San Luis",
    "lat": "-33.29501",
    "lng": "-66.33563"
  },
  {
    "country": "AR",
    "name": "San Lorenzo",
    "lat": "-32.74341",
    "lng": "-60.73613"
  },
  {
    "country": "AR",
    "name": "San Justo",
    "lat": "-30.78913",
    "lng": "-60.59189"
  },
  {
    "country": "AR",
    "name": "San Juan",
    "lat": "-31.5375",
    "lng": "-68.53639"
  },
  {
    "country": "AR",
    "name": "San José de la Dormida",
    "lat": "-30.3544",
    "lng": "-63.94871"
  },
  {
    "country": "AR",
    "name": "San José de Jáchal",
    "lat": "-30.24057",
    "lng": "-68.74693"
  },
  {
    "country": "AR",
    "name": "San José",
    "lat": "-28.38333",
    "lng": "-65.7"
  },
  {
    "country": "AR",
    "name": "San Jorge",
    "lat": "-31.89618",
    "lng": "-61.85984"
  },
  {
    "country": "AR",
    "name": "San Isidro",
    "lat": "-28.46265",
    "lng": "-65.72585"
  },
  {
    "country": "AR",
    "name": "San Francisco del Monte de Oro",
    "lat": "-32.59825",
    "lng": "-66.12539"
  },
  {
    "country": "AR",
    "name": "San Francisco del Chañar",
    "lat": "-29.78991",
    "lng": "-63.93861"
  },
  {
    "country": "AR",
    "name": "San Francisco",
    "lat": "-31.42797",
    "lng": "-62.08266"
  },
  {
    "country": "AR",
    "name": "San Fernando del Valle de Catamarca",
    "lat": "-28.46957",
    "lng": "-65.78524"
  },
  {
    "country": "AR",
    "name": "San Cristóbal",
    "lat": "-30.31053",
    "lng": "-61.23724"
  },
  {
    "country": "AR",
    "name": "San Carlos de Bolívar",
    "lat": "-36.25",
    "lng": "-61.1"
  },
  {
    "country": "AR",
    "name": "San Carlos Centro",
    "lat": "-31.72864",
    "lng": "-61.09192"
  },
  {
    "country": "AR",
    "name": "San Carlos",
    "lat": "-31.17761",
    "lng": "-65.10245"
  },
  {
    "country": "AR",
    "name": "San Carlos",
    "lat": "-25.88618",
    "lng": "-65.92941"
  },
  {
    "country": "AR",
    "name": "San Blas de los Sauces",
    "lat": "-28.41051",
    "lng": "-67.09341"
  },
  {
    "country": "AR",
    "name": "San Bernardo",
    "lat": "-27.28782",
    "lng": "-60.71252"
  },
  {
    "country": "AR",
    "name": "San Benito",
    "lat": "-31.78371",
    "lng": "-60.44156"
  },
  {
    "country": "AR",
    "name": "San Basilio",
    "lat": "-33.49763",
    "lng": "-64.31495"
  },
  {
    "country": "AR",
    "name": "San Antonio Oeste",
    "lat": "-40.73193",
    "lng": "-64.94769"
  },
  {
    "country": "AR",
    "name": "San Antonio de los Cobres",
    "lat": "-24.21804",
    "lng": "-66.31877"
  },
  {
    "country": "AR",
    "name": "San Antonio de Litín",
    "lat": "-32.21377",
    "lng": "-62.63237"
  },
  {
    "country": "AR",
    "name": "San Antonio",
    "lat": "-28.00927",
    "lng": "-65.71218"
  },
  {
    "country": "AR",
    "name": "San Antonio",
    "lat": "-24.36753",
    "lng": "-65.33471"
  },
  {
    "country": "AR",
    "name": "San Agustín de Valle Fértil",
    "lat": "-30.63353",
    "lng": "-67.46821"
  },
  {
    "country": "AR",
    "name": "San Agustín",
    "lat": "-31.97681",
    "lng": "-64.374"
  },
  {
    "country": "AR",
    "name": "Samuhú",
    "lat": "-27.52116",
    "lng": "-60.39167"
  },
  {
    "country": "AR",
    "name": "Sampacho",
    "lat": "-33.3839",
    "lng": "-64.72211"
  },
  {
    "country": "AR",
    "name": "Salto",
    "lat": "-34.29292",
    "lng": "-60.25455"
  },
  {
    "country": "AR",
    "name": "Salta",
    "lat": "-24.7859",
    "lng": "-65.41166"
  },
  {
    "country": "AR",
    "name": "Salsipuedes",
    "lat": "-31.13725",
    "lng": "-64.29589"
  },
  {
    "country": "AR",
    "name": "Salsacate",
    "lat": "-31.31649",
    "lng": "-65.08529"
  },
  {
    "country": "AR",
    "name": "Salliqueló",
    "lat": "-36.75216",
    "lng": "-62.96053"
  },
  {
    "country": "AR",
    "name": "Saldán",
    "lat": "-31.30262",
    "lng": "-64.307"
  },
  {
    "country": "AR",
    "name": "Sacanta",
    "lat": "-31.663",
    "lng": "-63.04505"
  },
  {
    "country": "AR",
    "name": "Rufino",
    "lat": "-34.26827",
    "lng": "-62.71262"
  },
  {
    "country": "AR",
    "name": "Rosario de Lerma",
    "lat": "-24.98206",
    "lng": "-65.57891"
  },
  {
    "country": "AR",
    "name": "Rosario de la Frontera",
    "lat": "-25.79693",
    "lng": "-64.97094"
  },
  {
    "country": "AR",
    "name": "Rosario",
    "lat": "-32.94682",
    "lng": "-60.63932"
  },
  {
    "country": "AR",
    "name": "Roldán",
    "lat": "-32.89846",
    "lng": "-60.90681"
  },
  {
    "country": "AR",
    "name": "Rojas",
    "lat": "-34.19528",
    "lng": "-60.735"
  },
  {
    "country": "AR",
    "name": "Rodeo",
    "lat": "-30.21186",
    "lng": "-69.13661"
  },
  {
    "country": "AR",
    "name": "Rivadavia",
    "lat": "-33.19051",
    "lng": "-68.46081"
  },
  {
    "country": "AR",
    "name": "Rivadavia",
    "lat": "-31.55389",
    "lng": "-68.6525"
  },
  {
    "country": "AR",
    "name": "Rivadavia",
    "lat": "-24.18832",
    "lng": "-62.89021"
  },
  {
    "country": "AR",
    "name": "Río Tercero",
    "lat": "-32.17301",
    "lng": "-64.11405"
  },
  {
    "country": "AR",
    "name": "Río Segundo",
    "lat": "-31.6526",
    "lng": "-63.9099"
  },
  {
    "country": "AR",
    "name": "Río Pico",
    "lat": "-44.17905",
    "lng": "-71.36847"
  },
  {
    "country": "AR",
    "name": "Río Mayo",
    "lat": "-45.68573",
    "lng": "-70.25797"
  },
  {
    "country": "AR",
    "name": "Río Grande",
    "lat": "-53.78769",
    "lng": "-67.70946"
  },
  {
    "country": "AR",
    "name": "Río Gallegos",
    "lat": "-51.62261",
    "lng": "-69.21813"
  },
  {
    "country": "AR",
    "name": "Río Cuarto",
    "lat": "-33.13067",
    "lng": "-64.34992"
  },
  {
    "country": "AR",
    "name": "Río Colorado",
    "lat": "-38.99397",
    "lng": "-64.09295"
  },
  {
    "country": "AR",
    "name": "Río Ceballos",
    "lat": "-31.16486",
    "lng": "-64.32241"
  },
  {
    "country": "AR",
    "name": "Rinconada",
    "lat": "-22.44083",
    "lng": "-66.16779"
  },
  {
    "country": "AR",
    "name": "Recreo",
    "lat": "-31.49076",
    "lng": "-60.73299"
  },
  {
    "country": "AR",
    "name": "Recreo",
    "lat": "-29.28184",
    "lng": "-65.06096"
  },
  {
    "country": "AR",
    "name": "Realicó",
    "lat": "-35.03658",
    "lng": "-64.2447"
  },
  {
    "country": "AR",
    "name": "Rawson",
    "lat": "-43.30016",
    "lng": "-65.10228"
  },
  {
    "country": "AR",
    "name": "Rancul",
    "lat": "-35.06862",
    "lng": "-64.68107"
  },
  {
    "country": "AR",
    "name": "Ramallo",
    "lat": "-33.48482",
    "lng": "-60.00707"
  },
  {
    "country": "AR",
    "name": "Rafaela",
    "lat": "-31.25033",
    "lng": "-61.4867"
  },
  {
    "country": "AR",
    "name": "Rada Tilly",
    "lat": "-45.93333",
    "lng": "-67.53333"
  },
  {
    "country": "AR",
    "name": "Quitilipi",
    "lat": "-26.86913",
    "lng": "-60.21683"
  },
  {
    "country": "AR",
    "name": "Quimilí",
    "lat": "-27.63333",
    "lng": "-62.41667"
  },
  {
    "country": "AR",
    "name": "Quilino",
    "lat": "-30.21397",
    "lng": "-64.50063"
  },
  {
    "country": "AR",
    "name": "Quemú Quemú",
    "lat": "-36.05463",
    "lng": "-63.56428"
  },
  {
    "country": "AR",
    "name": "Punta Alta",
    "lat": "-38.87588",
    "lng": "-62.07359"
  },
  {
    "country": "AR",
    "name": "Puerto Santa Cruz",
    "lat": "-50.0191",
    "lng": "-68.52321"
  },
  {
    "country": "AR",
    "name": "San Julián",
    "lat": "-49.30554",
    "lng": "-67.72743"
  },
  {
    "country": "AR",
    "name": "Puerto Madryn",
    "lat": "-42.7692",
    "lng": "-65.03851"
  },
  {
    "country": "AR",
    "name": "Puerto Deseado",
    "lat": "-47.75034",
    "lng": "-65.89382"
  },
  {
    "country": "AR",
    "name": "Puerta de Corral Quemado",
    "lat": "-27.23",
    "lng": "-66.93635"
  },
  {
    "country": "AR",
    "name": "Puelches",
    "lat": "-38.14562",
    "lng": "-65.91426"
  },
  {
    "country": "AR",
    "name": "Puan",
    "lat": "-37.54576",
    "lng": "-62.76723"
  },
  {
    "country": "AR",
    "name": "Presidencia Roque Sáenz Peña",
    "lat": "-26.78522",
    "lng": "-60.43876"
  },
  {
    "country": "AR",
    "name": "Pozo Hondo",
    "lat": "-27.16607",
    "lng": "-64.49"
  },
  {
    "country": "AR",
    "name": "Pozo del Tigre",
    "lat": "-24.89682",
    "lng": "-60.32359"
  },
  {
    "country": "AR",
    "name": "Pozo del Molle",
    "lat": "-32.0186",
    "lng": "-62.91984"
  },
  {
    "country": "AR",
    "name": "Porteña",
    "lat": "-31.01391",
    "lng": "-62.0665"
  },
  {
    "country": "AR",
    "name": "Pomán",
    "lat": "-28.39455",
    "lng": "-66.22052"
  },
  {
    "country": "AR",
    "name": "Pocito",
    "lat": "-31.68333",
    "lng": "-68.58333"
  },
  {
    "country": "AR",
    "name": "Plottier",
    "lat": "-38.96667",
    "lng": "-68.23333"
  },
  {
    "country": "AR",
    "name": "Plaza Huincul",
    "lat": "-38.92598",
    "lng": "-69.20863"
  },
  {
    "country": "AR",
    "name": "Piquillín",
    "lat": "-31.30158",
    "lng": "-63.75788"
  },
  {
    "country": "AR",
    "name": "Pilcaniyeu",
    "lat": "-41.11881",
    "lng": "-70.72914"
  },
  {
    "country": "AR",
    "name": "Pilar",
    "lat": "-31.6789",
    "lng": "-63.87964"
  },
  {
    "country": "AR",
    "name": "Pigüé",
    "lat": "-37.60509",
    "lng": "-62.40333"
  },
  {
    "country": "AR",
    "name": "Piedra del Águila",
    "lat": "-40.04811",
    "lng": "-70.0741"
  },
  {
    "country": "AR",
    "name": "Picún Leufú",
    "lat": "-39.52351",
    "lng": "-69.27966"
  },
  {
    "country": "AR",
    "name": "Pico Truncado",
    "lat": "-46.7949",
    "lng": "-67.95731"
  },
  {
    "country": "AR",
    "name": "Perito Moreno",
    "lat": "-46.58995",
    "lng": "-70.92975"
  },
  {
    "country": "AR",
    "name": "Pergamino",
    "lat": "-33.88995",
    "lng": "-60.57357"
  },
  {
    "country": "AR",
    "name": "Pérez",
    "lat": "-32.99835",
    "lng": "-60.76791"
  },
  {
    "country": "AR",
    "name": "Pellegrini",
    "lat": "-36.26584",
    "lng": "-63.1655"
  },
  {
    "country": "AR",
    "name": "Pehuajó",
    "lat": "-35.81077",
    "lng": "-61.8968"
  },
  {
    "country": "AR",
    "name": "Patquía",
    "lat": "-30.04681",
    "lng": "-66.88231"
  },
  {
    "country": "AR",
    "name": "Paso de Indios",
    "lat": "-43.86225",
    "lng": "-69.04603"
  },
  {
    "country": "AR",
    "name": "Pasco",
    "lat": "-32.74733",
    "lng": "-63.34232"
  },
  {
    "country": "AR",
    "name": "Pascanas",
    "lat": "-33.1255",
    "lng": "-63.04084"
  },
  {
    "country": "AR",
    "name": "Parera",
    "lat": "-35.146",
    "lng": "-64.50089"
  },
  {
    "country": "AR",
    "name": "Paraná",
    "lat": "-31.73197",
    "lng": "-60.5238"
  },
  {
    "country": "AR",
    "name": "Pampa de los Guanacos",
    "lat": "-26.23333",
    "lng": "-61.85"
  },
  {
    "country": "AR",
    "name": "Pampa del Infierno",
    "lat": "-26.50517",
    "lng": "-61.17436"
  },
  {
    "country": "AR",
    "name": "Palpalá",
    "lat": "-24.25647",
    "lng": "-65.21163"
  },
  {
    "country": "AR",
    "name": "Palma Sola",
    "lat": "-23.96336",
    "lng": "-64.29872"
  },
  {
    "country": "AR",
    "name": "Oro Verde",
    "lat": "-31.82508",
    "lng": "-60.51749"
  },
  {
    "country": "AR",
    "name": "Ordóñez",
    "lat": "-32.84057",
    "lng": "-62.86552"
  },
  {
    "country": "AR",
    "name": "Oncativo",
    "lat": "-31.91353",
    "lng": "-63.68201"
  },
  {
    "country": "AR",
    "name": "Olta",
    "lat": "-30.63117",
    "lng": "-66.263"
  },
  {
    "country": "AR",
    "name": "Oliva",
    "lat": "-32.04158",
    "lng": "-63.56978"
  },
  {
    "country": "AR",
    "name": "Olavarría",
    "lat": "-36.89272",
    "lng": "-60.32254"
  },
  {
    "country": "AR",
    "name": "Obispo Trejo",
    "lat": "-30.78128",
    "lng": "-63.41349"
  },
  {
    "country": "AR",
    "name": "Nueve de Julio",
    "lat": "-35.44437",
    "lng": "-60.88313"
  },
  {
    "country": "AR",
    "name": "Nueve de Julio",
    "lat": "-31.66914",
    "lng": "-68.39023"
  },
  {
    "country": "AR",
    "name": "Nueva Esperanza",
    "lat": "-26.19907",
    "lng": "-64.23792"
  },
  {
    "country": "AR",
    "name": "Ñorquinco",
    "lat": "-41.85072",
    "lng": "-70.90173"
  },
  {
    "country": "AR",
    "name": "Noetinger",
    "lat": "-32.36597",
    "lng": "-62.31126"
  },
  {
    "country": "AR",
    "name": "Neuquén",
    "lat": "-38.95161",
    "lng": "-68.0591"
  },
  {
    "country": "AR",
    "name": "Naschel",
    "lat": "-32.91656",
    "lng": "-65.37535"
  },
  {
    "country": "AR",
    "name": "Napenay",
    "lat": "-26.73333",
    "lng": "-60.61667"
  },
  {
    "country": "AR",
    "name": "Mutquín",
    "lat": "-28.32104",
    "lng": "-66.14253"
  },
  {
    "country": "AR",
    "name": "Morteros",
    "lat": "-30.71164",
    "lng": "-61.99862"
  },
  {
    "country": "AR",
    "name": "Morrison",
    "lat": "-32.5948",
    "lng": "-62.83455"
  },
  {
    "country": "AR",
    "name": "Monteros",
    "lat": "-27.16741",
    "lng": "-65.49832"
  },
  {
    "country": "AR",
    "name": "Monte Quemado Airport",
    "lat": "-25.80565",
    "lng": "-62.83019"
  },
  {
    "country": "AR",
    "name": "Monte Maíz",
    "lat": "-33.20462",
    "lng": "-62.60085"
  },
  {
    "country": "AR",
    "name": "Monte Hermoso",
    "lat": "-38.9825",
    "lng": "-61.29472"
  },
  {
    "country": "AR",
    "name": "Monte Cristo",
    "lat": "-31.34312",
    "lng": "-63.94437"
  },
  {
    "country": "AR",
    "name": "Monte Buey",
    "lat": "-32.91642",
    "lng": "-62.45669"
  },
  {
    "country": "AR",
    "name": "Molinos",
    "lat": "-25.4395",
    "lng": "-66.29126"
  },
  {
    "country": "AR",
    "name": "Miramar",
    "lat": "-30.91859",
    "lng": "-62.67814"
  },
  {
    "country": "AR",
    "name": "Mina Clavero",
    "lat": "-31.72101",
    "lng": "-65.00619"
  },
  {
    "country": "AR",
    "name": "Milagro",
    "lat": "-31.00326",
    "lng": "-66.00098"
  },
  {
    "country": "AR",
    "name": "Miguel Riglos",
    "lat": "-36.85398",
    "lng": "-63.68842"
  },
  {
    "country": "AR",
    "name": "Metán",
    "lat": "-25.49905",
    "lng": "-64.97388"
  },
  {
    "country": "AR",
    "name": "Merlo",
    "lat": "-32.34288",
    "lng": "-65.01396"
  },
  {
    "country": "AR",
    "name": "Mendoza",
    "lat": "-32.89084",
    "lng": "-68.82717"
  },
  {
    "country": "AR",
    "name": "Mendiolaza",
    "lat": "-31.26738",
    "lng": "-64.30087"
  },
  {
    "country": "AR",
    "name": "Melincué",
    "lat": "-33.65847",
    "lng": "-61.45459"
  },
  {
    "country": "AR",
    "name": "Médanos",
    "lat": "-38.82803",
    "lng": "-62.69355"
  },
  {
    "country": "AR",
    "name": "Mattaldi",
    "lat": "-34.48194",
    "lng": "-64.17255"
  },
  {
    "country": "AR",
    "name": "Marull",
    "lat": "-30.99471",
    "lng": "-62.82576"
  },
  {
    "country": "AR",
    "name": "Mariano Moreno",
    "lat": "-38.75029",
    "lng": "-70.02367"
  },
  {
    "country": "AR",
    "name": "Marcos Juárez",
    "lat": "-32.6978",
    "lng": "-62.10672"
  },
  {
    "country": "AR",
    "name": "Maquinchao",
    "lat": "-41.25",
    "lng": "-68.73333"
  },
  {
    "country": "AR",
    "name": "Malvinas Argentinas",
    "lat": "-31.38333",
    "lng": "-64.06667"
  },
  {
    "country": "AR",
    "name": "Malargüe",
    "lat": "-35.47545",
    "lng": "-69.58427"
  },
  {
    "country": "AR",
    "name": "Malanzán",
    "lat": "-30.80394",
    "lng": "-66.60908"
  },
  {
    "country": "AR",
    "name": "Malagueño",
    "lat": "-31.46467",
    "lng": "-64.3584"
  },
  {
    "country": "AR",
    "name": "Maipú",
    "lat": "-32.97963",
    "lng": "-68.78461"
  },
  {
    "country": "AR",
    "name": "Mainque",
    "lat": "-39.06667",
    "lng": "-67.3"
  },
  {
    "country": "AR",
    "name": "Maimará",
    "lat": "-23.62392",
    "lng": "-65.40797"
  },
  {
    "country": "AR",
    "name": "Machagai",
    "lat": "-26.92614",
    "lng": "-60.04955"
  },
  {
    "country": "AR",
    "name": "Macachín",
    "lat": "-37.13598",
    "lng": "-63.6665"
  },
  {
    "country": "AR",
    "name": "San Isidro de Lules",
    "lat": "-26.9277",
    "lng": "-65.33869"
  },
  {
    "country": "AR",
    "name": "Luján de Cuyo",
    "lat": "-33.03547",
    "lng": "-68.87782"
  },
  {
    "country": "AR",
    "name": "Luján",
    "lat": "-32.3757",
    "lng": "-65.9296"
  },
  {
    "country": "AR",
    "name": "Los Varela",
    "lat": "-27.95482",
    "lng": "-65.8655"
  },
  {
    "country": "AR",
    "name": "Los Telares",
    "lat": "-28.98479",
    "lng": "-63.44889"
  },
  {
    "country": "AR",
    "name": "Los Surgentes",
    "lat": "-32.98454",
    "lng": "-62.02191"
  },
  {
    "country": "AR",
    "name": "Los Menucos",
    "lat": "-40.84402",
    "lng": "-68.08718"
  },
  {
    "country": "AR",
    "name": "Los Juríes",
    "lat": "-28.46539",
    "lng": "-62.10862"
  },
  {
    "country": "AR",
    "name": "Los Frentones",
    "lat": "-26.4077",
    "lng": "-61.41367"
  },
  {
    "country": "AR",
    "name": "Los Cóndores",
    "lat": "-32.31983",
    "lng": "-64.27751"
  },
  {
    "country": "AR",
    "name": "Los Antiguos",
    "lat": "-46.54972",
    "lng": "-71.63086"
  },
  {
    "country": "AR",
    "name": "Los Altos",
    "lat": "-28.04845",
    "lng": "-65.49945"
  },
  {
    "country": "AR",
    "name": "Lonquimay",
    "lat": "-36.46546",
    "lng": "-63.62429"
  },
  {
    "country": "AR",
    "name": "Londres",
    "lat": "-27.71439",
    "lng": "-67.13349"
  },
  {
    "country": "AR",
    "name": "Loncopué",
    "lat": "-38.07284",
    "lng": "-70.61609"
  },
  {
    "country": "AR",
    "name": "Lincoln",
    "lat": "-34.86649",
    "lng": "-61.5302"
  },
  {
    "country": "AR",
    "name": "Limay Mahuida",
    "lat": "-37.15959",
    "lng": "-66.67595"
  },
  {
    "country": "AR",
    "name": "Libertador General San Martín",
    "lat": "-32.41074",
    "lng": "-65.67586"
  },
  {
    "country": "AR",
    "name": "Libertador General San Martín",
    "lat": "-23.80644",
    "lng": "-64.78757"
  },
  {
    "country": "AR",
    "name": "Leones",
    "lat": "-32.66174",
    "lng": "-62.29678"
  },
  {
    "country": "AR",
    "name": "Leleque",
    "lat": "-42.41225",
    "lng": "-71.06797"
  },
  {
    "country": "AR",
    "name": "La Viña",
    "lat": "-25.46642",
    "lng": "-65.5663"
  },
  {
    "country": "AR",
    "name": "La Toma",
    "lat": "-33.05258",
    "lng": "-65.62385"
  },
  {
    "country": "AR",
    "name": "La Tigra",
    "lat": "-27.10996",
    "lng": "-60.58719"
  },
  {
    "country": "AR",
    "name": "Las Varillas",
    "lat": "-31.87208",
    "lng": "-62.71946"
  },
  {
    "country": "AR",
    "name": "Las Varas",
    "lat": "-31.8026",
    "lng": "-62.61655"
  },
  {
    "country": "AR",
    "name": "Las Rosas",
    "lat": "-32.47661",
    "lng": "-61.58041"
  },
  {
    "country": "AR",
    "name": "Las Plumas",
    "lat": "-43.72058",
    "lng": "-67.28319"
  },
  {
    "country": "AR",
    "name": "Las Perdices",
    "lat": "-32.69794",
    "lng": "-63.70634"
  },
  {
    "country": "AR",
    "name": "Las Parejas",
    "lat": "-32.68478",
    "lng": "-61.51637"
  },
  {
    "country": "AR",
    "name": "Las Ovejas",
    "lat": "-36.98881",
    "lng": "-70.74991"
  },
  {
    "country": "AR",
    "name": "Las Lomitas",
    "lat": "-24.70955",
    "lng": "-60.59303"
  },
  {
    "country": "AR",
    "name": "Las Lajitas",
    "lat": "-24.68333",
    "lng": "-64.25"
  },
  {
    "country": "AR",
    "name": "Las Lajas",
    "lat": "-38.52322",
    "lng": "-70.36745"
  },
  {
    "country": "AR",
    "name": "Las Junturas",
    "lat": "-31.83125",
    "lng": "-63.45016"
  },
  {
    "country": "AR",
    "name": "Las Higueras",
    "lat": "-33.09231",
    "lng": "-64.28899"
  },
  {
    "country": "AR",
    "name": "Las Heras",
    "lat": "-46.54186",
    "lng": "-68.93593"
  },
  {
    "country": "AR",
    "name": "Las Heras",
    "lat": "-32.85273",
    "lng": "-68.82837"
  },
  {
    "country": "AR",
    "name": "Las Coloradas",
    "lat": "-39.55534",
    "lng": "-70.59491"
  },
  {
    "country": "AR",
    "name": "Las Breñas",
    "lat": "-27.08966",
    "lng": "-61.08161"
  },
  {
    "country": "AR",
    "name": "Las Acequias",
    "lat": "-33.28155",
    "lng": "-63.9761"
  },
  {
    "country": "AR",
    "name": "La Rioja",
    "lat": "-29.41105",
    "lng": "-66.85067"
  },
  {
    "country": "AR",
    "name": "La Quiaca",
    "lat": "-22.10236",
    "lng": "-65.59299"
  },
  {
    "country": "AR",
    "name": "La Puerta de San José",
    "lat": "-27.55",
    "lng": "-67.01667"
  },
  {
    "country": "AR",
    "name": "La Puerta",
    "lat": "-28.17036",
    "lng": "-65.79015"
  },
  {
    "country": "AR",
    "name": "Laprida",
    "lat": "-37.54415",
    "lng": "-60.79969"
  },
  {
    "country": "AR",
    "name": "La Poma",
    "lat": "-24.72196",
    "lng": "-66.20106"
  },
  {
    "country": "AR",
    "name": "La Playosa",
    "lat": "-32.10002",
    "lng": "-63.03088"
  },
  {
    "country": "AR",
    "name": "La Paz",
    "lat": "-33.46091",
    "lng": "-67.54956"
  },
  {
    "country": "AR",
    "name": "La Para",
    "lat": "-30.89416",
    "lng": "-63.00107"
  },
  {
    "country": "AR",
    "name": "La Merced",
    "lat": "-28.15195",
    "lng": "-65.66029"
  },
  {
    "country": "AR",
    "name": "La Mendieta",
    "lat": "-24.31187",
    "lng": "-64.96377"
  },
  {
    "country": "AR",
    "name": "La Maruja",
    "lat": "-35.6736",
    "lng": "-64.93997"
  },
  {
    "country": "AR",
    "name": "Lamarque",
    "lat": "-39.42304",
    "lng": "-65.70208"
  },
  {
    "country": "AR",
    "name": "Laguna Yema",
    "lat": "-24.25391",
    "lng": "-61.24466"
  },
  {
    "country": "AR",
    "name": "Laguna Paiva",
    "lat": "-31.30391",
    "lng": "-60.65894"
  },
  {
    "country": "AR",
    "name": "Laguna Larga",
    "lat": "-31.77652",
    "lng": "-63.80104"
  },
  {
    "country": "AR",
    "name": "La Granja",
    "lat": "-31.00919",
    "lng": "-64.26869"
  },
  {
    "country": "AR",
    "name": "Lago Puelo",
    "lat": "-42.08095",
    "lng": "-71.61405"
  },
  {
    "country": "AR",
    "name": "La Francia",
    "lat": "-31.40675",
    "lng": "-62.63396"
  },
  {
    "country": "AR",
    "name": "La Falda",
    "lat": "-31.08841",
    "lng": "-64.48987"
  },
  {
    "country": "AR",
    "name": "La Cumbre",
    "lat": "-30.98201",
    "lng": "-64.49139"
  },
  {
    "country": "AR",
    "name": "La Consulta",
    "lat": "-33.73579",
    "lng": "-69.12181"
  },
  {
    "country": "AR",
    "name": "La Cocha",
    "lat": "-27.77729",
    "lng": "-65.57035"
  },
  {
    "country": "AR",
    "name": "La Clotilde",
    "lat": "-27.13333",
    "lng": "-60.66667"
  },
  {
    "country": "AR",
    "name": "La Cesira",
    "lat": "-33.95115",
    "lng": "-62.97238"
  },
  {
    "country": "AR",
    "name": "La Carlota",
    "lat": "-33.41993",
    "lng": "-63.29769"
  },
  {
    "country": "AR",
    "name": "La Candelaria",
    "lat": "-26.12708",
    "lng": "-65.0496"
  },
  {
    "country": "AR",
    "name": "La Cañada",
    "lat": "-27.70826",
    "lng": "-63.77366"
  },
  {
    "country": "AR",
    "name": "La Calera",
    "lat": "-31.34377",
    "lng": "-64.33529"
  },
  {
    "country": "AR",
    "name": "La Caldera",
    "lat": "-24.60159",
    "lng": "-65.38098"
  },
  {
    "country": "AR",
    "name": "Laboulaye",
    "lat": "-34.12662",
    "lng": "-63.39119"
  },
  {
    "country": "AR",
    "name": "Laborde",
    "lat": "-33.15319",
    "lng": "-62.85661"
  },
  {
    "country": "AR",
    "name": "La Banda",
    "lat": "-27.73348",
    "lng": "-64.24278"
  },
  {
    "country": "AR",
    "name": "Justo Daract",
    "lat": "-33.8594",
    "lng": "-65.18277"
  },
  {
    "country": "AR",
    "name": "Justiniano Posse",
    "lat": "-32.88411",
    "lng": "-62.67788"
  },
  {
    "country": "AR",
    "name": "Junín de los Andes",
    "lat": "-39.95043",
    "lng": "-71.06936"
  },
  {
    "country": "AR",
    "name": "Junín",
    "lat": "-34.58382",
    "lng": "-60.94332"
  },
  {
    "country": "AR",
    "name": "Junín",
    "lat": "-33.14765",
    "lng": "-68.47899"
  },
  {
    "country": "AR",
    "name": "José de San Martín",
    "lat": "-44.05032",
    "lng": "-70.46967"
  },
  {
    "country": "AR",
    "name": "Joaquín V. González",
    "lat": "-25.08333",
    "lng": "-64.18333"
  },
  {
    "country": "AR",
    "name": "Jesús María",
    "lat": "-30.98153",
    "lng": "-64.09424"
  },
  {
    "country": "AR",
    "name": "James Craik",
    "lat": "-32.1612",
    "lng": "-63.46688"
  },
  {
    "country": "AR",
    "name": "Jacinto Arauz",
    "lat": "-38.08606",
    "lng": "-63.43169"
  },
  {
    "country": "AR",
    "name": "Italó",
    "lat": "-34.79237",
    "lng": "-63.78199"
  },
  {
    "country": "AR",
    "name": "Isla Verde",
    "lat": "-33.24104",
    "lng": "-62.40297"
  },
  {
    "country": "AR",
    "name": "Iruya",
    "lat": "-22.76667",
    "lng": "-65.23333"
  },
  {
    "country": "AR",
    "name": "Intendente Alvear",
    "lat": "-35.23383",
    "lng": "-63.59205"
  },
  {
    "country": "AR",
    "name": "Inriville",
    "lat": "-32.94424",
    "lng": "-62.23028"
  },
  {
    "country": "AR",
    "name": "Ingenio La Esperanza",
    "lat": "-24.22554",
    "lng": "-64.83896"
  },
  {
    "country": "AR",
    "name": "Ingeniero Luis A. Huergo",
    "lat": "-39.08333",
    "lng": "-67.23333"
  },
  {
    "country": "AR",
    "name": "Ingeniero Luiggi",
    "lat": "-35.38585",
    "lng": "-64.46519"
  },
  {
    "country": "AR",
    "name": "Ingeniero Jacobacci",
    "lat": "-41.3292",
    "lng": "-69.55015"
  },
  {
    "country": "AR",
    "name": "Ingeniero Guillermo N. Juárez",
    "lat": "-23.9",
    "lng": "-61.85"
  },
  {
    "country": "AR",
    "name": "Idiazábal",
    "lat": "-32.81411",
    "lng": "-63.03252"
  },
  {
    "country": "AR",
    "name": "Icaño",
    "lat": "-28.91934",
    "lng": "-65.32817"
  },
  {
    "country": "AR",
    "name": "Humahuaca",
    "lat": "-23.20544",
    "lng": "-65.35048"
  },
  {
    "country": "AR",
    "name": "Huinca Renancó",
    "lat": "-34.84038",
    "lng": "-64.3758"
  },
  {
    "country": "AR",
    "name": "Huillapima",
    "lat": "-28.72533",
    "lng": "-65.9787"
  },
  {
    "country": "AR",
    "name": "Huerta Grande",
    "lat": "-31.07524",
    "lng": "-64.49063"
  },
  {
    "country": "AR",
    "name": "Huanchillas",
    "lat": "-33.66653",
    "lng": "-63.63701"
  },
  {
    "country": "AR",
    "name": "Hualfín",
    "lat": "-27.22896",
    "lng": "-66.83131"
  },
  {
    "country": "AR",
    "name": "Hoyo de Epuyén",
    "lat": "-42.07189",
    "lng": "-71.50811"
  },
  {
    "country": "AR",
    "name": "Hersilia",
    "lat": "-30.00447",
    "lng": "-61.8408"
  },
  {
    "country": "AR",
    "name": "Herrera",
    "lat": "-28.48094",
    "lng": "-63.06779"
  },
  {
    "country": "AR",
    "name": "Hernando",
    "lat": "-32.42657",
    "lng": "-63.73333"
  },
  {
    "country": "AR",
    "name": "Hernández",
    "lat": "-32.3373",
    "lng": "-60.0216"
  },
  {
    "country": "AR",
    "name": "Hermoso Campo",
    "lat": "-27.60816",
    "lng": "-61.34441"
  },
  {
    "country": "AR",
    "name": "Henderson",
    "lat": "-36.3",
    "lng": "-61.71667"
  },
  {
    "country": "AR",
    "name": "Helvecia",
    "lat": "-31.09834",
    "lng": "-60.0883"
  },
  {
    "country": "AR",
    "name": "Guatraché",
    "lat": "-37.66776",
    "lng": "-63.53021"
  },
  {
    "country": "AR",
    "name": "Guatimozín",
    "lat": "-33.46149",
    "lng": "-62.43844"
  },
  {
    "country": "AR",
    "name": "Guaminí",
    "lat": "-37.03333",
    "lng": "-62.41667"
  },
  {
    "country": "AR",
    "name": "Guachipas",
    "lat": "-25.52031",
    "lng": "-65.50937"
  },
  {
    "country": "AR",
    "name": "Graneros",
    "lat": "-27.64934",
    "lng": "-65.4383"
  },
  {
    "country": "AR",
    "name": "Granadero Baigorria",
    "lat": "-32.85683",
    "lng": "-60.71754"
  },
  {
    "country": "AR",
    "name": "Godoy Cruz",
    "lat": "-32.92863",
    "lng": "-68.8351"
  },
  {
    "country": "AR",
    "name": "Gobernador Gregores",
    "lat": "-48.75057",
    "lng": "-70.24741"
  },
  {
    "country": "AR",
    "name": "Gobernador Gálvez",
    "lat": "-33.03016",
    "lng": "-60.64045"
  },
  {
    "country": "AR",
    "name": "Gobernador Costa",
    "lat": "-44.04992",
    "lng": "-70.59798"
  },
  {
    "country": "AR",
    "name": "General Villegas",
    "lat": "-35.03285",
    "lng": "-63.01252"
  },
  {
    "country": "AR",
    "name": "General Viamonte",
    "lat": "-35.00014",
    "lng": "-61.03508"
  },
  {
    "country": "AR",
    "name": "General San Martín",
    "lat": "-37.97904",
    "lng": "-63.60449"
  },
  {
    "country": "AR",
    "name": "General Roca",
    "lat": "-39.03333",
    "lng": "-67.58333"
  },
  {
    "country": "AR",
    "name": "General Roca",
    "lat": "-32.73196",
    "lng": "-61.91599"
  },
  {
    "country": "AR",
    "name": "General Ramírez",
    "lat": "-32.17601",
    "lng": "-60.20079"
  },
  {
    "country": "AR",
    "name": "General Pinto",
    "lat": "-34.76459",
    "lng": "-61.89093"
  },
  {
    "country": "AR",
    "name": "General Pinedo",
    "lat": "-27.31667",
    "lng": "-61.28333"
  },
  {
    "country": "AR",
    "name": "General Pico",
    "lat": "-35.65662",
    "lng": "-63.75682"
  },
  {
    "country": "AR",
    "name": "General Martín Miguel de Güemes",
    "lat": "-24.67034",
    "lng": "-65.04765"
  },
  {
    "country": "AR",
    "name": "General Manuel J. Campos",
    "lat": "-37.46025",
    "lng": "-63.58537"
  },
  {
    "country": "AR",
    "name": "General Levalle",
    "lat": "-34.01472",
    "lng": "-63.92413"
  },
  {
    "country": "AR",
    "name": "General Lavalle",
    "lat": "-32.72218",
    "lng": "-68.59137"
  },
  {
    "country": "AR",
    "name": "General La Madrid",
    "lat": "-37.24755",
    "lng": "-61.26273"
  },
  {
    "country": "AR",
    "name": "General Fernández Oro",
    "lat": "-38.95297",
    "lng": "-67.92489"
  },
  {
    "country": "AR",
    "name": "General Enrique Mosconi",
    "lat": "-23.21667",
    "lng": "-62.3"
  },
  {
    "country": "AR",
    "name": "General Enrique Mosconi",
    "lat": "-22.59588",
    "lng": "-63.81255"
  },
  {
    "country": "AR",
    "name": "General Enrique Godoy",
    "lat": "-39.08333",
    "lng": "-67.15"
  },
  {
    "country": "AR",
    "name": "General Conesa",
    "lat": "-40.1",
    "lng": "-64.43333"
  },
  {
    "country": "AR",
    "name": "General Cabrera",
    "lat": "-32.81313",
    "lng": "-63.87243"
  },
  {
    "country": "AR",
    "name": "General Baldissera",
    "lat": "-33.12246",
    "lng": "-62.3063"
  },
  {
    "country": "AR",
    "name": "General Arenales",
    "lat": "-34.30264",
    "lng": "-61.30522"
  },
  {
    "country": "AR",
    "name": "General Alvear",
    "lat": "-36.02078",
    "lng": "-60.0145"
  },
  {
    "country": "AR",
    "name": "General Alvear",
    "lat": "-34.97696",
    "lng": "-67.69116"
  },
  {
    "country": "AR",
    "name": "General Acha",
    "lat": "-37.37698",
    "lng": "-64.60431"
  },
  {
    "country": "AR",
    "name": "Gastre",
    "lat": "-42.27514",
    "lng": "-69.21967"
  },
  {
    "country": "AR",
    "name": "Garza",
    "lat": "-28.15321",
    "lng": "-63.53935"
  },
  {
    "country": "AR",
    "name": "Gancedo",
    "lat": "-27.49038",
    "lng": "-61.67571"
  },
  {
    "country": "AR",
    "name": "Gálvez",
    "lat": "-32.02927",
    "lng": "-61.22103"
  },
  {
    "country": "AR",
    "name": "Gaimán",
    "lat": "-43.2897",
    "lng": "-65.4929"
  },
  {
    "country": "AR",
    "name": "Funes",
    "lat": "-32.91568",
    "lng": "-60.80995"
  },
  {
    "country": "AR",
    "name": "Frías",
    "lat": "-28.63593",
    "lng": "-65.13102"
  },
  {
    "country": "AR",
    "name": "Fray Luis Beltrán",
    "lat": "-39.31667",
    "lng": "-65.76667"
  },
  {
    "country": "AR",
    "name": "Fray Luis A. Beltrán",
    "lat": "-32.79122",
    "lng": "-60.72819"
  },
  {
    "country": "AR",
    "name": "Fraile Pintado",
    "lat": "-23.94079",
    "lng": "-64.79943"
  },
  {
    "country": "AR",
    "name": "Firmat",
    "lat": "-33.45937",
    "lng": "-61.4832"
  },
  {
    "country": "AR",
    "name": "Fiambalá",
    "lat": "-27.68705",
    "lng": "-67.6149"
  },
  {
    "country": "AR",
    "name": "Fernández",
    "lat": "-27.92037",
    "lng": "-63.89349"
  },
  {
    "country": "AR",
    "name": "Famatina",
    "lat": "-28.92322",
    "lng": "-67.52253"
  },
  {
    "country": "AR",
    "name": "Famaillá",
    "lat": "-27.05413",
    "lng": "-65.40329"
  },
  {
    "country": "AR",
    "name": "Etruria",
    "lat": "-32.94008",
    "lng": "-63.2466"
  },
  {
    "country": "AR",
    "name": "Estanislao del Campo",
    "lat": "-25.05504",
    "lng": "-60.09218"
  },
  {
    "country": "AR",
    "name": "Esquel",
    "lat": "-42.91147",
    "lng": "-71.31947"
  },
  {
    "country": "AR",
    "name": "Esperanza",
    "lat": "-31.4488",
    "lng": "-60.93173"
  },
  {
    "country": "AR",
    "name": "Embarcación",
    "lat": "-23.21003",
    "lng": "-64.09965"
  },
  {
    "country": "AR",
    "name": "Embalse",
    "lat": "-32.18",
    "lng": "-64.41809"
  },
  {
    "country": "AR",
    "name": "Embajador Martini",
    "lat": "-35.38633",
    "lng": "-64.28092"
  },
  {
    "country": "AR",
    "name": "El Trébol",
    "lat": "-32.2008",
    "lng": "-61.7014"
  },
  {
    "country": "AR",
    "name": "El Tío",
    "lat": "-31.38357",
    "lng": "-62.82938"
  },
  {
    "country": "AR",
    "name": "El Simbolar",
    "lat": "-27.97167",
    "lng": "-64.89544"
  },
  {
    "country": "AR",
    "name": "El Rodeo",
    "lat": "-28.21518",
    "lng": "-65.8742"
  },
  {
    "country": "AR",
    "name": "El Quebrachal",
    "lat": "-25.28333",
    "lng": "-64.06667"
  },
  {
    "country": "AR",
    "name": "El Maitén",
    "lat": "-42.04924",
    "lng": "-71.16693"
  },
  {
    "country": "AR",
    "name": "El Huecú",
    "lat": "-37.64522",
    "lng": "-70.58006"
  },
  {
    "country": "AR",
    "name": "El Hoyo",
    "lat": "-27.02872",
    "lng": "-63.23197"
  },
  {
    "country": "AR",
    "name": "El Galpón",
    "lat": "-25.38069",
    "lng": "-64.65259"
  },
  {
    "country": "AR",
    "name": "Elena",
    "lat": "-32.57205",
    "lng": "-64.39481"
  },
  {
    "country": "AR",
    "name": "El Cuy",
    "lat": "-39.92685",
    "lng": "-68.34208"
  },
  {
    "country": "AR",
    "name": "El Carril",
    "lat": "-25.0741",
    "lng": "-65.49174"
  },
  {
    "country": "AR",
    "name": "El Carmen",
    "lat": "-24.38682",
    "lng": "-65.26177"
  },
  {
    "country": "AR",
    "name": "El Calafate",
    "lat": "-50.34075",
    "lng": "-72.27682"
  },
  {
    "country": "AR",
    "name": "El Bolsón",
    "lat": "-41.96051",
    "lng": "-71.53336"
  },
  {
    "country": "AR",
    "name": "El Arañado",
    "lat": "-31.7412",
    "lng": "-62.89322"
  },
  {
    "country": "AR",
    "name": "El Alto",
    "lat": "-28.31123",
    "lng": "-65.36397"
  },
  {
    "country": "AR",
    "name": "El Aguilar",
    "lat": "-23.22582",
    "lng": "-65.69213"
  },
  {
    "country": "AR",
    "name": "Eduardo Castex",
    "lat": "-35.91501",
    "lng": "-64.29448"
  },
  {
    "country": "AR",
    "name": "Dolavón",
    "lat": "-43.3",
    "lng": "-65.7"
  },
  {
    "country": "AR",
    "name": "Doblas",
    "lat": "-37.14967",
    "lng": "-64.01183"
  },
  {
    "country": "AR",
    "name": "Diamante",
    "lat": "-32.06641",
    "lng": "-60.63837"
  },
  {
    "country": "AR",
    "name": "Devoto",
    "lat": "-31.40431",
    "lng": "-62.30634"
  },
  {
    "country": "AR",
    "name": "Despeñaderos",
    "lat": "-31.81626",
    "lng": "-64.28989"
  },
  {
    "country": "AR",
    "name": "Del Campillo",
    "lat": "-34.37659",
    "lng": "-64.49504"
  },
  {
    "country": "AR",
    "name": "Deán Funes",
    "lat": "-30.42036",
    "lng": "-64.34984"
  },
  {
    "country": "AR",
    "name": "Darwin",
    "lat": "-39.2",
    "lng": "-65.76667"
  },
  {
    "country": "AR",
    "name": "Dalmacio Vélez Sársfield",
    "lat": "-32.61072",
    "lng": "-63.58038"
  },
  {
    "country": "AR",
    "name": "Daireaux",
    "lat": "-36.6",
    "lng": "-61.75"
  },
  {
    "country": "AR",
    "name": "Cutral-Có",
    "lat": "-38.93424",
    "lng": "-69.23052"
  },
  {
    "country": "AR",
    "name": "Cuchillo Có",
    "lat": "-38.33349",
    "lng": "-64.64331"
  },
  {
    "country": "AR",
    "name": "Cruz del Eje",
    "lat": "-30.72644",
    "lng": "-64.80387"
  },
  {
    "country": "AR",
    "name": "Cruz Alta",
    "lat": "-33.00887",
    "lng": "-61.80746"
  },
  {
    "country": "AR",
    "name": "Crespo",
    "lat": "-32.02873",
    "lng": "-60.30658"
  },
  {
    "country": "AR",
    "name": "Costa Sacate",
    "lat": "-31.6477",
    "lng": "-63.75935"
  },
  {
    "country": "AR",
    "name": "Cosquín",
    "lat": "-31.24508",
    "lng": "-64.46563"
  },
  {
    "country": "AR",
    "name": "Corzuela",
    "lat": "-26.95374",
    "lng": "-60.96928"
  },
  {
    "country": "AR",
    "name": "Corralito",
    "lat": "-32.02462",
    "lng": "-64.19216"
  },
  {
    "country": "AR",
    "name": "Corral de Bustos",
    "lat": "-33.28205",
    "lng": "-62.18463"
  },
  {
    "country": "AR",
    "name": "Coronel Suárez",
    "lat": "-37.45467",
    "lng": "-61.93343"
  },
  {
    "country": "AR",
    "name": "Coronel Pringles",
    "lat": "-37.98295",
    "lng": "-61.35615"
  },
  {
    "country": "AR",
    "name": "Coronel Moldes",
    "lat": "-33.6227",
    "lng": "-64.59711"
  },
  {
    "country": "AR",
    "name": "Coronel Du Graty",
    "lat": "-27.68038",
    "lng": "-60.91462"
  },
  {
    "country": "AR",
    "name": "Coronel Dorrego",
    "lat": "-38.71867",
    "lng": "-61.28733"
  },
  {
    "country": "AR",
    "name": "Coronel Belisle",
    "lat": "-39.18333",
    "lng": "-65.98333"
  },
  {
    "country": "AR",
    "name": "Coronel Baigorria",
    "lat": "-32.8477",
    "lng": "-64.36107"
  },
  {
    "country": "AR",
    "name": "Coronda",
    "lat": "-31.97263",
    "lng": "-60.91983"
  },
  {
    "country": "AR",
    "name": "Córdoba",
    "lat": "-31.4135",
    "lng": "-64.18105"
  },
  {
    "country": "AR",
    "name": "Contraalmirante Cordero",
    "lat": "-38.72423",
    "lng": "-68.15284"
  },
  {
    "country": "AR",
    "name": "Concepción del Bermejo",
    "lat": "-26.59926",
    "lng": "-60.94617"
  },
  {
    "country": "AR",
    "name": "Concepción",
    "lat": "-27.34127",
    "lng": "-65.59636"
  },
  {
    "country": "AR",
    "name": "Concarán",
    "lat": "-32.56009",
    "lng": "-65.2427"
  },
  {
    "country": "AR",
    "name": "Comodoro Rivadavia",
    "lat": "-45.86413",
    "lng": "-67.49656"
  },
  {
    "country": "AR",
    "name": "Comandante Luis Piedra Buena",
    "lat": "-49.98513",
    "lng": "-68.91467"
  },
  {
    "country": "AR",
    "name": "Comallo",
    "lat": "-41.02993",
    "lng": "-70.26784"
  },
  {
    "country": "AR",
    "name": "Colonia San Bartolomé",
    "lat": "-31.5278",
    "lng": "-62.72436"
  },
  {
    "country": "AR",
    "name": "Colonia La Tordilla",
    "lat": "-31.23746",
    "lng": "-63.06134"
  },
  {
    "country": "AR",
    "name": "Colonia Dora",
    "lat": "-28.6",
    "lng": "-62.95"
  },
  {
    "country": "AR",
    "name": "Colonia Barón",
    "lat": "-36.15152",
    "lng": "-63.85404"
  },
  {
    "country": "AR",
    "name": "Colón",
    "lat": "-33.89512",
    "lng": "-61.1011"
  },
  {
    "country": "AR",
    "name": "Clodomira",
    "lat": "-27.5744",
    "lng": "-64.13108"
  },
  {
    "country": "AR",
    "name": "Cipolletti",
    "lat": "-38.93392",
    "lng": "-67.99032"
  },
  {
    "country": "AR",
    "name": "Cintra",
    "lat": "-32.30673",
    "lng": "-62.65214"
  },
  {
    "country": "AR",
    "name": "Cinco Saltos",
    "lat": "-38.82225",
    "lng": "-68.06293"
  },
  {
    "country": "AR",
    "name": "Chumbicha",
    "lat": "-28.8543",
    "lng": "-66.235"
  },
  {
    "country": "AR",
    "name": "Chos Malal",
    "lat": "-37.37809",
    "lng": "-70.27085"
  },
  {
    "country": "AR",
    "name": "Chorotis",
    "lat": "-27.91578",
    "lng": "-61.39982"
  },
  {
    "country": "AR",
    "name": "Choele Choel",
    "lat": "-39.26667",
    "lng": "-65.68333"
  },
  {
    "country": "AR",
    "name": "Chivilcoy",
    "lat": "-34.89566",
    "lng": "-60.01667"
  },
  {
    "country": "AR",
    "name": "Chimpay",
    "lat": "-39.16482",
    "lng": "-66.14236"
  },
  {
    "country": "AR",
    "name": "Chimbas",
    "lat": "-31.48333",
    "lng": "-68.53333"
  },
  {
    "country": "AR",
    "name": "Chilecito",
    "lat": "-29.16195",
    "lng": "-67.4974"
  },
  {
    "country": "AR",
    "name": "Chicoana",
    "lat": "-25.10088",
    "lng": "-65.5331"
  },
  {
    "country": "AR",
    "name": "Chichinales",
    "lat": "-39.11505",
    "lng": "-66.92714"
  },
  {
    "country": "AR",
    "name": "Chepes",
    "lat": "-31.35",
    "lng": "-66.6"
  },
  {
    "country": "AR",
    "name": "Chazón",
    "lat": "-33.07872",
    "lng": "-63.27657"
  },
  {
    "country": "AR",
    "name": "Charras",
    "lat": "-33.024",
    "lng": "-64.04719"
  },
  {
    "country": "AR",
    "name": "Charata",
    "lat": "-27.21438",
    "lng": "-61.18795"
  },
  {
    "country": "AR",
    "name": "Chamical",
    "lat": "-30.36002",
    "lng": "-66.31399"
  },
  {
    "country": "AR",
    "name": "Chacabuco",
    "lat": "-34.64167",
    "lng": "-60.47389"
  },
  {
    "country": "AR",
    "name": "Cervantes",
    "lat": "-39.05",
    "lng": "-67.38333"
  },
  {
    "country": "AR",
    "name": "Cerrillos",
    "lat": "-24.89833",
    "lng": "-65.48706"
  },
  {
    "country": "AR",
    "name": "Ceres",
    "lat": "-29.881",
    "lng": "-61.94504"
  },
  {
    "country": "AR",
    "name": "Centenario",
    "lat": "-38.82955",
    "lng": "-68.1318"
  },
  {
    "country": "AR",
    "name": "Cavanagh",
    "lat": "-33.47606",
    "lng": "-62.33888"
  },
  {
    "country": "AR",
    "name": "Caucete",
    "lat": "-31.65179",
    "lng": "-68.28105"
  },
  {
    "country": "AR",
    "name": "Catriló",
    "lat": "-36.40597",
    "lng": "-63.42168"
  },
  {
    "country": "AR",
    "name": "Catriel",
    "lat": "-37.87907",
    "lng": "-67.7956"
  },
  {
    "country": "AR",
    "name": "Castro Barros",
    "lat": "-30.57952",
    "lng": "-65.72696"
  },
  {
    "country": "AR",
    "name": "Castelli",
    "lat": "-25.94679",
    "lng": "-60.61947"
  },
  {
    "country": "AR",
    "name": "Casilda",
    "lat": "-33.04417",
    "lng": "-61.16806"
  },
  {
    "country": "AR",
    "name": "Carrilobo",
    "lat": "-31.87296",
    "lng": "-63.11715"
  },
  {
    "country": "AR",
    "name": "Carnerillo",
    "lat": "-32.91371",
    "lng": "-64.02175"
  },
  {
    "country": "AR",
    "name": "Carmen de Patagones",
    "lat": "-40.79828",
    "lng": "-62.98097"
  },
  {
    "country": "AR",
    "name": "Carlos Tejedor",
    "lat": "-35.39265",
    "lng": "-62.42146"
  },
  {
    "country": "AR",
    "name": "Carlos Casares",
    "lat": "-35.62171",
    "lng": "-61.36169"
  },
  {
    "country": "AR",
    "name": "Carhué",
    "lat": "-37.17668",
    "lng": "-62.75792"
  },
  {
    "country": "AR",
    "name": "Carcarañá",
    "lat": "-32.85679",
    "lng": "-61.15331"
  },
  {
    "country": "AR",
    "name": "Capitán Bermúdez",
    "lat": "-32.82262",
    "lng": "-60.71852"
  },
  {
    "country": "AR",
    "name": "Capilla del Monte",
    "lat": "-30.86088",
    "lng": "-64.52515"
  },
  {
    "country": "AR",
    "name": "Capayán",
    "lat": "-28.76105",
    "lng": "-66.05025"
  },
  {
    "country": "AR",
    "name": "Candelaria",
    "lat": "-32.06036",
    "lng": "-65.82477"
  },
  {
    "country": "AR",
    "name": "Canals",
    "lat": "-33.56542",
    "lng": "-62.88927"
  },
  {
    "country": "AR",
    "name": "Cañada de Luque",
    "lat": "-30.73341",
    "lng": "-63.72375"
  },
  {
    "country": "AR",
    "name": "Cañada de Gómez",
    "lat": "-32.81636",
    "lng": "-61.39493"
  },
  {
    "country": "AR",
    "name": "Campo Quijano",
    "lat": "-24.90982",
    "lng": "-65.63656"
  },
  {
    "country": "AR",
    "name": "Campo Largo",
    "lat": "-26.80077",
    "lng": "-60.84215"
  },
  {
    "country": "AR",
    "name": "Campo Gallo",
    "lat": "-26.58333",
    "lng": "-62.85"
  },
  {
    "country": "AR",
    "name": "Camilo Aldao",
    "lat": "-33.12745",
    "lng": "-62.09453"
  },
  {
    "country": "AR",
    "name": "Camarones",
    "lat": "-44.79709",
    "lng": "-65.70994"
  },
  {
    "country": "AR",
    "name": "Calingasta",
    "lat": "-31.33084",
    "lng": "-69.40783"
  },
  {
    "country": "AR",
    "name": "Calilegua",
    "lat": "-23.77368",
    "lng": "-64.77002"
  },
  {
    "country": "AR",
    "name": "Caleufú",
    "lat": "-35.59559",
    "lng": "-64.55778"
  },
  {
    "country": "AR",
    "name": "Caleta Olivia",
    "lat": "-46.43929",
    "lng": "-67.52814"
  },
  {
    "country": "AR",
    "name": "Calchaquí",
    "lat": "-29.88767",
    "lng": "-60.28697"
  },
  {
    "country": "AR",
    "name": "Caimancito",
    "lat": "-23.74069",
    "lng": "-64.5937"
  },
  {
    "country": "AR",
    "name": "Cafayate",
    "lat": "-26.07286",
    "lng": "-65.97766"
  },
  {
    "country": "AR",
    "name": "Cachí",
    "lat": "-25.12033",
    "lng": "-66.16519"
  },
  {
    "country": "AR",
    "name": "Buta Ranquil",
    "lat": "-37.05222",
    "lng": "-69.87713"
  },
  {
    "country": "AR",
    "name": "Burruyacú",
    "lat": "-26.49918",
    "lng": "-64.74206"
  },
  {
    "country": "AR",
    "name": "Buena Esperanza",
    "lat": "-34.75647",
    "lng": "-65.25379"
  },
  {
    "country": "AR",
    "name": "Buchardo",
    "lat": "-34.72263",
    "lng": "-63.5092"
  },
  {
    "country": "AR",
    "name": "Brinkmann",
    "lat": "-30.86589",
    "lng": "-62.03742"
  },
  {
    "country": "AR",
    "name": "Brea Pozo",
    "lat": "-28.24382",
    "lng": "-63.95091"
  },
  {
    "country": "AR",
    "name": "Bragado",
    "lat": "-35.11912",
    "lng": "-60.48966"
  },
  {
    "country": "AR",
    "name": "Berrotarán",
    "lat": "-32.451",
    "lng": "-64.38867"
  },
  {
    "country": "AR",
    "name": "Bernasconi",
    "lat": "-37.90459",
    "lng": "-63.7424"
  },
  {
    "country": "AR",
    "name": "Bernardo Larroudé",
    "lat": "-35.02449",
    "lng": "-63.58253"
  },
  {
    "country": "AR",
    "name": "Beltrán",
    "lat": "-27.82913",
    "lng": "-64.06098"
  },
  {
    "country": "AR",
    "name": "Bell Ville",
    "lat": "-32.62591",
    "lng": "-62.68873"
  },
  {
    "country": "AR",
    "name": "Bella Vista",
    "lat": "-27.03424",
    "lng": "-65.30196"
  },
  {
    "country": "AR",
    "name": "Belén",
    "lat": "-27.65103",
    "lng": "-67.02869"
  },
  {
    "country": "AR",
    "name": "Barrancas",
    "lat": "-36.81667",
    "lng": "-69.91667"
  },
  {
    "country": "AR",
    "name": "Bandera",
    "lat": "-28.8884",
    "lng": "-62.266"
  },
  {
    "country": "AR",
    "name": "Banda del Río Salí",
    "lat": "-26.83333",
    "lng": "-65.16667"
  },
  {
    "country": "AR",
    "name": "Bañado de Ovanta",
    "lat": "-28.10564",
    "lng": "-65.31884"
  },
  {
    "country": "AR",
    "name": "Balnearia",
    "lat": "-31.0088",
    "lng": "-62.66733"
  },
  {
    "country": "AR",
    "name": "Bahía Blanca",
    "lat": "-38.71959",
    "lng": "-62.27243"
  },
  {
    "country": "AR",
    "name": "Aviá Terai",
    "lat": "-26.68532",
    "lng": "-60.7292"
  },
  {
    "country": "AR",
    "name": "Arrufó",
    "lat": "-30.23281",
    "lng": "-61.72862"
  },
  {
    "country": "AR",
    "name": "Arroyo Seco",
    "lat": "-33.15489",
    "lng": "-60.50863"
  },
  {
    "country": "AR",
    "name": "Arroyo Cabral",
    "lat": "-32.49119",
    "lng": "-63.40126"
  },
  {
    "country": "AR",
    "name": "Arroyito",
    "lat": "-31.42022",
    "lng": "-63.05002"
  },
  {
    "country": "AR",
    "name": "Arrecifes",
    "lat": "-34.0639",
    "lng": "-60.10357"
  },
  {
    "country": "AR",
    "name": "Arraga",
    "lat": "-28.04978",
    "lng": "-64.22254"
  },
  {
    "country": "AR",
    "name": "Armstrong",
    "lat": "-32.78215",
    "lng": "-61.60222"
  },
  {
    "country": "AR",
    "name": "Arias",
    "lat": "-33.64411",
    "lng": "-62.40272"
  },
  {
    "country": "AR",
    "name": "Arauco",
    "lat": "-28.5805",
    "lng": "-66.79438"
  },
  {
    "country": "AR",
    "name": "Arata",
    "lat": "-35.63895",
    "lng": "-64.35621"
  },
  {
    "country": "AR",
    "name": "Aranguren",
    "lat": "-32.24252",
    "lng": "-60.16107"
  },
  {
    "country": "AR",
    "name": "Apolinario Saravia",
    "lat": "-24.43276",
    "lng": "-63.99535"
  },
  {
    "country": "AR",
    "name": "Antofagasta de la Sierra",
    "lat": "-26.0594",
    "lng": "-67.40636"
  },
  {
    "country": "AR",
    "name": "Anguil",
    "lat": "-36.52567",
    "lng": "-64.01025"
  },
  {
    "country": "AR",
    "name": "Añelo",
    "lat": "-38.35441",
    "lng": "-68.7884"
  },
  {
    "country": "AR",
    "name": "Andalgalá",
    "lat": "-27.60012",
    "lng": "-66.31794"
  },
  {
    "country": "AR",
    "name": "Andacollo",
    "lat": "-37.17945",
    "lng": "-70.66912"
  },
  {
    "country": "AR",
    "name": "Ancasti",
    "lat": "-28.81247",
    "lng": "-65.50145"
  },
  {
    "country": "AR",
    "name": "Añatuya",
    "lat": "-28.46064",
    "lng": "-62.83472"
  },
  {
    "country": "AR",
    "name": "Aminga",
    "lat": "-28.8426",
    "lng": "-66.94546"
  },
  {
    "country": "AR",
    "name": "Florentino Ameghino",
    "lat": "-34.84405",
    "lng": "-62.46701"
  },
  {
    "country": "AR",
    "name": "Aluminé",
    "lat": "-39.23686",
    "lng": "-70.9197"
  },
  {
    "country": "AR",
    "name": "Altos de Chipión",
    "lat": "-30.9559",
    "lng": "-62.33727"
  },
  {
    "country": "AR",
    "name": "Alto Río Senguer",
    "lat": "-45.04105",
    "lng": "-70.81982"
  },
  {
    "country": "AR",
    "name": "Alta Italia",
    "lat": "-35.3335",
    "lng": "-64.11496"
  },
  {
    "country": "AR",
    "name": "Alta Gracia",
    "lat": "-31.65292",
    "lng": "-64.42826"
  },
  {
    "country": "AR",
    "name": "Alpachiri",
    "lat": "-37.37704",
    "lng": "-63.77445"
  },
  {
    "country": "AR",
    "name": "Almafuerte",
    "lat": "-32.19296",
    "lng": "-64.25559"
  },
  {
    "country": "AR",
    "name": "Allen",
    "lat": "-38.97736",
    "lng": "-67.82714"
  },
  {
    "country": "AR",
    "name": "Algarrobo del Águila",
    "lat": "-36.39968",
    "lng": "-67.14511"
  },
  {
    "country": "AR",
    "name": "Alejo Ledesma",
    "lat": "-33.60643",
    "lng": "-62.62304"
  },
  {
    "country": "AR",
    "name": "Alejandro Roca",
    "lat": "-33.35369",
    "lng": "-63.71849"
  },
  {
    "country": "AR",
    "name": "Alderetes",
    "lat": "-26.81667",
    "lng": "-65.13333"
  },
  {
    "country": "AR",
    "name": "Alberti",
    "lat": "-35.02692",
    "lng": "-60.27587"
  },
  {
    "country": "AR",
    "name": "Albardón",
    "lat": "-31.43722",
    "lng": "-68.52556"
  },
  {
    "country": "AR",
    "name": "Aimogasta",
    "lat": "-28.56091",
    "lng": "-66.80588"
  },
  {
    "country": "AR",
    "name": "Aguilares",
    "lat": "-27.4338",
    "lng": "-65.61427"
  },
  {
    "country": "AR",
    "name": "Agua de Oro",
    "lat": "-31.06661",
    "lng": "-64.30017"
  },
  {
    "country": "AR",
    "name": "Adelia María",
    "lat": "-33.63152",
    "lng": "-64.02097"
  },
  {
    "country": "AR",
    "name": "Achiras",
    "lat": "-33.17538",
    "lng": "-64.99331"
  },
  {
    "country": "AR",
    "name": "Abra Pampa",
    "lat": "-22.72049",
    "lng": "-65.69697"
  },
  {
    "country": "AR",
    "name": "Villa Santa Rita",
    "lat": "-34.61082",
    "lng": "-58.481"
  },
  {
    "country": "AR",
    "name": "Bella Italia",
    "lat": "-31.27268",
    "lng": "-61.42396"
  },
  {
    "country": "AR",
    "name": "Cariló",
    "lat": "-37.16524",
    "lng": "-56.89133"
  },
  {
    "country": "AR",
    "name": "Villa Mercedes",
    "lat": "-33.67571",
    "lng": "-65.45783"
  },
  {
    "country": "AR",
    "name": "La Punta",
    "lat": "-33.18368",
    "lng": "-66.3127"
  },
  {
    "country": "AR",
    "name": "Villa Berna",
    "lat": "-31.90321",
    "lng": "-64.75651"
  },
  {
    "country": "AR",
    "name": "Cuesta Blanca",
    "lat": "-31.48658",
    "lng": "-64.5715"
  },
  {
    "country": "AR",
    "name": "Avellaneda",
    "lat": "-34.66018",
    "lng": "-58.36744"
  },
  {
    "country": "AR",
    "name": "San Carlos de Bariloche",
    "lat": "-41.14557",
    "lng": "-71.30822"
  },
  {
    "country": "AR",
    "name": "Santa Catalina - Dique Lujan",
    "lat": "-34.38375",
    "lng": "-58.70673"
  },
  {
    "country": "AR",
    "name": "Río Turbio",
    "lat": "-51.53587",
    "lng": "-72.33673"
  },
  {
    "country": "AR",
    "name": "Adrogué",
    "lat": "-34.80041",
    "lng": "-58.38384"
  },
  {
    "country": "AR",
    "name": "Los Laureles",
    "lat": "-29.36847",
    "lng": "-59.73634"
  },
  {
    "country": "AR",
    "name": "Gato Colorado",
    "lat": "-28.02219",
    "lng": "-61.18663"
  },
  {
    "country": "AR",
    "name": "Tolhuin",
    "lat": "-54.51083",
    "lng": "-67.1955"
  },
  {
    "country": "AR",
    "name": "Villa General Guemes",
    "lat": "-24.7553",
    "lng": "-59.4894"
  },
  {
    "country": "AR",
    "name": "Rincón de Los Sauces",
    "lat": "-37.39844",
    "lng": "-68.92874"
  },
  {
    "country": "AS",
    "name": "Aūa",
    "lat": "-14.27611",
    "lng": "-170.66389"
  },
  {
    "country": "AS",
    "name": "Vaitogi",
    "lat": "-14.35889",
    "lng": "-170.73472"
  },
  {
    "country": "AS",
    "name": "Vailoatai",
    "lat": "-14.36111",
    "lng": "-170.78222"
  },
  {
    "country": "AS",
    "name": "Taulaga",
    "lat": "-11.05528",
    "lng": "-171.08833"
  },
  {
    "country": "AS",
    "name": "Ta`ū",
    "lat": "-14.23361",
    "lng": "-169.51444"
  },
  {
    "country": "AS",
    "name": "Tāfuna",
    "lat": "-14.33583",
    "lng": "-170.72"
  },
  {
    "country": "AS",
    "name": "Faleniu",
    "lat": "-14.3325",
    "lng": "-170.74444"
  },
  {
    "country": "AS",
    "name": "Fagatogo",
    "lat": "-14.2825",
    "lng": "-170.69"
  },
  {
    "country": "AS",
    "name": "Faleāsao",
    "lat": "-14.2222",
    "lng": "-169.51278"
  },
  {
    "country": "AS",
    "name": "Leone",
    "lat": "-14.34389",
    "lng": "-170.785"
  },
  {
    "country": "AS",
    "name": "Malaeimi",
    "lat": "-14.32278",
    "lng": "-170.73389"
  },
  {
    "country": "AS",
    "name": "Mapusagafou",
    "lat": "-14.33056",
    "lng": "-170.75278"
  },
  {
    "country": "AS",
    "name": "Ofu",
    "lat": "-14.17528",
    "lng": "-169.6775"
  },
  {
    "country": "AS",
    "name": "Pago Pago",
    "lat": "-14.27806",
    "lng": "-170.7025"
  },
  {
    "country": "AT",
    "name": "Neu-Guntramsdorf",
    "lat": "48.0642",
    "lng": "16.31573"
  },
  {
    "country": "AT",
    "name": "Kleinarl",
    "lat": "47.27725",
    "lng": "13.31955"
  },
  {
    "country": "AT",
    "name": "Edelstauden",
    "lat": "46.98333",
    "lng": "15.61667"
  },
  {
    "country": "AT",
    "name": "Neuhaus am Klausenbach",
    "lat": "46.86667",
    "lng": "16.03333"
  },
  {
    "country": "AT",
    "name": "Millstatt",
    "lat": "46.80417",
    "lng": "13.58056"
  },
  {
    "country": "AT",
    "name": "Zwölfaxing",
    "lat": "48.1099",
    "lng": "16.46267"
  },
  {
    "country": "AT",
    "name": "Zwettl Stift",
    "lat": "48.61667",
    "lng": "15.2"
  },
  {
    "country": "AT",
    "name": "Zwettl an der Rodl",
    "lat": "48.46552",
    "lng": "14.27133"
  },
  {
    "country": "AT",
    "name": "Zurndorf",
    "lat": "47.98314",
    "lng": "17.00315"
  },
  {
    "country": "AT",
    "name": "Zöblen",
    "lat": "47.50772",
    "lng": "10.47971"
  },
  {
    "country": "AT",
    "name": "Zöbern",
    "lat": "47.51459",
    "lng": "16.13111"
  },
  {
    "country": "AT",
    "name": "Zistersdorf",
    "lat": "48.54252",
    "lng": "16.76136"
  },
  {
    "country": "AT",
    "name": "Zirl",
    "lat": "47.2741",
    "lng": "11.23961"
  },
  {
    "country": "AT",
    "name": "Zillingtal",
    "lat": "47.81442",
    "lng": "16.40928"
  },
  {
    "country": "AT",
    "name": "Zillingdorf",
    "lat": "47.85",
    "lng": "16.33333"
  },
  {
    "country": "AT",
    "name": "Ziersdorf",
    "lat": "48.5303",
    "lng": "15.92691"
  },
  {
    "country": "AT",
    "name": "Zeutschach",
    "lat": "47.06667",
    "lng": "14.36667"
  },
  {
    "country": "AT",
    "name": "Zettling",
    "lat": "46.9522",
    "lng": "15.4342"
  },
  {
    "country": "AT",
    "name": "Zerlach",
    "lat": "46.94593",
    "lng": "15.65093"
  },
  {
    "country": "AT",
    "name": "Zeltweg",
    "lat": "47.18333",
    "lng": "14.75"
  },
  {
    "country": "AT",
    "name": "Zellerndorf",
    "lat": "48.69657",
    "lng": "15.95841"
  },
  {
    "country": "AT",
    "name": "Zellberg",
    "lat": "47.23333",
    "lng": "11.85"
  },
  {
    "country": "AT",
    "name": "Zell an der Pram",
    "lat": "48.31625",
    "lng": "13.62923"
  },
  {
    "country": "AT",
    "name": "Zell am Ziller",
    "lat": "47.23333",
    "lng": "11.88333"
  },
  {
    "country": "AT",
    "name": "Zell am See",
    "lat": "47.32556",
    "lng": "12.79444"
  },
  {
    "country": "AT",
    "name": "Zell am Pettenfirst",
    "lat": "48.08009",
    "lng": "13.59936"
  },
  {
    "country": "AT",
    "name": "Zell am Moos",
    "lat": "47.9",
    "lng": "13.31667"
  },
  {
    "country": "AT",
    "name": "Zeillern",
    "lat": "48.13029",
    "lng": "14.8076"
  },
  {
    "country": "AT",
    "name": "Zederhaus",
    "lat": "47.1557",
    "lng": "13.50576"
  },
  {
    "country": "AT",
    "name": "Zams",
    "lat": "47.15844",
    "lng": "10.5897"
  },
  {
    "country": "AT",
    "name": "Zagersdorf",
    "lat": "47.76471",
    "lng": "16.51382"
  },
  {
    "country": "AT",
    "name": "Ybbsitz",
    "lat": "47.94745",
    "lng": "14.8918"
  },
  {
    "country": "AT",
    "name": "Ybbs an der Donau",
    "lat": "48.16667",
    "lng": "15.08333"
  },
  {
    "country": "AT",
    "name": "Würmla",
    "lat": "48.25497",
    "lng": "15.86031"
  },
  {
    "country": "AT",
    "name": "Würflach",
    "lat": "47.77648",
    "lng": "16.05463"
  },
  {
    "country": "AT",
    "name": "Wundschuh",
    "lat": "46.92639",
    "lng": "15.45111"
  },
  {
    "country": "AT",
    "name": "Wullersdorf",
    "lat": "48.62792",
    "lng": "16.10089"
  },
  {
    "country": "AT",
    "name": "Wulkaprodersdorf",
    "lat": "47.79753",
    "lng": "16.50447"
  },
  {
    "country": "AT",
    "name": "Wörth an der Lafnitz",
    "lat": "47.21368",
    "lng": "16.08081"
  },
  {
    "country": "AT",
    "name": "Wörterberg",
    "lat": "47.21667",
    "lng": "16.1"
  },
  {
    "country": "AT",
    "name": "Wörschach",
    "lat": "47.55",
    "lng": "14.15"
  },
  {
    "country": "AT",
    "name": "Wörgl",
    "lat": "47.48906",
    "lng": "12.06174"
  },
  {
    "country": "AT",
    "name": "Wördern",
    "lat": "48.334",
    "lng": "16.21016"
  },
  {
    "country": "AT",
    "name": "Wolkersdorf im Weinviertel",
    "lat": "48.38333",
    "lng": "16.51667"
  },
  {
    "country": "AT",
    "name": "Wolfurt",
    "lat": "47.46667",
    "lng": "9.75"
  },
  {
    "country": "AT",
    "name": "Wolfsthal",
    "lat": "48.13333",
    "lng": "17"
  },
  {
    "country": "AT",
    "name": "Wolfsgraben",
    "lat": "48.1587",
    "lng": "16.12098"
  },
  {
    "country": "AT",
    "name": "Wolfsegg am Hausruck",
    "lat": "48.10669",
    "lng": "13.67274"
  },
  {
    "country": "AT",
    "name": "Wolfsberg im Schwarzautal",
    "lat": "46.84389",
    "lng": "15.65889"
  },
  {
    "country": "AT",
    "name": "Wolfsberg",
    "lat": "46.84056",
    "lng": "14.84417"
  },
  {
    "country": "AT",
    "name": "Wolfsbach",
    "lat": "48.06667",
    "lng": "14.66667"
  },
  {
    "country": "AT",
    "name": "Wolfpassing",
    "lat": "48.07785",
    "lng": "15.06453"
  },
  {
    "country": "AT",
    "name": "Wolfau",
    "lat": "47.25",
    "lng": "16.1"
  },
  {
    "country": "AT",
    "name": "Winklern bei Oberwölz",
    "lat": "47.2",
    "lng": "14.23333"
  },
  {
    "country": "AT",
    "name": "Winklern",
    "lat": "46.87361",
    "lng": "12.87472"
  },
  {
    "country": "AT",
    "name": "Winklarn",
    "lat": "48.08333",
    "lng": "14.83333"
  },
  {
    "country": "AT",
    "name": "Windigsteig",
    "lat": "48.76667",
    "lng": "15.28333"
  },
  {
    "country": "AT",
    "name": "Winden am See",
    "lat": "47.95",
    "lng": "16.75"
  },
  {
    "country": "AT",
    "name": "Wimpassing an der Leitha",
    "lat": "47.91667",
    "lng": "16.43333"
  },
  {
    "country": "AT",
    "name": "Wimpassing im Schwarzatale",
    "lat": "47.70295",
    "lng": "16.03334"
  },
  {
    "country": "AT",
    "name": "Willendorf am Steinfelde",
    "lat": "47.78929",
    "lng": "16.05686"
  },
  {
    "country": "AT",
    "name": "Wilhelmsburg",
    "lat": "48.10571",
    "lng": "15.60539"
  },
  {
    "country": "AT",
    "name": "Wilfersdorf",
    "lat": "48.58333",
    "lng": "16.63333"
  },
  {
    "country": "AT",
    "name": "Wildon",
    "lat": "46.88333",
    "lng": "15.51667"
  },
  {
    "country": "AT",
    "name": "Wildermieming",
    "lat": "47.31667",
    "lng": "11.01667"
  },
  {
    "country": "AT",
    "name": "Wildalpen",
    "lat": "47.65",
    "lng": "14.98333"
  },
  {
    "country": "AT",
    "name": "Wiesmath",
    "lat": "47.61667",
    "lng": "16.28333"
  },
  {
    "country": "AT",
    "name": "Wiesing",
    "lat": "47.40486",
    "lng": "11.79708"
  },
  {
    "country": "AT",
    "name": "Wiesfleck",
    "lat": "47.38458",
    "lng": "16.14552"
  },
  {
    "country": "AT",
    "name": "Wiesen",
    "lat": "47.73776",
    "lng": "16.33798"
  },
  {
    "country": "AT",
    "name": "Wieselburg",
    "lat": "48.13333",
    "lng": "15.13333"
  },
  {
    "country": "AT",
    "name": "Wies",
    "lat": "46.72028",
    "lng": "15.27194"
  },
  {
    "country": "AT",
    "name": "Wiener Neustadt",
    "lat": "47.80485",
    "lng": "16.23196"
  },
  {
    "country": "AT",
    "name": "Wiener Neudorf",
    "lat": "48.08278",
    "lng": "16.31384"
  },
  {
    "country": "AT",
    "name": "Vienna",
    "lat": "48.20849",
    "lng": "16.37208"
  },
  {
    "country": "AT",
    "name": "Weyer",
    "lat": "47.85717",
    "lng": "14.66409"
  },
  {
    "country": "AT",
    "name": "Wetzelsdorf",
    "lat": "47.05293",
    "lng": "15.39923"
  },
  {
    "country": "AT",
    "name": "Wettmannstätten",
    "lat": "46.83056",
    "lng": "15.38722"
  },
  {
    "country": "AT",
    "name": "Westendorf",
    "lat": "47.43208",
    "lng": "12.21406"
  },
  {
    "country": "AT",
    "name": "Wernersdorf",
    "lat": "46.71592",
    "lng": "15.20718"
  },
  {
    "country": "AT",
    "name": "Werndorf",
    "lat": "46.92417",
    "lng": "15.49083"
  },
  {
    "country": "AT",
    "name": "Wernberg",
    "lat": "46.61667",
    "lng": "13.93333"
  },
  {
    "country": "AT",
    "name": "Werfenweng",
    "lat": "47.46204",
    "lng": "13.25582"
  },
  {
    "country": "AT",
    "name": "Werfen",
    "lat": "47.47585",
    "lng": "13.1902"
  },
  {
    "country": "AT",
    "name": "Weppersdorf",
    "lat": "47.57954",
    "lng": "16.42679"
  },
  {
    "country": "AT",
    "name": "Wenns",
    "lat": "47.16667",
    "lng": "10.73333"
  },
  {
    "country": "AT",
    "name": "Wels",
    "lat": "48.16667",
    "lng": "14.03333"
  },
  {
    "country": "AT",
    "name": "Weiz",
    "lat": "47.21667",
    "lng": "15.61667"
  },
  {
    "country": "AT",
    "name": "Weitra",
    "lat": "48.7",
    "lng": "14.88333"
  },
  {
    "country": "AT",
    "name": "Weitersfeld",
    "lat": "48.78097",
    "lng": "15.81345"
  },
  {
    "country": "AT",
    "name": "Weiten",
    "lat": "48.29564",
    "lng": "15.2601"
  },
  {
    "country": "AT",
    "name": "Weistrach",
    "lat": "48.05",
    "lng": "14.58333"
  },
  {
    "country": "AT",
    "name": "Weißkirchen in Steiermark",
    "lat": "47.15",
    "lng": "14.73333"
  },
  {
    "country": "AT",
    "name": "Weißenbach bei Liezen",
    "lat": "47.56667",
    "lng": "14.21667"
  },
  {
    "country": "AT",
    "name": "Weissenbach an der Triesting",
    "lat": "47.98211",
    "lng": "16.03935"
  },
  {
    "country": "AT",
    "name": "Weinzierl bei Krems",
    "lat": "48.4",
    "lng": "15.6"
  },
  {
    "country": "AT",
    "name": "Weinzierl am Walde",
    "lat": "48.43211",
    "lng": "15.4321"
  },
  {
    "country": "AT",
    "name": "Weingraben",
    "lat": "47.51393",
    "lng": "16.36375"
  },
  {
    "country": "AT",
    "name": "Weinburg am Saßbach",
    "lat": "46.75361",
    "lng": "15.72111"
  },
  {
    "country": "AT",
    "name": "Weinburg",
    "lat": "48.11351",
    "lng": "15.53295"
  },
  {
    "country": "AT",
    "name": "Weiler",
    "lat": "47.29972",
    "lng": "9.65"
  },
  {
    "country": "AT",
    "name": "Weikersdorf am Steinfelde",
    "lat": "47.80612",
    "lng": "16.14389"
  },
  {
    "country": "AT",
    "name": "Weikendorf",
    "lat": "48.34438",
    "lng": "16.76651"
  },
  {
    "country": "AT",
    "name": "Weiden bei Rechnitz",
    "lat": "47.3",
    "lng": "16.35"
  },
  {
    "country": "AT",
    "name": "Weiden am See",
    "lat": "47.92532",
    "lng": "16.86899"
  },
  {
    "country": "AT",
    "name": "Weichselbaum",
    "lat": "46.9425",
    "lng": "16.1875"
  },
  {
    "country": "AT",
    "name": "Weer",
    "lat": "47.3",
    "lng": "11.63333"
  },
  {
    "country": "AT",
    "name": "Wattens",
    "lat": "47.29419",
    "lng": "11.5907"
  },
  {
    "country": "AT",
    "name": "Wattenberg",
    "lat": "47.28333",
    "lng": "11.6"
  },
  {
    "country": "AT",
    "name": "Wartmannstetten",
    "lat": "47.69359",
    "lng": "16.07506"
  },
  {
    "country": "AT",
    "name": "Warth",
    "lat": "47.65",
    "lng": "16.11667"
  },
  {
    "country": "AT",
    "name": "Warth",
    "lat": "47.25",
    "lng": "10.18333"
  },
  {
    "country": "AT",
    "name": "Wartberg",
    "lat": "47.52717",
    "lng": "15.48095"
  },
  {
    "country": "AT",
    "name": "Wängle",
    "lat": "47.48658",
    "lng": "10.68995"
  },
  {
    "country": "AT",
    "name": "Wang",
    "lat": "48.04538",
    "lng": "15.02672"
  },
  {
    "country": "AT",
    "name": "Walpersbach",
    "lat": "47.71667",
    "lng": "16.23333"
  },
  {
    "country": "AT",
    "name": "Wallern im Burgenland",
    "lat": "47.72847",
    "lng": "16.93706"
  },
  {
    "country": "AT",
    "name": "Waldzell",
    "lat": "48.13562",
    "lng": "13.42701"
  },
  {
    "country": "AT",
    "name": "Waldneukirchen",
    "lat": "47.99854",
    "lng": "14.25879"
  },
  {
    "country": "AT",
    "name": "Waldkirchen an der Thaya",
    "lat": "48.93333",
    "lng": "15.35"
  },
  {
    "country": "AT",
    "name": "Walding",
    "lat": "48.35209",
    "lng": "14.1576"
  },
  {
    "country": "AT",
    "name": "Wald im Pinzgau",
    "lat": "47.25",
    "lng": "12.23333"
  },
  {
    "country": "AT",
    "name": "Waldhausen",
    "lat": "48.52183",
    "lng": "15.2625"
  },
  {
    "country": "AT",
    "name": "Waldenstein",
    "lat": "48.72845",
    "lng": "15.01419"
  },
  {
    "country": "AT",
    "name": "Waldegg",
    "lat": "47.86852",
    "lng": "16.05154"
  },
  {
    "country": "AT",
    "name": "Wald am Schoberpaß",
    "lat": "47.44936",
    "lng": "14.67567"
  },
  {
    "country": "AT",
    "name": "Walchsee",
    "lat": "47.65163",
    "lng": "12.31868"
  },
  {
    "country": "AT",
    "name": "Waidring",
    "lat": "47.58333",
    "lng": "12.56667"
  },
  {
    "country": "AT",
    "name": "Waidmannsfeld",
    "lat": "47.87042",
    "lng": "15.98116"
  },
  {
    "country": "AT",
    "name": "Waidhofen an der Ybbs",
    "lat": "47.96004",
    "lng": "14.77361"
  },
  {
    "country": "AT",
    "name": "Waidhofen an der Thaya",
    "lat": "48.81667",
    "lng": "15.28333"
  },
  {
    "country": "AT",
    "name": "Wagrain",
    "lat": "47.33528",
    "lng": "13.29889"
  },
  {
    "country": "AT",
    "name": "Wagna",
    "lat": "46.75",
    "lng": "15.55"
  },
  {
    "country": "AT",
    "name": "Vösendorf",
    "lat": "48.12107",
    "lng": "16.34036"
  },
  {
    "country": "AT",
    "name": "Murau",
    "lat": "47.11056",
    "lng": "14.16944"
  },
  {
    "country": "AT",
    "name": "Vordernberg",
    "lat": "47.48809",
    "lng": "14.99436"
  },
  {
    "country": "AT",
    "name": "Vorderhornbach",
    "lat": "47.37009",
    "lng": "10.53947"
  },
  {
    "country": "AT",
    "name": "Vorchdorf",
    "lat": "48.00388",
    "lng": "13.92122"
  },
  {
    "country": "AT",
    "name": "Vorau",
    "lat": "47.40548",
    "lng": "15.88754"
  },
  {
    "country": "AT",
    "name": "Vomp",
    "lat": "47.33333",
    "lng": "11.68333"
  },
  {
    "country": "AT",
    "name": "Völs",
    "lat": "47.25",
    "lng": "11.33333"
  },
  {
    "country": "AT",
    "name": "Völkermarkt",
    "lat": "46.66222",
    "lng": "14.63444"
  },
  {
    "country": "AT",
    "name": "Volders",
    "lat": "47.28333",
    "lng": "11.56667"
  },
  {
    "country": "AT",
    "name": "Voitsberg",
    "lat": "47.03333",
    "lng": "15.15"
  },
  {
    "country": "AT",
    "name": "Vöcklamarkt",
    "lat": "48.0025",
    "lng": "13.48383"
  },
  {
    "country": "AT",
    "name": "Vöcklabruck",
    "lat": "48.00279",
    "lng": "13.65652"
  },
  {
    "country": "AT",
    "name": "Vitis",
    "lat": "48.75964",
    "lng": "15.18259"
  },
  {
    "country": "AT",
    "name": "Virgen",
    "lat": "47.00159",
    "lng": "12.45661"
  },
  {
    "country": "AT",
    "name": "Vils",
    "lat": "47.55",
    "lng": "10.63333"
  },
  {
    "country": "AT",
    "name": "Villach",
    "lat": "46.61028",
    "lng": "13.85583"
  },
  {
    "country": "AT",
    "name": "Viktorsberg",
    "lat": "47.30092",
    "lng": "9.67484"
  },
  {
    "country": "AT",
    "name": "Viehhofen",
    "lat": "47.36667",
    "lng": "12.73333"
  },
  {
    "country": "AT",
    "name": "Velden am Wörthersee",
    "lat": "46.61301",
    "lng": "14.0413"
  },
  {
    "country": "AT",
    "name": "Veitsch",
    "lat": "47.57815",
    "lng": "15.4945"
  },
  {
    "country": "AT",
    "name": "Uttendorf",
    "lat": "47.28333",
    "lng": "12.56667"
  },
  {
    "country": "AT",
    "name": "Unterwart",
    "lat": "47.25",
    "lng": "16.23333"
  },
  {
    "country": "AT",
    "name": "Untertauern",
    "lat": "47.3",
    "lng": "13.5"
  },
  {
    "country": "AT",
    "name": "Unterstinkenbrunn",
    "lat": "48.6677",
    "lng": "16.34607"
  },
  {
    "country": "AT",
    "name": "Untersiebenbrunn",
    "lat": "48.25",
    "lng": "16.73333"
  },
  {
    "country": "AT",
    "name": "Rohrbach an der Gölsen",
    "lat": "48.04699",
    "lng": "15.74169"
  },
  {
    "country": "AT",
    "name": "Unterpremstätten",
    "lat": "46.96472",
    "lng": "15.40417"
  },
  {
    "country": "AT",
    "name": "Unterperfuss",
    "lat": "47.26667",
    "lng": "11.25"
  },
  {
    "country": "AT",
    "name": "Unterlamm",
    "lat": "46.97694",
    "lng": "16.06389"
  },
  {
    "country": "AT",
    "name": "Unterkohlstätten",
    "lat": "47.38333",
    "lng": "16.31667"
  },
  {
    "country": "AT",
    "name": "Grünburg",
    "lat": "47.97234",
    "lng": "14.26472"
  },
  {
    "country": "AT",
    "name": "Unterfrauenhaid",
    "lat": "47.57116",
    "lng": "16.49885"
  },
  {
    "country": "AT",
    "name": "Unterfladnitz",
    "lat": "47.18333",
    "lng": "15.66667"
  },
  {
    "country": "AT",
    "name": "Unterbergla",
    "lat": "46.80746",
    "lng": "15.31516"
  },
  {
    "country": "AT",
    "name": "Unterauersbach",
    "lat": "46.86556",
    "lng": "15.77028"
  },
  {
    "country": "AT",
    "name": "Unken",
    "lat": "47.64966",
    "lng": "12.72946"
  },
  {
    "country": "AT",
    "name": "Ungerdorf",
    "lat": "47.08333",
    "lng": "15.66667"
  },
  {
    "country": "AT",
    "name": "Ungenach",
    "lat": "48.04756",
    "lng": "13.61472"
  },
  {
    "country": "AT",
    "name": "Umhausen",
    "lat": "47.13503",
    "lng": "10.92826"
  },
  {
    "country": "AT",
    "name": "Ulrichsberg",
    "lat": "48.67498",
    "lng": "13.91049"
  },
  {
    "country": "AT",
    "name": "Uderns",
    "lat": "47.31667",
    "lng": "11.86667"
  },
  {
    "country": "AT",
    "name": "Übersbach",
    "lat": "47.02318",
    "lng": "16.05517"
  },
  {
    "country": "AT",
    "name": "Übersaxen",
    "lat": "47.25284",
    "lng": "9.6708"
  },
  {
    "country": "AT",
    "name": "Übelbach",
    "lat": "47.22534",
    "lng": "15.23615"
  },
  {
    "country": "AT",
    "name": "Tweng",
    "lat": "47.18333",
    "lng": "13.6"
  },
  {
    "country": "AT",
    "name": "Türnitz",
    "lat": "47.93095",
    "lng": "15.49295"
  },
  {
    "country": "AT",
    "name": "Turnau",
    "lat": "47.55776",
    "lng": "15.33739"
  },
  {
    "country": "AT",
    "name": "Tulln",
    "lat": "48.32829",
    "lng": "16.05858"
  },
  {
    "country": "AT",
    "name": "Tulfes",
    "lat": "47.25806",
    "lng": "11.53333"
  },
  {
    "country": "AT",
    "name": "Tulbing",
    "lat": "48.29336",
    "lng": "16.12226"
  },
  {
    "country": "AT",
    "name": "Tschanigraben",
    "lat": "47.01667",
    "lng": "16.3"
  },
  {
    "country": "AT",
    "name": "Tschagguns",
    "lat": "47.08333",
    "lng": "9.9"
  },
  {
    "country": "AT",
    "name": "Trumau",
    "lat": "47.99348",
    "lng": "16.34268"
  },
  {
    "country": "AT",
    "name": "Trössing",
    "lat": "46.81667",
    "lng": "15.81667"
  },
  {
    "country": "AT",
    "name": "Trofaiach",
    "lat": "47.42524",
    "lng": "15.00681"
  },
  {
    "country": "AT",
    "name": "Tristach",
    "lat": "46.81611",
    "lng": "12.78972"
  },
  {
    "country": "AT",
    "name": "Trins",
    "lat": "47.08333",
    "lng": "11.41667"
  },
  {
    "country": "AT",
    "name": "Triebendorf",
    "lat": "47.11667",
    "lng": "14.23333"
  },
  {
    "country": "AT",
    "name": "Trieben",
    "lat": "47.48333",
    "lng": "14.48333"
  },
  {
    "country": "AT",
    "name": "Treglwang",
    "lat": "47.47458",
    "lng": "14.59083"
  },
  {
    "country": "AT",
    "name": "Trebesing",
    "lat": "46.88639",
    "lng": "13.51028"
  },
  {
    "country": "AT",
    "name": "Trautmannsdorf in Oststeiermark",
    "lat": "46.8753",
    "lng": "15.88451"
  },
  {
    "country": "AT",
    "name": "Trautmannsdorf an der Leitha",
    "lat": "48.02357",
    "lng": "16.63266"
  },
  {
    "country": "AT",
    "name": "Trausdorf an der Wulka",
    "lat": "47.8135",
    "lng": "16.5576"
  },
  {
    "country": "AT",
    "name": "Traunstein",
    "lat": "48.43333",
    "lng": "15.1"
  },
  {
    "country": "AT",
    "name": "Traun",
    "lat": "48.22656",
    "lng": "14.23459"
  },
  {
    "country": "AT",
    "name": "Trattenbach",
    "lat": "47.6",
    "lng": "15.86667"
  },
  {
    "country": "AT",
    "name": "Traismauer",
    "lat": "48.35",
    "lng": "15.73333"
  },
  {
    "country": "AT",
    "name": "Traiskirchen",
    "lat": "48.01485",
    "lng": "16.29324"
  },
  {
    "country": "AT",
    "name": "Traisen",
    "lat": "48.03333",
    "lng": "15.6"
  },
  {
    "country": "AT",
    "name": "Trahütten",
    "lat": "46.825",
    "lng": "15.15694"
  },
  {
    "country": "AT",
    "name": "Traboch",
    "lat": "47.37705",
    "lng": "14.98647"
  },
  {
    "country": "AT",
    "name": "Tobaj",
    "lat": "47.08333",
    "lng": "16.3"
  },
  {
    "country": "AT",
    "name": "Tobadill",
    "lat": "47.12513",
    "lng": "10.51404"
  },
  {
    "country": "AT",
    "name": "Timelkam",
    "lat": "48.00394",
    "lng": "13.6076"
  },
  {
    "country": "AT",
    "name": "Tieschen",
    "lat": "46.78611",
    "lng": "15.94222"
  },
  {
    "country": "AT",
    "name": "Tiefgraben",
    "lat": "47.87385",
    "lng": "13.30591"
  },
  {
    "country": "AT",
    "name": "Thüringen",
    "lat": "47.2",
    "lng": "9.76667"
  },
  {
    "country": "AT",
    "name": "Thörl",
    "lat": "47.51952",
    "lng": "15.22276"
  },
  {
    "country": "AT",
    "name": "Thomatal",
    "lat": "47.06667",
    "lng": "13.75"
  },
  {
    "country": "AT",
    "name": "Thomasberg",
    "lat": "47.56667",
    "lng": "16.13333"
  },
  {
    "country": "AT",
    "name": "Theresienfeld",
    "lat": "47.85",
    "lng": "16.23333"
  },
  {
    "country": "AT",
    "name": "Thaya",
    "lat": "48.85489",
    "lng": "15.28902"
  },
  {
    "country": "AT",
    "name": "Thaur",
    "lat": "47.3",
    "lng": "11.46667"
  },
  {
    "country": "AT",
    "name": "Thalheim bei Wels",
    "lat": "48.15",
    "lng": "14.03333"
  },
  {
    "country": "AT",
    "name": "Thalgau",
    "lat": "47.84142",
    "lng": "13.25325"
  },
  {
    "country": "AT",
    "name": "Teufenbach",
    "lat": "47.1287",
    "lng": "14.35913"
  },
  {
    "country": "AT",
    "name": "Ternitz",
    "lat": "47.71565",
    "lng": "16.03575"
  },
  {
    "country": "AT",
    "name": "Ternberg",
    "lat": "47.94518",
    "lng": "14.3587"
  },
  {
    "country": "AT",
    "name": "Terfens",
    "lat": "47.32355",
    "lng": "11.64388"
  },
  {
    "country": "AT",
    "name": "Telfs",
    "lat": "47.30707",
    "lng": "11.06817"
  },
  {
    "country": "AT",
    "name": "Telfes im Stubai",
    "lat": "47.16667",
    "lng": "11.36667"
  },
  {
    "country": "AT",
    "name": "Teesdorf",
    "lat": "47.95",
    "lng": "16.28333"
  },
  {
    "country": "AT",
    "name": "Taxenbach",
    "lat": "47.29116",
    "lng": "12.96215"
  },
  {
    "country": "AT",
    "name": "Tauplitz",
    "lat": "47.56005",
    "lng": "14.01293"
  },
  {
    "country": "AT",
    "name": "Tattendorf",
    "lat": "47.95",
    "lng": "16.3"
  },
  {
    "country": "AT",
    "name": "Tarrenz",
    "lat": "47.26667",
    "lng": "10.76667"
  },
  {
    "country": "AT",
    "name": "Tannheim",
    "lat": "47.49934",
    "lng": "10.51641"
  },
  {
    "country": "AT",
    "name": "Tamsweg",
    "lat": "47.12808",
    "lng": "13.81102"
  },
  {
    "country": "AT",
    "name": "Tadten",
    "lat": "47.76667",
    "lng": "16.98333"
  },
  {
    "country": "AT",
    "name": "Sulzberg",
    "lat": "47.52178",
    "lng": "9.91353"
  },
  {
    "country": "AT",
    "name": "Sulz",
    "lat": "47.28721",
    "lng": "9.65183"
  },
  {
    "country": "AT",
    "name": "Sulztal an der Weinstraße",
    "lat": "46.68333",
    "lng": "15.55"
  },
  {
    "country": "AT",
    "name": "Stummerberg",
    "lat": "47.28333",
    "lng": "11.91667"
  },
  {
    "country": "AT",
    "name": "Stumm",
    "lat": "47.29052",
    "lng": "11.88755"
  },
  {
    "country": "AT",
    "name": "Stuhlfelden",
    "lat": "47.28761",
    "lng": "12.52755"
  },
  {
    "country": "AT",
    "name": "Studenzen",
    "lat": "47.00583",
    "lng": "15.75417"
  },
  {
    "country": "AT",
    "name": "Stubenberg",
    "lat": "47.23333",
    "lng": "15.8"
  },
  {
    "country": "AT",
    "name": "Stronsdorf",
    "lat": "48.65157",
    "lng": "16.2989"
  },
  {
    "country": "AT",
    "name": "Strobl",
    "lat": "47.71667",
    "lng": "13.48333"
  },
  {
    "country": "AT",
    "name": "Strengen",
    "lat": "47.12589",
    "lng": "10.46199"
  },
  {
    "country": "AT",
    "name": "Strengberg",
    "lat": "48.14685",
    "lng": "14.65147"
  },
  {
    "country": "AT",
    "name": "Strem",
    "lat": "47.04498",
    "lng": "16.41426"
  },
  {
    "country": "AT",
    "name": "Stratzing",
    "lat": "48.45",
    "lng": "15.6"
  },
  {
    "country": "AT",
    "name": "Strasswalchen",
    "lat": "47.98333",
    "lng": "13.25"
  },
  {
    "country": "AT",
    "name": "Straß in Steiermark",
    "lat": "46.72722",
    "lng": "15.62444"
  },
  {
    "country": "AT",
    "name": "Strasshof an der Nordbahn",
    "lat": "48.31667",
    "lng": "16.66667"
  },
  {
    "country": "AT",
    "name": "Strassen",
    "lat": "46.75389",
    "lng": "12.48417"
  },
  {
    "country": "AT",
    "name": "Straßburg",
    "lat": "46.89444",
    "lng": "14.32861"
  },
  {
    "country": "AT",
    "name": "Strass im Zillertal",
    "lat": "47.39556",
    "lng": "11.81966"
  },
  {
    "country": "AT",
    "name": "Strallegg",
    "lat": "47.41165",
    "lng": "15.72534"
  },
  {
    "country": "AT",
    "name": "Straden",
    "lat": "46.80917",
    "lng": "15.86806"
  },
  {
    "country": "AT",
    "name": "Stotzing",
    "lat": "47.90688",
    "lng": "16.5458"
  },
  {
    "country": "AT",
    "name": "Stössing",
    "lat": "48.12267",
    "lng": "15.81379"
  },
  {
    "country": "AT",
    "name": "Stoob",
    "lat": "47.52845",
    "lng": "16.4776"
  },
  {
    "country": "AT",
    "name": "Stockerau",
    "lat": "48.38333",
    "lng": "16.21667"
  },
  {
    "country": "AT",
    "name": "Stockenboi",
    "lat": "46.72611",
    "lng": "13.52306"
  },
  {
    "country": "AT",
    "name": "Stiwoll",
    "lat": "47.1",
    "lng": "15.21667"
  },
  {
    "country": "AT",
    "name": "Steinbrunn",
    "lat": "47.83333",
    "lng": "16.41667"
  },
  {
    "country": "AT",
    "name": "Stinatz",
    "lat": "47.20266",
    "lng": "16.13312"
  },
  {
    "country": "AT",
    "name": "Steyregg",
    "lat": "48.28513",
    "lng": "14.36995"
  },
  {
    "country": "AT",
    "name": "Steyr",
    "lat": "48.04274",
    "lng": "14.42127"
  },
  {
    "country": "AT",
    "name": "Steuerberg",
    "lat": "46.78804",
    "lng": "14.1129"
  },
  {
    "country": "AT",
    "name": "Stetten",
    "lat": "48.36667",
    "lng": "16.38333"
  },
  {
    "country": "AT",
    "name": "Stetteldorf am Wagram",
    "lat": "48.40815",
    "lng": "16.01862"
  },
  {
    "country": "AT",
    "name": "Stenzengreith",
    "lat": "47.2",
    "lng": "15.51667"
  },
  {
    "country": "AT",
    "name": "Steinhaus",
    "lat": "48.11614",
    "lng": "14.0189"
  },
  {
    "country": "AT",
    "name": "Steinfeld",
    "lat": "46.75812",
    "lng": "13.24934"
  },
  {
    "country": "AT",
    "name": "Steindorf am Ossiacher See",
    "lat": "46.69833",
    "lng": "14.00917"
  },
  {
    "country": "AT",
    "name": "Steinbach am Attersee",
    "lat": "47.83087",
    "lng": "13.54613"
  },
  {
    "country": "AT",
    "name": "Steinakirchen am Forst",
    "lat": "48.06965",
    "lng": "15.04801"
  },
  {
    "country": "AT",
    "name": "Steinach am Brenner",
    "lat": "47.08333",
    "lng": "11.46667"
  },
  {
    "country": "AT",
    "name": "Stein",
    "lat": "46.99778",
    "lng": "16.08694"
  },
  {
    "country": "AT",
    "name": "Stegersbach",
    "lat": "47.16667",
    "lng": "16.16667"
  },
  {
    "country": "AT",
    "name": "Steeg",
    "lat": "47.24393",
    "lng": "10.29436"
  },
  {
    "country": "AT",
    "name": "Statzendorf",
    "lat": "48.30752",
    "lng": "15.64127"
  },
  {
    "country": "AT",
    "name": "Stattegg",
    "lat": "47.13333",
    "lng": "15.41667"
  },
  {
    "country": "AT",
    "name": "Stanz bei Landeck",
    "lat": "47.14758",
    "lng": "10.5534"
  },
  {
    "country": "AT",
    "name": "Stanzach",
    "lat": "47.38333",
    "lng": "10.56667"
  },
  {
    "country": "AT",
    "name": "Stans",
    "lat": "47.36667",
    "lng": "11.71667"
  },
  {
    "country": "AT",
    "name": "Stams",
    "lat": "47.27603",
    "lng": "10.98315"
  },
  {
    "country": "AT",
    "name": "Stambach",
    "lat": "47.33333",
    "lng": "15.93333"
  },
  {
    "country": "AT",
    "name": "Stallhofen",
    "lat": "47.05",
    "lng": "15.21667"
  },
  {
    "country": "AT",
    "name": "Stallhof",
    "lat": "46.88333",
    "lng": "15.28333"
  },
  {
    "country": "AT",
    "name": "Stallehr",
    "lat": "47.13306",
    "lng": "9.85"
  },
  {
    "country": "AT",
    "name": "Stall",
    "lat": "46.89056",
    "lng": "13.03694"
  },
  {
    "country": "AT",
    "name": "Stainz bei Straden",
    "lat": "46.82444",
    "lng": "15.89222"
  },
  {
    "country": "AT",
    "name": "Stainz",
    "lat": "46.89444",
    "lng": "15.26722"
  },
  {
    "country": "AT",
    "name": "Stainach",
    "lat": "47.53343",
    "lng": "14.10872"
  },
  {
    "country": "AT",
    "name": "Stadtschlaining",
    "lat": "47.31667",
    "lng": "16.28333"
  },
  {
    "country": "AT",
    "name": "Stadl-Paura",
    "lat": "48.08333",
    "lng": "13.86667"
  },
  {
    "country": "AT",
    "name": "Stadl an der Mur",
    "lat": "47.08333",
    "lng": "13.96667"
  },
  {
    "country": "AT",
    "name": "Staatz",
    "lat": "48.67617",
    "lng": "16.48726"
  },
  {
    "country": "AT",
    "name": "Spitz",
    "lat": "48.3656",
    "lng": "15.41416"
  },
  {
    "country": "AT",
    "name": "Spittal an der Drau",
    "lat": "46.8",
    "lng": "13.5"
  },
  {
    "country": "AT",
    "name": "Spital am Semmering",
    "lat": "47.61345",
    "lng": "15.75096"
  },
  {
    "country": "AT",
    "name": "Spillern",
    "lat": "48.38333",
    "lng": "16.25"
  },
  {
    "country": "AT",
    "name": "Spielfeld",
    "lat": "46.70556",
    "lng": "15.63722"
  },
  {
    "country": "AT",
    "name": "Spielberg bei Knittelfeld",
    "lat": "47.21667",
    "lng": "14.78333"
  },
  {
    "country": "AT",
    "name": "Spannberg",
    "lat": "48.46393",
    "lng": "16.73647"
  },
  {
    "country": "AT",
    "name": "Sonntagberg",
    "lat": "47.99561",
    "lng": "14.76065"
  },
  {
    "country": "AT",
    "name": "Sommerein",
    "lat": "47.98333",
    "lng": "16.65"
  },
  {
    "country": "AT",
    "name": "Sollenau",
    "lat": "47.88333",
    "lng": "16.25"
  },
  {
    "country": "AT",
    "name": "Söll",
    "lat": "47.50378",
    "lng": "12.19221"
  },
  {
    "country": "AT",
    "name": "Sölden",
    "lat": "46.96667",
    "lng": "11"
  },
  {
    "country": "AT",
    "name": "Hall in Tirol",
    "lat": "47.28333",
    "lng": "11.51667"
  },
  {
    "country": "AT",
    "name": "Södingberg",
    "lat": "47.10703",
    "lng": "15.17169"
  },
  {
    "country": "AT",
    "name": "Söchau",
    "lat": "47.03333",
    "lng": "16.01667"
  },
  {
    "country": "AT",
    "name": "Soboth",
    "lat": "46.68139",
    "lng": "15.07833"
  },
  {
    "country": "AT",
    "name": "Sitzendorf an der Schmida",
    "lat": "48.59841",
    "lng": "15.94254"
  },
  {
    "country": "AT",
    "name": "Sittersdorf",
    "lat": "46.54444",
    "lng": "14.60583"
  },
  {
    "country": "AT",
    "name": "Sistrans",
    "lat": "47.23333",
    "lng": "11.45"
  },
  {
    "country": "AT",
    "name": "Sinabelkirchen",
    "lat": "47.102",
    "lng": "15.82795"
  },
  {
    "country": "AT",
    "name": "Silz",
    "lat": "47.26667",
    "lng": "10.93333"
  },
  {
    "country": "AT",
    "name": "Sillian",
    "lat": "46.75278",
    "lng": "12.42111"
  },
  {
    "country": "AT",
    "name": "Silbertal",
    "lat": "47.09368",
    "lng": "9.98314"
  },
  {
    "country": "AT",
    "name": "Sigmundsherberg",
    "lat": "48.68333",
    "lng": "15.75"
  },
  {
    "country": "AT",
    "name": "Sierning",
    "lat": "48.04343",
    "lng": "14.30935"
  },
  {
    "country": "AT",
    "name": "Sierndorf",
    "lat": "48.43024",
    "lng": "16.16658"
  },
  {
    "country": "AT",
    "name": "Sieghartskirchen",
    "lat": "48.25531",
    "lng": "16.01223"
  },
  {
    "country": "AT",
    "name": "Sieggraben",
    "lat": "47.65128",
    "lng": "16.37993"
  },
  {
    "country": "AT",
    "name": "Siegersdorf bei Herberstein",
    "lat": "47.2",
    "lng": "15.78333"
  },
  {
    "country": "AT",
    "name": "Sibratsgfäll",
    "lat": "47.42667",
    "lng": "10.03806"
  },
  {
    "country": "AT",
    "name": "Serfaus",
    "lat": "47.04018",
    "lng": "10.60339"
  },
  {
    "country": "AT",
    "name": "Senftenberg",
    "lat": "48.43333",
    "lng": "15.55"
  },
  {
    "country": "AT",
    "name": "Semriach",
    "lat": "47.21667",
    "lng": "15.4"
  },
  {
    "country": "AT",
    "name": "Semmering",
    "lat": "47.63347",
    "lng": "15.82993"
  },
  {
    "country": "AT",
    "name": "Selzthal",
    "lat": "47.54988",
    "lng": "14.31201"
  },
  {
    "country": "AT",
    "name": "Seitenstetten Markt",
    "lat": "48.03333",
    "lng": "14.65"
  },
  {
    "country": "AT",
    "name": "Seiersberg",
    "lat": "47",
    "lng": "15.4"
  },
  {
    "country": "AT",
    "name": "Seibersdorf",
    "lat": "47.95858",
    "lng": "16.51842"
  },
  {
    "country": "AT",
    "name": "Seggauberg",
    "lat": "46.76667",
    "lng": "15.51667"
  },
  {
    "country": "AT",
    "name": "Seewalchen",
    "lat": "47.95246",
    "lng": "13.58382"
  },
  {
    "country": "AT",
    "name": "Seekirchen am Wallersee",
    "lat": "47.9",
    "lng": "13.13333"
  },
  {
    "country": "AT",
    "name": "Seeham",
    "lat": "47.96746",
    "lng": "13.07699"
  },
  {
    "country": "AT",
    "name": "Seefeld in Tirol",
    "lat": "47.33016",
    "lng": "11.18786"
  },
  {
    "country": "AT",
    "name": "Seeboden",
    "lat": "46.81909",
    "lng": "13.5143"
  },
  {
    "country": "AT",
    "name": "Seebenstein",
    "lat": "47.68333",
    "lng": "16.13333"
  },
  {
    "country": "AT",
    "name": "See",
    "lat": "47.08333",
    "lng": "10.46667"
  },
  {
    "country": "AT",
    "name": "Seckau",
    "lat": "47.26667",
    "lng": "14.78333"
  },
  {
    "country": "AT",
    "name": "Sebersdorf",
    "lat": "47.1865",
    "lng": "15.9936"
  },
  {
    "country": "AT",
    "name": "Schwoich",
    "lat": "47.546",
    "lng": "12.14049"
  },
  {
    "country": "AT",
    "name": "Schwendt",
    "lat": "47.63182",
    "lng": "12.39266"
  },
  {
    "country": "AT",
    "name": "Schwendau",
    "lat": "47.19753",
    "lng": "11.85897"
  },
  {
    "country": "AT",
    "name": "Schweiggers",
    "lat": "48.66667",
    "lng": "15.06667"
  },
  {
    "country": "AT",
    "name": "Schwechat",
    "lat": "48.13333",
    "lng": "16.46667"
  },
  {
    "country": "AT",
    "name": "Schwaz",
    "lat": "47.35169",
    "lng": "11.71014"
  },
  {
    "country": "AT",
    "name": "Schwarzenbach an der Pielach",
    "lat": "47.93333",
    "lng": "15.38333"
  },
  {
    "country": "AT",
    "name": "Schwarzenbach",
    "lat": "47.63547",
    "lng": "16.35109"
  },
  {
    "country": "AT",
    "name": "Schwarzenau",
    "lat": "48.74436",
    "lng": "15.25838"
  },
  {
    "country": "AT",
    "name": "Schwarzau im Schwarzautal",
    "lat": "46.87886",
    "lng": "15.66421"
  },
  {
    "country": "AT",
    "name": "Schwarzau im Gebirge",
    "lat": "47.81223",
    "lng": "15.70581"
  },
  {
    "country": "AT",
    "name": "Schwarzach im Pongau",
    "lat": "47.32048",
    "lng": "13.15171"
  },
  {
    "country": "AT",
    "name": "Schwarzach",
    "lat": "47.44904",
    "lng": "9.76213"
  },
  {
    "country": "AT",
    "name": "Schwanenstadt",
    "lat": "48.05537",
    "lng": "13.77505"
  },
  {
    "country": "AT",
    "name": "Schwanberg",
    "lat": "46.75833",
    "lng": "15.20833"
  },
  {
    "country": "AT",
    "name": "Schwadorf",
    "lat": "48.06936",
    "lng": "16.57957"
  },
  {
    "country": "AT",
    "name": "Schützen am Gebirge",
    "lat": "47.85233",
    "lng": "16.62334"
  },
  {
    "country": "AT",
    "name": "Schruns",
    "lat": "47.06667",
    "lng": "9.91667"
  },
  {
    "country": "AT",
    "name": "Schrems bei Frohnleiten",
    "lat": "47.28109",
    "lng": "15.35932"
  },
  {
    "country": "AT",
    "name": "Schrems",
    "lat": "48.78333",
    "lng": "15.06667"
  },
  {
    "country": "AT",
    "name": "Schrattenthal",
    "lat": "48.7",
    "lng": "15.9"
  },
  {
    "country": "AT",
    "name": "Schrattenberg",
    "lat": "48.72359",
    "lng": "16.72201"
  },
  {
    "country": "AT",
    "name": "Schrattenbach",
    "lat": "47.77902",
    "lng": "15.9906"
  },
  {
    "country": "AT",
    "name": "Schottwien",
    "lat": "47.65683",
    "lng": "15.8725"
  },
  {
    "country": "AT",
    "name": "Schoppernau",
    "lat": "47.31205",
    "lng": "10.01646"
  },
  {
    "country": "AT",
    "name": "Schönwies",
    "lat": "47.19665",
    "lng": "10.65742"
  },
  {
    "country": "AT",
    "name": "Schönberg im Stubaital",
    "lat": "47.18333",
    "lng": "11.41667"
  },
  {
    "country": "AT",
    "name": "Schönbach",
    "lat": "48.45",
    "lng": "15.03333"
  },
  {
    "country": "AT",
    "name": "Schönau an der Triesting",
    "lat": "47.93452",
    "lng": "16.25376"
  },
  {
    "country": "AT",
    "name": "Schöder",
    "lat": "47.18333",
    "lng": "14.1"
  },
  {
    "country": "AT",
    "name": "Schnifis",
    "lat": "47.21667",
    "lng": "9.73306"
  },
  {
    "country": "AT",
    "name": "Schnepfau",
    "lat": "47.35206",
    "lng": "9.9452"
  },
  {
    "country": "AT",
    "name": "Schmirn",
    "lat": "47.08333",
    "lng": "11.56667"
  },
  {
    "country": "AT",
    "name": "Schlitters",
    "lat": "47.38045",
    "lng": "11.83888"
  },
  {
    "country": "AT",
    "name": "Schlins",
    "lat": "47.2",
    "lng": "9.7"
  },
  {
    "country": "AT",
    "name": "Schleedorf",
    "lat": "47.95",
    "lng": "13.15"
  },
  {
    "country": "AT",
    "name": "Schlatt",
    "lat": "48.07177",
    "lng": "13.78904"
  },
  {
    "country": "AT",
    "name": "Schlägl",
    "lat": "48.63665",
    "lng": "13.9656"
  },
  {
    "country": "AT",
    "name": "Schladming",
    "lat": "47.39289",
    "lng": "13.68699"
  },
  {
    "country": "AT",
    "name": "Schiefling am See",
    "lat": "46.60444",
    "lng": "14.0975"
  },
  {
    "country": "AT",
    "name": "Schenkenfelden",
    "lat": "48.50273",
    "lng": "14.36188"
  },
  {
    "country": "AT",
    "name": "Scheifling",
    "lat": "47.15044",
    "lng": "14.41278"
  },
  {
    "country": "AT",
    "name": "Scheibbs",
    "lat": "48.00474",
    "lng": "15.16817"
  },
  {
    "country": "AT",
    "name": "Scheffau am Wilden Kaiser",
    "lat": "47.52943",
    "lng": "12.25139"
  },
  {
    "country": "AT",
    "name": "Scheffau am Tennengebirge",
    "lat": "47.58831",
    "lng": "13.2202"
  },
  {
    "country": "AT",
    "name": "Schattwald",
    "lat": "47.51427",
    "lng": "10.46143"
  },
  {
    "country": "AT",
    "name": "Schattendorf",
    "lat": "47.70973",
    "lng": "16.50979"
  },
  {
    "country": "AT",
    "name": "Scharnstein",
    "lat": "47.90426",
    "lng": "13.96135"
  },
  {
    "country": "AT",
    "name": "Scharnitz",
    "lat": "47.38899",
    "lng": "11.26455"
  },
  {
    "country": "AT",
    "name": "Scharndorf",
    "lat": "48.09399",
    "lng": "16.79883"
  },
  {
    "country": "AT",
    "name": "Schärding",
    "lat": "48.45294",
    "lng": "13.43722"
  },
  {
    "country": "AT",
    "name": "Schandorf",
    "lat": "47.24183",
    "lng": "16.42267"
  },
  {
    "country": "AT",
    "name": "Schäffern",
    "lat": "47.47771",
    "lng": "16.10956"
  },
  {
    "country": "AT",
    "name": "Schachendorf",
    "lat": "47.26667",
    "lng": "16.43333"
  },
  {
    "country": "AT",
    "name": "Sautens",
    "lat": "47.2",
    "lng": "10.86667"
  },
  {
    "country": "AT",
    "name": "Bad Sauerbrunn",
    "lat": "47.77439",
    "lng": "16.32841"
  },
  {
    "country": "AT",
    "name": "Sattledt",
    "lat": "48.07372",
    "lng": "14.05478"
  },
  {
    "country": "AT",
    "name": "Satteins",
    "lat": "47.21667",
    "lng": "9.66667"
  },
  {
    "country": "AT",
    "name": "Sankt Wolfgang im Salzkammergut",
    "lat": "47.73932",
    "lng": "13.44666"
  },
  {
    "country": "AT",
    "name": "Sankt Veit in Defereggen",
    "lat": "46.92722",
    "lng": "12.42972"
  },
  {
    "country": "AT",
    "name": "Sankt Veit im Pongau",
    "lat": "47.33333",
    "lng": "13.15"
  },
  {
    "country": "AT",
    "name": "Sankt Veit an der Gölsen",
    "lat": "48.0432",
    "lng": "15.66942"
  },
  {
    "country": "AT",
    "name": "Sankt Veit an der Glan",
    "lat": "46.76806",
    "lng": "14.36028"
  },
  {
    "country": "AT",
    "name": "Sankt Veit am Vogau",
    "lat": "46.74048",
    "lng": "15.64217"
  },
  {
    "country": "AT",
    "name": "Sankt Valentin",
    "lat": "48.16667",
    "lng": "14.51667"
  },
  {
    "country": "AT",
    "name": "Sankt Ulrich bei Steyr",
    "lat": "48.02116",
    "lng": "14.43685"
  },
  {
    "country": "AT",
    "name": "Sankt Ulrich am Waasen",
    "lat": "46.93333",
    "lng": "15.53333"
  },
  {
    "country": "AT",
    "name": "Sankt Stefan ob Stainz",
    "lat": "46.92861",
    "lng": "15.25889"
  },
  {
    "country": "AT",
    "name": "Sankt Stefan ob Leoben",
    "lat": "47.31672",
    "lng": "14.97831"
  },
  {
    "country": "AT",
    "name": "Sankt Stefan im Rosental",
    "lat": "46.90389",
    "lng": "15.71"
  },
  {
    "country": "AT",
    "name": "Sankt Ruprecht an der Raab",
    "lat": "47.15336",
    "lng": "15.66256"
  },
  {
    "country": "AT",
    "name": "Sankt Radegund bei Graz",
    "lat": "47.18172",
    "lng": "15.49192"
  },
  {
    "country": "AT",
    "name": "Sankt Pölten",
    "lat": "48.2",
    "lng": "15.63333"
  },
  {
    "country": "AT",
    "name": "Sankt Peter ob Judenburg",
    "lat": "47.18417",
    "lng": "14.58639"
  },
  {
    "country": "AT",
    "name": "Sankt Peter im Sulmtal",
    "lat": "46.75",
    "lng": "15.25"
  },
  {
    "country": "AT",
    "name": "Sankt Peter-Freienstein",
    "lat": "47.38333",
    "lng": "15.01667"
  },
  {
    "country": "AT",
    "name": "Sankt Peter am Ottersbach",
    "lat": "46.79778",
    "lng": "15.75917"
  },
  {
    "country": "AT",
    "name": "Sankt Peter am Kammersberg",
    "lat": "47.18706",
    "lng": "14.18464"
  },
  {
    "country": "AT",
    "name": "Sankt Paul im Levanttal",
    "lat": "46.70056",
    "lng": "14.87556"
  },
  {
    "country": "AT",
    "name": "Sankt Oswald bei Plankenwarth",
    "lat": "47.08701",
    "lng": "15.27703"
  },
  {
    "country": "AT",
    "name": "Sankt Nikolai ob Draßling",
    "lat": "46.80889",
    "lng": "15.65083"
  },
  {
    "country": "AT",
    "name": "Sankt Nikolai im Sölktal",
    "lat": "47.31667",
    "lng": "14.05"
  },
  {
    "country": "AT",
    "name": "Sankt Nikolai im Sausal",
    "lat": "46.82111",
    "lng": "15.45194"
  },
  {
    "country": "AT",
    "name": "Sankt Michael in Obersteiermark",
    "lat": "47.33839",
    "lng": "15.01784"
  },
  {
    "country": "AT",
    "name": "Sankt Michael im Lungau",
    "lat": "47.1",
    "lng": "13.63333"
  },
  {
    "country": "AT",
    "name": "Sankt Michael im Burgenland",
    "lat": "47.12852",
    "lng": "16.27148"
  },
  {
    "country": "AT",
    "name": "Sankt Martin im Sulmtal",
    "lat": "46.75611",
    "lng": "15.29722"
  },
  {
    "country": "AT",
    "name": "Sankt Martin bei Lofer",
    "lat": "47.56667",
    "lng": "12.7"
  },
  {
    "country": "AT",
    "name": "Sankt Martin an der Raab",
    "lat": "46.9225",
    "lng": "16.13611"
  },
  {
    "country": "AT",
    "name": "Sankt Martin am Grimming",
    "lat": "47.48873",
    "lng": "13.98105"
  },
  {
    "country": "AT",
    "name": "Sankt Marienkirchen bei Schärding",
    "lat": "48.3871",
    "lng": "13.45078"
  },
  {
    "country": "AT",
    "name": "Sankt Margarethen im Lungau",
    "lat": "47.07927",
    "lng": "13.69613"
  },
  {
    "country": "AT",
    "name": "Sankt Margarethen im Burgenland",
    "lat": "47.80335",
    "lng": "16.60875"
  },
  {
    "country": "AT",
    "name": "Sankt Margarethen bei Knittelfeld",
    "lat": "47.21667",
    "lng": "14.86667"
  },
  {
    "country": "AT",
    "name": "Sankt Margarethen an der Sierning",
    "lat": "48.1591",
    "lng": "15.49055"
  },
  {
    "country": "AT",
    "name": "Sankt Margarethen an der Raab",
    "lat": "47.05",
    "lng": "15.75"
  },
  {
    "country": "AT",
    "name": "Sankt Marein im Mürztal",
    "lat": "47.46667",
    "lng": "15.36667"
  },
  {
    "country": "AT",
    "name": "Sankt Marein bei Neumarkt",
    "lat": "47.06591",
    "lng": "14.42908"
  },
  {
    "country": "AT",
    "name": "Sankt Marein bei Knittelfeld",
    "lat": "47.27396",
    "lng": "14.86085"
  },
  {
    "country": "AT",
    "name": "Sankt Marein bei Graz",
    "lat": "47.01583",
    "lng": "15.68389"
  },
  {
    "country": "AT",
    "name": "Sankt Lorenzen im Mürztal",
    "lat": "47.48333",
    "lng": "15.36667"
  },
  {
    "country": "AT",
    "name": "Sankt Lorenzen bei Scheifling",
    "lat": "47.14556",
    "lng": "14.40583"
  },
  {
    "country": "AT",
    "name": "Sankt Lorenzen bei Knittelfeld",
    "lat": "47.25078",
    "lng": "14.89549"
  },
  {
    "country": "AT",
    "name": "Sankt Lorenzen am Wechsel",
    "lat": "47.44153",
    "lng": "15.95498"
  },
  {
    "country": "AT",
    "name": "Sankt Lorenz",
    "lat": "47.8324",
    "lng": "13.34839"
  },
  {
    "country": "AT",
    "name": "Sankt Leonhard am Forst",
    "lat": "48.13333",
    "lng": "15.28333"
  },
  {
    "country": "AT",
    "name": "Sankt Lambrecht",
    "lat": "47.06667",
    "lng": "14.3"
  },
  {
    "country": "AT",
    "name": "Sankt Kathrein am Offenegg",
    "lat": "47.3",
    "lng": "15.58333"
  },
  {
    "country": "AT",
    "name": "Sankt Kathrein am Hauenstein",
    "lat": "47.48943",
    "lng": "15.69414"
  },
  {
    "country": "AT",
    "name": "Sankt Katharein an der Laming",
    "lat": "47.47069",
    "lng": "15.16319"
  },
  {
    "country": "AT",
    "name": "Sankt Josef (Weststeiermark)",
    "lat": "46.90917",
    "lng": "15.33639"
  },
  {
    "country": "AT",
    "name": "Sankt Johann in Tirol",
    "lat": "47.5233",
    "lng": "12.4232"
  },
  {
    "country": "AT",
    "name": "Sankt Johann in der Haide",
    "lat": "47.2808",
    "lng": "16.02579"
  },
  {
    "country": "AT",
    "name": "Sankt Johann im Saggautal",
    "lat": "46.70389",
    "lng": "15.40278"
  },
  {
    "country": "AT",
    "name": "Sankt Johann im Pongau",
    "lat": "47.35",
    "lng": "13.2"
  },
  {
    "country": "AT",
    "name": "Sankt Johann bei Herberstein",
    "lat": "47.2",
    "lng": "15.8"
  },
  {
    "country": "AT",
    "name": "Sankt Johann am Tauern",
    "lat": "47.35",
    "lng": "14.46667"
  },
  {
    "country": "AT",
    "name": "Sankt Jakob im Walde",
    "lat": "47.46667",
    "lng": "15.78333"
  },
  {
    "country": "AT",
    "name": "Sankt Jakob",
    "lat": "46.54778",
    "lng": "14.05722"
  },
  {
    "country": "AT",
    "name": "Sankt Ilgen",
    "lat": "47.55",
    "lng": "15.16667"
  },
  {
    "country": "AT",
    "name": "Sankt Gotthard im Mühlkreis",
    "lat": "48.3802",
    "lng": "14.13185"
  },
  {
    "country": "AT",
    "name": "Sankt Gilgen",
    "lat": "47.76667",
    "lng": "13.36667"
  },
  {
    "country": "AT",
    "name": "Sankt Georgen ob Murau",
    "lat": "47.1",
    "lng": "14.1"
  },
  {
    "country": "AT",
    "name": "Sankt Georgen ob Judenburg",
    "lat": "47.20744",
    "lng": "14.49736"
  },
  {
    "country": "AT",
    "name": "Sankt Georgen im Attergau",
    "lat": "47.93595",
    "lng": "13.48306"
  },
  {
    "country": "AT",
    "name": "Sankt Georgen an der Stiefing",
    "lat": "46.87333",
    "lng": "15.57972"
  },
  {
    "country": "AT",
    "name": "Sankt Georgen an der Leys",
    "lat": "48.03149",
    "lng": "15.22722"
  },
  {
    "country": "AT",
    "name": "Sankt Georgen am Ybbsfelde",
    "lat": "48.13333",
    "lng": "14.95"
  },
  {
    "country": "AT",
    "name": "Sankt Gallenkirch",
    "lat": "47.01667",
    "lng": "9.96667"
  },
  {
    "country": "AT",
    "name": "Sankt Gallen",
    "lat": "47.68631",
    "lng": "14.61705"
  },
  {
    "country": "AT",
    "name": "Sankt Florian am Inn",
    "lat": "48.44122",
    "lng": "13.44263"
  },
  {
    "country": "AT",
    "name": "Sankt Corona am Wechsel",
    "lat": "47.58333",
    "lng": "16"
  },
  {
    "country": "AT",
    "name": "Sankt Blasen",
    "lat": "47.08333",
    "lng": "14.3"
  },
  {
    "country": "AT",
    "name": "Sankt Bartholomä",
    "lat": "47.05457",
    "lng": "15.25889"
  },
  {
    "country": "AT",
    "name": "Sankt Anton im Montafon",
    "lat": "47.11667",
    "lng": "9.86667"
  },
  {
    "country": "AT",
    "name": "Sankt Anton am Arlberg",
    "lat": "47.1275",
    "lng": "10.26372"
  },
  {
    "country": "AT",
    "name": "Sankt Anna am Aigen",
    "lat": "46.83111",
    "lng": "15.97139"
  },
  {
    "country": "AT",
    "name": "Sankt Andrä im Lungau",
    "lat": "47.15",
    "lng": "13.78333"
  },
  {
    "country": "AT",
    "name": "Sankt Andrä am Zicksee",
    "lat": "47.7841",
    "lng": "16.94195"
  },
  {
    "country": "AT",
    "name": "Sankt Andrä",
    "lat": "46.76829",
    "lng": "14.81991"
  },
  {
    "country": "AT",
    "name": "Salzburg",
    "lat": "47.79941",
    "lng": "13.04399"
  },
  {
    "country": "AT",
    "name": "Sallingberg",
    "lat": "48.46667",
    "lng": "15.23333"
  },
  {
    "country": "AT",
    "name": "Salla",
    "lat": "47.1",
    "lng": "14.96667"
  },
  {
    "country": "AT",
    "name": "Sachsenburg",
    "lat": "46.82917",
    "lng": "13.355"
  },
  {
    "country": "AT",
    "name": "Saalfelden am Steinernen Meer",
    "lat": "47.42681",
    "lng": "12.848"
  },
  {
    "country": "AT",
    "name": "Saalbach",
    "lat": "47.39138",
    "lng": "12.63642"
  },
  {
    "country": "AT",
    "name": "Rutzenham",
    "lat": "48.06076",
    "lng": "13.71883"
  },
  {
    "country": "AT",
    "name": "Rüstorf",
    "lat": "48.04326",
    "lng": "13.78982"
  },
  {
    "country": "AT",
    "name": "Rust",
    "lat": "47.80122",
    "lng": "16.67158"
  },
  {
    "country": "AT",
    "name": "Ruprechtshofen",
    "lat": "48.13648",
    "lng": "15.27675"
  },
  {
    "country": "AT",
    "name": "Rum",
    "lat": "47.28333",
    "lng": "11.45"
  },
  {
    "country": "AT",
    "name": "Rudersdorf",
    "lat": "47.05",
    "lng": "16.11667"
  },
  {
    "country": "AT",
    "name": "Ruden",
    "lat": "46.65833",
    "lng": "14.77639"
  },
  {
    "country": "AT",
    "name": "Rottenmann",
    "lat": "47.51667",
    "lng": "14.35"
  },
  {
    "country": "AT",
    "name": "Röthis",
    "lat": "47.29332",
    "lng": "9.65484"
  },
  {
    "country": "AT",
    "name": "Röthelstein",
    "lat": "47.31667",
    "lng": "15.36667"
  },
  {
    "country": "AT",
    "name": "Rotenturm an der Pinka",
    "lat": "47.25",
    "lng": "16.25"
  },
  {
    "country": "AT",
    "name": "Rosegg",
    "lat": "46.58833",
    "lng": "14.01718"
  },
  {
    "country": "AT",
    "name": "Röschitz",
    "lat": "48.64312",
    "lng": "15.81774"
  },
  {
    "country": "AT",
    "name": "Roppen",
    "lat": "47.21667",
    "lng": "10.81667"
  },
  {
    "country": "AT",
    "name": "Röns",
    "lat": "47.21667",
    "lng": "9.7"
  },
  {
    "country": "AT",
    "name": "Roitham",
    "lat": "48.02432",
    "lng": "13.82166"
  },
  {
    "country": "AT",
    "name": "Rohr im Gebirge",
    "lat": "47.89471",
    "lng": "15.73603"
  },
  {
    "country": "AT",
    "name": "Rohr im Burgenland",
    "lat": "47.11667",
    "lng": "16.16667"
  },
  {
    "country": "AT",
    "name": "Röhrenbach",
    "lat": "48.65",
    "lng": "15.5"
  },
  {
    "country": "AT",
    "name": "Rohrbach bei Mattersburg",
    "lat": "47.7052",
    "lng": "16.43005"
  },
  {
    "country": "AT",
    "name": "Rohrbach an der Lafnitz",
    "lat": "47.38333",
    "lng": "16"
  },
  {
    "country": "AT",
    "name": "Rohrau",
    "lat": "48.06667",
    "lng": "16.85"
  },
  {
    "country": "AT",
    "name": "Ritzing",
    "lat": "47.61316",
    "lng": "16.49546"
  },
  {
    "country": "AT",
    "name": "Rinn",
    "lat": "47.25",
    "lng": "11.5"
  },
  {
    "country": "AT",
    "name": "Riezlern",
    "lat": "47.35778",
    "lng": "10.18759"
  },
  {
    "country": "AT",
    "name": "Rietz",
    "lat": "47.28593",
    "lng": "11.03075"
  },
  {
    "country": "AT",
    "name": "Riegersburg",
    "lat": "47",
    "lng": "15.93028"
  },
  {
    "country": "AT",
    "name": "Riefensberg",
    "lat": "47.50137",
    "lng": "9.95838"
  },
  {
    "country": "AT",
    "name": "Riedlingsdorf",
    "lat": "47.35",
    "lng": "16.13333"
  },
  {
    "country": "AT",
    "name": "Ried im Oberinntal",
    "lat": "47.05",
    "lng": "10.65"
  },
  {
    "country": "AT",
    "name": "Ried im Innkreis",
    "lat": "48.21123",
    "lng": "13.48855"
  },
  {
    "country": "AT",
    "name": "Reutte",
    "lat": "47.48333",
    "lng": "10.71667"
  },
  {
    "country": "AT",
    "name": "Reuthe",
    "lat": "47.37113",
    "lng": "9.89481"
  },
  {
    "country": "AT",
    "name": "Retznei",
    "lat": "46.73333",
    "lng": "15.56667"
  },
  {
    "country": "AT",
    "name": "Retz",
    "lat": "48.75",
    "lng": "15.95"
  },
  {
    "country": "AT",
    "name": "Rettenschöss",
    "lat": "47.65718",
    "lng": "12.26872"
  },
  {
    "country": "AT",
    "name": "Rettenegg",
    "lat": "47.52694",
    "lng": "15.78104"
  },
  {
    "country": "AT",
    "name": "Reith bei Seefeld",
    "lat": "47.3",
    "lng": "11.2"
  },
  {
    "country": "AT",
    "name": "Reith bei Kitzbühel",
    "lat": "47.46667",
    "lng": "12.35"
  },
  {
    "country": "AT",
    "name": "Reith im Alpbachtal",
    "lat": "47.41694",
    "lng": "11.87785"
  },
  {
    "country": "AT",
    "name": "Reisenberg",
    "lat": "47.99406",
    "lng": "16.52018"
  },
  {
    "country": "AT",
    "name": "Reinsberg",
    "lat": "47.98567",
    "lng": "15.07067"
  },
  {
    "country": "AT",
    "name": "Reingers",
    "lat": "48.96667",
    "lng": "15.13333"
  },
  {
    "country": "AT",
    "name": "Reifling",
    "lat": "47.13333",
    "lng": "14.66667"
  },
  {
    "country": "AT",
    "name": "Reichraming",
    "lat": "47.88333",
    "lng": "14.45"
  },
  {
    "country": "AT",
    "name": "Reichenthal",
    "lat": "48.54286",
    "lng": "14.38471"
  },
  {
    "country": "AT",
    "name": "Reichenfels",
    "lat": "47.00718",
    "lng": "14.74425"
  },
  {
    "country": "AT",
    "name": "Reichendorf",
    "lat": "47.18922",
    "lng": "15.7616"
  },
  {
    "country": "AT",
    "name": "Reichenau im Mühlkreis",
    "lat": "48.45704",
    "lng": "14.34875"
  },
  {
    "country": "AT",
    "name": "Reichenau an der Rax",
    "lat": "47.69509",
    "lng": "15.84572"
  },
  {
    "country": "AT",
    "name": "Redlham",
    "lat": "48.01667",
    "lng": "13.73333"
  },
  {
    "country": "AT",
    "name": "Redleiten",
    "lat": "48.08138",
    "lng": "13.46894"
  },
  {
    "country": "AT",
    "name": "Rechnitz",
    "lat": "47.30467",
    "lng": "16.44095"
  },
  {
    "country": "AT",
    "name": "Raxendorf",
    "lat": "48.34108",
    "lng": "15.27666"
  },
  {
    "country": "AT",
    "name": "Ravelsbach",
    "lat": "48.55",
    "lng": "15.85"
  },
  {
    "country": "AT",
    "name": "Rauris",
    "lat": "47.22656",
    "lng": "12.99459"
  },
  {
    "country": "AT",
    "name": "Rauchenwarth",
    "lat": "48.0833",
    "lng": "16.52794"
  },
  {
    "country": "AT",
    "name": "Rattenberg",
    "lat": "47.43941",
    "lng": "11.89407"
  },
  {
    "country": "AT",
    "name": "Ratten",
    "lat": "47.48333",
    "lng": "15.71667"
  },
  {
    "country": "AT",
    "name": "Ratschendorf",
    "lat": "46.74222",
    "lng": "15.81583"
  },
  {
    "country": "AT",
    "name": "Ratsch an der Weinstraße",
    "lat": "46.68944",
    "lng": "15.57111"
  },
  {
    "country": "AT",
    "name": "Rastenfeld",
    "lat": "48.57348",
    "lng": "15.33176"
  },
  {
    "country": "AT",
    "name": "Rassach",
    "lat": "46.86028",
    "lng": "15.27"
  },
  {
    "country": "AT",
    "name": "Rappottenstein",
    "lat": "48.52161",
    "lng": "15.07925"
  },
  {
    "country": "AT",
    "name": "Ranten",
    "lat": "47.15949",
    "lng": "14.08349"
  },
  {
    "country": "AT",
    "name": "Rankweil",
    "lat": "47.27108",
    "lng": "9.64308"
  },
  {
    "country": "AT",
    "name": "Raning",
    "lat": "46.85",
    "lng": "15.81667"
  },
  {
    "country": "AT",
    "name": "Ranggen",
    "lat": "47.25727",
    "lng": "11.2112"
  },
  {
    "country": "AT",
    "name": "Rangersdorf",
    "lat": "46.86001",
    "lng": "12.94923"
  },
  {
    "country": "AT",
    "name": "Randegg",
    "lat": "48.01198",
    "lng": "14.97334"
  },
  {
    "country": "AT",
    "name": "Ramsau",
    "lat": "48.00313",
    "lng": "15.80332"
  },
  {
    "country": "AT",
    "name": "Ramsau im Zillertal",
    "lat": "47.20383",
    "lng": "11.87545"
  },
  {
    "country": "AT",
    "name": "Ramingstein",
    "lat": "47.07462",
    "lng": "13.83642"
  },
  {
    "country": "AT",
    "name": "Raiding",
    "lat": "47.56581",
    "lng": "16.53056"
  },
  {
    "country": "AT",
    "name": "Ragnitz",
    "lat": "46.83667",
    "lng": "15.59278"
  },
  {
    "country": "AT",
    "name": "Raggal",
    "lat": "47.21082",
    "lng": "9.83688"
  },
  {
    "country": "AT",
    "name": "Radstadt",
    "lat": "47.38333",
    "lng": "13.45"
  },
  {
    "country": "AT",
    "name": "Bad Radkersburg",
    "lat": "46.68806",
    "lng": "15.98806"
  },
  {
    "country": "AT",
    "name": "Radfeld",
    "lat": "47.44806",
    "lng": "11.91424"
  },
  {
    "country": "AT",
    "name": "Radenthein",
    "lat": "46.80056",
    "lng": "13.71167"
  },
  {
    "country": "AT",
    "name": "Rachau",
    "lat": "47.21667",
    "lng": "14.9"
  },
  {
    "country": "AT",
    "name": "Rabenwald",
    "lat": "47.4",
    "lng": "15.9"
  },
  {
    "country": "AT",
    "name": "Rabenstein an der Pielach",
    "lat": "48.06535",
    "lng": "15.46772"
  },
  {
    "country": "AT",
    "name": "Rabensburg",
    "lat": "48.65",
    "lng": "16.9"
  },
  {
    "country": "AT",
    "name": "Raasdorf",
    "lat": "48.24657",
    "lng": "16.56532"
  },
  {
    "country": "AT",
    "name": "Raach am Hochgebirge",
    "lat": "47.63333",
    "lng": "15.93333"
  },
  {
    "country": "AT",
    "name": "Raabs an der Thaya",
    "lat": "48.85",
    "lng": "15.5"
  },
  {
    "country": "AT",
    "name": "Raabau",
    "lat": "46.96278",
    "lng": "15.91167"
  },
  {
    "country": "AT",
    "name": "Raaba",
    "lat": "47.03333",
    "lng": "15.5"
  },
  {
    "country": "AT",
    "name": "Pyhra",
    "lat": "48.1591",
    "lng": "15.68624"
  },
  {
    "country": "AT",
    "name": "Pusterwald",
    "lat": "47.30611",
    "lng": "14.37556"
  },
  {
    "country": "AT",
    "name": "Purkersdorf",
    "lat": "48.20769",
    "lng": "16.17539"
  },
  {
    "country": "AT",
    "name": "Purgstall",
    "lat": "48.05841",
    "lng": "15.13478"
  },
  {
    "country": "AT",
    "name": "Pulkau",
    "lat": "48.70484",
    "lng": "15.86031"
  },
  {
    "country": "AT",
    "name": "Pühret",
    "lat": "48.03488",
    "lng": "13.72252"
  },
  {
    "country": "AT",
    "name": "Puchenstuben",
    "lat": "47.92819",
    "lng": "15.28748"
  },
  {
    "country": "AT",
    "name": "Puchberg am Schneeberg",
    "lat": "47.78709",
    "lng": "15.91352"
  },
  {
    "country": "AT",
    "name": "Puch bei Weiz",
    "lat": "47.21667",
    "lng": "15.71667"
  },
  {
    "country": "AT",
    "name": "Puch bei Hallein",
    "lat": "47.71536",
    "lng": "13.09296"
  },
  {
    "country": "AT",
    "name": "Prutz",
    "lat": "47.08333",
    "lng": "10.66667"
  },
  {
    "country": "AT",
    "name": "Pruggern",
    "lat": "47.4237",
    "lng": "13.87625"
  },
  {
    "country": "AT",
    "name": "Proleb",
    "lat": "47.4",
    "lng": "15.13333"
  },
  {
    "country": "AT",
    "name": "Prinzersdorf",
    "lat": "48.2",
    "lng": "15.51667"
  },
  {
    "country": "AT",
    "name": "Prigglitz",
    "lat": "47.70318",
    "lng": "15.92794"
  },
  {
    "country": "AT",
    "name": "Pressbaum",
    "lat": "48.18333",
    "lng": "16.08333"
  },
  {
    "country": "AT",
    "name": "Prellenkirchen",
    "lat": "48.07401",
    "lng": "16.95233"
  },
  {
    "country": "AT",
    "name": "Preitenegg",
    "lat": "46.94",
    "lng": "14.92583"
  },
  {
    "country": "AT",
    "name": "Preding",
    "lat": "46.85861",
    "lng": "15.40972"
  },
  {
    "country": "AT",
    "name": "Pram",
    "lat": "48.23536",
    "lng": "13.60579"
  },
  {
    "country": "AT",
    "name": "Prägraten",
    "lat": "47.01667",
    "lng": "12.38333"
  },
  {
    "country": "AT",
    "name": "Poysdorf",
    "lat": "48.66667",
    "lng": "16.63333"
  },
  {
    "country": "AT",
    "name": "Potzneusiedl",
    "lat": "48.04504",
    "lng": "16.9477"
  },
  {
    "country": "AT",
    "name": "Pöttsching",
    "lat": "47.80445",
    "lng": "16.37109"
  },
  {
    "country": "AT",
    "name": "Pottenstein",
    "lat": "47.9582",
    "lng": "16.0948"
  },
  {
    "country": "AT",
    "name": "Pottendorf",
    "lat": "47.9",
    "lng": "16.38333"
  },
  {
    "country": "AT",
    "name": "Pöttelsdorf",
    "lat": "47.75369",
    "lng": "16.43864"
  },
  {
    "country": "AT",
    "name": "Poppendorf",
    "lat": "46.85611",
    "lng": "15.85639"
  },
  {
    "country": "AT",
    "name": "Pöls",
    "lat": "47.21667",
    "lng": "14.58333"
  },
  {
    "country": "AT",
    "name": "Polling in Tirol",
    "lat": "47.28333",
    "lng": "11.15"
  },
  {
    "country": "AT",
    "name": "Pöllauberg",
    "lat": "47.31667",
    "lng": "15.85"
  },
  {
    "country": "AT",
    "name": "Pöllau",
    "lat": "47.3",
    "lng": "15.83333"
  },
  {
    "country": "AT",
    "name": "Pöggstall",
    "lat": "48.31734",
    "lng": "15.20405"
  },
  {
    "country": "AT",
    "name": "Poggersdorf",
    "lat": "46.65",
    "lng": "14.45"
  },
  {
    "country": "AT",
    "name": "Podersdorf am See",
    "lat": "47.85412",
    "lng": "16.83706"
  },
  {
    "country": "AT",
    "name": "Pöchlarn",
    "lat": "48.2",
    "lng": "15.2"
  },
  {
    "country": "AT",
    "name": "Plainfeld",
    "lat": "47.83333",
    "lng": "13.18333"
  },
  {
    "country": "AT",
    "name": "Pitzenberg",
    "lat": "48.07361",
    "lng": "13.72484"
  },
  {
    "country": "AT",
    "name": "Pitten",
    "lat": "47.71667",
    "lng": "16.18333"
  },
  {
    "country": "AT",
    "name": "Pitschgau",
    "lat": "46.7",
    "lng": "15.26667"
  },
  {
    "country": "AT",
    "name": "Pistorf",
    "lat": "46.76667",
    "lng": "15.36667"
  },
  {
    "country": "AT",
    "name": "Pirka",
    "lat": "47",
    "lng": "15.38333"
  },
  {
    "country": "AT",
    "name": "Piringsdorf",
    "lat": "47.44826",
    "lng": "16.41516"
  },
  {
    "country": "AT",
    "name": "Pirching am Traubenberg",
    "lat": "46.95",
    "lng": "15.6"
  },
  {
    "country": "AT",
    "name": "Pinkafeld",
    "lat": "47.36667",
    "lng": "16.11667"
  },
  {
    "country": "AT",
    "name": "Pinggau",
    "lat": "47.43333",
    "lng": "16.06667"
  },
  {
    "country": "AT",
    "name": "Pillichsdorf",
    "lat": "48.35",
    "lng": "16.53333"
  },
  {
    "country": "AT",
    "name": "Pill",
    "lat": "47.32352",
    "lng": "11.68018"
  },
  {
    "country": "AT",
    "name": "Pilgersdorf",
    "lat": "47.44106",
    "lng": "16.3492"
  },
  {
    "country": "AT",
    "name": "Piesendorf",
    "lat": "47.29077",
    "lng": "12.71839"
  },
  {
    "country": "AT",
    "name": "Piberegg",
    "lat": "47.08333",
    "lng": "15.08333"
  },
  {
    "country": "AT",
    "name": "Pians",
    "lat": "47.13486",
    "lng": "10.51237"
  },
  {
    "country": "AT",
    "name": "Pfunds",
    "lat": "46.96667",
    "lng": "10.55"
  },
  {
    "country": "AT",
    "name": "Pfons",
    "lat": "47.14201",
    "lng": "11.46071"
  },
  {
    "country": "AT",
    "name": "Pflach",
    "lat": "47.51667",
    "lng": "10.71667"
  },
  {
    "country": "AT",
    "name": "Pfarrkirchen im Mühlkreis",
    "lat": "48.50375",
    "lng": "13.82638"
  },
  {
    "country": "AT",
    "name": "Pfarrkirchen bei Bad Hall",
    "lat": "48.03046",
    "lng": "14.19914"
  },
  {
    "country": "AT",
    "name": "Pfaffstätten",
    "lat": "48.01737",
    "lng": "16.26354"
  },
  {
    "country": "AT",
    "name": "Pfaffing",
    "lat": "48.018",
    "lng": "13.47507"
  },
  {
    "country": "AT",
    "name": "Pfaffenhofen",
    "lat": "47.3",
    "lng": "11.08333"
  },
  {
    "country": "AT",
    "name": "Peuerbach",
    "lat": "48.3453",
    "lng": "13.77205"
  },
  {
    "country": "AT",
    "name": "Petzenkirchen",
    "lat": "48.13333",
    "lng": "15.15"
  },
  {
    "country": "AT",
    "name": "Petronell-Carnuntum",
    "lat": "48.11296",
    "lng": "16.86582"
  },
  {
    "country": "AT",
    "name": "Pertlstein",
    "lat": "46.94056",
    "lng": "15.96167"
  },
  {
    "country": "AT",
    "name": "Pernitz",
    "lat": "47.89759",
    "lng": "15.96022"
  },
  {
    "country": "AT",
    "name": "Pernersdorf",
    "lat": "48.7",
    "lng": "16.01667"
  },
  {
    "country": "AT",
    "name": "Pernegg an der Mur",
    "lat": "47.35979",
    "lng": "15.34236"
  },
  {
    "country": "AT",
    "name": "Pernegg",
    "lat": "48.73333",
    "lng": "15.61667"
  },
  {
    "country": "AT",
    "name": "Perlsdorf",
    "lat": "46.91361",
    "lng": "15.81417"
  },
  {
    "country": "AT",
    "name": "Perg",
    "lat": "48.25",
    "lng": "14.63333"
  },
  {
    "country": "AT",
    "name": "Perchtoldsdorf",
    "lat": "48.11935",
    "lng": "16.26607"
  },
  {
    "country": "AT",
    "name": "Perchau am Sattel",
    "lat": "47.1",
    "lng": "14.45"
  },
  {
    "country": "AT",
    "name": "Pennewang",
    "lat": "48.13333",
    "lng": "13.85"
  },
  {
    "country": "AT",
    "name": "Peggau",
    "lat": "47.2",
    "lng": "15.35"
  },
  {
    "country": "AT",
    "name": "Payerbach",
    "lat": "47.69209",
    "lng": "15.8634"
  },
  {
    "country": "AT",
    "name": "Paudorf",
    "lat": "48.35",
    "lng": "15.61667"
  },
  {
    "country": "AT",
    "name": "Patsch",
    "lat": "47.20527",
    "lng": "11.4151"
  },
  {
    "country": "AT",
    "name": "Paternion",
    "lat": "46.71417",
    "lng": "13.63611"
  },
  {
    "country": "AT",
    "name": "Passail",
    "lat": "47.28333",
    "lng": "15.51667"
  },
  {
    "country": "AT",
    "name": "Pasching",
    "lat": "48.25931",
    "lng": "14.20369"
  },
  {
    "country": "AT",
    "name": "Parschlug",
    "lat": "47.4809",
    "lng": "15.28645"
  },
  {
    "country": "AT",
    "name": "Parndorf",
    "lat": "47.99963",
    "lng": "16.86049"
  },
  {
    "country": "AT",
    "name": "Parbasdorf",
    "lat": "48.28333",
    "lng": "16.6"
  },
  {
    "country": "AT",
    "name": "Pamhagen",
    "lat": "47.70092",
    "lng": "16.90779"
  },
  {
    "country": "AT",
    "name": "Pama",
    "lat": "48.05",
    "lng": "17.03333"
  },
  {
    "country": "AT",
    "name": "Palfau",
    "lat": "47.7",
    "lng": "14.8"
  },
  {
    "country": "AT",
    "name": "Paldau",
    "lat": "46.94222",
    "lng": "15.79583"
  },
  {
    "country": "AT",
    "name": "Pack",
    "lat": "46.97917",
    "lng": "14.98417"
  },
  {
    "country": "AT",
    "name": "Oetz",
    "lat": "47.2",
    "lng": "10.9"
  },
  {
    "country": "AT",
    "name": "Otterthal",
    "lat": "47.61667",
    "lng": "15.93333"
  },
  {
    "country": "AT",
    "name": "Ottenthal",
    "lat": "48.761",
    "lng": "16.57914"
  },
  {
    "country": "AT",
    "name": "Ottensheim",
    "lat": "48.33246",
    "lng": "14.17425"
  },
  {
    "country": "AT",
    "name": "Ottenschlag im Mühlkreis",
    "lat": "48.46632",
    "lng": "14.38471"
  },
  {
    "country": "AT",
    "name": "Ottenschlag",
    "lat": "48.42393",
    "lng": "15.21924"
  },
  {
    "country": "AT",
    "name": "Osterwitz",
    "lat": "46.85943",
    "lng": "15.08998"
  },
  {
    "country": "AT",
    "name": "Ossiach",
    "lat": "46.67435",
    "lng": "13.98358"
  },
  {
    "country": "AT",
    "name": "Oslip",
    "lat": "47.82906",
    "lng": "16.61957"
  },
  {
    "country": "AT",
    "name": "Orth an der Donau",
    "lat": "48.14524",
    "lng": "16.70089"
  },
  {
    "country": "AT",
    "name": "Opponitz",
    "lat": "47.87776",
    "lng": "14.82283"
  },
  {
    "country": "AT",
    "name": "Oppenberg",
    "lat": "47.48333",
    "lng": "14.26667"
  },
  {
    "country": "AT",
    "name": "Ollersdorf im Burgenland",
    "lat": "47.18333",
    "lng": "16.16667"
  },
  {
    "country": "AT",
    "name": "Olbendorf",
    "lat": "47.18333",
    "lng": "16.2"
  },
  {
    "country": "AT",
    "name": "Offenhausen",
    "lat": "48.15",
    "lng": "13.83333"
  },
  {
    "country": "AT",
    "name": "Öblarn",
    "lat": "47.45938",
    "lng": "13.99023"
  },
  {
    "country": "AT",
    "name": "Oberzeiring",
    "lat": "47.25",
    "lng": "14.48333"
  },
  {
    "country": "AT",
    "name": "Oberwölz Stadt",
    "lat": "47.20117",
    "lng": "14.28321"
  },
  {
    "country": "AT",
    "name": "Oberweg",
    "lat": "47.15",
    "lng": "14.63333"
  },
  {
    "country": "AT",
    "name": "Oberwart",
    "lat": "47.28971",
    "lng": "16.20595"
  },
  {
    "country": "AT",
    "name": "Oberwang",
    "lat": "47.86667",
    "lng": "13.43333"
  },
  {
    "country": "AT",
    "name": "Oberwaltersdorf",
    "lat": "47.97567",
    "lng": "16.32191"
  },
  {
    "country": "AT",
    "name": "Obervogau",
    "lat": "46.745",
    "lng": "15.58472"
  },
  {
    "country": "AT",
    "name": "Obervellach",
    "lat": "46.93667",
    "lng": "13.20417"
  },
  {
    "country": "AT",
    "name": "Obertrum am See",
    "lat": "47.93722",
    "lng": "13.07722"
  },
  {
    "country": "AT",
    "name": "Obertilliach",
    "lat": "46.71056",
    "lng": "12.61444"
  },
  {
    "country": "AT",
    "name": "Oberstorcha",
    "lat": "46.96667",
    "lng": "15.8"
  },
  {
    "country": "AT",
    "name": "Obersiebenbrunn",
    "lat": "48.26537",
    "lng": "16.71076"
  },
  {
    "country": "AT",
    "name": "Oberschützen",
    "lat": "47.35138",
    "lng": "16.20732"
  },
  {
    "country": "AT",
    "name": "Oberrettenbach",
    "lat": "47.15",
    "lng": "15.8"
  },
  {
    "country": "AT",
    "name": "Oberpullendorf",
    "lat": "47.50352",
    "lng": "16.50447"
  },
  {
    "country": "AT",
    "name": "Pettnau",
    "lat": "47.29204",
    "lng": "11.15962"
  },
  {
    "country": "AT",
    "name": "Oberneukirchen",
    "lat": "48.46404",
    "lng": "14.22275"
  },
  {
    "country": "AT",
    "name": "Oberndorf in Tirol",
    "lat": "47.5",
    "lng": "12.38333"
  },
  {
    "country": "AT",
    "name": "Oberndorf bei Schwanenstadt",
    "lat": "48.05559",
    "lng": "13.75677"
  },
  {
    "country": "AT",
    "name": "Oberndorf bei Salzburg",
    "lat": "47.95",
    "lng": "12.93333"
  },
  {
    "country": "AT",
    "name": "Oberndorf an der Melk",
    "lat": "48.06386",
    "lng": "15.2243"
  },
  {
    "country": "AT",
    "name": "Oberloisdorf",
    "lat": "47.44736",
    "lng": "16.50764"
  },
  {
    "country": "AT",
    "name": "Oberlienz",
    "lat": "46.84722",
    "lng": "12.73139"
  },
  {
    "country": "AT",
    "name": "Oberkurzheim",
    "lat": "47.23333",
    "lng": "14.58333"
  },
  {
    "country": "AT",
    "name": "Oberhofen im Inntal",
    "lat": "47.3",
    "lng": "11.08333"
  },
  {
    "country": "AT",
    "name": "Oberhofen am Irrsee",
    "lat": "47.95",
    "lng": "13.3"
  },
  {
    "country": "AT",
    "name": "Oberhaag",
    "lat": "46.6869",
    "lng": "15.33202"
  },
  {
    "country": "AT",
    "name": "Ober-Grafendorf",
    "lat": "48.1504",
    "lng": "15.54531"
  },
  {
    "country": "AT",
    "name": "Oberdrauburg",
    "lat": "46.74306",
    "lng": "12.97028"
  },
  {
    "country": "AT",
    "name": "Oberdorf im Burgenland",
    "lat": "47.21667",
    "lng": "16.21667"
  },
  {
    "country": "AT",
    "name": "Oberdorf am Hochegg",
    "lat": "46.97861",
    "lng": "15.72167"
  },
  {
    "country": "AT",
    "name": "Oberalm",
    "lat": "47.7",
    "lng": "13.1"
  },
  {
    "country": "AT",
    "name": "Oberaich",
    "lat": "47.4",
    "lng": "15.21667"
  },
  {
    "country": "AT",
    "name": "Obdach",
    "lat": "47.06667",
    "lng": "14.68333"
  },
  {
    "country": "AT",
    "name": "Nüziders",
    "lat": "47.16667",
    "lng": "9.8"
  },
  {
    "country": "AT",
    "name": "Nußdorf am Haunsberg",
    "lat": "47.95944",
    "lng": "13.00917"
  },
  {
    "country": "AT",
    "name": "Nofels",
    "lat": "47.25483",
    "lng": "9.57802"
  },
  {
    "country": "AT",
    "name": "Nöchling",
    "lat": "48.22433",
    "lng": "14.98123"
  },
  {
    "country": "AT",
    "name": "Nitscha",
    "lat": "47.11667",
    "lng": "15.75"
  },
  {
    "country": "AT",
    "name": "Nikolsdorf",
    "lat": "46.78583",
    "lng": "12.91333"
  },
  {
    "country": "AT",
    "name": "Niklasdorf",
    "lat": "47.38333",
    "lng": "15.15"
  },
  {
    "country": "AT",
    "name": "Nikitsch",
    "lat": "47.53615",
    "lng": "16.66017"
  },
  {
    "country": "AT",
    "name": "Niederwölz",
    "lat": "47.15126",
    "lng": "14.37479"
  },
  {
    "country": "AT",
    "name": "Niederthalheim",
    "lat": "48.09901",
    "lng": "13.7687"
  },
  {
    "country": "AT",
    "name": "Niederöblarn",
    "lat": "47.47667",
    "lng": "14.01937"
  },
  {
    "country": "AT",
    "name": "Niedernsill",
    "lat": "47.28333",
    "lng": "12.65"
  },
  {
    "country": "AT",
    "name": "Niederndorf",
    "lat": "47.65",
    "lng": "12.21667"
  },
  {
    "country": "AT",
    "name": "Niederleis",
    "lat": "48.55",
    "lng": "16.4"
  },
  {
    "country": "AT",
    "name": "Niederhollabrunn",
    "lat": "48.43333",
    "lng": "16.3"
  },
  {
    "country": "AT",
    "name": "Nickelsdorf",
    "lat": "47.94056",
    "lng": "17.06944"
  },
  {
    "country": "AT",
    "name": "Neutal",
    "lat": "47.54548",
    "lng": "16.44619"
  },
  {
    "country": "AT",
    "name": "Neustift im Stubaital",
    "lat": "47.11667",
    "lng": "11.31667"
  },
  {
    "country": "AT",
    "name": "Neustift bei Güssing",
    "lat": "47.02474",
    "lng": "16.26041"
  },
  {
    "country": "AT",
    "name": "Neustift an der Lafnitz",
    "lat": "47.36667",
    "lng": "16.03333"
  },
  {
    "country": "AT",
    "name": "Neusiedl an der Zaya",
    "lat": "48.5992",
    "lng": "16.7799"
  },
  {
    "country": "AT",
    "name": "Neusiedl am See",
    "lat": "47.94901",
    "lng": "16.8417"
  },
  {
    "country": "AT",
    "name": "Neunkirchen",
    "lat": "47.72096",
    "lng": "16.08107"
  },
  {
    "country": "AT",
    "name": "Neumarkt in Steiermark",
    "lat": "47.07398",
    "lng": "14.42728"
  },
  {
    "country": "AT",
    "name": "Neumarkt an der Ybbs",
    "lat": "48.14103",
    "lng": "15.05758"
  },
  {
    "country": "AT",
    "name": "Neumarkt am Wallersee",
    "lat": "47.95",
    "lng": "13.23333"
  },
  {
    "country": "AT",
    "name": "Neulengbach",
    "lat": "48.19745",
    "lng": "15.90219"
  },
  {
    "country": "AT",
    "name": "Neukirchen bei Lambach",
    "lat": "48.1",
    "lng": "13.81667"
  },
  {
    "country": "AT",
    "name": "Neukirchen an der Vöckla",
    "lat": "48.03333",
    "lng": "13.53333"
  },
  {
    "country": "AT",
    "name": "Neukirchen am Großvenediger",
    "lat": "47.25046",
    "lng": "12.27585"
  },
  {
    "country": "AT",
    "name": "Neuhofen an der Ybbs",
    "lat": "48.05795",
    "lng": "14.85489"
  },
  {
    "country": "AT",
    "name": "Neuhaus",
    "lat": "46.63333",
    "lng": "14.88333"
  },
  {
    "country": "AT",
    "name": "Neufeld an der Leitha",
    "lat": "47.86558",
    "lng": "16.37856"
  },
  {
    "country": "AT",
    "name": "Neudörfl",
    "lat": "47.79655",
    "lng": "16.2977"
  },
  {
    "country": "AT",
    "name": "Neudorf bei Staatz",
    "lat": "48.72083",
    "lng": "16.49139"
  },
  {
    "country": "AT",
    "name": "Neudau",
    "lat": "47.17554",
    "lng": "16.10184"
  },
  {
    "country": "AT",
    "name": "Neuberg an der Mürz",
    "lat": "47.66423",
    "lng": "15.57226"
  },
  {
    "country": "AT",
    "name": "Nestelbach im Ilztal",
    "lat": "47.08333",
    "lng": "15.86667"
  },
  {
    "country": "AT",
    "name": "Nestelbach bei Graz",
    "lat": "47.06053",
    "lng": "15.6114"
  },
  {
    "country": "AT",
    "name": "Nesselwängle",
    "lat": "47.48333",
    "lng": "10.61667"
  },
  {
    "country": "AT",
    "name": "Nenzing",
    "lat": "47.18436",
    "lng": "9.70539"
  },
  {
    "country": "AT",
    "name": "Neidling",
    "lat": "48.24005",
    "lng": "15.55591"
  },
  {
    "country": "AT",
    "name": "Neckenmarkt",
    "lat": "47.59964",
    "lng": "16.5467"
  },
  {
    "country": "AT",
    "name": "Nauders",
    "lat": "46.88859",
    "lng": "10.50126"
  },
  {
    "country": "AT",
    "name": "Natters",
    "lat": "47.23414",
    "lng": "11.37342"
  },
  {
    "country": "AT",
    "name": "Nassereith",
    "lat": "47.31667",
    "lng": "10.83333"
  },
  {
    "country": "AT",
    "name": "Namlos",
    "lat": "47.35",
    "lng": "10.66667"
  },
  {
    "country": "AT",
    "name": "Naas",
    "lat": "47.25086",
    "lng": "15.59449"
  },
  {
    "country": "AT",
    "name": "Mutters",
    "lat": "47.23333",
    "lng": "11.38333"
  },
  {
    "country": "AT",
    "name": "Musau",
    "lat": "47.53195",
    "lng": "10.67339"
  },
  {
    "country": "AT",
    "name": "Mürzzuschlag",
    "lat": "47.6",
    "lng": "15.68333"
  },
  {
    "country": "AT",
    "name": "Mürzsteg",
    "lat": "47.67556",
    "lng": "15.49145"
  },
  {
    "country": "AT",
    "name": "Mürzhofen",
    "lat": "47.48333",
    "lng": "15.38333"
  },
  {
    "country": "AT",
    "name": "Mureck",
    "lat": "46.70806",
    "lng": "15.77472"
  },
  {
    "country": "AT",
    "name": "Münster",
    "lat": "47.42164",
    "lng": "11.83356"
  },
  {
    "country": "AT",
    "name": "Münchendorf",
    "lat": "48.03333",
    "lng": "16.38333"
  },
  {
    "country": "AT",
    "name": "Müllendorf",
    "lat": "47.83943",
    "lng": "16.46258"
  },
  {
    "country": "AT",
    "name": "Muhr",
    "lat": "47.09893",
    "lng": "13.49756"
  },
  {
    "country": "AT",
    "name": "Mühlgraben",
    "lat": "46.88972",
    "lng": "16.04083"
  },
  {
    "country": "AT",
    "name": "Mühlen",
    "lat": "47.03071",
    "lng": "14.50848"
  },
  {
    "country": "AT",
    "name": "Mühldorf bei Feldbach",
    "lat": "46.93861",
    "lng": "15.9075"
  },
  {
    "country": "AT",
    "name": "Mühldorf",
    "lat": "48.36667",
    "lng": "15.35"
  },
  {
    "country": "AT",
    "name": "Mühldorf",
    "lat": "46.86028",
    "lng": "13.35361"
  },
  {
    "country": "AT",
    "name": "Mühlbach am Hochkönig",
    "lat": "47.37746",
    "lng": "13.12926"
  },
  {
    "country": "AT",
    "name": "Muggendorf",
    "lat": "47.91059",
    "lng": "15.93533"
  },
  {
    "country": "AT",
    "name": "Mötz",
    "lat": "47.28333",
    "lng": "10.95"
  },
  {
    "country": "AT",
    "name": "Moschendorf",
    "lat": "47.05843",
    "lng": "16.47728"
  },
  {
    "country": "AT",
    "name": "Mörtschach",
    "lat": "46.92389",
    "lng": "12.91778"
  },
  {
    "country": "AT",
    "name": "Mortantsch",
    "lat": "47.2",
    "lng": "15.56667"
  },
  {
    "country": "AT",
    "name": "Mörbisch am See",
    "lat": "47.75",
    "lng": "16.66667"
  },
  {
    "country": "AT",
    "name": "Mooskirchen",
    "lat": "46.98167",
    "lng": "15.27889"
  },
  {
    "country": "AT",
    "name": "Moosburg",
    "lat": "46.6575",
    "lng": "14.17472"
  },
  {
    "country": "AT",
    "name": "Moosbrunn",
    "lat": "48.01667",
    "lng": "16.45"
  },
  {
    "country": "AT",
    "name": "Mönichwald",
    "lat": "47.44655",
    "lng": "15.88275"
  },
  {
    "country": "AT",
    "name": "Mönichkirchen",
    "lat": "47.51062",
    "lng": "16.03425"
  },
  {
    "country": "AT",
    "name": "Mondsee",
    "lat": "47.85648",
    "lng": "13.34908"
  },
  {
    "country": "AT",
    "name": "Mönchhof",
    "lat": "47.8802",
    "lng": "16.94126"
  },
  {
    "country": "AT",
    "name": "Mölbling",
    "lat": "46.85",
    "lng": "14.43333"
  },
  {
    "country": "AT",
    "name": "Möggers",
    "lat": "47.56667",
    "lng": "9.81667"
  },
  {
    "country": "AT",
    "name": "Mogersdorf",
    "lat": "46.94917",
    "lng": "16.23222"
  },
  {
    "country": "AT",
    "name": "Modriach",
    "lat": "46.95",
    "lng": "15.05"
  },
  {
    "country": "AT",
    "name": "Mödling",
    "lat": "48.08605",
    "lng": "16.28921"
  },
  {
    "country": "AT",
    "name": "Mittersill",
    "lat": "47.28333",
    "lng": "12.48333"
  },
  {
    "country": "AT",
    "name": "Mitterndorf an der Fischa",
    "lat": "47.99739",
    "lng": "16.47357"
  },
  {
    "country": "AT",
    "name": "Mitterlabill",
    "lat": "46.88917",
    "lng": "15.63556"
  },
  {
    "country": "AT",
    "name": "Mitterdorf im Mürztal",
    "lat": "47.53333",
    "lng": "15.51667"
  },
  {
    "country": "AT",
    "name": "Mitterdorf an der Raab",
    "lat": "47.16667",
    "lng": "15.6"
  },
  {
    "country": "AT",
    "name": "Mitterbach am Erlaufsee",
    "lat": "47.81396",
    "lng": "15.29537"
  },
  {
    "country": "AT",
    "name": "Mittelberg",
    "lat": "47.35127",
    "lng": "10.17197"
  },
  {
    "country": "AT",
    "name": "Mistelbach",
    "lat": "48.57",
    "lng": "16.57667"
  },
  {
    "country": "AT",
    "name": "Mischendorf",
    "lat": "47.19277",
    "lng": "16.31444"
  },
  {
    "country": "AT",
    "name": "Mils bei Imst",
    "lat": "47.20616",
    "lng": "10.67485"
  },
  {
    "country": "AT",
    "name": "Miesenbach",
    "lat": "47.84035",
    "lng": "15.98236"
  },
  {
    "country": "AT",
    "name": "Miesenbach bei Birkfeld",
    "lat": "47.36667",
    "lng": "15.76667"
  },
  {
    "country": "AT",
    "name": "Mieming",
    "lat": "47.3",
    "lng": "10.98333"
  },
  {
    "country": "AT",
    "name": "Mieders",
    "lat": "47.16667",
    "lng": "11.38333"
  },
  {
    "country": "AT",
    "name": "Michelhausen",
    "lat": "48.29085",
    "lng": "15.93893"
  },
  {
    "country": "AT",
    "name": "Micheldorf in Oberösterreich",
    "lat": "47.87764",
    "lng": "14.13357"
  },
  {
    "country": "AT",
    "name": "Micheldorf",
    "lat": "46.91667",
    "lng": "14.41667"
  },
  {
    "country": "AT",
    "name": "Michaelerberg",
    "lat": "47.41083",
    "lng": "13.89333"
  },
  {
    "country": "AT",
    "name": "Mettersdorf am Saßbach",
    "lat": "46.80583",
    "lng": "15.71111"
  },
  {
    "country": "AT",
    "name": "Metnitz",
    "lat": "46.98056",
    "lng": "14.21667"
  },
  {
    "country": "AT",
    "name": "Merkendorf",
    "lat": "46.85722",
    "lng": "15.90389"
  },
  {
    "country": "AT",
    "name": "Mellach",
    "lat": "46.93333",
    "lng": "15.51667"
  },
  {
    "country": "AT",
    "name": "Melk",
    "lat": "48.22737",
    "lng": "15.33186"
  },
  {
    "country": "AT",
    "name": "Meiningen",
    "lat": "47.29891",
    "lng": "9.57862"
  },
  {
    "country": "AT",
    "name": "Mayrhofen",
    "lat": "47.16667",
    "lng": "11.86667"
  },
  {
    "country": "AT",
    "name": "Mautern in Steiermark",
    "lat": "47.4",
    "lng": "14.83333"
  },
  {
    "country": "AT",
    "name": "Mauterndorf",
    "lat": "47.13451",
    "lng": "13.67884"
  },
  {
    "country": "AT",
    "name": "Mauerbach",
    "lat": "48.24514",
    "lng": "16.16793"
  },
  {
    "country": "AT",
    "name": "Mattsee",
    "lat": "47.96667",
    "lng": "13.1"
  },
  {
    "country": "AT",
    "name": "Mattersburg",
    "lat": "47.73333",
    "lng": "16.4"
  },
  {
    "country": "AT",
    "name": "Matrei in Osttirol",
    "lat": "47",
    "lng": "12.53333"
  },
  {
    "country": "AT",
    "name": "Matrei am Brenner",
    "lat": "47.13333",
    "lng": "11.45"
  },
  {
    "country": "AT",
    "name": "Marz",
    "lat": "47.71667",
    "lng": "16.41667"
  },
  {
    "country": "AT",
    "name": "Martinsberg",
    "lat": "48.37549",
    "lng": "15.14997"
  },
  {
    "country": "AT",
    "name": "Markt Sankt Martin",
    "lat": "47.56205",
    "lng": "16.42508"
  },
  {
    "country": "AT",
    "name": "Sankt Florian",
    "lat": "48.20568",
    "lng": "14.37836"
  },
  {
    "country": "AT",
    "name": "Bad Pirawarth",
    "lat": "48.45194",
    "lng": "16.59833"
  },
  {
    "country": "AT",
    "name": "Markt Piesting",
    "lat": "47.87358",
    "lng": "16.1251"
  },
  {
    "country": "AT",
    "name": "Markt Neuhodis",
    "lat": "47.29565",
    "lng": "16.39564"
  },
  {
    "country": "AT",
    "name": "Markt Allhau",
    "lat": "47.28333",
    "lng": "16.08333"
  },
  {
    "country": "AT",
    "name": "Markgrafneusiedl",
    "lat": "48.26667",
    "lng": "16.63333"
  },
  {
    "country": "AT",
    "name": "Mariazell",
    "lat": "47.77306",
    "lng": "15.31639"
  },
  {
    "country": "AT",
    "name": "Maria Wörth",
    "lat": "46.61639",
    "lng": "14.16306"
  },
  {
    "country": "AT",
    "name": "Mariatrost",
    "lat": "47.1",
    "lng": "15.5"
  },
  {
    "country": "AT",
    "name": "Maria Taferl",
    "lat": "48.22702",
    "lng": "15.15954"
  },
  {
    "country": "AT",
    "name": "Mariastein",
    "lat": "47.52772",
    "lng": "12.05479"
  },
  {
    "country": "AT",
    "name": "Mariasdorf",
    "lat": "47.3658",
    "lng": "16.23136"
  },
  {
    "country": "AT",
    "name": "Maria Saal",
    "lat": "46.68083",
    "lng": "14.34861"
  },
  {
    "country": "AT",
    "name": "Maria Rain",
    "lat": "46.55389",
    "lng": "14.29556"
  },
  {
    "country": "AT",
    "name": "Mariapfarr",
    "lat": "47.15",
    "lng": "13.75"
  },
  {
    "country": "AT",
    "name": "Maria Neustift",
    "lat": "47.93333",
    "lng": "14.6"
  },
  {
    "country": "AT",
    "name": "Maria Lankowitz",
    "lat": "47.05",
    "lng": "15.06667"
  },
  {
    "country": "AT",
    "name": "Maria Laach am Jauerling",
    "lat": "48.30412",
    "lng": "15.34472"
  },
  {
    "country": "AT",
    "name": "Mariahof",
    "lat": "47.1",
    "lng": "14.4"
  },
  {
    "country": "AT",
    "name": "Maria Enzersdorf",
    "lat": "48.1",
    "lng": "16.28333"
  },
  {
    "country": "AT",
    "name": "Maria-Anzbach",
    "lat": "48.19012",
    "lng": "15.93155"
  },
  {
    "country": "AT",
    "name": "Maria Alm am Steinernen Meer",
    "lat": "47.40579",
    "lng": "12.90121"
  },
  {
    "country": "AT",
    "name": "Marchtrenk",
    "lat": "48.18333",
    "lng": "14.11667"
  },
  {
    "country": "AT",
    "name": "Marchegg",
    "lat": "48.26217",
    "lng": "16.91045"
  },
  {
    "country": "AT",
    "name": "Marbach an der Donau",
    "lat": "48.21667",
    "lng": "15.15"
  },
  {
    "country": "AT",
    "name": "Mannsdorf an der Donau",
    "lat": "48.152",
    "lng": "16.66506"
  },
  {
    "country": "AT",
    "name": "Manning",
    "lat": "48.08851",
    "lng": "13.66682"
  },
  {
    "country": "AT",
    "name": "Mannersdorf an der Rabnitz",
    "lat": "47.42815",
    "lng": "16.52678"
  },
  {
    "country": "AT",
    "name": "Mannersdorf am Leithagebirge",
    "lat": "47.96667",
    "lng": "16.6"
  },
  {
    "country": "AT",
    "name": "Mank",
    "lat": "48.11024",
    "lng": "15.33915"
  },
  {
    "country": "AT",
    "name": "Maissau",
    "lat": "48.573",
    "lng": "15.83005"
  },
  {
    "country": "AT",
    "name": "Maishofen",
    "lat": "47.36667",
    "lng": "12.8"
  },
  {
    "country": "AT",
    "name": "Mailberg",
    "lat": "48.67379",
    "lng": "16.18132"
  },
  {
    "country": "AT",
    "name": "Maierdorf",
    "lat": "46.8925",
    "lng": "15.84972"
  },
  {
    "country": "AT",
    "name": "Mäder",
    "lat": "47.35",
    "lng": "9.61667"
  },
  {
    "country": "AT",
    "name": "Lutzmannsburg",
    "lat": "47.46373",
    "lng": "16.63665"
  },
  {
    "country": "AT",
    "name": "Lustenau",
    "lat": "47.42642",
    "lng": "9.65851"
  },
  {
    "country": "AT",
    "name": "Lunz am See",
    "lat": "47.8612",
    "lng": "15.02998"
  },
  {
    "country": "AT",
    "name": "Ludmannsdorf",
    "lat": "46.54139",
    "lng": "14.13425"
  },
  {
    "country": "AT",
    "name": "Ludesch",
    "lat": "47.2",
    "lng": "9.78306"
  },
  {
    "country": "AT",
    "name": "Losenstein",
    "lat": "47.92428",
    "lng": "14.43672"
  },
  {
    "country": "AT",
    "name": "Lorüns",
    "lat": "47.13306",
    "lng": "9.85"
  },
  {
    "country": "AT",
    "name": "Loretto",
    "lat": "47.91559",
    "lng": "16.5179"
  },
  {
    "country": "AT",
    "name": "Loosdorf",
    "lat": "48.2",
    "lng": "15.4"
  },
  {
    "country": "AT",
    "name": "Loipersdorf bei Fürstenfeld",
    "lat": "47",
    "lng": "16.1"
  },
  {
    "country": "AT",
    "name": "Loipersbach im Burgenland",
    "lat": "47.69656",
    "lng": "16.47919"
  },
  {
    "country": "AT",
    "name": "Loich",
    "lat": "47.99578",
    "lng": "15.40163"
  },
  {
    "country": "AT",
    "name": "Lofer",
    "lat": "47.58475",
    "lng": "12.69333"
  },
  {
    "country": "AT",
    "name": "Lödersdorf",
    "lat": "46.95861",
    "lng": "15.94333"
  },
  {
    "country": "AT",
    "name": "Lochau",
    "lat": "47.53333",
    "lng": "9.75"
  },
  {
    "country": "AT",
    "name": "Litzelsdorf",
    "lat": "47.20826",
    "lng": "16.1717"
  },
  {
    "country": "AT",
    "name": "Litschau",
    "lat": "48.94409",
    "lng": "15.04483"
  },
  {
    "country": "AT",
    "name": "Linz",
    "lat": "48.30639",
    "lng": "14.28611"
  },
  {
    "country": "AT",
    "name": "Lilienfeld",
    "lat": "48.01312",
    "lng": "15.59664"
  },
  {
    "country": "AT",
    "name": "Ligist",
    "lat": "46.99389",
    "lng": "15.21083"
  },
  {
    "country": "AT",
    "name": "Liezen",
    "lat": "47.56667",
    "lng": "14.23333"
  },
  {
    "country": "AT",
    "name": "Lienz",
    "lat": "46.8289",
    "lng": "12.76903"
  },
  {
    "country": "AT",
    "name": "Lieboch",
    "lat": "46.97417",
    "lng": "15.3375"
  },
  {
    "country": "AT",
    "name": "Lichtenwörth",
    "lat": "47.82756",
    "lng": "16.29873"
  },
  {
    "country": "AT",
    "name": "Lichtenegg",
    "lat": "47.6",
    "lng": "16.2"
  },
  {
    "country": "AT",
    "name": "Leutschach",
    "lat": "46.66722",
    "lng": "15.46889"
  },
  {
    "country": "AT",
    "name": "Lermoos",
    "lat": "47.40358",
    "lng": "10.8807"
  },
  {
    "country": "AT",
    "name": "Leopoldsdorf im Marchfelde",
    "lat": "48.22261",
    "lng": "16.68858"
  },
  {
    "country": "AT",
    "name": "Leopoldsdorf",
    "lat": "48.11557",
    "lng": "16.39126"
  },
  {
    "country": "AT",
    "name": "Leonding",
    "lat": "48.27965",
    "lng": "14.2533"
  },
  {
    "country": "AT",
    "name": "Leogang",
    "lat": "47.43906",
    "lng": "12.76109"
  },
  {
    "country": "AT",
    "name": "Leobersdorf",
    "lat": "47.92796",
    "lng": "16.21651"
  },
  {
    "country": "AT",
    "name": "Leobendorf",
    "lat": "48.38333",
    "lng": "16.31667"
  },
  {
    "country": "AT",
    "name": "Leoben",
    "lat": "47.3765",
    "lng": "15.09144"
  },
  {
    "country": "AT",
    "name": "Lenzing",
    "lat": "47.97326",
    "lng": "13.60846"
  },
  {
    "country": "AT",
    "name": "Lengenfeld",
    "lat": "48.47187",
    "lng": "15.5987"
  },
  {
    "country": "AT",
    "name": "Lendorf",
    "lat": "46.83528",
    "lng": "13.43028"
  },
  {
    "country": "AT",
    "name": "Lend",
    "lat": "47.29856",
    "lng": "13.05176"
  },
  {
    "country": "AT",
    "name": "Leitzersdorf",
    "lat": "48.41918",
    "lng": "16.24513"
  },
  {
    "country": "AT",
    "name": "Leithaprodersdorf",
    "lat": "47.93348",
    "lng": "16.47915"
  },
  {
    "country": "AT",
    "name": "Leitersdorf im Raabtal",
    "lat": "46.94182",
    "lng": "15.93365"
  },
  {
    "country": "AT",
    "name": "Leisach",
    "lat": "46.8125",
    "lng": "12.74861"
  },
  {
    "country": "AT",
    "name": "Leibnitz",
    "lat": "46.78161",
    "lng": "15.53836"
  },
  {
    "country": "AT",
    "name": "Leiben",
    "lat": "48.24628",
    "lng": "15.2746"
  },
  {
    "country": "AT",
    "name": "Lechaschau",
    "lat": "47.48804",
    "lng": "10.70652"
  },
  {
    "country": "AT",
    "name": "Lech",
    "lat": "47.20797",
    "lng": "10.14184"
  },
  {
    "country": "AT",
    "name": "Laxenburg",
    "lat": "48.06833",
    "lng": "16.35607"
  },
  {
    "country": "AT",
    "name": "Lavant",
    "lat": "46.79889",
    "lng": "12.83806"
  },
  {
    "country": "AT",
    "name": "Lavamünd",
    "lat": "46.64019",
    "lng": "14.94733"
  },
  {
    "country": "AT",
    "name": "Lauterach",
    "lat": "47.48306",
    "lng": "9.73306"
  },
  {
    "country": "AT",
    "name": "Laussa",
    "lat": "47.95",
    "lng": "14.45"
  },
  {
    "country": "AT",
    "name": "Lassing",
    "lat": "47.53374",
    "lng": "14.25808"
  },
  {
    "country": "AT",
    "name": "Lassee",
    "lat": "48.22479",
    "lng": "16.8223"
  },
  {
    "country": "AT",
    "name": "Lanzenkirchen",
    "lat": "47.73621",
    "lng": "16.21985"
  },
  {
    "country": "AT",
    "name": "Lans",
    "lat": "47.23833",
    "lng": "11.43139"
  },
  {
    "country": "AT",
    "name": "Lannach",
    "lat": "46.94611",
    "lng": "15.33722"
  },
  {
    "country": "AT",
    "name": "Langschlag",
    "lat": "48.57448",
    "lng": "14.88459"
  },
  {
    "country": "AT",
    "name": "Langenzersdorf",
    "lat": "48.3",
    "lng": "16.35"
  },
  {
    "country": "AT",
    "name": "Langenwang",
    "lat": "47.56667",
    "lng": "15.61667"
  },
  {
    "country": "AT",
    "name": "Langenrohr",
    "lat": "48.30489",
    "lng": "16.01034"
  },
  {
    "country": "AT",
    "name": "Langenlois",
    "lat": "48.46667",
    "lng": "15.66667"
  },
  {
    "country": "AT",
    "name": "Langegg bei Graz",
    "lat": "47.05",
    "lng": "15.63333"
  },
  {
    "country": "AT",
    "name": "Langau",
    "lat": "48.83207",
    "lng": "15.7156"
  },
  {
    "country": "AT",
    "name": "Lang",
    "lat": "46.83765",
    "lng": "15.50471"
  },
  {
    "country": "AT",
    "name": "Landl",
    "lat": "47.65666",
    "lng": "14.73189"
  },
  {
    "country": "AT",
    "name": "Landeck",
    "lat": "47.13988",
    "lng": "10.56593"
  },
  {
    "country": "AT",
    "name": "Lamprechtshausen",
    "lat": "47.99098",
    "lng": "12.95481"
  },
  {
    "country": "AT",
    "name": "Lambach",
    "lat": "48.09276",
    "lng": "13.87453"
  },
  {
    "country": "AT",
    "name": "Lafnitz",
    "lat": "47.36667",
    "lng": "16.01667"
  },
  {
    "country": "AT",
    "name": "Ladis",
    "lat": "47.07459",
    "lng": "10.64949"
  },
  {
    "country": "AT",
    "name": "Ladendorf",
    "lat": "48.53333",
    "lng": "16.48333"
  },
  {
    "country": "AT",
    "name": "Lackendorf",
    "lat": "47.58996",
    "lng": "16.50404"
  },
  {
    "country": "AT",
    "name": "Lackenbach",
    "lat": "47.59042",
    "lng": "16.46533"
  },
  {
    "country": "AT",
    "name": "Labuch",
    "lat": "47.06667",
    "lng": "15.66667"
  },
  {
    "country": "AT",
    "name": "Laakirchen",
    "lat": "47.98188",
    "lng": "13.82166"
  },
  {
    "country": "AT",
    "name": "Laab im Walde",
    "lat": "48.15486",
    "lng": "16.17359"
  },
  {
    "country": "AT",
    "name": "Laa an der Thaya",
    "lat": "48.71667",
    "lng": "16.38333"
  },
  {
    "country": "AT",
    "name": "Kundl",
    "lat": "47.46667",
    "lng": "11.98333"
  },
  {
    "country": "AT",
    "name": "Kumberg",
    "lat": "47.16422",
    "lng": "15.53261"
  },
  {
    "country": "AT",
    "name": "Kulm am Zirbitz",
    "lat": "47.05814",
    "lng": "14.48702"
  },
  {
    "country": "AT",
    "name": "Kukmirn",
    "lat": "47.07544",
    "lng": "16.21033"
  },
  {
    "country": "AT",
    "name": "Kufstein",
    "lat": "47.58333",
    "lng": "12.16667"
  },
  {
    "country": "AT",
    "name": "Kuchl",
    "lat": "47.62647",
    "lng": "13.1448"
  },
  {
    "country": "AT",
    "name": "Krusdorf",
    "lat": "46.83944",
    "lng": "15.86083"
  },
  {
    "country": "AT",
    "name": "Krumegg",
    "lat": "47.02111",
    "lng": "15.63139"
  },
  {
    "country": "AT",
    "name": "Krumbach",
    "lat": "47.48306",
    "lng": "9.93583"
  },
  {
    "country": "AT",
    "name": "Krumau am Kamp",
    "lat": "48.58879",
    "lng": "15.44914"
  },
  {
    "country": "AT",
    "name": "Krottendorf",
    "lat": "47.2",
    "lng": "15.63333"
  },
  {
    "country": "AT",
    "name": "Krispl",
    "lat": "47.71667",
    "lng": "13.18333"
  },
  {
    "country": "AT",
    "name": "Krieglach",
    "lat": "47.54728",
    "lng": "15.56248"
  },
  {
    "country": "AT",
    "name": "Bad Kreuzen",
    "lat": "48.26737",
    "lng": "14.80648"
  },
  {
    "country": "AT",
    "name": "Krensdorf",
    "lat": "47.78552",
    "lng": "16.41495"
  },
  {
    "country": "AT",
    "name": "Kremsmünster",
    "lat": "48.0529",
    "lng": "14.12919"
  },
  {
    "country": "AT",
    "name": "Krems an der Donau",
    "lat": "48.40921",
    "lng": "15.61415"
  },
  {
    "country": "AT",
    "name": "Kraubath an der Mur",
    "lat": "47.3",
    "lng": "14.93333"
  },
  {
    "country": "AT",
    "name": "Kramsach",
    "lat": "47.44312",
    "lng": "11.87545"
  },
  {
    "country": "AT",
    "name": "Krakauschatten",
    "lat": "47.18333",
    "lng": "13.96667"
  },
  {
    "country": "AT",
    "name": "Krakauhintermühlen",
    "lat": "47.18333",
    "lng": "13.98333"
  },
  {
    "country": "AT",
    "name": "Krakaudorf",
    "lat": "47.18131",
    "lng": "14.02061"
  },
  {
    "country": "AT",
    "name": "Köttmannsdorf",
    "lat": "46.56139",
    "lng": "14.23389"
  },
  {
    "country": "AT",
    "name": "Kottingbrunn",
    "lat": "47.95096",
    "lng": "16.22715"
  },
  {
    "country": "AT",
    "name": "Köstendorf",
    "lat": "47.95",
    "lng": "13.2"
  },
  {
    "country": "AT",
    "name": "Kössen",
    "lat": "47.6699",
    "lng": "12.40545"
  },
  {
    "country": "AT",
    "name": "Korneuburg",
    "lat": "48.35",
    "lng": "16.33333"
  },
  {
    "country": "AT",
    "name": "Koppl",
    "lat": "47.80808",
    "lng": "13.15561"
  },
  {
    "country": "AT",
    "name": "Königstetten",
    "lat": "48.30198",
    "lng": "16.14492"
  },
  {
    "country": "AT",
    "name": "Königsdorf",
    "lat": "47",
    "lng": "16.16667"
  },
  {
    "country": "AT",
    "name": "Kolsassberg",
    "lat": "47.2815",
    "lng": "11.65289"
  },
  {
    "country": "AT",
    "name": "Kohlschwarz",
    "lat": "47.11667",
    "lng": "15.11667"
  },
  {
    "country": "AT",
    "name": "Kohlberg",
    "lat": "46.9",
    "lng": "15.78333"
  },
  {
    "country": "AT",
    "name": "Kohfidisch",
    "lat": "47.17472",
    "lng": "16.35701"
  },
  {
    "country": "AT",
    "name": "Köflach",
    "lat": "47.06667",
    "lng": "15.08333"
  },
  {
    "country": "AT",
    "name": "Koblach",
    "lat": "47.33306",
    "lng": "9.6"
  },
  {
    "country": "AT",
    "name": "Kobersdorf",
    "lat": "47.59572",
    "lng": "16.39173"
  },
  {
    "country": "AT",
    "name": "Kobenz",
    "lat": "47.25",
    "lng": "14.85"
  },
  {
    "country": "AT",
    "name": "Knittelfeld",
    "lat": "47.21667",
    "lng": "14.81667"
  },
  {
    "country": "AT",
    "name": "Klosterneuburg",
    "lat": "48.30521",
    "lng": "16.32522"
  },
  {
    "country": "AT",
    "name": "Klösterle",
    "lat": "47.13333",
    "lng": "10.08333"
  },
  {
    "country": "AT",
    "name": "Kloster",
    "lat": "46.88333",
    "lng": "15.08333"
  },
  {
    "country": "AT",
    "name": "Klöch",
    "lat": "46.76472",
    "lng": "15.96556"
  },
  {
    "country": "AT",
    "name": "Klingenbach",
    "lat": "47.75202",
    "lng": "16.54069"
  },
  {
    "country": "AT",
    "name": "Kleinzell im Mühlkreis",
    "lat": "48.45585",
    "lng": "13.99195"
  },
  {
    "country": "AT",
    "name": "Kleinzell",
    "lat": "47.97993",
    "lng": "15.7362"
  },
  {
    "country": "AT",
    "name": "Kleinsölk",
    "lat": "47.39444",
    "lng": "13.93944"
  },
  {
    "country": "AT",
    "name": "Klein-Pöchlarn",
    "lat": "48.21667",
    "lng": "15.21667"
  },
  {
    "country": "AT",
    "name": "Kleinmürbisch",
    "lat": "47.03299",
    "lng": "16.32448"
  },
  {
    "country": "AT",
    "name": "Kleinlobming",
    "lat": "47.14954",
    "lng": "14.84875"
  },
  {
    "country": "AT",
    "name": "Kleinkirchheim",
    "lat": "46.82278",
    "lng": "13.79222"
  },
  {
    "country": "AT",
    "name": "Klausen-Leopoldsdorf",
    "lat": "48.08771",
    "lng": "16.01686"
  },
  {
    "country": "AT",
    "name": "Klaus",
    "lat": "47.30913",
    "lng": "9.64678"
  },
  {
    "country": "AT",
    "name": "Klagenfurt am Wörthersee",
    "lat": "46.62472",
    "lng": "14.30528"
  },
  {
    "country": "AT",
    "name": "Kitzeck im Sausal",
    "lat": "46.78072",
    "lng": "15.45384"
  },
  {
    "country": "AT",
    "name": "Kitzbühel",
    "lat": "47.44637",
    "lng": "12.39215"
  },
  {
    "country": "AT",
    "name": "Kittsee",
    "lat": "48.0925",
    "lng": "17.06389"
  },
  {
    "country": "AT",
    "name": "Kirnberg an der Mank",
    "lat": "48.07246",
    "lng": "15.32232"
  },
  {
    "country": "AT",
    "name": "Kirchstetten",
    "lat": "48.18333",
    "lng": "15.81667"
  },
  {
    "country": "AT",
    "name": "Kirchschlag in der Buckligen Welt",
    "lat": "47.5",
    "lng": "16.28333"
  },
  {
    "country": "AT",
    "name": "Kirchschlag bei Linz",
    "lat": "48.41149",
    "lng": "14.27656"
  },
  {
    "country": "AT",
    "name": "Kirchschlag",
    "lat": "48.39345",
    "lng": "15.22285"
  },
  {
    "country": "AT",
    "name": "Kirchdorf in Tirol",
    "lat": "47.55626",
    "lng": "12.44511"
  },
  {
    "country": "AT",
    "name": "Kirchberg in Tirol",
    "lat": "47.44539",
    "lng": "12.31602"
  },
  {
    "country": "AT",
    "name": "Kirchberg an der Raab",
    "lat": "46.98583",
    "lng": "15.76694"
  },
  {
    "country": "AT",
    "name": "Kirchberg an der Pielach",
    "lat": "48.0269",
    "lng": "15.42875"
  },
  {
    "country": "AT",
    "name": "Kirchberg am Wechsel",
    "lat": "47.60738",
    "lng": "15.99103"
  },
  {
    "country": "AT",
    "name": "Kirchberg am Walde",
    "lat": "48.72477",
    "lng": "15.08826"
  },
  {
    "country": "AT",
    "name": "Kirchberg am Wagram",
    "lat": "48.43182",
    "lng": "15.89692"
  },
  {
    "country": "AT",
    "name": "Kirchbach in Steiermark",
    "lat": "46.93167",
    "lng": "15.66194"
  },
  {
    "country": "AT",
    "name": "Kirchbach",
    "lat": "46.6416",
    "lng": "13.18454"
  },
  {
    "country": "AT",
    "name": "Kindberg",
    "lat": "47.5",
    "lng": "15.45"
  },
  {
    "country": "AT",
    "name": "Kilb",
    "lat": "48.10101",
    "lng": "15.4085"
  },
  {
    "country": "AT",
    "name": "Keutschach am See",
    "lat": "46.59306",
    "lng": "14.18889"
  },
  {
    "country": "AT",
    "name": "Kennelbach",
    "lat": "47.48306",
    "lng": "9.76667"
  },
  {
    "country": "AT",
    "name": "Kemeten",
    "lat": "47.24859",
    "lng": "16.15213"
  },
  {
    "country": "AT",
    "name": "Kematen in Tirol",
    "lat": "47.25",
    "lng": "11.26667"
  },
  {
    "country": "AT",
    "name": "Kematen an der Ybbs",
    "lat": "48.02541",
    "lng": "14.76468"
  },
  {
    "country": "AT",
    "name": "Kautzen",
    "lat": "48.93",
    "lng": "15.23932"
  },
  {
    "country": "AT",
    "name": "Kauns",
    "lat": "47.07822",
    "lng": "10.69219"
  },
  {
    "country": "AT",
    "name": "Kaumberg",
    "lat": "48.02415",
    "lng": "15.89842"
  },
  {
    "country": "AT",
    "name": "Katzelsdorf",
    "lat": "47.78055",
    "lng": "16.26985"
  },
  {
    "country": "AT",
    "name": "Kasten bei Böheimkirchen",
    "lat": "48.1532",
    "lng": "15.77946"
  },
  {
    "country": "AT",
    "name": "Kartitsch",
    "lat": "46.72889",
    "lng": "12.50083"
  },
  {
    "country": "AT",
    "name": "Karrösten",
    "lat": "47.2254",
    "lng": "10.76561"
  },
  {
    "country": "AT",
    "name": "Karres",
    "lat": "47.21667",
    "lng": "10.78333"
  },
  {
    "country": "AT",
    "name": "Karlstetten",
    "lat": "48.2592",
    "lng": "15.56544"
  },
  {
    "country": "AT",
    "name": "Kaprun",
    "lat": "47.27239",
    "lng": "12.75985"
  },
  {
    "country": "AT",
    "name": "Kappl",
    "lat": "47.06667",
    "lng": "10.38333"
  },
  {
    "country": "AT",
    "name": "Kappel am Krappfeld",
    "lat": "46.83861",
    "lng": "14.48639"
  },
  {
    "country": "AT",
    "name": "Kapfenstein",
    "lat": "46.88611",
    "lng": "15.97167"
  },
  {
    "country": "AT",
    "name": "Kapfenberg",
    "lat": "47.44458",
    "lng": "15.29331"
  },
  {
    "country": "AT",
    "name": "Kapelln",
    "lat": "48.25817",
    "lng": "15.75731"
  },
  {
    "country": "AT",
    "name": "Kapellen",
    "lat": "47.64784",
    "lng": "15.62863"
  },
  {
    "country": "AT",
    "name": "Kammern im Liesingtal",
    "lat": "47.39245",
    "lng": "14.90407"
  },
  {
    "country": "AT",
    "name": "Kalwang",
    "lat": "47.42678",
    "lng": "14.75442"
  },
  {
    "country": "AT",
    "name": "Kaltenleutgeben",
    "lat": "48.11646",
    "lng": "16.19956"
  },
  {
    "country": "AT",
    "name": "Kaltenbach",
    "lat": "47.28333",
    "lng": "11.86667"
  },
  {
    "country": "AT",
    "name": "Kalsdorf bei Graz",
    "lat": "46.96528",
    "lng": "15.48028"
  },
  {
    "country": "AT",
    "name": "Kaisersdorf",
    "lat": "47.53741",
    "lng": "16.39198"
  },
  {
    "country": "AT",
    "name": "Kaindorf an der Sulm",
    "lat": "46.79248",
    "lng": "15.53879"
  },
  {
    "country": "AT",
    "name": "Kaindorf",
    "lat": "47.22537",
    "lng": "15.91125"
  },
  {
    "country": "AT",
    "name": "Kainach bei Voitsberg",
    "lat": "47.13637",
    "lng": "15.0953"
  },
  {
    "country": "AT",
    "name": "Kaibing",
    "lat": "47.2",
    "lng": "15.83333"
  },
  {
    "country": "AT",
    "name": "Jungholz",
    "lat": "47.57409",
    "lng": "10.44723"
  },
  {
    "country": "AT",
    "name": "Judenburg",
    "lat": "47.16667",
    "lng": "14.66667"
  },
  {
    "country": "AT",
    "name": "Jois",
    "lat": "47.96165",
    "lng": "16.79604"
  },
  {
    "country": "AT",
    "name": "Johnsbach",
    "lat": "47.53333",
    "lng": "14.58333"
  },
  {
    "country": "AT",
    "name": "Jochberg",
    "lat": "47.3792",
    "lng": "12.41807"
  },
  {
    "country": "AT",
    "name": "Jerzens",
    "lat": "47.1512",
    "lng": "10.74686"
  },
  {
    "country": "AT",
    "name": "Jennersdorf",
    "lat": "46.93848",
    "lng": "16.14158"
  },
  {
    "country": "AT",
    "name": "Jenbach",
    "lat": "47.39173",
    "lng": "11.77245"
  },
  {
    "country": "AT",
    "name": "Jedenspeigen",
    "lat": "48.49807",
    "lng": "16.87225"
  },
  {
    "country": "AT",
    "name": "Japons",
    "lat": "48.7925",
    "lng": "15.56831"
  },
  {
    "country": "AT",
    "name": "Jaidhof",
    "lat": "48.53333",
    "lng": "15.48333"
  },
  {
    "country": "AT",
    "name": "Jagerberg",
    "lat": "46.85361",
    "lng": "15.73806"
  },
  {
    "country": "AT",
    "name": "Jabing",
    "lat": "47.2388",
    "lng": "16.27659"
  },
  {
    "country": "AT",
    "name": "Ischgl",
    "lat": "47.01257",
    "lng": "10.29179"
  },
  {
    "country": "AT",
    "name": "Irschen",
    "lat": "46.75694",
    "lng": "13.02528"
  },
  {
    "country": "AT",
    "name": "Irdning",
    "lat": "47.50529",
    "lng": "14.10155"
  },
  {
    "country": "AT",
    "name": "Inzing",
    "lat": "47.2737",
    "lng": "11.19751"
  },
  {
    "country": "AT",
    "name": "Inzenhof",
    "lat": "47.01667",
    "lng": "16.31667"
  },
  {
    "country": "AT",
    "name": "Innsbruck",
    "lat": "47.26266",
    "lng": "11.39454"
  },
  {
    "country": "AT",
    "name": "Innervillgraten",
    "lat": "46.81194",
    "lng": "12.37472"
  },
  {
    "country": "AT",
    "name": "Innerschwand",
    "lat": "47.83333",
    "lng": "13.4"
  },
  {
    "country": "AT",
    "name": "Innerbraz",
    "lat": "47.15",
    "lng": "9.91667"
  },
  {
    "country": "AT",
    "name": "Imsterberg",
    "lat": "47.20517",
    "lng": "10.69605"
  },
  {
    "country": "AT",
    "name": "Imst",
    "lat": "47.24504",
    "lng": "10.73974"
  },
  {
    "country": "AT",
    "name": "Ilz",
    "lat": "47.08649",
    "lng": "15.92676"
  },
  {
    "country": "AT",
    "name": "Illmitz",
    "lat": "47.76148",
    "lng": "16.80024"
  },
  {
    "country": "AT",
    "name": "Hüttschlag",
    "lat": "47.17635",
    "lng": "13.23239"
  },
  {
    "country": "AT",
    "name": "Hüttenberg",
    "lat": "46.94139",
    "lng": "14.55"
  },
  {
    "country": "AT",
    "name": "Hüttau",
    "lat": "47.4161",
    "lng": "13.30775"
  },
  {
    "country": "AT",
    "name": "Hürm",
    "lat": "48.15601",
    "lng": "15.41262"
  },
  {
    "country": "AT",
    "name": "Hundsheim",
    "lat": "48.11749",
    "lng": "16.93581"
  },
  {
    "country": "AT",
    "name": "Hörsching",
    "lat": "48.22627",
    "lng": "14.17786"
  },
  {
    "country": "AT",
    "name": "Hornstein",
    "lat": "47.88049",
    "lng": "16.44447"
  },
  {
    "country": "AT",
    "name": "Horn",
    "lat": "48.66274",
    "lng": "15.65663"
  },
  {
    "country": "AT",
    "name": "Horitschon",
    "lat": "47.58729",
    "lng": "16.54696"
  },
  {
    "country": "AT",
    "name": "Hörbranz",
    "lat": "47.55",
    "lng": "9.75"
  },
  {
    "country": "AT",
    "name": "Hopfgarten im Brixental",
    "lat": "47.45",
    "lng": "12.16667"
  },
  {
    "country": "AT",
    "name": "Hopfgarten in Defereggen",
    "lat": "46.91917",
    "lng": "12.53639"
  },
  {
    "country": "AT",
    "name": "Holzhausen",
    "lat": "48.22296",
    "lng": "14.09683"
  },
  {
    "country": "AT",
    "name": "Hollersbach im Pinzgau",
    "lat": "47.27658",
    "lng": "12.42326"
  },
  {
    "country": "AT",
    "name": "Hollenthon",
    "lat": "47.58938",
    "lng": "16.26131"
  },
  {
    "country": "AT",
    "name": "Hollenstein an der Ybbs",
    "lat": "47.8",
    "lng": "14.76667"
  },
  {
    "country": "AT",
    "name": "Hollenegg",
    "lat": "46.79147",
    "lng": "15.21345"
  },
  {
    "country": "AT",
    "name": "Hollabrunn",
    "lat": "48.55",
    "lng": "16.08333"
  },
  {
    "country": "AT",
    "name": "Hohenweiler",
    "lat": "47.58333",
    "lng": "9.78333"
  },
  {
    "country": "AT",
    "name": "Hohenthurn",
    "lat": "46.55833",
    "lng": "13.66778"
  },
  {
    "country": "AT",
    "name": "Hohentauern",
    "lat": "47.43333",
    "lng": "14.48333"
  },
  {
    "country": "AT",
    "name": "Hohenruppersdorf",
    "lat": "48.46439",
    "lng": "16.65244"
  },
  {
    "country": "AT",
    "name": "Hohenems",
    "lat": "47.36667",
    "lng": "9.68306"
  },
  {
    "country": "AT",
    "name": "Hoheneich",
    "lat": "48.77195",
    "lng": "15.02857"
  },
  {
    "country": "AT",
    "name": "Hohenberg",
    "lat": "47.90679",
    "lng": "15.61998"
  },
  {
    "country": "AT",
    "name": "Hohenau an der Raab",
    "lat": "47.3",
    "lng": "15.55"
  },
  {
    "country": "AT",
    "name": "Hofstätten an der Raab",
    "lat": "47.06667",
    "lng": "15.73333"
  },
  {
    "country": "AT",
    "name": "Höfen",
    "lat": "47.46667",
    "lng": "10.68333"
  },
  {
    "country": "AT",
    "name": "Hof bei Straden",
    "lat": "46.8",
    "lng": "15.93333"
  },
  {
    "country": "AT",
    "name": "Hof bei Salzburg",
    "lat": "47.81929",
    "lng": "13.21488"
  },
  {
    "country": "AT",
    "name": "Hof am Leithaberge",
    "lat": "47.95",
    "lng": "16.58333"
  },
  {
    "country": "AT",
    "name": "Hochwolkersdorf",
    "lat": "47.66127",
    "lng": "16.28072"
  },
  {
    "country": "AT",
    "name": "Höchst",
    "lat": "47.45934",
    "lng": "9.6405"
  },
  {
    "country": "AT",
    "name": "Hochfilzen",
    "lat": "47.46667",
    "lng": "12.61667"
  },
  {
    "country": "AT",
    "name": "Hitzendorf",
    "lat": "47.03333",
    "lng": "15.3"
  },
  {
    "country": "AT",
    "name": "Hirtenberg",
    "lat": "47.93095",
    "lng": "16.17908"
  },
  {
    "country": "AT",
    "name": "Hirschbach",
    "lat": "48.74329",
    "lng": "15.12521"
  },
  {
    "country": "AT",
    "name": "Hirnsdorf",
    "lat": "47.19167",
    "lng": "15.82868"
  },
  {
    "country": "AT",
    "name": "Hirm",
    "lat": "47.78652",
    "lng": "16.4546"
  },
  {
    "country": "AT",
    "name": "Hippach",
    "lat": "47.20435",
    "lng": "11.86523"
  },
  {
    "country": "AT",
    "name": "Hintersee",
    "lat": "47.7",
    "lng": "13.28333"
  },
  {
    "country": "AT",
    "name": "Hinterbrühl",
    "lat": "48.08611",
    "lng": "16.24809"
  },
  {
    "country": "AT",
    "name": "Himmelberg",
    "lat": "46.75667",
    "lng": "14.03056"
  },
  {
    "country": "AT",
    "name": "Himberg",
    "lat": "48.08333",
    "lng": "16.43333"
  },
  {
    "country": "AT",
    "name": "Hieflau",
    "lat": "47.60639",
    "lng": "14.74503"
  },
  {
    "country": "AT",
    "name": "Heugraben",
    "lat": "47.11783",
    "lng": "16.19041"
  },
  {
    "country": "AT",
    "name": "Herzogsdorf",
    "lat": "48.43011",
    "lng": "14.1128"
  },
  {
    "country": "AT",
    "name": "Herzogenburg",
    "lat": "48.28137",
    "lng": "15.69431"
  },
  {
    "country": "AT",
    "name": "Herrnbaumgarten",
    "lat": "48.69606",
    "lng": "16.68283"
  },
  {
    "country": "AT",
    "name": "Hernstein",
    "lat": "47.89465",
    "lng": "16.10561"
  },
  {
    "country": "AT",
    "name": "Hermagor",
    "lat": "46.62722",
    "lng": "13.36722"
  },
  {
    "country": "AT",
    "name": "Hennersdorf",
    "lat": "48.11173",
    "lng": "16.36311"
  },
  {
    "country": "AT",
    "name": "Henndorf am Wallersee",
    "lat": "47.9",
    "lng": "13.18333"
  },
  {
    "country": "AT",
    "name": "Hengsberg",
    "lat": "46.86667",
    "lng": "15.43333"
  },
  {
    "country": "AT",
    "name": "Hellmonsödt",
    "lat": "48.43333",
    "lng": "14.3"
  },
  {
    "country": "AT",
    "name": "Heiterwang",
    "lat": "47.45",
    "lng": "10.75"
  },
  {
    "country": "AT",
    "name": "Heiligenkreuz im Lafnitztal",
    "lat": "46.98917",
    "lng": "16.26083"
  },
  {
    "country": "AT",
    "name": "Heiligenkreuz am Waasen",
    "lat": "46.95583",
    "lng": "15.58806"
  },
  {
    "country": "AT",
    "name": "Heiligenkreuz",
    "lat": "48.05559",
    "lng": "16.12493"
  },
  {
    "country": "AT",
    "name": "Heiligenbrunn",
    "lat": "47.02705",
    "lng": "16.41688"
  },
  {
    "country": "AT",
    "name": "Heiligenblut",
    "lat": "47.03979",
    "lng": "12.84345"
  },
  {
    "country": "AT",
    "name": "Heidenreichstein",
    "lat": "48.86667",
    "lng": "15.11667"
  },
  {
    "country": "AT",
    "name": "Hausmannstätten",
    "lat": "46.99111",
    "lng": "15.51139"
  },
  {
    "country": "AT",
    "name": "Hausleiten",
    "lat": "48.38333",
    "lng": "16.1"
  },
  {
    "country": "AT",
    "name": "Hauskirchen",
    "lat": "48.6",
    "lng": "16.76667"
  },
  {
    "country": "AT",
    "name": "Hausbrunn",
    "lat": "48.62602",
    "lng": "16.82844"
  },
  {
    "country": "AT",
    "name": "Haus",
    "lat": "47.40997",
    "lng": "13.76724"
  },
  {
    "country": "AT",
    "name": "Haunoldstein",
    "lat": "48.2",
    "lng": "15.45"
  },
  {
    "country": "AT",
    "name": "Haugsdorf",
    "lat": "48.70762",
    "lng": "16.07656"
  },
  {
    "country": "AT",
    "name": "Haugschlag",
    "lat": "48.98333",
    "lng": "15.05"
  },
  {
    "country": "AT",
    "name": "Hatzendorf",
    "lat": "46.97686",
    "lng": "16.00107"
  },
  {
    "country": "AT",
    "name": "Hatting",
    "lat": "47.2787",
    "lng": "11.16838"
  },
  {
    "country": "AT",
    "name": "Häselgehr",
    "lat": "47.31667",
    "lng": "10.5"
  },
  {
    "country": "AT",
    "name": "Hartl",
    "lat": "47.18333",
    "lng": "15.91667"
  },
  {
    "country": "AT",
    "name": "Hart im Zillertal",
    "lat": "47.35106",
    "lng": "11.86476"
  },
  {
    "country": "AT",
    "name": "Hartberg",
    "lat": "47.28333",
    "lng": "15.96667"
  },
  {
    "country": "AT",
    "name": "Harmannsdorf",
    "lat": "48.39724",
    "lng": "16.3722"
  },
  {
    "country": "AT",
    "name": "Haringsee",
    "lat": "48.1927",
    "lng": "16.78741"
  },
  {
    "country": "AT",
    "name": "Bad Häring",
    "lat": "47.51071",
    "lng": "12.11912"
  },
  {
    "country": "AT",
    "name": "Hardegg",
    "lat": "48.85",
    "lng": "15.85"
  },
  {
    "country": "AT",
    "name": "Hard",
    "lat": "47.48306",
    "lng": "9.68306"
  },
  {
    "country": "AT",
    "name": "Hannersdorf",
    "lat": "47.22895",
    "lng": "16.3825"
  },
  {
    "country": "AT",
    "name": "Hallwang",
    "lat": "47.85",
    "lng": "13.08333"
  },
  {
    "country": "AT",
    "name": "Hallein",
    "lat": "47.68333",
    "lng": "13.1"
  },
  {
    "country": "AT",
    "name": "Halbturn",
    "lat": "47.87019",
    "lng": "16.97542"
  },
  {
    "country": "AT",
    "name": "Halbenrain",
    "lat": "46.72194",
    "lng": "15.94667"
  },
  {
    "country": "AT",
    "name": "Hainzenberg",
    "lat": "47.21788",
    "lng": "11.90034"
  },
  {
    "country": "AT",
    "name": "Hainsdorf im Schwarzautal",
    "lat": "46.83583",
    "lng": "15.64139"
  },
  {
    "country": "AT",
    "name": "Hainfeld",
    "lat": "48.0339",
    "lng": "15.77414"
  },
  {
    "country": "AT",
    "name": "Hainersdorf",
    "lat": "47.11506",
    "lng": "15.94374"
  },
  {
    "country": "AT",
    "name": "Hainburg an der Donau",
    "lat": "48.14627",
    "lng": "16.94504"
  },
  {
    "country": "AT",
    "name": "Haiming",
    "lat": "47.25",
    "lng": "10.88333"
  },
  {
    "country": "AT",
    "name": "Haidershofen",
    "lat": "48.07579",
    "lng": "14.46131"
  },
  {
    "country": "AT",
    "name": "Haibach im Mühlkreis",
    "lat": "48.44429",
    "lng": "14.34411"
  },
  {
    "country": "AT",
    "name": "Hagenbrunn",
    "lat": "48.33333",
    "lng": "16.4"
  },
  {
    "country": "AT",
    "name": "Hafnerbach",
    "lat": "48.21667",
    "lng": "15.48333"
  },
  {
    "country": "AT",
    "name": "Hadres",
    "lat": "48.70965",
    "lng": "16.13038"
  },
  {
    "country": "AT",
    "name": "Hackerberg",
    "lat": "47.2",
    "lng": "16.11667"
  },
  {
    "country": "AT",
    "name": "Haag",
    "lat": "48.11362",
    "lng": "14.56753"
  },
  {
    "country": "AT",
    "name": "Güttenbach",
    "lat": "47.1571",
    "lng": "16.2923"
  },
  {
    "country": "AT",
    "name": "Guttaring",
    "lat": "46.88536",
    "lng": "14.51071"
  },
  {
    "country": "AT",
    "name": "Gutenstein",
    "lat": "47.876",
    "lng": "15.88881"
  },
  {
    "country": "AT",
    "name": "Gutenbrunn",
    "lat": "48.3652",
    "lng": "15.11899"
  },
  {
    "country": "AT",
    "name": "Güssing",
    "lat": "47.05936",
    "lng": "16.32431"
  },
  {
    "country": "AT",
    "name": "Gurk",
    "lat": "46.87389",
    "lng": "14.29167"
  },
  {
    "country": "AT",
    "name": "Guntramsdorf",
    "lat": "48.04687",
    "lng": "16.31384"
  },
  {
    "country": "AT",
    "name": "Guntersdorf",
    "lat": "48.65",
    "lng": "16.05"
  },
  {
    "country": "AT",
    "name": "Gunskirchen",
    "lat": "48.13333",
    "lng": "13.95"
  },
  {
    "country": "AT",
    "name": "Günselsdorf",
    "lat": "47.94395",
    "lng": "16.26062"
  },
  {
    "country": "AT",
    "name": "Gundersdorf",
    "lat": "46.95",
    "lng": "15.23333"
  },
  {
    "country": "AT",
    "name": "Gumpoldskirchen",
    "lat": "48.04538",
    "lng": "16.2771"
  },
  {
    "country": "AT",
    "name": "Grünbach am Schneeberg",
    "lat": "47.79747",
    "lng": "15.98785"
  },
  {
    "country": "AT",
    "name": "Grünau im Almtal",
    "lat": "47.85493",
    "lng": "13.95573"
  },
  {
    "country": "AT",
    "name": "Großweikersdorf",
    "lat": "48.47123",
    "lng": "15.98251"
  },
  {
    "country": "AT",
    "name": "Großsölk",
    "lat": "47.41667",
    "lng": "13.96667"
  },
  {
    "country": "AT",
    "name": "Groß-Siegharts",
    "lat": "48.7918",
    "lng": "15.40429"
  },
  {
    "country": "AT",
    "name": "Groß-Schweinbarth",
    "lat": "48.41472",
    "lng": "16.63194"
  },
  {
    "country": "AT",
    "name": "Groß Sankt Florian",
    "lat": "46.82444",
    "lng": "15.31861"
  },
  {
    "country": "AT",
    "name": "Großrußbach",
    "lat": "48.47412",
    "lng": "16.41649"
  },
  {
    "country": "AT",
    "name": "Großriedenthal",
    "lat": "48.48333",
    "lng": "15.86667"
  },
  {
    "country": "AT",
    "name": "Grosspetersdorf",
    "lat": "47.23895",
    "lng": "16.31783"
  },
  {
    "country": "AT",
    "name": "Großmugl",
    "lat": "48.49917",
    "lng": "16.23056"
  },
  {
    "country": "AT",
    "name": "Großlobming",
    "lat": "47.18333",
    "lng": "14.8"
  },
  {
    "country": "AT",
    "name": "Großkrut",
    "lat": "48.64389",
    "lng": "16.72361"
  },
  {
    "country": "AT",
    "name": "Großklein",
    "lat": "46.73611",
    "lng": "15.44444"
  },
  {
    "country": "AT",
    "name": "Großhofen",
    "lat": "48.25834",
    "lng": "16.6194"
  },
  {
    "country": "AT",
    "name": "Heimschuh",
    "lat": "46.76",
    "lng": "15.49306"
  },
  {
    "country": "AT",
    "name": "Großharras",
    "lat": "48.66389",
    "lng": "16.24556"
  },
  {
    "country": "AT",
    "name": "Groß-Gerungs",
    "lat": "48.57422",
    "lng": "14.95789"
  },
  {
    "country": "AT",
    "name": "Groß-Enzersdorf",
    "lat": "48.20278",
    "lng": "16.55083"
  },
  {
    "country": "AT",
    "name": "Groß-Engersdorf",
    "lat": "48.35873",
    "lng": "16.5661"
  },
  {
    "country": "AT",
    "name": "Großebersdorf",
    "lat": "48.36405",
    "lng": "16.47076"
  },
  {
    "country": "AT",
    "name": "Grödig",
    "lat": "47.73833",
    "lng": "13.0373"
  },
  {
    "country": "AT",
    "name": "Gröbming",
    "lat": "47.44272",
    "lng": "13.90122"
  },
  {
    "country": "AT",
    "name": "Grins",
    "lat": "47.14034",
    "lng": "10.51409"
  },
  {
    "country": "AT",
    "name": "Grimmenstein",
    "lat": "47.61635",
    "lng": "16.12724"
  },
  {
    "country": "AT",
    "name": "Griffen",
    "lat": "46.70444",
    "lng": "14.73278"
  },
  {
    "country": "AT",
    "name": "Grieskirchen",
    "lat": "48.23333",
    "lng": "13.83333"
  },
  {
    "country": "AT",
    "name": "Gries im Sellrain",
    "lat": "47.19554",
    "lng": "11.15619"
  },
  {
    "country": "AT",
    "name": "Gries am Brenner",
    "lat": "47.03849",
    "lng": "11.48131"
  },
  {
    "country": "AT",
    "name": "Gresten",
    "lat": "47.98521",
    "lng": "15.02552"
  },
  {
    "country": "AT",
    "name": "Gressenberg",
    "lat": "46.8",
    "lng": "15.11667"
  },
  {
    "country": "AT",
    "name": "Greisdorf",
    "lat": "46.91667",
    "lng": "15.21667"
  },
  {
    "country": "AT",
    "name": "Greifenburg",
    "lat": "46.75027",
    "lng": "13.17982"
  },
  {
    "country": "AT",
    "name": "Graz",
    "lat": "47.06667",
    "lng": "15.45"
  },
  {
    "country": "AT",
    "name": "Gratwein",
    "lat": "47.11667",
    "lng": "15.31667"
  },
  {
    "country": "AT",
    "name": "Gratkorn",
    "lat": "47.13333",
    "lng": "15.35"
  },
  {
    "country": "AT",
    "name": "Grän",
    "lat": "47.5",
    "lng": "10.55"
  },
  {
    "country": "AT",
    "name": "Grambach",
    "lat": "47.01667",
    "lng": "15.5"
  },
  {
    "country": "AT",
    "name": "Gramatneusiedl",
    "lat": "48.0304",
    "lng": "16.48936"
  },
  {
    "country": "AT",
    "name": "Gramastetten",
    "lat": "48.38028",
    "lng": "14.19185"
  },
  {
    "country": "AT",
    "name": "Gramais",
    "lat": "47.26667",
    "lng": "10.53333"
  },
  {
    "country": "AT",
    "name": "Grafenwörth",
    "lat": "48.4079",
    "lng": "15.77826"
  },
  {
    "country": "AT",
    "name": "Grafenstein",
    "lat": "46.61393",
    "lng": "14.46719"
  },
  {
    "country": "AT",
    "name": "Grafenschlag",
    "lat": "48.5",
    "lng": "15.16667"
  },
  {
    "country": "AT",
    "name": "Grafenschachen",
    "lat": "47.36667",
    "lng": "16.06667"
  },
  {
    "country": "AT",
    "name": "Grafenegg",
    "lat": "48.4304",
    "lng": "15.74907"
  },
  {
    "country": "AT",
    "name": "Grafendorf bei Hartberg",
    "lat": "47.34028",
    "lng": "15.9906"
  },
  {
    "country": "AT",
    "name": "Grabersdorf",
    "lat": "46.84306",
    "lng": "15.82472"
  },
  {
    "country": "AT",
    "name": "Götzis",
    "lat": "47.33306",
    "lng": "9.63306"
  },
  {
    "country": "AT",
    "name": "Götzens",
    "lat": "47.23606",
    "lng": "11.31154"
  },
  {
    "country": "AT",
    "name": "Götzendorf an der Leitha",
    "lat": "48.01667",
    "lng": "16.58333"
  },
  {
    "country": "AT",
    "name": "Göstling an der Ybbs",
    "lat": "47.80664",
    "lng": "14.93797"
  },
  {
    "country": "AT",
    "name": "Gösting",
    "lat": "47.09788",
    "lng": "15.39777"
  },
  {
    "country": "AT",
    "name": "Gössendorf",
    "lat": "46.98333",
    "lng": "15.48333"
  },
  {
    "country": "AT",
    "name": "Gossendorf",
    "lat": "46.91076",
    "lng": "15.93043"
  },
  {
    "country": "AT",
    "name": "Gössenberg",
    "lat": "47.41667",
    "lng": "13.81667"
  },
  {
    "country": "AT",
    "name": "Gosdorf",
    "lat": "46.72778",
    "lng": "15.7925"
  },
  {
    "country": "AT",
    "name": "Göpfritz an der Wild",
    "lat": "48.72497",
    "lng": "15.40236"
  },
  {
    "country": "AT",
    "name": "Gols",
    "lat": "47.89689",
    "lng": "16.91113"
  },
  {
    "country": "AT",
    "name": "Golling an der Salzach",
    "lat": "47.6",
    "lng": "13.16667"
  },
  {
    "country": "AT",
    "name": "Göllersdorf",
    "lat": "48.49357",
    "lng": "16.11943"
  },
  {
    "country": "AT",
    "name": "Goldwörth",
    "lat": "48.32664",
    "lng": "14.10112"
  },
  {
    "country": "AT",
    "name": "Goldegg",
    "lat": "47.31875",
    "lng": "13.09922"
  },
  {
    "country": "AT",
    "name": "Going",
    "lat": "47.51332",
    "lng": "12.33164"
  },
  {
    "country": "AT",
    "name": "Göfis",
    "lat": "47.23356",
    "lng": "9.63458"
  },
  {
    "country": "AT",
    "name": "Gnesau",
    "lat": "46.77544",
    "lng": "13.96251"
  },
  {
    "country": "AT",
    "name": "Gnas",
    "lat": "46.87306",
    "lng": "15.82528"
  },
  {
    "country": "AT",
    "name": "Gnadendorf",
    "lat": "48.61667",
    "lng": "16.4"
  },
  {
    "country": "AT",
    "name": "Gmunden",
    "lat": "47.91839",
    "lng": "13.79933"
  },
  {
    "country": "AT",
    "name": "Gmünd",
    "lat": "48.7683",
    "lng": "14.9808"
  },
  {
    "country": "AT",
    "name": "Gmünd",
    "lat": "46.90722",
    "lng": "13.52944"
  },
  {
    "country": "AT",
    "name": "Glojach",
    "lat": "46.86667",
    "lng": "15.66667"
  },
  {
    "country": "AT",
    "name": "Gloggnitz",
    "lat": "47.67487",
    "lng": "15.93893"
  },
  {
    "country": "AT",
    "name": "Glödnitz",
    "lat": "46.87398",
    "lng": "14.11915"
  },
  {
    "country": "AT",
    "name": "Globasnitz",
    "lat": "46.55694",
    "lng": "14.70278"
  },
  {
    "country": "AT",
    "name": "Glinzendorf",
    "lat": "48.24605",
    "lng": "16.6406"
  },
  {
    "country": "AT",
    "name": "Gleisdorf",
    "lat": "47.10559",
    "lng": "15.71011"
  },
  {
    "country": "AT",
    "name": "Gleinstätten",
    "lat": "46.75361",
    "lng": "15.36972"
  },
  {
    "country": "AT",
    "name": "Glanegg",
    "lat": "46.72259",
    "lng": "14.19893"
  },
  {
    "country": "AT",
    "name": "Gießhübl",
    "lat": "48.0978",
    "lng": "16.23479"
  },
  {
    "country": "AT",
    "name": "Gföhl",
    "lat": "48.51667",
    "lng": "15.48333"
  },
  {
    "country": "AT",
    "name": "Gersdorf an der Feistritz",
    "lat": "47.16667",
    "lng": "15.85"
  },
  {
    "country": "AT",
    "name": "Gerersdorf",
    "lat": "48.20088",
    "lng": "15.55613"
  },
  {
    "country": "AT",
    "name": "Gerasdorf bei Wien",
    "lat": "48.29447",
    "lng": "16.46765"
  },
  {
    "country": "AT",
    "name": "Geras",
    "lat": "48.79725",
    "lng": "15.67268"
  },
  {
    "country": "AT",
    "name": "Geistthal",
    "lat": "47.16667",
    "lng": "15.16667"
  },
  {
    "country": "AT",
    "name": "Gedersdorf",
    "lat": "48.43319",
    "lng": "15.68865"
  },
  {
    "country": "AT",
    "name": "Gaweinstal",
    "lat": "48.48003",
    "lng": "16.5879"
  },
  {
    "country": "AT",
    "name": "Gaubitsch",
    "lat": "48.65",
    "lng": "16.38333"
  },
  {
    "country": "AT",
    "name": "Gattendorf",
    "lat": "48.01667",
    "lng": "16.98333"
  },
  {
    "country": "AT",
    "name": "Gastern",
    "lat": "48.89446",
    "lng": "15.22027"
  },
  {
    "country": "AT",
    "name": "Gasen",
    "lat": "47.38333",
    "lng": "15.56667"
  },
  {
    "country": "AT",
    "name": "Gaschurn",
    "lat": "46.98584",
    "lng": "10.02702"
  },
  {
    "country": "AT",
    "name": "Garsten",
    "lat": "48.0224",
    "lng": "14.40747"
  },
  {
    "country": "AT",
    "name": "Gars am Kamp",
    "lat": "48.58899",
    "lng": "15.65363"
  },
  {
    "country": "AT",
    "name": "Garanas",
    "lat": "46.76667",
    "lng": "15.11667"
  },
  {
    "country": "AT",
    "name": "Ganz",
    "lat": "47.6",
    "lng": "15.68333"
  },
  {
    "country": "AT",
    "name": "Gänserndorf",
    "lat": "48.33925",
    "lng": "16.72016"
  },
  {
    "country": "AT",
    "name": "Bad Gams",
    "lat": "46.87111",
    "lng": "15.22472"
  },
  {
    "country": "AT",
    "name": "Gams bei Hieflau",
    "lat": "47.66667",
    "lng": "14.78333"
  },
  {
    "country": "AT",
    "name": "Gampern",
    "lat": "47.98745",
    "lng": "13.55927"
  },
  {
    "country": "AT",
    "name": "Gamlitz",
    "lat": "46.72028",
    "lng": "15.55333"
  },
  {
    "country": "AT",
    "name": "Gaming",
    "lat": "47.929",
    "lng": "15.08818"
  },
  {
    "country": "AT",
    "name": "Galtür",
    "lat": "46.96667",
    "lng": "10.18333"
  },
  {
    "country": "AT",
    "name": "Gallzein",
    "lat": "47.36807",
    "lng": "11.77159"
  },
  {
    "country": "AT",
    "name": "Gallneukirchen",
    "lat": "48.35363",
    "lng": "14.41604"
  },
  {
    "country": "AT",
    "name": "Gallmannsegg",
    "lat": "47.18333",
    "lng": "15.06667"
  },
  {
    "country": "AT",
    "name": "Gallizien",
    "lat": "46.55",
    "lng": "14.51667"
  },
  {
    "country": "AT",
    "name": "Gaißau",
    "lat": "47.46667",
    "lng": "9.6"
  },
  {
    "country": "AT",
    "name": "Gaflenz",
    "lat": "47.89511",
    "lng": "14.72477"
  },
  {
    "country": "AT",
    "name": "Gablitz",
    "lat": "48.22856",
    "lng": "16.15437"
  },
  {
    "country": "AT",
    "name": "Gabersdorf",
    "lat": "46.77722",
    "lng": "15.58417"
  },
  {
    "country": "AT",
    "name": "Gaal",
    "lat": "47.27268",
    "lng": "14.67003"
  },
  {
    "country": "AT",
    "name": "Gaaden",
    "lat": "48.05364",
    "lng": "16.20003"
  },
  {
    "country": "AT",
    "name": "Fußach",
    "lat": "47.47933",
    "lng": "9.66278"
  },
  {
    "country": "AT",
    "name": "Fuschl am See",
    "lat": "47.8",
    "lng": "13.3"
  },
  {
    "country": "AT",
    "name": "Furth an der Triesting",
    "lat": "47.97326",
    "lng": "15.97326"
  },
  {
    "country": "AT",
    "name": "Fürstenfeld",
    "lat": "47.05",
    "lng": "16.08333"
  },
  {
    "country": "AT",
    "name": "Fulpmes",
    "lat": "47.15202",
    "lng": "11.34922"
  },
  {
    "country": "AT",
    "name": "Fügenberg",
    "lat": "47.3521",
    "lng": "11.84173"
  },
  {
    "country": "AT",
    "name": "Fügen",
    "lat": "47.347",
    "lng": "11.84939"
  },
  {
    "country": "AT",
    "name": "Frohnleiten",
    "lat": "47.26667",
    "lng": "15.31667"
  },
  {
    "country": "AT",
    "name": "Fritzens",
    "lat": "47.3",
    "lng": "11.58333"
  },
  {
    "country": "AT",
    "name": "Friesach",
    "lat": "46.95528",
    "lng": "14.40583"
  },
  {
    "country": "AT",
    "name": "Friedberg",
    "lat": "47.43333",
    "lng": "16.05"
  },
  {
    "country": "AT",
    "name": "Fresach",
    "lat": "46.71556",
    "lng": "13.69083"
  },
  {
    "country": "AT",
    "name": "Freistadt",
    "lat": "48.51103",
    "lng": "14.50453"
  },
  {
    "country": "AT",
    "name": "Freiland bei Deutschlandsberg",
    "lat": "46.83333",
    "lng": "15.13333"
  },
  {
    "country": "AT",
    "name": "Fraxern",
    "lat": "47.31498",
    "lng": "9.67391"
  },
  {
    "country": "AT",
    "name": "Frauenkirchen",
    "lat": "47.83678",
    "lng": "16.92581"
  },
  {
    "country": "AT",
    "name": "Frauenberg",
    "lat": "47.42855",
    "lng": "15.34206"
  },
  {
    "country": "AT",
    "name": "Frannach",
    "lat": "46.91306",
    "lng": "15.63361"
  },
  {
    "country": "AT",
    "name": "Frankenmarkt",
    "lat": "47.98333",
    "lng": "13.41667"
  },
  {
    "country": "AT",
    "name": "Frankenfels",
    "lat": "47.98234",
    "lng": "15.32593"
  },
  {
    "country": "AT",
    "name": "Frankenburg",
    "lat": "48.06844",
    "lng": "13.49065"
  },
  {
    "country": "AT",
    "name": "Forstau",
    "lat": "47.37842",
    "lng": "13.55558"
  },
  {
    "country": "AT",
    "name": "Fornach",
    "lat": "48.02277",
    "lng": "13.42941"
  },
  {
    "country": "AT",
    "name": "Forchach",
    "lat": "47.41667",
    "lng": "10.58333"
  },
  {
    "country": "AT",
    "name": "Fohnsdorf",
    "lat": "47.2",
    "lng": "14.68333"
  },
  {
    "country": "AT",
    "name": "Floing",
    "lat": "47.26356",
    "lng": "15.7465"
  },
  {
    "country": "AT",
    "name": "Flirsch",
    "lat": "47.15",
    "lng": "10.4"
  },
  {
    "country": "AT",
    "name": "Flaurling",
    "lat": "47.29143",
    "lng": "11.12319"
  },
  {
    "country": "AT",
    "name": "Flattach",
    "lat": "46.93861",
    "lng": "13.13444"
  },
  {
    "country": "AT",
    "name": "Flatschach",
    "lat": "47.21667",
    "lng": "14.75"
  },
  {
    "country": "AT",
    "name": "Fladnitz im Raabtal",
    "lat": "46.99167",
    "lng": "15.78528"
  },
  {
    "country": "AT",
    "name": "Flachau",
    "lat": "47.34406",
    "lng": "13.39148"
  },
  {
    "country": "AT",
    "name": "Fiss",
    "lat": "47.05714",
    "lng": "10.61747"
  },
  {
    "country": "AT",
    "name": "Fischbach",
    "lat": "47.44234",
    "lng": "15.64972"
  },
  {
    "country": "AT",
    "name": "Fischamend Dorf",
    "lat": "48.11884",
    "lng": "16.61287"
  },
  {
    "country": "AT",
    "name": "Filzmoos",
    "lat": "47.43333",
    "lng": "13.51667"
  },
  {
    "country": "AT",
    "name": "Fieberbrunn",
    "lat": "47.47626",
    "lng": "12.54347"
  },
  {
    "country": "AT",
    "name": "Ferschnitz",
    "lat": "48.09419",
    "lng": "14.98454"
  },
  {
    "country": "AT",
    "name": "Fernitz",
    "lat": "46.97389",
    "lng": "15.50111"
  },
  {
    "country": "AT",
    "name": "Ferndorf",
    "lat": "46.73651",
    "lng": "13.62661"
  },
  {
    "country": "AT",
    "name": "Ferlach",
    "lat": "46.52694",
    "lng": "14.30194"
  },
  {
    "country": "AT",
    "name": "Fendels",
    "lat": "47.0539",
    "lng": "10.67777"
  },
  {
    "country": "AT",
    "name": "Fels am Wagram",
    "lat": "48.43333",
    "lng": "15.81667"
  },
  {
    "country": "AT",
    "name": "Felixdorf",
    "lat": "47.88159",
    "lng": "16.24208"
  },
  {
    "country": "AT",
    "name": "Feldkirchen in Kärnten",
    "lat": "46.72368",
    "lng": "14.0958"
  },
  {
    "country": "AT",
    "name": "Feldkirchen bei Graz",
    "lat": "47.01667",
    "lng": "15.45"
  },
  {
    "country": "AT",
    "name": "Feldkirchen an der Donau",
    "lat": "48.34524",
    "lng": "14.05134"
  },
  {
    "country": "AT",
    "name": "Feldkirch",
    "lat": "47.23306",
    "lng": "9.6"
  },
  {
    "country": "AT",
    "name": "Feldbach",
    "lat": "46.95306",
    "lng": "15.88833"
  },
  {
    "country": "AT",
    "name": "Feld am See",
    "lat": "46.77639",
    "lng": "13.74778"
  },
  {
    "country": "AT",
    "name": "Feistritz ob Bleiburg",
    "lat": "46.55",
    "lng": "14.76667"
  },
  {
    "country": "AT",
    "name": "Feistritz im Rosental",
    "lat": "46.51667",
    "lng": "14.16667"
  },
  {
    "country": "AT",
    "name": "Feistritz bei Knittelfeld",
    "lat": "47.26802",
    "lng": "14.89334"
  },
  {
    "country": "AT",
    "name": "Feistritz an der Gail",
    "lat": "46.5775",
    "lng": "13.60667"
  },
  {
    "country": "AT",
    "name": "Feistritz am Wechsel",
    "lat": "47.6",
    "lng": "16.05"
  },
  {
    "country": "AT",
    "name": "Fehring",
    "lat": "46.94",
    "lng": "16.00806"
  },
  {
    "country": "AT",
    "name": "Fallbach",
    "lat": "48.65",
    "lng": "16.41667"
  },
  {
    "country": "AT",
    "name": "Falkenstein",
    "lat": "48.71667",
    "lng": "16.58333"
  },
  {
    "country": "AT",
    "name": "St. Ruprecht-Falkendorf",
    "lat": "47.1011",
    "lng": "14.01752"
  },
  {
    "country": "AT",
    "name": "Faistenau",
    "lat": "47.77767",
    "lng": "13.23393"
  },
  {
    "country": "AT",
    "name": "Euratsfeld",
    "lat": "48.08181",
    "lng": "14.93154"
  },
  {
    "country": "AT",
    "name": "Eugendorf",
    "lat": "47.86667",
    "lng": "13.11667"
  },
  {
    "country": "AT",
    "name": "Eschenau",
    "lat": "48.04825",
    "lng": "15.56694"
  },
  {
    "country": "AT",
    "name": "Ernstbrunn",
    "lat": "48.53333",
    "lng": "16.35"
  },
  {
    "country": "AT",
    "name": "Erlauf",
    "lat": "48.18333",
    "lng": "15.18333"
  },
  {
    "country": "AT",
    "name": "Bad Erlach",
    "lat": "47.72722",
    "lng": "16.21444"
  },
  {
    "country": "AT",
    "name": "Erl",
    "lat": "47.68333",
    "lng": "12.18333"
  },
  {
    "country": "AT",
    "name": "Enzersfeld",
    "lat": "48.36338",
    "lng": "16.42387"
  },
  {
    "country": "AT",
    "name": "Enzersdorf an der Fischa",
    "lat": "48.08502",
    "lng": "16.60832"
  },
  {
    "country": "AT",
    "name": "Enzenreith",
    "lat": "47.66839",
    "lng": "15.95249"
  },
  {
    "country": "AT",
    "name": "Ennsdorf",
    "lat": "48.21181",
    "lng": "14.5029"
  },
  {
    "country": "AT",
    "name": "Enns",
    "lat": "48.21346",
    "lng": "14.47612"
  },
  {
    "country": "AT",
    "name": "Engerwitzdorf",
    "lat": "48.34507",
    "lng": "14.44204"
  },
  {
    "country": "AT",
    "name": "Engelhartstetten",
    "lat": "48.1816",
    "lng": "16.88367"
  },
  {
    "country": "AT",
    "name": "Empersdorf",
    "lat": "46.98333",
    "lng": "15.6"
  },
  {
    "country": "AT",
    "name": "Emmersdorf an der Donau",
    "lat": "48.2414",
    "lng": "15.33721"
  },
  {
    "country": "AT",
    "name": "Eltendorf",
    "lat": "47.0087",
    "lng": "16.20239"
  },
  {
    "country": "AT",
    "name": "Elsbethen",
    "lat": "47.75",
    "lng": "13.08333"
  },
  {
    "country": "AT",
    "name": "Elmen",
    "lat": "47.34039",
    "lng": "10.54318"
  },
  {
    "country": "AT",
    "name": "Ellmau",
    "lat": "47.51378",
    "lng": "12.29937"
  },
  {
    "country": "AT",
    "name": "Elixhausen",
    "lat": "47.86667",
    "lng": "13.06667"
  },
  {
    "country": "AT",
    "name": "Elbigenalp",
    "lat": "47.29041",
    "lng": "10.43607"
  },
  {
    "country": "AT",
    "name": "Eisgarn",
    "lat": "48.91675",
    "lng": "15.1032"
  },
  {
    "country": "AT",
    "name": "Eisenstadt",
    "lat": "47.84565",
    "lng": "16.52327"
  },
  {
    "country": "AT",
    "name": "Bad Eisenkappel",
    "lat": "46.48841",
    "lng": "14.59139"
  },
  {
    "country": "AT",
    "name": "Eisenerz",
    "lat": "47.53333",
    "lng": "14.88333"
  },
  {
    "country": "AT",
    "name": "Eisbach",
    "lat": "47.11667",
    "lng": "15.26667"
  },
  {
    "country": "AT",
    "name": "Eidenberg",
    "lat": "48.39439",
    "lng": "14.23313"
  },
  {
    "country": "AT",
    "name": "Eichgraben",
    "lat": "48.17204",
    "lng": "15.98391"
  },
  {
    "country": "AT",
    "name": "Eichfeld",
    "lat": "46.72528",
    "lng": "15.76806"
  },
  {
    "country": "AT",
    "name": "Eichenberg",
    "lat": "47.53333",
    "lng": "9.78333"
  },
  {
    "country": "AT",
    "name": "Eichberg",
    "lat": "47.38188",
    "lng": "15.97356"
  },
  {
    "country": "AT",
    "name": "Eibiswald",
    "lat": "46.68667",
    "lng": "15.24722"
  },
  {
    "country": "AT",
    "name": "Ehrenhausen",
    "lat": "46.72417",
    "lng": "15.58667"
  },
  {
    "country": "AT",
    "name": "Ehenbichl",
    "lat": "47.46667",
    "lng": "10.7"
  },
  {
    "country": "AT",
    "name": "Eggersdorf bei Graz",
    "lat": "47.12338",
    "lng": "15.60084"
  },
  {
    "country": "AT",
    "name": "Eggern",
    "lat": "48.90829",
    "lng": "15.14877"
  },
  {
    "country": "AT",
    "name": "Eggenburg",
    "lat": "48.63892",
    "lng": "15.81903"
  },
  {
    "country": "AT",
    "name": "Egg",
    "lat": "47.43154",
    "lng": "9.89762"
  },
  {
    "country": "AT",
    "name": "Edt bei Lambach",
    "lat": "48.11667",
    "lng": "13.88333"
  },
  {
    "country": "AT",
    "name": "Edlitz",
    "lat": "47.59797",
    "lng": "16.14052"
  },
  {
    "country": "AT",
    "name": "Edelstal",
    "lat": "48.1",
    "lng": "16.98333"
  },
  {
    "country": "AT",
    "name": "Edelsgrub",
    "lat": "47.03333",
    "lng": "15.6"
  },
  {
    "country": "AT",
    "name": "Edelschrott",
    "lat": "47.02156",
    "lng": "15.05266"
  },
  {
    "country": "AT",
    "name": "Edelsbach bei Feldbach",
    "lat": "46.98944",
    "lng": "15.83694"
  },
  {
    "country": "AT",
    "name": "Eckartsau",
    "lat": "48.14507",
    "lng": "16.79737"
  },
  {
    "country": "AT",
    "name": "Echsenbach",
    "lat": "48.71667",
    "lng": "15.21667"
  },
  {
    "country": "AT",
    "name": "Ebreichsdorf",
    "lat": "47.95579",
    "lng": "16.40705"
  },
  {
    "country": "AT",
    "name": "Eberstein",
    "lat": "46.80806",
    "lng": "14.56"
  },
  {
    "country": "AT",
    "name": "Ebersdorf",
    "lat": "47.19852",
    "lng": "15.96219"
  },
  {
    "country": "AT",
    "name": "Eberndorf",
    "lat": "46.59139",
    "lng": "14.64361"
  },
  {
    "country": "AT",
    "name": "Ebergassing",
    "lat": "48.04567",
    "lng": "16.51709"
  },
  {
    "country": "AT",
    "name": "Eberau",
    "lat": "47.10764",
    "lng": "16.46044"
  },
  {
    "country": "AT",
    "name": "Ebenthal",
    "lat": "48.43333",
    "lng": "16.78333"
  },
  {
    "country": "AT",
    "name": "Ebenthal",
    "lat": "46.60806",
    "lng": "14.36417"
  },
  {
    "country": "AT",
    "name": "Ebensee",
    "lat": "47.80716",
    "lng": "13.779"
  },
  {
    "country": "AT",
    "name": "Eben im Pongau",
    "lat": "47.4",
    "lng": "13.4"
  },
  {
    "country": "AT",
    "name": "Ebenfurth",
    "lat": "47.87738",
    "lng": "16.36731"
  },
  {
    "country": "AT",
    "name": "Ebenau",
    "lat": "47.79073",
    "lng": "13.17527"
  },
  {
    "country": "AT",
    "name": "Eben am Achensee",
    "lat": "47.4138",
    "lng": "11.76138"
  },
  {
    "country": "AT",
    "name": "Ebbs",
    "lat": "47.63333",
    "lng": "12.21667"
  },
  {
    "country": "AT",
    "name": "Dürnstein in der Steiermark",
    "lat": "46.98833",
    "lng": "14.39167"
  },
  {
    "country": "AT",
    "name": "Dürnstein",
    "lat": "48.39582",
    "lng": "15.51973"
  },
  {
    "country": "AT",
    "name": "Dürnkrut",
    "lat": "48.47315",
    "lng": "16.85062"
  },
  {
    "country": "AT",
    "name": "Düns",
    "lat": "47.22353",
    "lng": "9.71663"
  },
  {
    "country": "AT",
    "name": "Droß",
    "lat": "48.46393",
    "lng": "15.57561"
  },
  {
    "country": "AT",
    "name": "Drösing",
    "lat": "48.539",
    "lng": "16.90264"
  },
  {
    "country": "AT",
    "name": "Drasenhofen",
    "lat": "48.75",
    "lng": "16.65"
  },
  {
    "country": "AT",
    "name": "Dornbirn",
    "lat": "47.41427",
    "lng": "9.74195"
  },
  {
    "country": "AT",
    "name": "Dorfstetten",
    "lat": "48.32573",
    "lng": "14.98218"
  },
  {
    "country": "AT",
    "name": "Dorfgastein",
    "lat": "47.24172",
    "lng": "13.10223"
  },
  {
    "country": "AT",
    "name": "Dorfbeuern",
    "lat": "48.01667",
    "lng": "13.01667"
  },
  {
    "country": "AT",
    "name": "Doren",
    "lat": "47.49278",
    "lng": "9.87972"
  },
  {
    "country": "AT",
    "name": "Donnerskirchen",
    "lat": "47.89425",
    "lng": "16.64635"
  },
  {
    "country": "AT",
    "name": "Donnersbach",
    "lat": "47.46139",
    "lng": "14.12972"
  },
  {
    "country": "AT",
    "name": "Dölsach",
    "lat": "46.82833",
    "lng": "12.84528"
  },
  {
    "country": "AT",
    "name": "Dobersberg",
    "lat": "48.9151",
    "lng": "15.32188"
  },
  {
    "country": "AT",
    "name": "Diex",
    "lat": "46.75",
    "lng": "14.6"
  },
  {
    "country": "AT",
    "name": "Dietersdorf am Gnasbach",
    "lat": "46.80917",
    "lng": "15.81167"
  },
  {
    "country": "AT",
    "name": "Dienten am Hochkönig",
    "lat": "47.38324",
    "lng": "13.00369"
  },
  {
    "country": "AT",
    "name": "Dienersdorf",
    "lat": "47.23979",
    "lng": "15.90142"
  },
  {
    "country": "AT",
    "name": "Deutsch-Wagram",
    "lat": "48.29972",
    "lng": "16.56667"
  },
  {
    "country": "AT",
    "name": "Deutschlandsberg",
    "lat": "46.81528",
    "lng": "15.22222"
  },
  {
    "country": "AT",
    "name": "Deutschkreutz",
    "lat": "47.6",
    "lng": "16.63333"
  },
  {
    "country": "AT",
    "name": "Deutsch Kaltenbrunn",
    "lat": "47.09455",
    "lng": "16.13145"
  },
  {
    "country": "AT",
    "name": "Deutsch Jahrndorf",
    "lat": "48.01667",
    "lng": "17.1"
  },
  {
    "country": "AT",
    "name": "Deutsch Goritz",
    "lat": "46.75083",
    "lng": "15.82944"
  },
  {
    "country": "AT",
    "name": "Deutschfeistritz",
    "lat": "47.19852",
    "lng": "15.33623"
  },
  {
    "country": "AT",
    "name": "Desselbrunn",
    "lat": "48.02145",
    "lng": "13.77027"
  },
  {
    "country": "AT",
    "name": "Dellach im Drautal",
    "lat": "46.7375",
    "lng": "13.07833"
  },
  {
    "country": "AT",
    "name": "Dellach",
    "lat": "46.66175",
    "lng": "13.07965"
  },
  {
    "country": "AT",
    "name": "Dechantskirchen",
    "lat": "47.41667",
    "lng": "16.01667"
  },
  {
    "country": "AT",
    "name": "Dalaas",
    "lat": "47.12446",
    "lng": "9.99104"
  },
  {
    "country": "AT",
    "name": "Bürs",
    "lat": "47.14972",
    "lng": "9.8"
  },
  {
    "country": "AT",
    "name": "Burgau",
    "lat": "47.14268",
    "lng": "16.09643"
  },
  {
    "country": "AT",
    "name": "Buchkirchen",
    "lat": "48.22427",
    "lng": "14.02242"
  },
  {
    "country": "AT",
    "name": "Buch bei Jenbach",
    "lat": "47.37447",
    "lng": "11.754"
  },
  {
    "country": "AT",
    "name": "Buchbach",
    "lat": "47.69648",
    "lng": "15.98425"
  },
  {
    "country": "AT",
    "name": "Brunn an der Wild",
    "lat": "48.69425",
    "lng": "15.52008"
  },
  {
    "country": "AT",
    "name": "Brunn am Gebirge",
    "lat": "48.10697",
    "lng": "16.28466"
  },
  {
    "country": "AT",
    "name": "Bruckneudorf",
    "lat": "48.01667",
    "lng": "16.78333"
  },
  {
    "country": "AT",
    "name": "Brückl",
    "lat": "46.75167",
    "lng": "14.53667"
  },
  {
    "country": "AT",
    "name": "Bruck an der Mur",
    "lat": "47.41667",
    "lng": "15.28333"
  },
  {
    "country": "AT",
    "name": "Bruck an der Leitha",
    "lat": "48.01667",
    "lng": "16.76667"
  },
  {
    "country": "AT",
    "name": "Bruck an der Großglocknerstraße",
    "lat": "47.28494",
    "lng": "12.8231"
  },
  {
    "country": "AT",
    "name": "Bruck am Ziller",
    "lat": "47.38998",
    "lng": "11.85124"
  },
  {
    "country": "AT",
    "name": "Bromberg",
    "lat": "47.66539",
    "lng": "16.2099"
  },
  {
    "country": "AT",
    "name": "Brixlegg",
    "lat": "47.42942",
    "lng": "11.87794"
  },
  {
    "country": "AT",
    "name": "Brixen im Thale",
    "lat": "47.45",
    "lng": "12.25"
  },
  {
    "country": "AT",
    "name": "Bretstein",
    "lat": "47.33333",
    "lng": "14.41667"
  },
  {
    "country": "AT",
    "name": "Breitenwang",
    "lat": "47.48333",
    "lng": "10.73333"
  },
  {
    "country": "AT",
    "name": "Breitenfurt bei Wien",
    "lat": "48.13333",
    "lng": "16.15"
  },
  {
    "country": "AT",
    "name": "Breitenfeld an der Rittschein",
    "lat": "47.03333",
    "lng": "15.95"
  },
  {
    "country": "AT",
    "name": "Breitenfeld am Tannenriegel",
    "lat": "46.85",
    "lng": "15.63333"
  },
  {
    "country": "AT",
    "name": "Breitenbrunn",
    "lat": "47.94452",
    "lng": "16.73149"
  },
  {
    "country": "AT",
    "name": "Breitenbach am Inn",
    "lat": "47.47829",
    "lng": "11.97372"
  },
  {
    "country": "AT",
    "name": "Breitenau",
    "lat": "47.73355",
    "lng": "16.14338"
  },
  {
    "country": "AT",
    "name": "Bregenz",
    "lat": "47.50311",
    "lng": "9.7471"
  },
  {
    "country": "AT",
    "name": "Braunau am Inn",
    "lat": "48.25628",
    "lng": "13.04343"
  },
  {
    "country": "AT",
    "name": "Brandenberg",
    "lat": "47.49053",
    "lng": "11.89459"
  },
  {
    "country": "AT",
    "name": "Bramberg am Wildkogel",
    "lat": "47.26979",
    "lng": "12.3385"
  },
  {
    "country": "AT",
    "name": "Böheimkirchen",
    "lat": "48.19779",
    "lng": "15.76178"
  },
  {
    "country": "AT",
    "name": "Bocksdorf",
    "lat": "47.14256",
    "lng": "16.17784"
  },
  {
    "country": "AT",
    "name": "Bockfließ",
    "lat": "48.36",
    "lng": "16.60389"
  },
  {
    "country": "AT",
    "name": "Bad Blumau",
    "lat": "47.11667",
    "lng": "16.05"
  },
  {
    "country": "AT",
    "name": "Bludesch",
    "lat": "47.2",
    "lng": "9.73306"
  },
  {
    "country": "AT",
    "name": "Bludenz",
    "lat": "47.15476",
    "lng": "9.82255"
  },
  {
    "country": "AT",
    "name": "Blons",
    "lat": "47.22327",
    "lng": "9.83414"
  },
  {
    "country": "AT",
    "name": "Blindenmarkt",
    "lat": "48.12749",
    "lng": "14.98647"
  },
  {
    "country": "AT",
    "name": "Bleiburg/Pliberk",
    "lat": "46.59",
    "lng": "14.79889"
  },
  {
    "country": "AT",
    "name": "Blaindorf",
    "lat": "47.17498",
    "lng": "15.86795"
  },
  {
    "country": "AT",
    "name": "Bizau",
    "lat": "47.36906",
    "lng": "9.92839"
  },
  {
    "country": "AT",
    "name": "Bischofstetten",
    "lat": "48.12222",
    "lng": "15.46909"
  },
  {
    "country": "AT",
    "name": "Bischofshofen",
    "lat": "47.41667",
    "lng": "13.21667"
  },
  {
    "country": "AT",
    "name": "Bisamberg",
    "lat": "48.33333",
    "lng": "16.35"
  },
  {
    "country": "AT",
    "name": "Birkfeld",
    "lat": "47.35",
    "lng": "15.68333"
  },
  {
    "country": "AT",
    "name": "Birgitz",
    "lat": "47.23536",
    "lng": "11.29922"
  },
  {
    "country": "AT",
    "name": "Bildstein",
    "lat": "47.45",
    "lng": "9.76667"
  },
  {
    "country": "AT",
    "name": "Bierbaum am Auersbach",
    "lat": "46.82949",
    "lng": "15.79237"
  },
  {
    "country": "AT",
    "name": "Biedermannsdorf",
    "lat": "48.08393",
    "lng": "16.34542"
  },
  {
    "country": "AT",
    "name": "Bichlbach",
    "lat": "47.42033",
    "lng": "10.79042"
  },
  {
    "country": "AT",
    "name": "Biberwier",
    "lat": "47.38333",
    "lng": "10.9"
  },
  {
    "country": "AT",
    "name": "Biberbach",
    "lat": "48.03006",
    "lng": "14.70795"
  },
  {
    "country": "AT",
    "name": "Bezau",
    "lat": "47.38478",
    "lng": "9.90139"
  },
  {
    "country": "AT",
    "name": "Berwang",
    "lat": "47.40807",
    "lng": "10.74735"
  },
  {
    "country": "AT",
    "name": "Bernstein",
    "lat": "47.4",
    "lng": "16.25"
  },
  {
    "country": "AT",
    "name": "Bernhardsthal",
    "lat": "48.69158",
    "lng": "16.86951"
  },
  {
    "country": "AT",
    "name": "Berndorf bei Salzburg",
    "lat": "47.99532",
    "lng": "13.06146"
  },
  {
    "country": "AT",
    "name": "Berndorf",
    "lat": "47.94567",
    "lng": "16.10973"
  },
  {
    "country": "AT",
    "name": "Bergheim",
    "lat": "47.83333",
    "lng": "13.03333"
  },
  {
    "country": "AT",
    "name": "Berg",
    "lat": "48.10147",
    "lng": "17.03842"
  },
  {
    "country": "AT",
    "name": "Behamberg",
    "lat": "48.01667",
    "lng": "14.48333"
  },
  {
    "country": "AT",
    "name": "Baumkirchen",
    "lat": "47.3",
    "lng": "11.56667"
  },
  {
    "country": "AT",
    "name": "Baumgarten bei Gnas",
    "lat": "46.91667",
    "lng": "15.76667"
  },
  {
    "country": "AT",
    "name": "Bartholomäberg",
    "lat": "47.08333",
    "lng": "9.9"
  },
  {
    "country": "AT",
    "name": "Bärnkopf",
    "lat": "48.39046",
    "lng": "15.00479"
  },
  {
    "country": "AT",
    "name": "Bärnbach",
    "lat": "47.03333",
    "lng": "15.85"
  },
  {
    "country": "AT",
    "name": "Baldramsdorf",
    "lat": "46.80111",
    "lng": "13.45333"
  },
  {
    "country": "AT",
    "name": "Bairisch Kölldorf",
    "lat": "46.86667",
    "lng": "15.93333"
  },
  {
    "country": "AT",
    "name": "Bad Wimsbach-Neydharting",
    "lat": "48.06667",
    "lng": "13.9"
  },
  {
    "country": "AT",
    "name": "Bad Vöslau",
    "lat": "47.96533",
    "lng": "16.21359"
  },
  {
    "country": "AT",
    "name": "Bad Tatzmannsdorf",
    "lat": "47.33126",
    "lng": "16.23067"
  },
  {
    "country": "AT",
    "name": "Bad Schönau",
    "lat": "47.49473",
    "lng": "16.2341"
  },
  {
    "country": "AT",
    "name": "Bad Schallerbach",
    "lat": "48.22999",
    "lng": "13.91925"
  },
  {
    "country": "AT",
    "name": "Bad Sankt Leonhard im Lavanttal",
    "lat": "46.96278",
    "lng": "14.79167"
  },
  {
    "country": "AT",
    "name": "Bad Ischl",
    "lat": "47.71109",
    "lng": "13.61893"
  },
  {
    "country": "AT",
    "name": "Bad Hofgastein",
    "lat": "47.17274",
    "lng": "13.09871"
  },
  {
    "country": "AT",
    "name": "Bad Hall",
    "lat": "48.03832",
    "lng": "14.20773"
  },
  {
    "country": "AT",
    "name": "Bad Goisern",
    "lat": "47.64252",
    "lng": "13.61609"
  },
  {
    "country": "AT",
    "name": "Bad Gleichenberg",
    "lat": "46.87556",
    "lng": "15.90861"
  },
  {
    "country": "AT",
    "name": "Bad Gastein",
    "lat": "47.11547",
    "lng": "13.13467"
  },
  {
    "country": "AT",
    "name": "Badersdorf",
    "lat": "47.2",
    "lng": "16.36667"
  },
  {
    "country": "AT",
    "name": "Baden",
    "lat": "48.00543",
    "lng": "16.23264"
  },
  {
    "country": "AT",
    "name": "Bad Deutsch-Altenburg",
    "lat": "48.13425",
    "lng": "16.90624"
  },
  {
    "country": "AT",
    "name": "Bad Aussee",
    "lat": "47.60998",
    "lng": "13.78243"
  },
  {
    "country": "AT",
    "name": "Bachmanning",
    "lat": "48.13104",
    "lng": "13.79436"
  },
  {
    "country": "AT",
    "name": "Axams",
    "lat": "47.23111",
    "lng": "11.27892"
  },
  {
    "country": "AT",
    "name": "Außervillgraten",
    "lat": "46.7875",
    "lng": "12.43139"
  },
  {
    "country": "AT",
    "name": "Aurach am Hongar",
    "lat": "47.95182",
    "lng": "13.67291"
  },
  {
    "country": "AT",
    "name": "Auersthal",
    "lat": "48.37373",
    "lng": "16.63596"
  },
  {
    "country": "AT",
    "name": "Auersbach",
    "lat": "47.01667",
    "lng": "15.86667"
  },
  {
    "country": "AT",
    "name": "Au am Leithaberge",
    "lat": "47.92296",
    "lng": "16.55794"
  },
  {
    "country": "AT",
    "name": "Au",
    "lat": "47.32176",
    "lng": "9.98067"
  },
  {
    "country": "AT",
    "name": "Atzesberg",
    "lat": "48.53959",
    "lng": "13.86936"
  },
  {
    "country": "AT",
    "name": "Atzenbrugg",
    "lat": "48.29119",
    "lng": "15.90614"
  },
  {
    "country": "AT",
    "name": "Atzbach",
    "lat": "48.08364",
    "lng": "13.70347"
  },
  {
    "country": "AT",
    "name": "Attersee",
    "lat": "47.91646",
    "lng": "13.53953"
  },
  {
    "country": "AT",
    "name": "Attendorf",
    "lat": "47.00426",
    "lng": "15.33897"
  },
  {
    "country": "AT",
    "name": "Asten",
    "lat": "48.21941",
    "lng": "14.41784"
  },
  {
    "country": "AT",
    "name": "Asperhofen",
    "lat": "48.24583",
    "lng": "15.92606"
  },
  {
    "country": "AT",
    "name": "Asparn an der Zaya",
    "lat": "48.58333",
    "lng": "16.5"
  },
  {
    "country": "AT",
    "name": "Arzl im Pitztal",
    "lat": "47.20712",
    "lng": "10.76261"
  },
  {
    "country": "AT",
    "name": "Arzberg",
    "lat": "47.25",
    "lng": "15.51667"
  },
  {
    "country": "AT",
    "name": "Arriach",
    "lat": "46.72921",
    "lng": "13.85046"
  },
  {
    "country": "AT",
    "name": "Arnoldstein",
    "lat": "46.54611",
    "lng": "13.71"
  },
  {
    "country": "AT",
    "name": "Arnfels",
    "lat": "46.67639",
    "lng": "15.40306"
  },
  {
    "country": "AT",
    "name": "Ardning",
    "lat": "47.5912",
    "lng": "14.36372"
  },
  {
    "country": "AT",
    "name": "Arbesbach",
    "lat": "48.49337",
    "lng": "14.95308"
  },
  {
    "country": "AT",
    "name": "Apfelberg",
    "lat": "47.2",
    "lng": "14.83333"
  },
  {
    "country": "AT",
    "name": "Apetlon",
    "lat": "47.74394",
    "lng": "16.8302"
  },
  {
    "country": "AT",
    "name": "Anthering",
    "lat": "47.88333",
    "lng": "13.01667"
  },
  {
    "country": "AT",
    "name": "Antau",
    "lat": "47.77377",
    "lng": "16.47984"
  },
  {
    "country": "AT",
    "name": "Ansfelden",
    "lat": "48.20969",
    "lng": "14.29004"
  },
  {
    "country": "AT",
    "name": "Anras",
    "lat": "46.77389",
    "lng": "12.56083"
  },
  {
    "country": "AT",
    "name": "Annaberg",
    "lat": "47.87134",
    "lng": "15.37648"
  },
  {
    "country": "AT",
    "name": "Anif",
    "lat": "47.75",
    "lng": "13.06667"
  },
  {
    "country": "AT",
    "name": "Angern an der March",
    "lat": "48.37778",
    "lng": "16.82806"
  },
  {
    "country": "AT",
    "name": "Anger",
    "lat": "47.27422",
    "lng": "15.69139"
  },
  {
    "country": "AT",
    "name": "Angath",
    "lat": "47.50758",
    "lng": "12.06513"
  },
  {
    "country": "AT",
    "name": "Andorf",
    "lat": "48.3713",
    "lng": "13.57412"
  },
  {
    "country": "AT",
    "name": "Andlersdorf",
    "lat": "48.18333",
    "lng": "16.66667"
  },
  {
    "country": "AT",
    "name": "Andelsbuch",
    "lat": "47.41167",
    "lng": "9.89326"
  },
  {
    "country": "AT",
    "name": "Andau",
    "lat": "47.77441",
    "lng": "17.03293"
  },
  {
    "country": "AT",
    "name": "Amstetten",
    "lat": "48.1229",
    "lng": "14.87206"
  },
  {
    "country": "AT",
    "name": "Ampass",
    "lat": "47.26251",
    "lng": "11.46226"
  },
  {
    "country": "AT",
    "name": "Amlach",
    "lat": "46.81639",
    "lng": "12.76361"
  },
  {
    "country": "AT",
    "name": "Altmünster",
    "lat": "47.90219",
    "lng": "13.76415"
  },
  {
    "country": "AT",
    "name": "Altmelon",
    "lat": "48.46222",
    "lng": "14.96552"
  },
  {
    "country": "AT",
    "name": "Altlichtenwarth",
    "lat": "48.64442",
    "lng": "16.79664"
  },
  {
    "country": "AT",
    "name": "Altlengbach",
    "lat": "48.15355",
    "lng": "15.92606"
  },
  {
    "country": "AT",
    "name": "Althofen",
    "lat": "46.87298",
    "lng": "14.47449"
  },
  {
    "country": "AT",
    "name": "Altheim",
    "lat": "48.25154",
    "lng": "13.23406"
  },
  {
    "country": "AT",
    "name": "Altenmarkt im Pongau",
    "lat": "47.38333",
    "lng": "13.41667"
  },
  {
    "country": "AT",
    "name": "Altenmarkt bei Sankt Gallen",
    "lat": "47.72327",
    "lng": "14.64838"
  },
  {
    "country": "AT",
    "name": "Altenmarkt bei Fürstenfeld",
    "lat": "47.06638",
    "lng": "16.04785"
  },
  {
    "country": "AT",
    "name": "Altenmarkt an der Triesting",
    "lat": "48.01553",
    "lng": "15.99661"
  },
  {
    "country": "AT",
    "name": "Altendorf",
    "lat": "47.65",
    "lng": "16.01667"
  },
  {
    "country": "AT",
    "name": "Altenburg",
    "lat": "48.64765",
    "lng": "15.59295"
  },
  {
    "country": "AT",
    "name": "Altenberg bei Linz",
    "lat": "48.37284",
    "lng": "14.35029"
  },
  {
    "country": "AT",
    "name": "Altaussee",
    "lat": "47.63844",
    "lng": "13.76278"
  },
  {
    "country": "AT",
    "name": "Altach",
    "lat": "47.35",
    "lng": "9.65"
  },
  {
    "country": "AT",
    "name": "Allhartsberg",
    "lat": "48.02633",
    "lng": "14.79009"
  },
  {
    "country": "AT",
    "name": "Allerheiligen im Mürztal",
    "lat": "47.46667",
    "lng": "15.4"
  },
  {
    "country": "AT",
    "name": "Allerheiligen bei Wildon",
    "lat": "46.91417",
    "lng": "15.55444"
  },
  {
    "country": "AT",
    "name": "Allentsteig",
    "lat": "48.69725",
    "lng": "15.32756"
  },
  {
    "country": "AT",
    "name": "Alland",
    "lat": "48.05829",
    "lng": "16.07901"
  },
  {
    "country": "AT",
    "name": "Aldrans",
    "lat": "47.25",
    "lng": "11.45"
  },
  {
    "country": "AT",
    "name": "Alberndorf in der Riedmark",
    "lat": "48.40607",
    "lng": "14.41441"
  },
  {
    "country": "AT",
    "name": "Ainet",
    "lat": "46.86603",
    "lng": "12.68968"
  },
  {
    "country": "AT",
    "name": "Aigen-Schlägl",
    "lat": "48.64578",
    "lng": "13.97109"
  },
  {
    "country": "AT",
    "name": "Aigen im Ennstal",
    "lat": "47.51667",
    "lng": "14.13333"
  },
  {
    "country": "AT",
    "name": "Aichkirchen",
    "lat": "48.10944",
    "lng": "13.79158"
  },
  {
    "country": "AT",
    "name": "Aich",
    "lat": "47.41667",
    "lng": "13.81667"
  },
  {
    "country": "AT",
    "name": "Aibl",
    "lat": "46.68145",
    "lng": "15.22619"
  },
  {
    "country": "AT",
    "name": "Aggsbach",
    "lat": "48.29404",
    "lng": "15.40382"
  },
  {
    "country": "AT",
    "name": "Aflenz Kurort",
    "lat": "47.53333",
    "lng": "15.23333"
  },
  {
    "country": "AT",
    "name": "Admont",
    "lat": "47.57537",
    "lng": "14.46075"
  },
  {
    "country": "AT",
    "name": "Aderklaa",
    "lat": "48.28333",
    "lng": "16.53333"
  },
  {
    "country": "AT",
    "name": "Achenkirch",
    "lat": "47.52659",
    "lng": "11.70559"
  },
  {
    "country": "AT",
    "name": "Achau",
    "lat": "48.08026",
    "lng": "16.38611"
  },
  {
    "country": "AT",
    "name": "Abtenau",
    "lat": "47.56373",
    "lng": "13.34599"
  },
  {
    "country": "AT",
    "name": "Absam",
    "lat": "47.3",
    "lng": "11.5"
  },
  {
    "country": "AT",
    "name": "Abfaltersbach",
    "lat": "46.75715",
    "lng": "12.52828"
  },
  {
    "country": "AT",
    "name": "Schlaiten",
    "lat": "46.87944",
    "lng": "12.65417"
  },
  {
    "country": "AT",
    "name": "Thurn",
    "lat": "46.85056",
    "lng": "12.76861"
  },
  {
    "country": "AT",
    "name": "Untertilliach",
    "lat": "46.70417",
    "lng": "12.70861"
  },
  {
    "country": "AT",
    "name": "Finkenstein am Faaker See",
    "lat": "46.57904",
    "lng": "13.93496"
  },
  {
    "country": "AT",
    "name": "Sankt Jakob in Defereggen",
    "lat": "46.91972",
    "lng": "12.33139"
  },
  {
    "country": "AT",
    "name": "Attnang-Puchheim",
    "lat": "48.00833",
    "lng": "13.71667"
  },
  {
    "country": "AT",
    "name": "Obernberg am Brenner",
    "lat": "47.01667",
    "lng": "11.41667"
  },
  {
    "country": "AT",
    "name": "Mühlbachl",
    "lat": "47.13333",
    "lng": "11.45"
  },
  {
    "country": "AT",
    "name": "Leutasch",
    "lat": "47.3689",
    "lng": "11.14404"
  },
  {
    "country": "AT",
    "name": "Gschnitz",
    "lat": "47.04469",
    "lng": "11.35089"
  },
  {
    "country": "AT",
    "name": "Navis",
    "lat": "47.11667",
    "lng": "11.53333"
  },
  {
    "country": "AT",
    "name": "Ellbögen",
    "lat": "47.16667",
    "lng": "11.45"
  },
  {
    "country": "AT",
    "name": "Sellrain",
    "lat": "47.21667",
    "lng": "11.21667"
  },
  {
    "country": "AT",
    "name": "Oberperfuss",
    "lat": "47.24451",
    "lng": "11.24755"
  },
  {
    "country": "AT",
    "name": "Obsteig",
    "lat": "47.3",
    "lng": "10.93333"
  },
  {
    "country": "AT",
    "name": "Kolsass",
    "lat": "47.3",
    "lng": "11.63333"
  },
  {
    "country": "AT",
    "name": "Gnadenwald",
    "lat": "47.31667",
    "lng": "11.56667"
  },
  {
    "country": "AT",
    "name": "Ehrwald",
    "lat": "47.4",
    "lng": "10.91667"
  },
  {
    "country": "AT",
    "name": "Lanzendorf",
    "lat": "48.11056",
    "lng": "16.445"
  },
  {
    "country": "AT",
    "name": "Ansfelden",
    "lat": "47.965",
    "lng": "13.04944"
  },
  {
    "country": "AT",
    "name": "Heinfels",
    "lat": "46.75",
    "lng": "12.45"
  },
  {
    "country": "AT",
    "name": "Kals am Großglockner",
    "lat": "47.00227",
    "lng": "12.64552"
  },
  {
    "country": "AT",
    "name": "Gerlosberg",
    "lat": "47.21667",
    "lng": "11.93333"
  },
  {
    "country": "AT",
    "name": "Gerlos",
    "lat": "47.22464",
    "lng": "12.03012"
  },
  {
    "country": "AT",
    "name": "Krimml",
    "lat": "47.21799",
    "lng": "12.17487"
  },
  {
    "country": "AT",
    "name": "Rohrberg",
    "lat": "47.23333",
    "lng": "11.91667"
  },
  {
    "country": "AT",
    "name": "Ried im Zillertal",
    "lat": "47.3",
    "lng": "11.86667"
  },
  {
    "country": "AT",
    "name": "Alpbach",
    "lat": "47.39878",
    "lng": "11.94373"
  },
  {
    "country": "AT",
    "name": "Itter",
    "lat": "47.46667",
    "lng": "12.13333"
  },
  {
    "country": "AT",
    "name": "Brand",
    "lat": "47.10083",
    "lng": "9.73722"
  },
  {
    "country": "AT",
    "name": "Liebenfels",
    "lat": "46.73778",
    "lng": "14.28667"
  },
  {
    "country": "AT",
    "name": "Frauenstein",
    "lat": "46.81417",
    "lng": "14.29417"
  },
  {
    "country": "AT",
    "name": "Eppenstein",
    "lat": "47.12833",
    "lng": "14.7375"
  },
  {
    "country": "AT",
    "name": "Hochleithen",
    "lat": "48.45317",
    "lng": "16.5309"
  },
  {
    "country": "AT",
    "name": "Sankt Oswald ob Eibiswald",
    "lat": "46.70833",
    "lng": "15.14667"
  },
  {
    "country": "AT",
    "name": "Wildschönau",
    "lat": "47.40619",
    "lng": "12.03784"
  },
  {
    "country": "AT",
    "name": "Langkampfen",
    "lat": "47.54878",
    "lng": "12.10127"
  },
  {
    "country": "AT",
    "name": "Hart bei Graz",
    "lat": "47.04311",
    "lng": "15.51527"
  },
  {
    "country": "AT",
    "name": "Berg im Drautal",
    "lat": "46.74915",
    "lng": "13.13536"
  },
  {
    "country": "AT",
    "name": "Lockenhaus",
    "lat": "47.40753",
    "lng": "16.41623"
  },
  {
    "country": "AT",
    "name": "St. Georgen am Längsee",
    "lat": "46.78061",
    "lng": "14.43033"
  },
  {
    "country": "AT",
    "name": "Großkirchheim",
    "lat": "46.9727",
    "lng": "12.89589"
  },
  {
    "country": "AT",
    "name": "Damüls",
    "lat": "47.28034",
    "lng": "9.89164"
  },
  {
    "country": "AT",
    "name": "Bad Waltersdorf",
    "lat": "47.1696",
    "lng": "16.0087"
  },
  {
    "country": "AT",
    "name": "Bad Leonfelden",
    "lat": "48.52047",
    "lng": "14.29459"
  },
  {
    "country": "AT",
    "name": "Pfarrwerfen",
    "lat": "47.45729",
    "lng": "13.20531"
  },
  {
    "country": "AT",
    "name": "Thal",
    "lat": "47.07644",
    "lng": "15.36052"
  },
  {
    "country": "AT",
    "name": "Bürserberg",
    "lat": "47.14644",
    "lng": "9.77736"
  },
  {
    "country": "AT",
    "name": "Holzgau",
    "lat": "47.26045",
    "lng": "10.34419"
  },
  {
    "country": "AT",
    "name": "Schröcken",
    "lat": "47.25755",
    "lng": "10.09197"
  },
  {
    "country": "AT",
    "name": "Rossleithen",
    "lat": "47.7017",
    "lng": "14.2736"
  },
  {
    "country": "AT",
    "name": "Sankt Georgen am Walde",
    "lat": "48.35979",
    "lng": "14.90235"
  },
  {
    "country": "AT",
    "name": "Nebelberg",
    "lat": "48.62854",
    "lng": "13.84629"
  },
  {
    "country": "AT",
    "name": "Sonnberg im Mühlkreis",
    "lat": "48.4608",
    "lng": "14.31167"
  },
  {
    "country": "AT",
    "name": "Baierdorf-Umgebung",
    "lat": "47.28511",
    "lng": "15.71045"
  },
  {
    "country": "AT",
    "name": "Sonntag",
    "lat": "47.23857",
    "lng": "9.89765"
  },
  {
    "country": "AT",
    "name": "Haus im Ennstal",
    "lat": "47.41058",
    "lng": "13.76759"
  },
  {
    "country": "AT",
    "name": "Hall bei Admont",
    "lat": "47.587",
    "lng": "14.46372"
  },
  {
    "country": "AT",
    "name": "Vandans",
    "lat": "47.09569",
    "lng": "9.86525"
  },
  {
    "country": "AT",
    "name": "Ertl",
    "lat": "47.97704",
    "lng": "14.63134"
  },
  {
    "country": "AT",
    "name": "Hittisau",
    "lat": "47.45781",
    "lng": "9.95962"
  },
  {
    "country": "AT",
    "name": "Pongrazen bei Hartberg",
    "lat": "47.34193",
    "lng": "15.90994"
  },
  {
    "country": "AT",
    "name": "Neuberg im Burgenland",
    "lat": "47.16894",
    "lng": "16.26054"
  },
  {
    "country": "AT",
    "name": "Schönkirchen-Reyersdorf",
    "lat": "48.35477",
    "lng": "16.69115"
  },
  {
    "country": "AT",
    "name": "Klein-Neusiedl",
    "lat": "48.09379",
    "lng": "16.60661"
  },
  {
    "country": "AT",
    "name": "Eggendorf",
    "lat": "47.85809",
    "lng": "16.32182"
  },
  {
    "country": "AT",
    "name": "Seitenberg",
    "lat": "46.74801",
    "lng": "14.08825"
  },
  {
    "country": "AT",
    "name": "Dünserberg",
    "lat": "47.22752",
    "lng": "9.72372"
  },
  {
    "country": "AT",
    "name": "Aschau im Zillertal",
    "lat": "47.26613",
    "lng": "11.89536"
  },
  {
    "country": "AT",
    "name": "Assling",
    "lat": "46.78663",
    "lng": "12.63951"
  },
  {
    "country": "AT",
    "name": "Thiersee",
    "lat": "47.59424",
    "lng": "12.11758"
  },
  {
    "country": "AT",
    "name": "Mauer",
    "lat": "46.74104",
    "lng": "14.22937"
  },
  {
    "country": "AT",
    "name": "Mautbrücken",
    "lat": "46.72037",
    "lng": "14.19399"
  },
  {
    "country": "AT",
    "name": "Fresen",
    "lat": "46.70516",
    "lng": "14.04513"
  },
  {
    "country": "AT",
    "name": "Draschen",
    "lat": "46.76909",
    "lng": "14.06758"
  },
  {
    "country": "AT",
    "name": "Tillmitsch Links der Laßnitz",
    "lat": "46.80955",
    "lng": "15.52394"
  },
  {
    "country": "AT",
    "name": "Sticklberg",
    "lat": "47.53036",
    "lng": "15.77911"
  },
  {
    "country": "AT",
    "name": "Klaffenegg",
    "lat": "47.51813",
    "lng": "15.76006"
  },
  {
    "country": "AT",
    "name": "Weißenkirchen im Attergau",
    "lat": "47.94964",
    "lng": "13.41843"
  },
  {
    "country": "AT",
    "name": "Klausner",
    "lat": "47.5756",
    "lng": "14.35029"
  },
  {
    "country": "AT",
    "name": "Wagnergraben",
    "lat": "48.02036",
    "lng": "13.02395"
  },
  {
    "country": "AT",
    "name": "Illitsch",
    "lat": "46.53855",
    "lng": "13.86681"
  },
  {
    "country": "AU",
    "name": "York",
    "lat": "-31.88809",
    "lng": "116.7678"
  },
  {
    "country": "AU",
    "name": "Yanchep",
    "lat": "-31.54678",
    "lng": "115.63171"
  },
  {
    "country": "AU",
    "name": "Yallingup",
    "lat": "-33.64592",
    "lng": "115.03514"
  },
  {
    "country": "AU",
    "name": "Wundowie",
    "lat": "-31.76163",
    "lng": "116.3799"
  },
  {
    "country": "AU",
    "name": "Wooroloo",
    "lat": "-31.8038",
    "lng": "116.31311"
  },
  {
    "country": "AU",
    "name": "Woodville",
    "lat": "-34.88333",
    "lng": "138.55"
  },
  {
    "country": "AU",
    "name": "Woodside",
    "lat": "-34.95433",
    "lng": "138.87901"
  },
  {
    "country": "AU",
    "name": "Wongan Hills",
    "lat": "-30.89294",
    "lng": "116.71925"
  },
  {
    "country": "AU",
    "name": "Williamstown",
    "lat": "-34.6721",
    "lng": "138.89108"
  },
  {
    "country": "AU",
    "name": "Willaston",
    "lat": "-34.58333",
    "lng": "138.75"
  },
  {
    "country": "AU",
    "name": "Whyalla",
    "lat": "-33.03268",
    "lng": "137.56483"
  },
  {
    "country": "AU",
    "name": "Wembley",
    "lat": "-31.93333",
    "lng": "115.8"
  },
  {
    "country": "AU",
    "name": "Wellard",
    "lat": "-32.26667",
    "lng": "115.83333"
  },
  {
    "country": "AU",
    "name": "Wayville",
    "lat": "-34.95",
    "lng": "138.58333"
  },
  {
    "country": "AU",
    "name": "Waroona",
    "lat": "-32.84323",
    "lng": "115.92201"
  },
  {
    "country": "AU",
    "name": "Wanneroo",
    "lat": "-31.75",
    "lng": "115.8"
  },
  {
    "country": "AU",
    "name": "Wallaroo",
    "lat": "-33.93881",
    "lng": "137.63365"
  },
  {
    "country": "AU",
    "name": "Waikerie",
    "lat": "-34.18178",
    "lng": "139.98552"
  },
  {
    "country": "AU",
    "name": "Wagin",
    "lat": "-33.30894",
    "lng": "117.34328"
  },
  {
    "country": "AU",
    "name": "Waggrakine",
    "lat": "-28.71883",
    "lng": "114.63924"
  },
  {
    "country": "AU",
    "name": "Virginia",
    "lat": "-34.6663",
    "lng": "138.56027"
  },
  {
    "country": "AU",
    "name": "Victor Harbor",
    "lat": "-35.55042",
    "lng": "138.62154"
  },
  {
    "country": "AU",
    "name": "Vasse",
    "lat": "-33.66667",
    "lng": "115.25"
  },
  {
    "country": "AU",
    "name": "Upper Sturt",
    "lat": "-35.01667",
    "lng": "138.68333"
  },
  {
    "country": "AU",
    "name": "Unley",
    "lat": "-34.95",
    "lng": "138.6"
  },
  {
    "country": "AU",
    "name": "Two Wells",
    "lat": "-34.59327",
    "lng": "138.51367"
  },
  {
    "country": "AU",
    "name": "Tumby Bay",
    "lat": "-34.3773",
    "lng": "136.10065"
  },
  {
    "country": "AU",
    "name": "Trigg",
    "lat": "-31.86939",
    "lng": "115.7571"
  },
  {
    "country": "AU",
    "name": "Toodyay",
    "lat": "-31.54977",
    "lng": "116.46743"
  },
  {
    "country": "AU",
    "name": "Thebarton",
    "lat": "-34.91667",
    "lng": "138.56667"
  },
  {
    "country": "AU",
    "name": "Tennant Creek",
    "lat": "-19.6497",
    "lng": "134.19147"
  },
  {
    "country": "AU",
    "name": "Tanunda",
    "lat": "-34.52336",
    "lng": "138.95982"
  },
  {
    "country": "AU",
    "name": "Tailem Bend",
    "lat": "-35.25226",
    "lng": "139.45546"
  },
  {
    "country": "AU",
    "name": "Swan View",
    "lat": "-31.88333",
    "lng": "116.05"
  },
  {
    "country": "AU",
    "name": "Swanbourne",
    "lat": "-31.96878",
    "lng": "115.7673"
  },
  {
    "country": "AU",
    "name": "Subiaco",
    "lat": "-31.9485",
    "lng": "115.8268"
  },
  {
    "country": "AU",
    "name": "Sturt",
    "lat": "-35.01667",
    "lng": "138.55"
  },
  {
    "country": "AU",
    "name": "Streaky Bay",
    "lat": "-32.79554",
    "lng": "134.20928"
  },
  {
    "country": "AU",
    "name": "Strathalbyn",
    "lat": "-35.25979",
    "lng": "138.89247"
  },
  {
    "country": "AU",
    "name": "Stoneville",
    "lat": "-30.86667",
    "lng": "121.76667"
  },
  {
    "country": "AU",
    "name": "Stirling",
    "lat": "-35.01518",
    "lng": "138.73637"
  },
  {
    "country": "AU",
    "name": "Spearwood",
    "lat": "-32.10534",
    "lng": "115.77797"
  },
  {
    "country": "AU",
    "name": "South Perth",
    "lat": "-31.98333",
    "lng": "115.86667"
  },
  {
    "country": "AU",
    "name": "Solomontown",
    "lat": "-33.2",
    "lng": "138.03333"
  },
  {
    "country": "AU",
    "name": "Smithfield",
    "lat": "-34.68333",
    "lng": "138.68333"
  },
  {
    "country": "AU",
    "name": "Serpentine",
    "lat": "-32.36051",
    "lng": "115.97723"
  },
  {
    "country": "AU",
    "name": "Seaton",
    "lat": "-34.9",
    "lng": "138.51667"
  },
  {
    "country": "AU",
    "name": "Seaford",
    "lat": "-35.1898",
    "lng": "138.47589"
  },
  {
    "country": "AU",
    "name": "Scarborough",
    "lat": "-31.89578",
    "lng": "115.76431"
  },
  {
    "country": "AU",
    "name": "Salisbury",
    "lat": "-34.76667",
    "lng": "138.63333"
  },
  {
    "country": "AU",
    "name": "Safety Bay",
    "lat": "-32.30463",
    "lng": "115.74213"
  },
  {
    "country": "AU",
    "name": "Roxby Downs",
    "lat": "-30.56305",
    "lng": "136.89546"
  },
  {
    "country": "AU",
    "name": "Roseworthy",
    "lat": "-34.53397",
    "lng": "138.75023"
  },
  {
    "country": "AU",
    "name": "Roebourne",
    "lat": "-20.77229",
    "lng": "117.14648"
  },
  {
    "country": "AU",
    "name": "Rockingham",
    "lat": "-32.27682",
    "lng": "115.72978"
  },
  {
    "country": "AU",
    "name": "Maida Vale",
    "lat": "-31.95187",
    "lng": "116.02764"
  },
  {
    "country": "AU",
    "name": "Reynella",
    "lat": "-35.09372",
    "lng": "138.53082"
  },
  {
    "country": "AU",
    "name": "Ravensthorpe",
    "lat": "-33.58303",
    "lng": "120.04688"
  },
  {
    "country": "AU",
    "name": "Quorn",
    "lat": "-32.34676",
    "lng": "138.04176"
  },
  {
    "country": "AU",
    "name": "Quindalup",
    "lat": "-33.6356",
    "lng": "115.14899"
  },
  {
    "country": "AU",
    "name": "Prospect",
    "lat": "-34.88241",
    "lng": "138.5933"
  },
  {
    "country": "AU",
    "name": "Port Willunga",
    "lat": "-35.27792",
    "lng": "138.4523"
  },
  {
    "country": "AU",
    "name": "Port Victoria",
    "lat": "-34.49602",
    "lng": "137.4827"
  },
  {
    "country": "AU",
    "name": "Port Pirie",
    "lat": "-33.19176",
    "lng": "138.01746"
  },
  {
    "country": "AU",
    "name": "Port Noarlunga",
    "lat": "-35.14802",
    "lng": "138.47099"
  },
  {
    "country": "AU",
    "name": "Port Lincoln",
    "lat": "-34.72625",
    "lng": "135.87442"
  },
  {
    "country": "AU",
    "name": "Port Hedland",
    "lat": "-20.31215",
    "lng": "118.61059"
  },
  {
    "country": "AU",
    "name": "Port Elliot",
    "lat": "-35.53017",
    "lng": "138.67922"
  },
  {
    "country": "AU",
    "name": "Port Augusta West",
    "lat": "-32.48611",
    "lng": "137.75833"
  },
  {
    "country": "AU",
    "name": "Port Augusta",
    "lat": "-32.49597",
    "lng": "137.77281"
  },
  {
    "country": "AU",
    "name": "Port Adelaide",
    "lat": "-34.85",
    "lng": "138.46667"
  },
  {
    "country": "AU",
    "name": "Plympton",
    "lat": "-34.95",
    "lng": "138.55"
  },
  {
    "country": "AU",
    "name": "Pinjarra",
    "lat": "-32.6298",
    "lng": "115.87351"
  },
  {
    "country": "AU",
    "name": "Peterborough",
    "lat": "-32.97205",
    "lng": "138.84073"
  },
  {
    "country": "AU",
    "name": "Perth",
    "lat": "-31.95224",
    "lng": "115.8614"
  },
  {
    "country": "AU",
    "name": "Pemberton",
    "lat": "-34.44311",
    "lng": "116.03689"
  },
  {
    "country": "AU",
    "name": "Pearce",
    "lat": "-31.66667",
    "lng": "116.01667"
  },
  {
    "country": "AU",
    "name": "Parkerville",
    "lat": "-31.87472",
    "lng": "116.138"
  },
  {
    "country": "AU",
    "name": "Parap",
    "lat": "-12.43054",
    "lng": "130.84142"
  },
  {
    "country": "AU",
    "name": "One Tree Hill",
    "lat": "-34.7",
    "lng": "138.76667"
  },
  {
    "country": "AU",
    "name": "Oakbank",
    "lat": "-34.9834",
    "lng": "138.84528"
  },
  {
    "country": "AU",
    "name": "Nuriootpa",
    "lat": "-34.46825",
    "lng": "138.99767"
  },
  {
    "country": "AU",
    "name": "North Fremantle",
    "lat": "-32.03333",
    "lng": "115.75"
  },
  {
    "country": "AU",
    "name": "North Beach",
    "lat": "-31.86298",
    "lng": "115.75624"
  },
  {
    "country": "AU",
    "name": "Northampton",
    "lat": "-28.34994",
    "lng": "114.63821"
  },
  {
    "country": "AU",
    "name": "Northam",
    "lat": "-31.64932",
    "lng": "116.67423"
  },
  {
    "country": "AU",
    "name": "Normanville",
    "lat": "-35.44623",
    "lng": "138.3213"
  },
  {
    "country": "AU",
    "name": "Noarlunga",
    "lat": "-35.18209",
    "lng": "138.50138"
  },
  {
    "country": "AU",
    "name": "Nhulunbuy",
    "lat": "-12.18165",
    "lng": "136.77841"
  },
  {
    "country": "AU",
    "name": "Newman",
    "lat": "-23.35644",
    "lng": "119.73553"
  },
  {
    "country": "AU",
    "name": "Nedlands",
    "lat": "-31.98184",
    "lng": "115.8073"
  },
  {
    "country": "AU",
    "name": "Narrogin",
    "lat": "-32.93282",
    "lng": "117.17763"
  },
  {
    "country": "AU",
    "name": "Nairne",
    "lat": "-35.0345",
    "lng": "138.91154"
  },
  {
    "country": "AU",
    "name": "Murray Bridge",
    "lat": "-35.11986",
    "lng": "139.27345"
  },
  {
    "country": "AU",
    "name": "Mundijong",
    "lat": "-32.29217",
    "lng": "115.98564"
  },
  {
    "country": "AU",
    "name": "Mundaring",
    "lat": "-31.9021",
    "lng": "116.16757"
  },
  {
    "country": "AU",
    "name": "Mount Isa",
    "lat": "-20.72523",
    "lng": "139.49727"
  },
  {
    "country": "AU",
    "name": "Mount Helena",
    "lat": "-31.87606",
    "lng": "116.21025"
  },
  {
    "country": "AU",
    "name": "Mount Compass",
    "lat": "-35.34685",
    "lng": "138.62032"
  },
  {
    "country": "AU",
    "name": "Mount Barker",
    "lat": "-35.06667",
    "lng": "138.86667"
  },
  {
    "country": "AU",
    "name": "Mount Barker",
    "lat": "-34.63084",
    "lng": "117.66606"
  },
  {
    "country": "AU",
    "name": "Mosman Park",
    "lat": "-32.00538",
    "lng": "115.7638"
  },
  {
    "country": "AU",
    "name": "Morphett Vale",
    "lat": "-35.13333",
    "lng": "138.51667"
  },
  {
    "country": "AU",
    "name": "Moora",
    "lat": "-30.64003",
    "lng": "116.00365"
  },
  {
    "country": "AU",
    "name": "Modbury",
    "lat": "-34.83333",
    "lng": "138.68333"
  },
  {
    "country": "AU",
    "name": "Moana",
    "lat": "-35.19394",
    "lng": "138.47614"
  },
  {
    "country": "AU",
    "name": "Mitcham",
    "lat": "-34.97892",
    "lng": "138.62184"
  },
  {
    "country": "AU",
    "name": "Midland",
    "lat": "-31.9",
    "lng": "116"
  },
  {
    "country": "AU",
    "name": "Middle Swan",
    "lat": "-31.85",
    "lng": "116.01667"
  },
  {
    "country": "AU",
    "name": "Merredin",
    "lat": "-31.48094",
    "lng": "118.27448"
  },
  {
    "country": "AU",
    "name": "Meningie",
    "lat": "-35.68637",
    "lng": "139.34007"
  },
  {
    "country": "AU",
    "name": "Melville",
    "lat": "-28.18333",
    "lng": "116.73333"
  },
  {
    "country": "AU",
    "name": "Medina",
    "lat": "-32.23333",
    "lng": "115.78333"
  },
  {
    "country": "AU",
    "name": "Meadows",
    "lat": "-35.18021",
    "lng": "138.7625"
  },
  {
    "country": "AU",
    "name": "McMinns Lagoon",
    "lat": "-12.55397",
    "lng": "131.11165"
  },
  {
    "country": "AU",
    "name": "McLaren Vale",
    "lat": "-35.21895",
    "lng": "138.54326"
  },
  {
    "country": "AU",
    "name": "Maylands",
    "lat": "-31.93097",
    "lng": "115.89486"
  },
  {
    "country": "AU",
    "name": "Marion",
    "lat": "-35.00423",
    "lng": "138.55313"
  },
  {
    "country": "AU",
    "name": "Marino",
    "lat": "-35.04468",
    "lng": "138.51236"
  },
  {
    "country": "AU",
    "name": "Margaret River",
    "lat": "-33.95504",
    "lng": "115.07599"
  },
  {
    "country": "AU",
    "name": "Mannum",
    "lat": "-34.91529",
    "lng": "139.30325"
  },
  {
    "country": "AU",
    "name": "Manning",
    "lat": "-32.01594",
    "lng": "115.86714"
  },
  {
    "country": "AU",
    "name": "Manjimup",
    "lat": "-34.24122",
    "lng": "116.14564"
  },
  {
    "country": "AU",
    "name": "Mandurah",
    "lat": "-32.5269",
    "lng": "115.7217"
  },
  {
    "country": "AU",
    "name": "Mallala",
    "lat": "-34.4374",
    "lng": "138.50987"
  },
  {
    "country": "AU",
    "name": "Maitland",
    "lat": "-34.37386",
    "lng": "137.67333"
  },
  {
    "country": "AU",
    "name": "Maddington",
    "lat": "-32.05",
    "lng": "115.98333"
  },
  {
    "country": "AU",
    "name": "Macclesfield",
    "lat": "-35.17182",
    "lng": "138.83589"
  },
  {
    "country": "AU",
    "name": "Lyndoch",
    "lat": "-34.60124",
    "lng": "138.89094"
  },
  {
    "country": "AU",
    "name": "Lower Chittering",
    "lat": "-31.58333",
    "lng": "116.11667"
  },
  {
    "country": "AU",
    "name": "Lobethal",
    "lat": "-34.90455",
    "lng": "138.87477"
  },
  {
    "country": "AU",
    "name": "Little Hampton",
    "lat": "-35.05",
    "lng": "138.85"
  },
  {
    "country": "AU",
    "name": "Lewiston",
    "lat": "-34.60449",
    "lng": "138.59125"
  },
  {
    "country": "AU",
    "name": "Langhorne Creek",
    "lat": "-35.29596",
    "lng": "139.03591"
  },
  {
    "country": "AU",
    "name": "Kwinana",
    "lat": "-32.23013",
    "lng": "115.78128"
  },
  {
    "country": "AU",
    "name": "Kununurra",
    "lat": "-15.77825",
    "lng": "128.74208"
  },
  {
    "country": "AU",
    "name": "Kojonup",
    "lat": "-33.8305",
    "lng": "117.15946"
  },
  {
    "country": "AU",
    "name": "Kingscote",
    "lat": "-35.6559",
    "lng": "137.6393"
  },
  {
    "country": "AU",
    "name": "Kenwick",
    "lat": "-32.03333",
    "lng": "115.96667"
  },
  {
    "country": "AU",
    "name": "Kendenup",
    "lat": "-34.48213",
    "lng": "117.62533"
  },
  {
    "country": "AU",
    "name": "Kelmscott",
    "lat": "-32.12434",
    "lng": "116.0259"
  },
  {
    "country": "AU",
    "name": "Katherine",
    "lat": "-14.46517",
    "lng": "132.26347"
  },
  {
    "country": "AU",
    "name": "Katanning",
    "lat": "-33.68787",
    "lng": "117.5584"
  },
  {
    "country": "AU",
    "name": "Kapunda",
    "lat": "-34.33871",
    "lng": "138.91644"
  },
  {
    "country": "AU",
    "name": "Kalgoorlie",
    "lat": "-30.74614",
    "lng": "121.4742"
  },
  {
    "country": "AU",
    "name": "Kalbarri",
    "lat": "-27.7105",
    "lng": "114.16505"
  },
  {
    "country": "AU",
    "name": "Kadina",
    "lat": "-33.96495",
    "lng": "137.71634"
  },
  {
    "country": "AU",
    "name": "Jamestown",
    "lat": "-33.20531",
    "lng": "138.60503"
  },
  {
    "country": "AU",
    "name": "Ingle Farm",
    "lat": "-34.83333",
    "lng": "138.63333"
  },
  {
    "country": "AU",
    "name": "Hope Valley",
    "lat": "-34.83333",
    "lng": "138.7"
  },
  {
    "country": "AU",
    "name": "Honiton",
    "lat": "-35.11667",
    "lng": "137.65"
  },
  {
    "country": "AU",
    "name": "Hindmarsh Island",
    "lat": "-35.51014",
    "lng": "138.86762"
  },
  {
    "country": "AU",
    "name": "Heathfield",
    "lat": "-35.01667",
    "lng": "138.71667"
  },
  {
    "country": "AU",
    "name": "Harvey",
    "lat": "-33.07863",
    "lng": "115.91512"
  },
  {
    "country": "AU",
    "name": "Happy Valley",
    "lat": "-35.08333",
    "lng": "138.53333"
  },
  {
    "country": "AU",
    "name": "Halls Creek",
    "lat": "-18.22485",
    "lng": "127.66647"
  },
  {
    "country": "AU",
    "name": "Hahndorf",
    "lat": "-35.02863",
    "lng": "138.80779"
  },
  {
    "country": "AU",
    "name": "Hackham",
    "lat": "-35.15",
    "lng": "138.51667"
  },
  {
    "country": "AU",
    "name": "Gumeracha",
    "lat": "-34.82388",
    "lng": "138.88467"
  },
  {
    "country": "AU",
    "name": "Guildford",
    "lat": "-31.9",
    "lng": "115.96667"
  },
  {
    "country": "AU",
    "name": "Greenmount",
    "lat": "-31.90072",
    "lng": "116.0495"
  },
  {
    "country": "AU",
    "name": "Grasmere",
    "lat": "-35.01806",
    "lng": "117.75556"
  },
  {
    "country": "AU",
    "name": "Grange",
    "lat": "-34.90223",
    "lng": "138.49022"
  },
  {
    "country": "AU",
    "name": "Gosnells",
    "lat": "-32.081",
    "lng": "116.0054"
  },
  {
    "country": "AU",
    "name": "Gooseberry Hill",
    "lat": "-31.95444",
    "lng": "116.0492"
  },
  {
    "country": "AU",
    "name": "Goolwa",
    "lat": "-35.50159",
    "lng": "138.78191"
  },
  {
    "country": "AU",
    "name": "Golden Grove",
    "lat": "-34.78333",
    "lng": "138.73333"
  },
  {
    "country": "AU",
    "name": "Glenelg",
    "lat": "-34.98079",
    "lng": "138.515"
  },
  {
    "country": "AU",
    "name": "Gilles Plains",
    "lat": "-34.85",
    "lng": "138.65"
  },
  {
    "country": "AU",
    "name": "Geraldton",
    "lat": "-28.77897",
    "lng": "114.61459"
  },
  {
    "country": "AU",
    "name": "Gawler",
    "lat": "-34.60251",
    "lng": "138.74902"
  },
  {
    "country": "AU",
    "name": "Fremantle",
    "lat": "-32.05632",
    "lng": "115.74557"
  },
  {
    "country": "AU",
    "name": "Freeling",
    "lat": "-34.45407",
    "lng": "138.80868"
  },
  {
    "country": "AU",
    "name": "Findon",
    "lat": "-34.9",
    "lng": "138.53333"
  },
  {
    "country": "AU",
    "name": "Esperance",
    "lat": "-33.85919",
    "lng": "121.89164"
  },
  {
    "country": "AU",
    "name": "Encounter Bay",
    "lat": "-35.57419",
    "lng": "138.60055"
  },
  {
    "country": "AU",
    "name": "Elizabeth",
    "lat": "-34.71944",
    "lng": "138.67707"
  },
  {
    "country": "AU",
    "name": "Donnybrook",
    "lat": "-33.5713",
    "lng": "115.82446"
  },
  {
    "country": "AU",
    "name": "Dongara",
    "lat": "-29.25818",
    "lng": "114.93276"
  },
  {
    "country": "AU",
    "name": "Chidlow",
    "lat": "-31.86094",
    "lng": "116.27243"
  },
  {
    "country": "AU",
    "name": "Derby",
    "lat": "-17.30295",
    "lng": "123.62864"
  },
  {
    "country": "AU",
    "name": "Denmark",
    "lat": "-34.96067",
    "lng": "117.35321"
  },
  {
    "country": "AU",
    "name": "Port Denison",
    "lat": "-29.28333",
    "lng": "114.91667"
  },
  {
    "country": "AU",
    "name": "Darwin",
    "lat": "-12.46113",
    "lng": "130.84185"
  },
  {
    "country": "AU",
    "name": "Darlington",
    "lat": "-35.03333",
    "lng": "138.56667"
  },
  {
    "country": "AU",
    "name": "Darlington",
    "lat": "-31.91906",
    "lng": "116.0812"
  },
  {
    "country": "AU",
    "name": "Dampier",
    "lat": "-20.66275",
    "lng": "116.71256"
  },
  {
    "country": "AU",
    "name": "Cunderdin",
    "lat": "-31.65398",
    "lng": "117.23374"
  },
  {
    "country": "AU",
    "name": "Cummins",
    "lat": "-34.26396",
    "lng": "135.726"
  },
  {
    "country": "AU",
    "name": "Crystal Brook",
    "lat": "-33.35256",
    "lng": "138.20955"
  },
  {
    "country": "AU",
    "name": "Craigburn Farm",
    "lat": "-35.05",
    "lng": "138.61667"
  },
  {
    "country": "AU",
    "name": "Crafers",
    "lat": "-35",
    "lng": "138.7"
  },
  {
    "country": "AU",
    "name": "Cottesloe",
    "lat": "-32",
    "lng": "115.76667"
  },
  {
    "country": "AU",
    "name": "Coromandel Valley",
    "lat": "-35.05",
    "lng": "138.61667"
  },
  {
    "country": "AU",
    "name": "Coogee",
    "lat": "-32.11934",
    "lng": "115.7665"
  },
  {
    "country": "AU",
    "name": "Coober Pedy",
    "lat": "-29.01415",
    "lng": "134.75495"
  },
  {
    "country": "AU",
    "name": "Collie",
    "lat": "-33.36206",
    "lng": "116.15617"
  },
  {
    "country": "AU",
    "name": "Cleve",
    "lat": "-33.7",
    "lng": "136.5"
  },
  {
    "country": "AU",
    "name": "Clare",
    "lat": "-33.83325",
    "lng": "138.61064"
  },
  {
    "country": "AU",
    "name": "Cheltenham",
    "lat": "-34.86667",
    "lng": "138.51667"
  },
  {
    "country": "AU",
    "name": "Ceduna",
    "lat": "-32.1266",
    "lng": "133.67271"
  },
  {
    "country": "AU",
    "name": "Caversham",
    "lat": "-31.88333",
    "lng": "115.96667"
  },
  {
    "country": "AU",
    "name": "Carnarvon",
    "lat": "-24.88258",
    "lng": "113.65713"
  },
  {
    "country": "AU",
    "name": "Capel",
    "lat": "-33.55808",
    "lng": "115.56278"
  },
  {
    "country": "AU",
    "name": "Cannington",
    "lat": "-32.01667",
    "lng": "115.95"
  },
  {
    "country": "AU",
    "name": "Campbelltown",
    "lat": "-34.88333",
    "lng": "138.66667"
  },
  {
    "country": "AU",
    "name": "Callington",
    "lat": "-35.11977",
    "lng": "139.0414"
  },
  {
    "country": "AU",
    "name": "Byford",
    "lat": "-32.22099",
    "lng": "116.009"
  },
  {
    "country": "AU",
    "name": "Busselton",
    "lat": "-33.65249",
    "lng": "115.3455"
  },
  {
    "country": "AU",
    "name": "Bunbury",
    "lat": "-33.32711",
    "lng": "115.64137"
  },
  {
    "country": "AU",
    "name": "Bullsbrook",
    "lat": "-31.66905",
    "lng": "115.9999"
  },
  {
    "country": "AU",
    "name": "Broome",
    "lat": "-17.95538",
    "lng": "122.23922"
  },
  {
    "country": "AU",
    "name": "Brighton",
    "lat": "-35.0182",
    "lng": "138.52351"
  },
  {
    "country": "AU",
    "name": "Bridgewater",
    "lat": "-35",
    "lng": "138.75"
  },
  {
    "country": "AU",
    "name": "Bridgetown",
    "lat": "-33.96242",
    "lng": "116.13598"
  },
  {
    "country": "AU",
    "name": "Boyup Brook",
    "lat": "-33.83425",
    "lng": "116.38776"
  },
  {
    "country": "AU",
    "name": "Boyanup",
    "lat": "-33.48295",
    "lng": "115.72838"
  },
  {
    "country": "AU",
    "name": "Boulder",
    "lat": "-30.78204",
    "lng": "121.4912"
  },
  {
    "country": "AU",
    "name": "Blackwood",
    "lat": "-35.02139",
    "lng": "138.61429"
  },
  {
    "country": "AU",
    "name": "Birkenhead",
    "lat": "-34.83685",
    "lng": "138.49788"
  },
  {
    "country": "AU",
    "name": "Birdwood",
    "lat": "-34.81826",
    "lng": "138.96478"
  },
  {
    "country": "AU",
    "name": "Beverley",
    "lat": "-32.10839",
    "lng": "116.92736"
  },
  {
    "country": "AU",
    "name": "Bentley",
    "lat": "-32",
    "lng": "115.91667"
  },
  {
    "country": "AU",
    "name": "Bellevue",
    "lat": "-31.9",
    "lng": "116.01667"
  },
  {
    "country": "AU",
    "name": "Belair",
    "lat": "-34.99766",
    "lng": "138.62077"
  },
  {
    "country": "AU",
    "name": "Bedford Park",
    "lat": "-35.03333",
    "lng": "138.56667"
  },
  {
    "country": "AU",
    "name": "Bedfordale",
    "lat": "-32.17406",
    "lng": "116.0504"
  },
  {
    "country": "AU",
    "name": "Beaumont",
    "lat": "-34.94899",
    "lng": "138.66188"
  },
  {
    "country": "AU",
    "name": "Bassendean",
    "lat": "-31.90906",
    "lng": "115.9437"
  },
  {
    "country": "AU",
    "name": "Balhannah",
    "lat": "-34.99094",
    "lng": "138.82565"
  },
  {
    "country": "AU",
    "name": "Balaklava",
    "lat": "-34.14542",
    "lng": "138.41148"
  },
  {
    "country": "AU",
    "name": "Australind",
    "lat": "-33.2792",
    "lng": "115.71504"
  },
  {
    "country": "AU",
    "name": "Augusta",
    "lat": "-34.31566",
    "lng": "115.15922"
  },
  {
    "country": "AU",
    "name": "Armadale",
    "lat": "-32.14607",
    "lng": "116.0093"
  },
  {
    "country": "AU",
    "name": "Ardrossan",
    "lat": "-34.42217",
    "lng": "137.91907"
  },
  {
    "country": "AU",
    "name": "Applecross",
    "lat": "-32.01667",
    "lng": "115.83333"
  },
  {
    "country": "AU",
    "name": "Angle Vale",
    "lat": "-34.64098",
    "lng": "138.6461"
  },
  {
    "country": "AU",
    "name": "Angaston",
    "lat": "-34.50129",
    "lng": "139.04625"
  },
  {
    "country": "AU",
    "name": "Alice Springs",
    "lat": "-23.69748",
    "lng": "133.88362"
  },
  {
    "country": "AU",
    "name": "Aldinga",
    "lat": "-35.28333",
    "lng": "138.48333"
  },
  {
    "country": "AU",
    "name": "Aldgate",
    "lat": "-35.01667",
    "lng": "138.73333"
  },
  {
    "country": "AU",
    "name": "Albany",
    "lat": "-35.02692",
    "lng": "117.88369"
  },
  {
    "country": "AU",
    "name": "Adelaide",
    "lat": "-34.92866",
    "lng": "138.59863"
  },
  {
    "country": "AU",
    "name": "Dunsborough",
    "lat": "-33.61512",
    "lng": "115.10561"
  },
  {
    "country": "AU",
    "name": "Eaton",
    "lat": "-33.31664",
    "lng": "115.70503"
  },
  {
    "country": "AU",
    "name": "Seacliff",
    "lat": "-35.03474",
    "lng": "138.52288"
  },
  {
    "country": "AU",
    "name": "Clapham",
    "lat": "-34.98989",
    "lng": "138.60158"
  },
  {
    "country": "AU",
    "name": "Two Rocks",
    "lat": "-31.49985",
    "lng": "115.58737"
  },
  {
    "country": "AU",
    "name": "Quinns Rocks",
    "lat": "-31.67379",
    "lng": "115.70372"
  },
  {
    "country": "AU",
    "name": "East Fremantle",
    "lat": "-32.03823",
    "lng": "115.7676"
  },
  {
    "country": "AU",
    "name": "Peppermint Grove",
    "lat": "-31.99878",
    "lng": "115.7682"
  },
  {
    "country": "AU",
    "name": "Claremont",
    "lat": "-31.97961",
    "lng": "115.7823"
  },
  {
    "country": "AU",
    "name": "Bicton",
    "lat": "-32.02778",
    "lng": "115.78333"
  },
  {
    "country": "AU",
    "name": "Attadale",
    "lat": "-32.02489",
    "lng": "115.802"
  },
  {
    "country": "AU",
    "name": "Shenton Park",
    "lat": "-31.95833",
    "lng": "115.79722"
  },
  {
    "country": "AU",
    "name": "Dalkeith",
    "lat": "-31.99517",
    "lng": "115.7998"
  },
  {
    "country": "AU",
    "name": "Jurien Bay",
    "lat": "-30.30591",
    "lng": "115.03825"
  },
  {
    "country": "AU",
    "name": "Warnbro",
    "lat": "-32.34017",
    "lng": "115.7473"
  },
  {
    "country": "AU",
    "name": "Mullaloo",
    "lat": "-31.77896",
    "lng": "115.73676"
  },
  {
    "country": "AU",
    "name": "Alyangula",
    "lat": "-13.85413",
    "lng": "136.42129"
  },
  {
    "country": "AU",
    "name": "Stuart Park",
    "lat": "-12.4486",
    "lng": "130.84249"
  },
  {
    "country": "AU",
    "name": "Larrakeyah",
    "lat": "-12.45527",
    "lng": "130.83172"
  },
  {
    "country": "AU",
    "name": "Leanyer",
    "lat": "-12.36667",
    "lng": "130.9"
  },
  {
    "country": "AU",
    "name": "Ludmilla",
    "lat": "-12.42032",
    "lng": "130.85506"
  },
  {
    "country": "AU",
    "name": "Fannie Bay",
    "lat": "-12.42275",
    "lng": "130.83627"
  },
  {
    "country": "AU",
    "name": "Nightcliff",
    "lat": "-12.38299",
    "lng": "130.8517"
  },
  {
    "country": "AU",
    "name": "Glen Iris",
    "lat": "-33.33713",
    "lng": "115.6743"
  },
  {
    "country": "AU",
    "name": "Lower King",
    "lat": "-34.95778",
    "lng": "117.93833"
  },
  {
    "country": "AU",
    "name": "Young",
    "lat": "-34.3135",
    "lng": "148.30107"
  },
  {
    "country": "AU",
    "name": "Yeppoon",
    "lat": "-23.12683",
    "lng": "150.74406"
  },
  {
    "country": "AU",
    "name": "Yatala",
    "lat": "-27.71667",
    "lng": "153.21667"
  },
  {
    "country": "AU",
    "name": "Yass",
    "lat": "-34.84036",
    "lng": "148.90987"
  },
  {
    "country": "AU",
    "name": "Yarrawonga",
    "lat": "-36.01923",
    "lng": "145.99973"
  },
  {
    "country": "AU",
    "name": "Yarraville",
    "lat": "-37.81667",
    "lng": "144.9"
  },
  {
    "country": "AU",
    "name": "Yarraman",
    "lat": "-26.84167",
    "lng": "151.98138"
  },
  {
    "country": "AU",
    "name": "Yarra Junction",
    "lat": "-37.78192",
    "lng": "145.6143"
  },
  {
    "country": "AU",
    "name": "Yarra Glen",
    "lat": "-37.65794",
    "lng": "145.37416"
  },
  {
    "country": "AU",
    "name": "Yandina",
    "lat": "-26.56165",
    "lng": "152.95595"
  },
  {
    "country": "AU",
    "name": "Wynyard",
    "lat": "-40.9897",
    "lng": "145.72617"
  },
  {
    "country": "AU",
    "name": "Wynnum",
    "lat": "-27.44527",
    "lng": "153.15813"
  },
  {
    "country": "AU",
    "name": "Worrolong",
    "lat": "-37.80619",
    "lng": "140.84803"
  },
  {
    "country": "AU",
    "name": "Woree",
    "lat": "-16.95",
    "lng": "145.75"
  },
  {
    "country": "AU",
    "name": "Woori Yallock",
    "lat": "-37.78062",
    "lng": "145.53819"
  },
  {
    "country": "AU",
    "name": "Woorim",
    "lat": "-27.06931",
    "lng": "153.20427"
  },
  {
    "country": "AU",
    "name": "Woombye",
    "lat": "-26.66054",
    "lng": "152.96947"
  },
  {
    "country": "AU",
    "name": "Woolgoolga",
    "lat": "-30.11058",
    "lng": "153.20067"
  },
  {
    "country": "AU",
    "name": "Woodridge",
    "lat": "-27.63333",
    "lng": "153.1"
  },
  {
    "country": "AU",
    "name": "Woodford",
    "lat": "-26.95291",
    "lng": "152.77747"
  },
  {
    "country": "AU",
    "name": "Wondai",
    "lat": "-26.3177",
    "lng": "151.87242"
  },
  {
    "country": "AU",
    "name": "Wodonga",
    "lat": "-36.12179",
    "lng": "146.88809"
  },
  {
    "country": "AU",
    "name": "Windsor",
    "lat": "-37.85344",
    "lng": "144.99241"
  },
  {
    "country": "AU",
    "name": "Windaroo",
    "lat": "-27.73333",
    "lng": "153.2"
  },
  {
    "country": "AU",
    "name": "Williamstown",
    "lat": "-37.86349",
    "lng": "144.899"
  },
  {
    "country": "AU",
    "name": "Whittlesea",
    "lat": "-37.51152",
    "lng": "145.11836"
  },
  {
    "country": "AU",
    "name": "West Wyalong",
    "lat": "-33.92373",
    "lng": "147.20473"
  },
  {
    "country": "AU",
    "name": "Westcourt",
    "lat": "-26.8",
    "lng": "150.15"
  },
  {
    "country": "AU",
    "name": "Westbury",
    "lat": "-41.52914",
    "lng": "146.83914"
  },
  {
    "country": "AU",
    "name": "Westbrook",
    "lat": "-27.61667",
    "lng": "151.86667"
  },
  {
    "country": "AU",
    "name": "Werribee",
    "lat": "-37.9",
    "lng": "144.66667"
  },
  {
    "country": "AU",
    "name": "Wellington Point",
    "lat": "-27.48333",
    "lng": "153.25"
  },
  {
    "country": "AU",
    "name": "Wellington",
    "lat": "-32.55588",
    "lng": "148.94508"
  },
  {
    "country": "AU",
    "name": "Weipa",
    "lat": "-12.62346",
    "lng": "141.87883"
  },
  {
    "country": "AU",
    "name": "Wattleglen",
    "lat": "-37.66667",
    "lng": "145.18333"
  },
  {
    "country": "AU",
    "name": "Watsonia",
    "lat": "-37.71667",
    "lng": "145.08333"
  },
  {
    "country": "AU",
    "name": "Warwick",
    "lat": "-28.21901",
    "lng": "152.03438"
  },
  {
    "country": "AU",
    "name": "Warrnambool",
    "lat": "-38.38176",
    "lng": "142.48799"
  },
  {
    "country": "AU",
    "name": "Warrane",
    "lat": "-42.85546",
    "lng": "147.38297"
  },
  {
    "country": "AU",
    "name": "Warrandyte",
    "lat": "-37.75",
    "lng": "145.23333"
  },
  {
    "country": "AU",
    "name": "Warragul",
    "lat": "-38.15912",
    "lng": "145.93118"
  },
  {
    "country": "AU",
    "name": "Wantirna South",
    "lat": "-37.88333",
    "lng": "145.21667"
  },
  {
    "country": "AU",
    "name": "Wantirna",
    "lat": "-37.85",
    "lng": "145.21667"
  },
  {
    "country": "AU",
    "name": "Wangaratta",
    "lat": "-36.35846",
    "lng": "146.32056"
  },
  {
    "country": "AU",
    "name": "Walkerston",
    "lat": "-21.16097",
    "lng": "149.05814"
  },
  {
    "country": "AU",
    "name": "Wagga Wagga",
    "lat": "-35.12577",
    "lng": "147.35375"
  },
  {
    "country": "AU",
    "name": "Wacol",
    "lat": "-27.58333",
    "lng": "152.93333"
  },
  {
    "country": "AU",
    "name": "Victoria Point",
    "lat": "-27.58329",
    "lng": "153.31172"
  },
  {
    "country": "AU",
    "name": "Vermont",
    "lat": "-37.83616",
    "lng": "145.19428"
  },
  {
    "country": "AU",
    "name": "Urraween",
    "lat": "-25.28809",
    "lng": "152.7676"
  },
  {
    "country": "AU",
    "name": "Urangan",
    "lat": "-25.29214",
    "lng": "152.90535"
  },
  {
    "country": "AU",
    "name": "Upwey",
    "lat": "-37.9",
    "lng": "145.33333"
  },
  {
    "country": "AU",
    "name": "Upper Coomera",
    "lat": "-27.9",
    "lng": "153.3"
  },
  {
    "country": "AU",
    "name": "Ulverstone",
    "lat": "-41.16026",
    "lng": "146.18242"
  },
  {
    "country": "AU",
    "name": "Ulladulla",
    "lat": "-35.35906",
    "lng": "150.47247"
  },
  {
    "country": "AU",
    "name": "Tyabb",
    "lat": "-38.25",
    "lng": "145.18333"
  },
  {
    "country": "AU",
    "name": "Tumut",
    "lat": "-35.30642",
    "lng": "148.21818"
  },
  {
    "country": "AU",
    "name": "Tumbi Vmbi",
    "lat": "-33.36667",
    "lng": "151.45"
  },
  {
    "country": "AU",
    "name": "Tullamarine",
    "lat": "-37.70128",
    "lng": "144.881"
  },
  {
    "country": "AU",
    "name": "Tugun",
    "lat": "-28.15",
    "lng": "153.5"
  },
  {
    "country": "AU",
    "name": "Truganina",
    "lat": "-37.81667",
    "lng": "144.75"
  },
  {
    "country": "AU",
    "name": "Trinity Beach",
    "lat": "-16.78876",
    "lng": "145.69682"
  },
  {
    "country": "AU",
    "name": "Tremont",
    "lat": "-37.9",
    "lng": "145.33333"
  },
  {
    "country": "AU",
    "name": "Traralgon",
    "lat": "-38.19528",
    "lng": "146.5415"
  },
  {
    "country": "AU",
    "name": "Townsville",
    "lat": "-19.26639",
    "lng": "146.80569"
  },
  {
    "country": "AU",
    "name": "Torquay",
    "lat": "-25.28496",
    "lng": "152.87886"
  },
  {
    "country": "AU",
    "name": "Toowoomba",
    "lat": "-27.56056",
    "lng": "151.95386"
  },
  {
    "country": "AU",
    "name": "Toorak",
    "lat": "-37.84165",
    "lng": "145.01438"
  },
  {
    "country": "AU",
    "name": "Tooradin",
    "lat": "-38.21475",
    "lng": "145.38325"
  },
  {
    "country": "AU",
    "name": "Toolooa",
    "lat": "-23.93333",
    "lng": "151.28333"
  },
  {
    "country": "AU",
    "name": "Tolga",
    "lat": "-17.23333",
    "lng": "145.48333"
  },
  {
    "country": "AU",
    "name": "Tin Can Bay",
    "lat": "-25.91914",
    "lng": "153.0032"
  },
  {
    "country": "AU",
    "name": "Thornbury",
    "lat": "-37.75",
    "lng": "145"
  },
  {
    "country": "AU",
    "name": "Thomastown",
    "lat": "-37.68333",
    "lng": "145.01667"
  },
  {
    "country": "AU",
    "name": "The Entrance",
    "lat": "-33.33876",
    "lng": "151.4978"
  },
  {
    "country": "AU",
    "name": "The Basin",
    "lat": "-37.85",
    "lng": "145.31667"
  },
  {
    "country": "AU",
    "name": "Thagoona",
    "lat": "-27.63333",
    "lng": "152.63333"
  },
  {
    "country": "AU",
    "name": "Thabeban",
    "lat": "-24.9",
    "lng": "152.35"
  },
  {
    "country": "AU",
    "name": "Tewantin",
    "lat": "-26.39104",
    "lng": "153.03432"
  },
  {
    "country": "AU",
    "name": "Templestowe Lower",
    "lat": "-37.76667",
    "lng": "145.11667"
  },
  {
    "country": "AU",
    "name": "Tarragindi",
    "lat": "-27.53333",
    "lng": "153.03333"
  },
  {
    "country": "AU",
    "name": "Taroona",
    "lat": "-42.9452",
    "lng": "147.3484"
  },
  {
    "country": "AU",
    "name": "Taroom",
    "lat": "-25.63925",
    "lng": "149.7998"
  },
  {
    "country": "AU",
    "name": "Tarneit",
    "lat": "-37.86667",
    "lng": "144.66667"
  },
  {
    "country": "AU",
    "name": "Taree",
    "lat": "-31.91099",
    "lng": "152.45387"
  },
  {
    "country": "AU",
    "name": "Tamworth",
    "lat": "-31.09048",
    "lng": "150.92905"
  },
  {
    "country": "AU",
    "name": "Tallebudgera",
    "lat": "-28.15",
    "lng": "153.43333"
  },
  {
    "country": "AU",
    "name": "Sydney",
    "lat": "-33.86785",
    "lng": "151.20732"
  },
  {
    "country": "AU",
    "name": "Sydenham",
    "lat": "-37.7",
    "lng": "144.76667"
  },
  {
    "country": "AU",
    "name": "Swan Hill",
    "lat": "-35.33781",
    "lng": "143.5544"
  },
  {
    "country": "AU",
    "name": "Surrey Hills",
    "lat": "-37.81667",
    "lng": "145.1"
  },
  {
    "country": "AU",
    "name": "Surfers Paradise",
    "lat": "-28.00274",
    "lng": "153.42999"
  },
  {
    "country": "AU",
    "name": "Sunnybank",
    "lat": "-27.58333",
    "lng": "153.05"
  },
  {
    "country": "AU",
    "name": "Sunbury",
    "lat": "-37.57742",
    "lng": "144.72607"
  },
  {
    "country": "AU",
    "name": "Strathpine",
    "lat": "-27.30414",
    "lng": "152.98977"
  },
  {
    "country": "AU",
    "name": "Port Stephens",
    "lat": "-32.71314",
    "lng": "152.06623"
  },
  {
    "country": "AU",
    "name": "Stawell",
    "lat": "-37.05632",
    "lng": "142.78088"
  },
  {
    "country": "AU",
    "name": "Stanthorpe",
    "lat": "-28.65425",
    "lng": "151.93388"
  },
  {
    "country": "AU",
    "name": "Springvale South",
    "lat": "-37.96667",
    "lng": "145.15"
  },
  {
    "country": "AU",
    "name": "Springvale",
    "lat": "-37.94853",
    "lng": "145.15274"
  },
  {
    "country": "AU",
    "name": "Spring Hill",
    "lat": "-27.46141",
    "lng": "153.02311"
  },
  {
    "country": "AU",
    "name": "Spotswood",
    "lat": "-37.82975",
    "lng": "144.88516"
  },
  {
    "country": "AU",
    "name": "Werribee South",
    "lat": "-37.9475",
    "lng": "144.71667"
  },
  {
    "country": "AU",
    "name": "Southport",
    "lat": "-27.96724",
    "lng": "153.39796"
  },
  {
    "country": "AU",
    "name": "South Melbourne",
    "lat": "-37.83333",
    "lng": "144.96667"
  },
  {
    "country": "AU",
    "name": "South Grafton",
    "lat": "-29.7076",
    "lng": "152.92627"
  },
  {
    "country": "AU",
    "name": "Sorrento",
    "lat": "-38.33958",
    "lng": "144.74126"
  },
  {
    "country": "AU",
    "name": "Sorell",
    "lat": "-42.78161",
    "lng": "147.56267"
  },
  {
    "country": "AU",
    "name": "Somerville",
    "lat": "-38.21667",
    "lng": "145.16667"
  },
  {
    "country": "AU",
    "name": "Somers",
    "lat": "-38.4",
    "lng": "145.16667"
  },
  {
    "country": "AU",
    "name": "Smithton",
    "lat": "-40.84587",
    "lng": "145.12498"
  },
  {
    "country": "AU",
    "name": "Slacks Creek",
    "lat": "-27.65",
    "lng": "153.15"
  },
  {
    "country": "AU",
    "name": "Singleton",
    "lat": "-32.56742",
    "lng": "151.16603"
  },
  {
    "country": "AU",
    "name": "Shorncliffe",
    "lat": "-27.32759",
    "lng": "153.08161"
  },
  {
    "country": "AU",
    "name": "Shepparton",
    "lat": "-36.38047",
    "lng": "145.39867"
  },
  {
    "country": "AU",
    "name": "Shellharbour Village",
    "lat": "-34.58333",
    "lng": "150.86667"
  },
  {
    "country": "AU",
    "name": "Sheffield",
    "lat": "-41.39947",
    "lng": "146.33897"
  },
  {
    "country": "AU",
    "name": "Sharon",
    "lat": "-24.87593",
    "lng": "152.26994"
  },
  {
    "country": "AU",
    "name": "Selby",
    "lat": "-37.91667",
    "lng": "145.38333"
  },
  {
    "country": "AU",
    "name": "Sebastopol",
    "lat": "-37.58532",
    "lng": "143.83953"
  },
  {
    "country": "AU",
    "name": "Seaford",
    "lat": "-38.1",
    "lng": "145.13333"
  },
  {
    "country": "AU",
    "name": "Scottsdale",
    "lat": "-41.1578",
    "lng": "147.51727"
  },
  {
    "country": "AU",
    "name": "Scoresby",
    "lat": "-37.9",
    "lng": "145.23333"
  },
  {
    "country": "AU",
    "name": "Scarness",
    "lat": "-25.28405",
    "lng": "152.856"
  },
  {
    "country": "AU",
    "name": "Sawtell",
    "lat": "-30.36459",
    "lng": "153.10141"
  },
  {
    "country": "AU",
    "name": "Sarina",
    "lat": "-21.4191",
    "lng": "149.21677"
  },
  {
    "country": "AU",
    "name": "Sandgate",
    "lat": "-27.32198",
    "lng": "153.06951"
  },
  {
    "country": "AU",
    "name": "Sandford",
    "lat": "-42.93333",
    "lng": "147.5"
  },
  {
    "country": "AU",
    "name": "Sale",
    "lat": "-38.11095",
    "lng": "147.06802"
  },
  {
    "country": "AU",
    "name": "Saint Kilda",
    "lat": "-37.8676",
    "lng": "144.98099"
  },
  {
    "country": "AU",
    "name": "St Helens",
    "lat": "-41.32028",
    "lng": "148.23889"
  },
  {
    "country": "AU",
    "name": "Saint Helena",
    "lat": "-37.7",
    "lng": "145.13333"
  },
  {
    "country": "AU",
    "name": "Saint Andrews",
    "lat": "-37.60151",
    "lng": "145.27235"
  },
  {
    "country": "AU",
    "name": "Saint Albans",
    "lat": "-37.73333",
    "lng": "144.8"
  },
  {
    "country": "AU",
    "name": "Rye",
    "lat": "-38.36667",
    "lng": "144.81667"
  },
  {
    "country": "AU",
    "name": "Rutherford",
    "lat": "-32.71667",
    "lng": "151.53333"
  },
  {
    "country": "AU",
    "name": "Rowville",
    "lat": "-37.93333",
    "lng": "145.23333"
  },
  {
    "country": "AU",
    "name": "Rosebud",
    "lat": "-38.35542",
    "lng": "144.9068"
  },
  {
    "country": "AU",
    "name": "Rosebery",
    "lat": "-41.77941",
    "lng": "145.53825"
  },
  {
    "country": "AU",
    "name": "Rosanna",
    "lat": "-37.75",
    "lng": "145.06667"
  },
  {
    "country": "AU",
    "name": "Roma",
    "lat": "-26.56741",
    "lng": "148.78751"
  },
  {
    "country": "AU",
    "name": "Rokeby",
    "lat": "-42.89875",
    "lng": "147.44917"
  },
  {
    "country": "AU",
    "name": "Rocklea",
    "lat": "-27.53917",
    "lng": "153.00402"
  },
  {
    "country": "AU",
    "name": "Rockhampton",
    "lat": "-23.38032",
    "lng": "150.50595"
  },
  {
    "country": "AU",
    "name": "Rockbank",
    "lat": "-37.73353",
    "lng": "144.67003"
  },
  {
    "country": "AU",
    "name": "Riverview",
    "lat": "-27.6",
    "lng": "152.85"
  },
  {
    "country": "AU",
    "name": "Riverstone",
    "lat": "-33.68333",
    "lng": "150.86667"
  },
  {
    "country": "AU",
    "name": "Ripponlea",
    "lat": "-37.88333",
    "lng": "145"
  },
  {
    "country": "AU",
    "name": "Ringwood East",
    "lat": "-37.81667",
    "lng": "145.25"
  },
  {
    "country": "AU",
    "name": "Richmond",
    "lat": "-37.81819",
    "lng": "145.00176"
  },
  {
    "country": "AU",
    "name": "Richmond",
    "lat": "-33.59956",
    "lng": "150.75142"
  },
  {
    "country": "AU",
    "name": "Rhodes",
    "lat": "-33.82663",
    "lng": "151.0881"
  },
  {
    "country": "AU",
    "name": "Revesby",
    "lat": "-33.95",
    "lng": "151.01667"
  },
  {
    "country": "AU",
    "name": "Reservoir",
    "lat": "-37.71667",
    "lng": "145"
  },
  {
    "country": "AU",
    "name": "Research",
    "lat": "-37.7",
    "lng": "145.18333"
  },
  {
    "country": "AU",
    "name": "Renmark West",
    "lat": "-34.16531",
    "lng": "140.7097"
  },
  {
    "country": "AU",
    "name": "Renmark",
    "lat": "-34.17702",
    "lng": "140.74697"
  },
  {
    "country": "AU",
    "name": "Regents Park",
    "lat": "-33.88333",
    "lng": "151.01667"
  },
  {
    "country": "AU",
    "name": "Redlynch",
    "lat": "-16.88333",
    "lng": "145.7"
  },
  {
    "country": "AU",
    "name": "Redland Bay",
    "lat": "-27.6113",
    "lng": "153.30022"
  },
  {
    "country": "AU",
    "name": "Red Hill",
    "lat": "-20.31667",
    "lng": "148.5"
  },
  {
    "country": "AU",
    "name": "Redhead",
    "lat": "-33.01178",
    "lng": "151.71142"
  },
  {
    "country": "AU",
    "name": "Redfern",
    "lat": "-33.89279",
    "lng": "151.20415"
  },
  {
    "country": "AU",
    "name": "Redbank",
    "lat": "-27.6",
    "lng": "152.86667"
  },
  {
    "country": "AU",
    "name": "Raworth",
    "lat": "-32.73333",
    "lng": "151.61667"
  },
  {
    "country": "AU",
    "name": "Ravenshoe",
    "lat": "-17.60901",
    "lng": "145.48413"
  },
  {
    "country": "AU",
    "name": "Rathmines",
    "lat": "-33.03773",
    "lng": "151.58443"
  },
  {
    "country": "AU",
    "name": "Quirindi",
    "lat": "-31.50763",
    "lng": "150.67902"
  },
  {
    "country": "AU",
    "name": "Queenstown",
    "lat": "-42.0805",
    "lng": "145.55646"
  },
  {
    "country": "AU",
    "name": "Queenscliff",
    "lat": "-38.26789",
    "lng": "144.66193"
  },
  {
    "country": "AU",
    "name": "Queanbeyan",
    "lat": "-35.35493",
    "lng": "149.232"
  },
  {
    "country": "AU",
    "name": "Quakers Hill",
    "lat": "-33.73333",
    "lng": "150.88333"
  },
  {
    "country": "AU",
    "name": "Pymble",
    "lat": "-33.74386",
    "lng": "151.14188"
  },
  {
    "country": "AU",
    "name": "Proserpine",
    "lat": "-20.4011",
    "lng": "148.5802"
  },
  {
    "country": "AU",
    "name": "Preston",
    "lat": "-37.75",
    "lng": "145.01667"
  },
  {
    "country": "AU",
    "name": "Port Sorell",
    "lat": "-41.16652",
    "lng": "146.55283"
  },
  {
    "country": "AU",
    "name": "Port Melbourne",
    "lat": "-37.83961",
    "lng": "144.94228"
  },
  {
    "country": "AU",
    "name": "Port Macquarie",
    "lat": "-31.43084",
    "lng": "152.90894"
  },
  {
    "country": "AU",
    "name": "Portland",
    "lat": "-38.3462",
    "lng": "141.60257"
  },
  {
    "country": "AU",
    "name": "Portland",
    "lat": "-33.35709",
    "lng": "149.98148"
  },
  {
    "country": "AU",
    "name": "Port Kembla",
    "lat": "-34.4818",
    "lng": "150.9012"
  },
  {
    "country": "AU",
    "name": "Port Fairy",
    "lat": "-38.38535",
    "lng": "142.2371"
  },
  {
    "country": "AU",
    "name": "Port Douglas",
    "lat": "-16.48383",
    "lng": "145.46725"
  },
  {
    "country": "AU",
    "name": "Point Cook",
    "lat": "-37.91482",
    "lng": "144.75088"
  },
  {
    "country": "AU",
    "name": "Point Clare",
    "lat": "-33.44378",
    "lng": "151.32732"
  },
  {
    "country": "AU",
    "name": "Plenty",
    "lat": "-37.66667",
    "lng": "145.11667"
  },
  {
    "country": "AU",
    "name": "Pitt Town",
    "lat": "-33.58718",
    "lng": "150.85857"
  },
  {
    "country": "AU",
    "name": "Picton",
    "lat": "-34.16995",
    "lng": "150.61168"
  },
  {
    "country": "AU",
    "name": "Phillip",
    "lat": "-31.13333",
    "lng": "150.85"
  },
  {
    "country": "AU",
    "name": "Perthville",
    "lat": "-33.48741",
    "lng": "149.54642"
  },
  {
    "country": "AU",
    "name": "Perth",
    "lat": "-41.57231",
    "lng": "147.17096"
  },
  {
    "country": "AU",
    "name": "Penshurst",
    "lat": "-33.96667",
    "lng": "151.08333"
  },
  {
    "country": "AU",
    "name": "Penrith",
    "lat": "-33.75",
    "lng": "150.7"
  },
  {
    "country": "AU",
    "name": "Penola",
    "lat": "-37.3752",
    "lng": "140.83678"
  },
  {
    "country": "AU",
    "name": "Pennant Hills",
    "lat": "-33.73783",
    "lng": "151.07216"
  },
  {
    "country": "AU",
    "name": "Penguin",
    "lat": "-41.12258",
    "lng": "146.07318"
  },
  {
    "country": "AU",
    "name": "Peak Hill",
    "lat": "-32.72387",
    "lng": "148.19052"
  },
  {
    "country": "AU",
    "name": "Pascoe Vale",
    "lat": "-37.73333",
    "lng": "144.93333"
  },
  {
    "country": "AU",
    "name": "Parkville",
    "lat": "-37.78333",
    "lng": "144.95"
  },
  {
    "country": "AU",
    "name": "Parkes",
    "lat": "-33.1372",
    "lng": "148.1759"
  },
  {
    "country": "AU",
    "name": "Parkdale",
    "lat": "-37.98333",
    "lng": "145.06667"
  },
  {
    "country": "AU",
    "name": "Palm Beach",
    "lat": "-33.59664",
    "lng": "151.32384"
  },
  {
    "country": "AU",
    "name": "Palm Beach",
    "lat": "-28.11694",
    "lng": "153.46584"
  },
  {
    "country": "AU",
    "name": "Pakenham Upper",
    "lat": "-38.01667",
    "lng": "145.51667"
  },
  {
    "country": "AU",
    "name": "Pakenham South",
    "lat": "-38.13333",
    "lng": "145.51667"
  },
  {
    "country": "AU",
    "name": "Ouyen",
    "lat": "-35.07087",
    "lng": "142.32034"
  },
  {
    "country": "AU",
    "name": "Ormond",
    "lat": "-37.9",
    "lng": "145.03333"
  },
  {
    "country": "AU",
    "name": "Orange",
    "lat": "-33.28397",
    "lng": "149.10018"
  },
  {
    "country": "AU",
    "name": "One Mile",
    "lat": "-27.62902",
    "lng": "152.73768"
  },
  {
    "country": "AU",
    "name": "Olinda",
    "lat": "-37.85",
    "lng": "145.36667"
  },
  {
    "country": "AU",
    "name": "Old Beach",
    "lat": "-42.77758",
    "lng": "147.26659"
  },
  {
    "country": "AU",
    "name": "Old Bar",
    "lat": "-31.9694",
    "lng": "152.58807"
  },
  {
    "country": "AU",
    "name": "Officer",
    "lat": "-38.05916",
    "lng": "145.40947"
  },
  {
    "country": "AU",
    "name": "Oberon",
    "lat": "-33.70398",
    "lng": "149.85915"
  },
  {
    "country": "AU",
    "name": "Oatley",
    "lat": "-33.98004",
    "lng": "151.07201"
  },
  {
    "country": "AU",
    "name": "Oakey",
    "lat": "-27.43305",
    "lng": "151.72063"
  },
  {
    "country": "AU",
    "name": "Oakdale",
    "lat": "-34.0793",
    "lng": "150.5132"
  },
  {
    "country": "AU",
    "name": "Nyngan",
    "lat": "-31.56375",
    "lng": "147.19373"
  },
  {
    "country": "AU",
    "name": "Nunawading",
    "lat": "-37.82043",
    "lng": "145.17308"
  },
  {
    "country": "AU",
    "name": "Nowra",
    "lat": "-34.88422",
    "lng": "150.60036"
  },
  {
    "country": "AU",
    "name": "Notting Hill",
    "lat": "-37.905",
    "lng": "145.1427"
  },
  {
    "country": "AU",
    "name": "North Wonthaggi",
    "lat": "-38.6",
    "lng": "145.6"
  },
  {
    "country": "AU",
    "name": "North Turramurra",
    "lat": "-33.71313",
    "lng": "151.14638"
  },
  {
    "country": "AU",
    "name": "North Sydney",
    "lat": "-33.839",
    "lng": "151.2072"
  },
  {
    "country": "AU",
    "name": "North Melbourne",
    "lat": "-37.8",
    "lng": "144.96667"
  },
  {
    "country": "AU",
    "name": "Northmead",
    "lat": "-33.78333",
    "lng": "150.98333"
  },
  {
    "country": "AU",
    "name": "North Haven",
    "lat": "-31.6368",
    "lng": "152.81357"
  },
  {
    "country": "AU",
    "name": "North Fitzroy",
    "lat": "-37.78862",
    "lng": "144.97885"
  },
  {
    "country": "AU",
    "name": "Northcote",
    "lat": "-37.76667",
    "lng": "145"
  },
  {
    "country": "AU",
    "name": "Normanhurst",
    "lat": "-33.73333",
    "lng": "151.1"
  },
  {
    "country": "AU",
    "name": "Noosaville",
    "lat": "-26.4",
    "lng": "153.06667"
  },
  {
    "country": "AU",
    "name": "Noosa Heads",
    "lat": "-26.39433",
    "lng": "153.0901"
  },
  {
    "country": "AU",
    "name": "Noble Park",
    "lat": "-37.96667",
    "lng": "145.16667"
  },
  {
    "country": "AU",
    "name": "Nimbin",
    "lat": "-28.59545",
    "lng": "153.22336"
  },
  {
    "country": "AU",
    "name": "Newtown",
    "lat": "-33.89835",
    "lng": "151.17754"
  },
  {
    "country": "AU",
    "name": "Newstead",
    "lat": "-41.43333",
    "lng": "147.16667"
  },
  {
    "country": "AU",
    "name": "Newport",
    "lat": "-37.84427",
    "lng": "144.88483"
  },
  {
    "country": "AU",
    "name": "Newport",
    "lat": "-33.65639",
    "lng": "151.31401"
  },
  {
    "country": "AU",
    "name": "New Norfolk",
    "lat": "-42.78261",
    "lng": "147.0587"
  },
  {
    "country": "AU",
    "name": "Newnham",
    "lat": "-41.39714",
    "lng": "147.13127"
  },
  {
    "country": "AU",
    "name": "Newington",
    "lat": "-37.55846",
    "lng": "143.82485"
  },
  {
    "country": "AU",
    "name": "Newcastle",
    "lat": "-32.92715",
    "lng": "151.77647"
  },
  {
    "country": "AU",
    "name": "Nerang",
    "lat": "-27.98941",
    "lng": "153.33633"
  },
  {
    "country": "AU",
    "name": "Nelson Bay",
    "lat": "-32.72043",
    "lng": "152.14398"
  },
  {
    "country": "AU",
    "name": "Narromine",
    "lat": "-32.23121",
    "lng": "148.24052"
  },
  {
    "country": "AU",
    "name": "Narre Warren North",
    "lat": "-37.98333",
    "lng": "145.31667"
  },
  {
    "country": "AU",
    "name": "Narre Warren",
    "lat": "-38.03333",
    "lng": "145.3"
  },
  {
    "country": "AU",
    "name": "Narrandera",
    "lat": "-34.74752",
    "lng": "146.55096"
  },
  {
    "country": "AU",
    "name": "Narrabri",
    "lat": "-30.32488",
    "lng": "149.78266"
  },
  {
    "country": "AU",
    "name": "Narrabeen",
    "lat": "-33.71277",
    "lng": "151.29736"
  },
  {
    "country": "AU",
    "name": "Narooma",
    "lat": "-36.21783",
    "lng": "150.13247"
  },
  {
    "country": "AU",
    "name": "Narellan",
    "lat": "-34.03333",
    "lng": "150.73333"
  },
  {
    "country": "AU",
    "name": "Narara",
    "lat": "-33.4",
    "lng": "151.35"
  },
  {
    "country": "AU",
    "name": "Narangba",
    "lat": "-27.20338",
    "lng": "152.95923"
  },
  {
    "country": "AU",
    "name": "Naracoorte",
    "lat": "-36.95785",
    "lng": "140.7383"
  },
  {
    "country": "AU",
    "name": "Nana Glen",
    "lat": "-30.13333",
    "lng": "153.01667"
  },
  {
    "country": "AU",
    "name": "Nambucca Heads",
    "lat": "-30.64318",
    "lng": "153.00884"
  },
  {
    "country": "AU",
    "name": "Nambucca",
    "lat": "-30.63333",
    "lng": "152.98333"
  },
  {
    "country": "AU",
    "name": "Nambour",
    "lat": "-26.62613",
    "lng": "152.95941"
  },
  {
    "country": "AU",
    "name": "Nabiac",
    "lat": "-32.09837",
    "lng": "152.37627"
  },
  {
    "country": "AU",
    "name": "Muswellbrook",
    "lat": "-32.26118",
    "lng": "150.89009"
  },
  {
    "country": "AU",
    "name": "Murwillumbah",
    "lat": "-28.32732",
    "lng": "153.39339"
  },
  {
    "country": "AU",
    "name": "Murrumbeena",
    "lat": "-37.9",
    "lng": "145.06667"
  },
  {
    "country": "AU",
    "name": "Murrumbateman",
    "lat": "-34.97199",
    "lng": "149.02985"
  },
  {
    "country": "AU",
    "name": "Mundulla",
    "lat": "-36.36667",
    "lng": "140.68333"
  },
  {
    "country": "AU",
    "name": "Mulwala",
    "lat": "-35.98536",
    "lng": "146.00534"
  },
  {
    "country": "AU",
    "name": "Mulgrave",
    "lat": "-37.91667",
    "lng": "145.2"
  },
  {
    "country": "AU",
    "name": "Mulgoa",
    "lat": "-33.838",
    "lng": "150.64963"
  },
  {
    "country": "AU",
    "name": "Mudgee",
    "lat": "-32.59426",
    "lng": "149.5871"
  },
  {
    "country": "AU",
    "name": "Mount Pleasant",
    "lat": "-37.58333",
    "lng": "143.86667"
  },
  {
    "country": "AU",
    "name": "Mount Martha",
    "lat": "-38.26667",
    "lng": "145.01667"
  },
  {
    "country": "AU",
    "name": "Mount Gambier",
    "lat": "-37.8318",
    "lng": "140.77919"
  },
  {
    "country": "AU",
    "name": "Mount Evelyn",
    "lat": "-37.78333",
    "lng": "145.38333"
  },
  {
    "country": "AU",
    "name": "Mount Eliza",
    "lat": "-38.18333",
    "lng": "145.08333"
  },
  {
    "country": "AU",
    "name": "Mount Druitt",
    "lat": "-33.76667",
    "lng": "150.81667"
  },
  {
    "country": "AU",
    "name": "Mount Dandenong",
    "lat": "-37.83333",
    "lng": "145.36667"
  },
  {
    "country": "AU",
    "name": "Mount Colah",
    "lat": "-33.68333",
    "lng": "151.11667"
  },
  {
    "country": "AU",
    "name": "Mount Clear",
    "lat": "-37.6",
    "lng": "143.88333"
  },
  {
    "country": "AU",
    "name": "Mount Beauty",
    "lat": "-36.73628",
    "lng": "147.17531"
  },
  {
    "country": "AU",
    "name": "Moss Vale",
    "lat": "-34.55374",
    "lng": "150.37115"
  },
  {
    "country": "AU",
    "name": "Mosman",
    "lat": "-33.83902",
    "lng": "151.23956"
  },
  {
    "country": "AU",
    "name": "Morwell",
    "lat": "-38.23476",
    "lng": "146.39499"
  },
  {
    "country": "AU",
    "name": "Moruya",
    "lat": "-35.9125",
    "lng": "150.08144"
  },
  {
    "country": "AU",
    "name": "Mortdale",
    "lat": "-33.96667",
    "lng": "151.08333"
  },
  {
    "country": "AU",
    "name": "Mornington",
    "lat": "-38.21792",
    "lng": "145.03876"
  },
  {
    "country": "AU",
    "name": "Moree",
    "lat": "-29.46278",
    "lng": "149.84157"
  },
  {
    "country": "AU",
    "name": "Mordialloc",
    "lat": "-38",
    "lng": "145.08333"
  },
  {
    "country": "AU",
    "name": "Morayfield",
    "lat": "-27.10876",
    "lng": "152.94907"
  },
  {
    "country": "AU",
    "name": "Moorooduc",
    "lat": "-38.21667",
    "lng": "145.11667"
  },
  {
    "country": "AU",
    "name": "Moorabbin",
    "lat": "-37.93667",
    "lng": "145.03417"
  },
  {
    "country": "AU",
    "name": "Moonee Ponds",
    "lat": "-37.76667",
    "lng": "144.91667"
  },
  {
    "country": "AU",
    "name": "Moonee Beach",
    "lat": "-30.20575",
    "lng": "153.15293"
  },
  {
    "country": "AU",
    "name": "Moonah",
    "lat": "-42.84617",
    "lng": "147.30228"
  },
  {
    "country": "AU",
    "name": "Mooloolaba",
    "lat": "-26.68164",
    "lng": "153.11925"
  },
  {
    "country": "AU",
    "name": "Montrose",
    "lat": "-37.81667",
    "lng": "145.35"
  },
  {
    "country": "AU",
    "name": "Montmorency",
    "lat": "-37.71667",
    "lng": "145.11667"
  },
  {
    "country": "AU",
    "name": "Mont Albert",
    "lat": "-37.81667",
    "lng": "145.1"
  },
  {
    "country": "AU",
    "name": "Monbulk",
    "lat": "-37.88333",
    "lng": "145.4"
  },
  {
    "country": "AU",
    "name": "Monash",
    "lat": "-34.2384",
    "lng": "140.56131"
  },
  {
    "country": "AU",
    "name": "Molong",
    "lat": "-33.09233",
    "lng": "148.87002"
  },
  {
    "country": "AU",
    "name": "Moggill",
    "lat": "-27.58333",
    "lng": "152.86667"
  },
  {
    "country": "AU",
    "name": "Moe",
    "lat": "-38.17828",
    "lng": "146.26099"
  },
  {
    "country": "AU",
    "name": "Moama",
    "lat": "-36.10413",
    "lng": "144.7608"
  },
  {
    "country": "AU",
    "name": "Mittagong",
    "lat": "-34.45002",
    "lng": "150.44572"
  },
  {
    "country": "AU",
    "name": "Mitcham",
    "lat": "-37.81667",
    "lng": "145.2"
  },
  {
    "country": "AU",
    "name": "Miranda",
    "lat": "-34.03857",
    "lng": "151.10005"
  },
  {
    "country": "AU",
    "name": "Milton",
    "lat": "-35.31644",
    "lng": "150.4361"
  },
  {
    "country": "AU",
    "name": "Millthorpe",
    "lat": "-33.44601",
    "lng": "149.18539"
  },
  {
    "country": "AU",
    "name": "Mill Park",
    "lat": "-37.66667",
    "lng": "145.06667"
  },
  {
    "country": "AU",
    "name": "Millicent",
    "lat": "-37.59389",
    "lng": "140.34947"
  },
  {
    "country": "AU",
    "name": "Millgrove",
    "lat": "-37.75527",
    "lng": "145.65347"
  },
  {
    "country": "AU",
    "name": "Mildura",
    "lat": "-34.18551",
    "lng": "142.16251"
  },
  {
    "country": "AU",
    "name": "Merrylands",
    "lat": "-33.83333",
    "lng": "150.98333"
  },
  {
    "country": "AU",
    "name": "Merriwa",
    "lat": "-32.13922",
    "lng": "150.35562"
  },
  {
    "country": "AU",
    "name": "Merimbula",
    "lat": "-36.88901",
    "lng": "149.90961"
  },
  {
    "country": "AU",
    "name": "Merricks",
    "lat": "-38.38333",
    "lng": "145.08333"
  },
  {
    "country": "AU",
    "name": "Mernda",
    "lat": "-37.60075",
    "lng": "145.09555"
  },
  {
    "country": "AU",
    "name": "Mentone",
    "lat": "-37.98333",
    "lng": "145.06667"
  },
  {
    "country": "AU",
    "name": "Menai",
    "lat": "-34.01667",
    "lng": "151.01667"
  },
  {
    "country": "AU",
    "name": "Melton South",
    "lat": "-37.70773",
    "lng": "144.57493"
  },
  {
    "country": "AU",
    "name": "Melton",
    "lat": "-37.68339",
    "lng": "144.58543"
  },
  {
    "country": "AU",
    "name": "Melbourne",
    "lat": "-37.814",
    "lng": "144.96332"
  },
  {
    "country": "AU",
    "name": "Medowie",
    "lat": "-32.7415",
    "lng": "151.8676"
  },
  {
    "country": "AU",
    "name": "McKinnon",
    "lat": "-37.91667",
    "lng": "145.05"
  },
  {
    "country": "AU",
    "name": "Matraville",
    "lat": "-33.95",
    "lng": "151.23333"
  },
  {
    "country": "AU",
    "name": "Mascot",
    "lat": "-33.92598",
    "lng": "151.19347"
  },
  {
    "country": "AU",
    "name": "Maryborough",
    "lat": "-37.04562",
    "lng": "143.73923"
  },
  {
    "country": "AU",
    "name": "Maryborough",
    "lat": "-25.54073",
    "lng": "152.70493"
  },
  {
    "country": "AU",
    "name": "Marrickville",
    "lat": "-33.90318",
    "lng": "151.15176"
  },
  {
    "country": "AU",
    "name": "Maroubra",
    "lat": "-33.95",
    "lng": "151.23333"
  },
  {
    "country": "AU",
    "name": "Maribyrnong",
    "lat": "-37.78333",
    "lng": "144.88333"
  },
  {
    "country": "AU",
    "name": "Margate",
    "lat": "-43.02814",
    "lng": "147.26256"
  },
  {
    "country": "AU",
    "name": "Margate",
    "lat": "-27.24761",
    "lng": "153.09809"
  },
  {
    "country": "AU",
    "name": "Mareeba",
    "lat": "-16.99096",
    "lng": "145.42306"
  },
  {
    "country": "AU",
    "name": "Mansfield",
    "lat": "-37.052",
    "lng": "146.08846"
  },
  {
    "country": "AU",
    "name": "Manly",
    "lat": "-33.79798",
    "lng": "151.28826"
  },
  {
    "country": "AU",
    "name": "Manilla",
    "lat": "-30.74748",
    "lng": "150.71974"
  },
  {
    "country": "AU",
    "name": "Maleny",
    "lat": "-26.76001",
    "lng": "152.84926"
  },
  {
    "country": "AU",
    "name": "Malabar",
    "lat": "-33.96216",
    "lng": "151.24796"
  },
  {
    "country": "AU",
    "name": "Maitland",
    "lat": "-32.73308",
    "lng": "151.5574"
  },
  {
    "country": "AU",
    "name": "Macleod",
    "lat": "-37.73333",
    "lng": "145.06667"
  },
  {
    "country": "AU",
    "name": "Maclean",
    "lat": "-29.4581",
    "lng": "153.19753"
  },
  {
    "country": "AU",
    "name": "Macksville",
    "lat": "-30.7078",
    "lng": "152.92029"
  },
  {
    "country": "AU",
    "name": "Mackay",
    "lat": "-21.15345",
    "lng": "149.16554"
  },
  {
    "country": "AU",
    "name": "Macclesfield",
    "lat": "-37.88333",
    "lng": "145.48333"
  },
  {
    "country": "AU",
    "name": "Lysterfield",
    "lat": "-37.93333",
    "lng": "145.3"
  },
  {
    "country": "AU",
    "name": "Luddenham",
    "lat": "-33.8785",
    "lng": "150.68863"
  },
  {
    "country": "AU",
    "name": "Loxton",
    "lat": "-34.4502",
    "lng": "140.56908"
  },
  {
    "country": "AU",
    "name": "Lower Plenty",
    "lat": "-37.73333",
    "lng": "145.11667"
  },
  {
    "country": "AU",
    "name": "Loveday",
    "lat": "-34.28333",
    "lng": "140.43333"
  },
  {
    "country": "AU",
    "name": "Lorn",
    "lat": "-32.73333",
    "lng": "151.56667"
  },
  {
    "country": "AU",
    "name": "Long Jetty",
    "lat": "-33.35795",
    "lng": "151.48135"
  },
  {
    "country": "AU",
    "name": "Longford",
    "lat": "-41.60512",
    "lng": "147.11887"
  },
  {
    "country": "AU",
    "name": "Liverpool",
    "lat": "-33.9",
    "lng": "150.93333"
  },
  {
    "country": "AU",
    "name": "Little River",
    "lat": "-37.96667",
    "lng": "144.5"
  },
  {
    "country": "AU",
    "name": "Lithgow",
    "lat": "-33.48247",
    "lng": "150.13631"
  },
  {
    "country": "AU",
    "name": "Lismore",
    "lat": "-28.81354",
    "lng": "153.2773"
  },
  {
    "country": "AU",
    "name": "Lisarow",
    "lat": "-33.38333",
    "lng": "151.36667"
  },
  {
    "country": "AU",
    "name": "Lindisfarne",
    "lat": "-42.84837",
    "lng": "147.36192"
  },
  {
    "country": "AU",
    "name": "Lindfield",
    "lat": "-33.78333",
    "lng": "151.16667"
  },
  {
    "country": "AU",
    "name": "Lilydale",
    "lat": "-37.75",
    "lng": "145.35"
  },
  {
    "country": "AU",
    "name": "Lightning Ridge",
    "lat": "-29.42743",
    "lng": "147.97865"
  },
  {
    "country": "AU",
    "name": "Lidcombe",
    "lat": "-33.86436",
    "lng": "151.0397"
  },
  {
    "country": "AU",
    "name": "Leura",
    "lat": "-33.71667",
    "lng": "150.33333"
  },
  {
    "country": "AU",
    "name": "Leumeah",
    "lat": "-34.05",
    "lng": "150.83333"
  },
  {
    "country": "AU",
    "name": "Leopold",
    "lat": "-38.19001",
    "lng": "144.46825"
  },
  {
    "country": "AU",
    "name": "Leichhardt",
    "lat": "-33.88341",
    "lng": "151.15625"
  },
  {
    "country": "AU",
    "name": "Leeton",
    "lat": "-34.55105",
    "lng": "146.40483"
  },
  {
    "country": "AU",
    "name": "Lawson",
    "lat": "-33.72064",
    "lng": "150.42975"
  },
  {
    "country": "AU",
    "name": "Lavington",
    "lat": "-36.03976",
    "lng": "146.93958"
  },
  {
    "country": "AU",
    "name": "Camden Haven",
    "lat": "-31.64484",
    "lng": "152.79462"
  },
  {
    "country": "AU",
    "name": "Launceston",
    "lat": "-41.43876",
    "lng": "147.13467"
  },
  {
    "country": "AU",
    "name": "Lauderdale",
    "lat": "-42.91364",
    "lng": "147.48747"
  },
  {
    "country": "AU",
    "name": "Latrobe",
    "lat": "-41.24641",
    "lng": "146.42458"
  },
  {
    "country": "AU",
    "name": "Larnook",
    "lat": "-28.65162",
    "lng": "153.11077"
  },
  {
    "country": "AU",
    "name": "Largs",
    "lat": "-32.7",
    "lng": "151.6"
  },
  {
    "country": "AU",
    "name": "Lara",
    "lat": "-38.02388",
    "lng": "144.40617"
  },
  {
    "country": "AU",
    "name": "Langwarrin",
    "lat": "-38.16667",
    "lng": "145.16667"
  },
  {
    "country": "AU",
    "name": "Lane Cove",
    "lat": "-33.8157",
    "lng": "151.16679"
  },
  {
    "country": "AU",
    "name": "Lalor",
    "lat": "-37.66667",
    "lng": "145.01667"
  },
  {
    "country": "AU",
    "name": "Lakes Entrance",
    "lat": "-37.86679",
    "lng": "148.00159"
  },
  {
    "country": "AU",
    "name": "Lakemba",
    "lat": "-33.91972",
    "lng": "151.07592"
  },
  {
    "country": "AU",
    "name": "Lake Illawarra",
    "lat": "-34.54658",
    "lng": "150.85645"
  },
  {
    "country": "AU",
    "name": "Lake Cargelligo",
    "lat": "-33.29884",
    "lng": "146.37296"
  },
  {
    "country": "AU",
    "name": "Lake Albert",
    "lat": "-35.16667",
    "lng": "147.38333"
  },
  {
    "country": "AU",
    "name": "Kyogle",
    "lat": "-28.62075",
    "lng": "153.00482"
  },
  {
    "country": "AU",
    "name": "Kyabram",
    "lat": "-36.31335",
    "lng": "145.05035"
  },
  {
    "country": "AU",
    "name": "Kurri Kurri",
    "lat": "-32.81933",
    "lng": "151.47908"
  },
  {
    "country": "AU",
    "name": "Kurnell",
    "lat": "-34.01088",
    "lng": "151.20512"
  },
  {
    "country": "AU",
    "name": "Kuranda",
    "lat": "-16.81978",
    "lng": "145.63818"
  },
  {
    "country": "AU",
    "name": "Kotara",
    "lat": "-32.95",
    "lng": "151.68333"
  },
  {
    "country": "AU",
    "name": "Koo-Wee-Rup",
    "lat": "-38.19941",
    "lng": "145.49081"
  },
  {
    "country": "AU",
    "name": "Kootingal",
    "lat": "-31.05857",
    "lng": "151.0535"
  },
  {
    "country": "AU",
    "name": "Kogarah",
    "lat": "-33.98333",
    "lng": "151.11667"
  },
  {
    "country": "AU",
    "name": "Kirribilli",
    "lat": "-33.84867",
    "lng": "151.2162"
  },
  {
    "country": "AU",
    "name": "Kingston Beach",
    "lat": "-42.98021",
    "lng": "147.31941"
  },
  {
    "country": "AU",
    "name": "Kingston",
    "lat": "-42.97638",
    "lng": "147.30351"
  },
  {
    "country": "AU",
    "name": "Kingston",
    "lat": "-34.23333",
    "lng": "140.35"
  },
  {
    "country": "AU",
    "name": "Kingscliff",
    "lat": "-28.25983",
    "lng": "153.57816"
  },
  {
    "country": "AU",
    "name": "Kinglake West",
    "lat": "-37.46667",
    "lng": "145.23333"
  },
  {
    "country": "AU",
    "name": "Kingaroy",
    "lat": "-26.53994",
    "lng": "151.8373"
  },
  {
    "country": "AU",
    "name": "Kilsyth",
    "lat": "-37.8",
    "lng": "145.31667"
  },
  {
    "country": "AU",
    "name": "Kiama",
    "lat": "-34.66828",
    "lng": "150.85219"
  },
  {
    "country": "AU",
    "name": "Keysborough",
    "lat": "-37.99116",
    "lng": "145.17385"
  },
  {
    "country": "AU",
    "name": "Kew",
    "lat": "-37.80639",
    "lng": "145.03086"
  },
  {
    "country": "AU",
    "name": "Kettering",
    "lat": "-43.12623",
    "lng": "147.24641"
  },
  {
    "country": "AU",
    "name": "Kenthurst",
    "lat": "-33.65527",
    "lng": "151.00503"
  },
  {
    "country": "AU",
    "name": "Kensington",
    "lat": "-33.92019",
    "lng": "151.22241"
  },
  {
    "country": "AU",
    "name": "Kensington",
    "lat": "-37.78333",
    "lng": "144.93333"
  },
  {
    "country": "AU",
    "name": "Kennington",
    "lat": "-36.78333",
    "lng": "144.3"
  },
  {
    "country": "AU",
    "name": "Kendall",
    "lat": "-31.63295",
    "lng": "152.70393"
  },
  {
    "country": "AU",
    "name": "Kempsey",
    "lat": "-31.07898",
    "lng": "152.83093"
  },
  {
    "country": "AU",
    "name": "Kelso",
    "lat": "-33.41667",
    "lng": "149.6"
  },
  {
    "country": "AU",
    "name": "Keith",
    "lat": "-36.0991",
    "lng": "140.35315"
  },
  {
    "country": "AU",
    "name": "Keiraville",
    "lat": "-34.41667",
    "lng": "150.86667"
  },
  {
    "country": "AU",
    "name": "Keilor",
    "lat": "-37.71667",
    "lng": "144.83333"
  },
  {
    "country": "AU",
    "name": "Katoomba",
    "lat": "-33.71977",
    "lng": "150.30739"
  },
  {
    "country": "AU",
    "name": "Kanwal",
    "lat": "-33.253",
    "lng": "151.4911"
  },
  {
    "country": "AU",
    "name": "Kangaroo Valley",
    "lat": "-34.73806",
    "lng": "150.53657"
  },
  {
    "country": "AU",
    "name": "Kangaroo Flat",
    "lat": "-36.8",
    "lng": "144.25"
  },
  {
    "country": "AU",
    "name": "Kandos",
    "lat": "-32.85772",
    "lng": "149.96832"
  },
  {
    "country": "AU",
    "name": "Kalorama",
    "lat": "-37.81667",
    "lng": "145.36667"
  },
  {
    "country": "AU",
    "name": "Kallista",
    "lat": "-37.88333",
    "lng": "145.36667"
  },
  {
    "country": "AU",
    "name": "Kahibah",
    "lat": "-32.96667",
    "lng": "151.71667"
  },
  {
    "country": "AU",
    "name": "Junee",
    "lat": "-34.86819",
    "lng": "147.58273"
  },
  {
    "country": "AU",
    "name": "Jindera",
    "lat": "-35.95474",
    "lng": "146.88852"
  },
  {
    "country": "AU",
    "name": "Jindabyne",
    "lat": "-36.41861",
    "lng": "148.61999"
  },
  {
    "country": "AU",
    "name": "Jilliby",
    "lat": "-33.22605",
    "lng": "151.41684"
  },
  {
    "country": "AU",
    "name": "Jannali",
    "lat": "-34.01643",
    "lng": "151.06065"
  },
  {
    "country": "AU",
    "name": "Jamberoo",
    "lat": "-34.64745",
    "lng": "150.77464"
  },
  {
    "country": "AU",
    "name": "Ivanhoe East",
    "lat": "-37.7832",
    "lng": "145.05249"
  },
  {
    "country": "AU",
    "name": "Inverell",
    "lat": "-29.77403",
    "lng": "151.11166"
  },
  {
    "country": "AU",
    "name": "Innisfail",
    "lat": "-17.52209",
    "lng": "146.03102"
  },
  {
    "country": "AU",
    "name": "Ingleburn",
    "lat": "-34",
    "lng": "150.86667"
  },
  {
    "country": "AU",
    "name": "Ingham",
    "lat": "-18.64552",
    "lng": "146.16248"
  },
  {
    "country": "AU",
    "name": "Hurstville Grove",
    "lat": "-33.97993",
    "lng": "151.09029"
  },
  {
    "country": "AU",
    "name": "Hurstbridge",
    "lat": "-37.64157",
    "lng": "145.19408"
  },
  {
    "country": "AU",
    "name": "Huonville",
    "lat": "-43.03124",
    "lng": "147.04813"
  },
  {
    "country": "AU",
    "name": "Hughesdale",
    "lat": "-37.9",
    "lng": "145.08333"
  },
  {
    "country": "AU",
    "name": "Hughenden",
    "lat": "-20.84399",
    "lng": "144.20035"
  },
  {
    "country": "AU",
    "name": "Howlong",
    "lat": "-35.98197",
    "lng": "146.63248"
  },
  {
    "country": "AU",
    "name": "Horsham",
    "lat": "-36.71131",
    "lng": "142.19981"
  },
  {
    "country": "AU",
    "name": "Hornsby",
    "lat": "-33.70244",
    "lng": "151.09931"
  },
  {
    "country": "AU",
    "name": "Home Hill",
    "lat": "-19.65921",
    "lng": "147.41232"
  },
  {
    "country": "AU",
    "name": "Homebush",
    "lat": "-33.86667",
    "lng": "151.08333"
  },
  {
    "country": "AU",
    "name": "Holsworthy",
    "lat": "-33.98333",
    "lng": "150.96667"
  },
  {
    "country": "AU",
    "name": "Holgate",
    "lat": "-33.4",
    "lng": "151.41667"
  },
  {
    "country": "AU",
    "name": "Holbrook",
    "lat": "-35.721",
    "lng": "147.31605"
  },
  {
    "country": "AU",
    "name": "Hobart",
    "lat": "-42.87936",
    "lng": "147.32941"
  },
  {
    "country": "AU",
    "name": "Hillston",
    "lat": "-33.48266",
    "lng": "145.53525"
  },
  {
    "country": "AU",
    "name": "Highett",
    "lat": "-37.95",
    "lng": "145.05"
  },
  {
    "country": "AU",
    "name": "Henty",
    "lat": "-35.52094",
    "lng": "147.03426"
  },
  {
    "country": "AU",
    "name": "Helensburgh",
    "lat": "-34.17836",
    "lng": "150.99522"
  },
  {
    "country": "AU",
    "name": "Heidelberg West",
    "lat": "-37.75",
    "lng": "145.03333"
  },
  {
    "country": "AU",
    "name": "Heidelberg",
    "lat": "-37.75",
    "lng": "145.06667"
  },
  {
    "country": "AU",
    "name": "Heddon Greta",
    "lat": "-32.80204",
    "lng": "151.51327"
  },
  {
    "country": "AU",
    "name": "Heathmont",
    "lat": "-37.83333",
    "lng": "145.25"
  },
  {
    "country": "AU",
    "name": "Heatherton",
    "lat": "-37.96667",
    "lng": "145.1"
  },
  {
    "country": "AU",
    "name": "Heathcote",
    "lat": "-34.0841",
    "lng": "151.01305"
  },
  {
    "country": "AU",
    "name": "Healesville",
    "lat": "-37.65395",
    "lng": "145.51718"
  },
  {
    "country": "AU",
    "name": "Hazelbrook",
    "lat": "-33.72446",
    "lng": "150.45839"
  },
  {
    "country": "AU",
    "name": "Haymarket",
    "lat": "-33.87868",
    "lng": "151.20526"
  },
  {
    "country": "AU",
    "name": "Hay",
    "lat": "-34.50903",
    "lng": "144.84306"
  },
  {
    "country": "AU",
    "name": "Hawthorn South",
    "lat": "-37.8329",
    "lng": "145.0367"
  },
  {
    "country": "AU",
    "name": "Hawks Nest",
    "lat": "-32.66755",
    "lng": "152.17831"
  },
  {
    "country": "AU",
    "name": "Hastings",
    "lat": "-38.3",
    "lng": "145.18333"
  },
  {
    "country": "AU",
    "name": "Harrington",
    "lat": "-31.87435",
    "lng": "152.64353"
  },
  {
    "country": "AU",
    "name": "Hampton Park",
    "lat": "-38.03333",
    "lng": "145.25"
  },
  {
    "country": "AU",
    "name": "Hampton",
    "lat": "-37.95",
    "lng": "145"
  },
  {
    "country": "AU",
    "name": "Hamilton",
    "lat": "-37.74425",
    "lng": "142.02202"
  },
  {
    "country": "AU",
    "name": "Hallam",
    "lat": "-38.01667",
    "lng": "145.26667"
  },
  {
    "country": "AU",
    "name": "Haberfield",
    "lat": "-33.88333",
    "lng": "151.2"
  },
  {
    "country": "AU",
    "name": "Gympie",
    "lat": "-26.18979",
    "lng": "152.66499"
  },
  {
    "country": "AU",
    "name": "Guyra",
    "lat": "-30.2168",
    "lng": "151.66785"
  },
  {
    "country": "AU",
    "name": "Gunnedah",
    "lat": "-30.98065",
    "lng": "150.25838"
  },
  {
    "country": "AU",
    "name": "Gundaroo",
    "lat": "-35.03333",
    "lng": "149.25"
  },
  {
    "country": "AU",
    "name": "Gundagai",
    "lat": "-35.06352",
    "lng": "148.10365"
  },
  {
    "country": "AU",
    "name": "Gulgong",
    "lat": "-32.36253",
    "lng": "149.53201"
  },
  {
    "country": "AU",
    "name": "Griffith",
    "lat": "-34.28853",
    "lng": "146.05093"
  },
  {
    "country": "AU",
    "name": "Greta",
    "lat": "-32.67783",
    "lng": "151.38924"
  },
  {
    "country": "AU",
    "name": "Grenfell",
    "lat": "-33.89549",
    "lng": "148.16438"
  },
  {
    "country": "AU",
    "name": "Greenwell Point",
    "lat": "-34.90751",
    "lng": "150.73113"
  },
  {
    "country": "AU",
    "name": "Greenvale",
    "lat": "-37.63333",
    "lng": "144.86667"
  },
  {
    "country": "AU",
    "name": "Greensborough",
    "lat": "-37.70462",
    "lng": "145.10302"
  },
  {
    "country": "AU",
    "name": "Granville",
    "lat": "-33.83333",
    "lng": "151.01667"
  },
  {
    "country": "AU",
    "name": "Granton",
    "lat": "-42.75149",
    "lng": "147.22795"
  },
  {
    "country": "AU",
    "name": "Grafton",
    "lat": "-29.68104",
    "lng": "152.93394"
  },
  {
    "country": "AU",
    "name": "Goulburn",
    "lat": "-34.75155",
    "lng": "149.72086"
  },
  {
    "country": "AU",
    "name": "Gosford",
    "lat": "-33.4244",
    "lng": "151.34399"
  },
  {
    "country": "AU",
    "name": "Gorokan",
    "lat": "-33.25764",
    "lng": "151.5097"
  },
  {
    "country": "AU",
    "name": "Gordon",
    "lat": "-29.3",
    "lng": "152.71667"
  },
  {
    "country": "AU",
    "name": "Goonellabah",
    "lat": "-28.81667",
    "lng": "153.31667"
  },
  {
    "country": "AU",
    "name": "Goondiwindi",
    "lat": "-28.54709",
    "lng": "150.30546"
  },
  {
    "country": "AU",
    "name": "Goodna",
    "lat": "-27.61046",
    "lng": "152.89896"
  },
  {
    "country": "AU",
    "name": "Gol Gol",
    "lat": "-34.17388",
    "lng": "142.22187"
  },
  {
    "country": "AU",
    "name": "Gold Coast",
    "lat": "-28.00029",
    "lng": "153.43088"
  },
  {
    "country": "AU",
    "name": "Gloucester",
    "lat": "-32.0077",
    "lng": "151.9633"
  },
  {
    "country": "AU",
    "name": "Glenroy",
    "lat": "-37.7",
    "lng": "144.93333"
  },
  {
    "country": "AU",
    "name": "Glenorie",
    "lat": "-33.60177",
    "lng": "151.00886"
  },
  {
    "country": "AU",
    "name": "Glenorchy",
    "lat": "-42.83343",
    "lng": "147.27593"
  },
  {
    "country": "AU",
    "name": "Glen Innes",
    "lat": "-29.73485",
    "lng": "151.7385"
  },
  {
    "country": "AU",
    "name": "Glen Huntly",
    "lat": "-37.88333",
    "lng": "145.05"
  },
  {
    "country": "AU",
    "name": "Glenhaven",
    "lat": "-33.7",
    "lng": "151"
  },
  {
    "country": "AU",
    "name": "Glenfield",
    "lat": "-33.96667",
    "lng": "150.9"
  },
  {
    "country": "AU",
    "name": "Glenferrie",
    "lat": "-37.83333",
    "lng": "145.05"
  },
  {
    "country": "AU",
    "name": "Glenbrook",
    "lat": "-33.76667",
    "lng": "150.61667"
  },
  {
    "country": "AU",
    "name": "Gladstone",
    "lat": "-23.84852",
    "lng": "151.25775"
  },
  {
    "country": "AU",
    "name": "Gilgandra",
    "lat": "-31.71173",
    "lng": "148.66252"
  },
  {
    "country": "AU",
    "name": "Gilgai",
    "lat": "-29.8527",
    "lng": "151.11806"
  },
  {
    "country": "AU",
    "name": "Gerringong",
    "lat": "-34.74702",
    "lng": "150.82809"
  },
  {
    "country": "AU",
    "name": "George Town",
    "lat": "-41.10559",
    "lng": "146.82606"
  },
  {
    "country": "AU",
    "name": "Gembrook",
    "lat": "-37.95321",
    "lng": "145.55536"
  },
  {
    "country": "AU",
    "name": "Geeveston",
    "lat": "-43.16337",
    "lng": "146.92549"
  },
  {
    "country": "AU",
    "name": "Geelong West",
    "lat": "-38.13888",
    "lng": "144.34842"
  },
  {
    "country": "AU",
    "name": "Geelong",
    "lat": "-38.14711",
    "lng": "144.36069"
  },
  {
    "country": "AU",
    "name": "Gayndah",
    "lat": "-25.62522",
    "lng": "151.61144"
  },
  {
    "country": "AU",
    "name": "Gatton",
    "lat": "-27.55873",
    "lng": "152.27618"
  },
  {
    "country": "AU",
    "name": "Garfield",
    "lat": "-38.08985",
    "lng": "145.67502"
  },
  {
    "country": "AU",
    "name": "Galston",
    "lat": "-33.65297",
    "lng": "151.04713"
  },
  {
    "country": "AU",
    "name": "Frederickton",
    "lat": "-31.03749",
    "lng": "152.8753"
  },
  {
    "country": "AU",
    "name": "Frankston East",
    "lat": "-38.13333",
    "lng": "145.13333"
  },
  {
    "country": "AU",
    "name": "Frankston",
    "lat": "-38.14458",
    "lng": "145.12291"
  },
  {
    "country": "AU",
    "name": "Franklin",
    "lat": "-43.08884",
    "lng": "147.00906"
  },
  {
    "country": "AU",
    "name": "Forster",
    "lat": "-32.18136",
    "lng": "152.51715"
  },
  {
    "country": "AU",
    "name": "Forest Hill",
    "lat": "-35.1481",
    "lng": "147.46707"
  },
  {
    "country": "AU",
    "name": "Forest Hill",
    "lat": "-37.83333",
    "lng": "145.18333"
  },
  {
    "country": "AU",
    "name": "Forbes",
    "lat": "-33.38436",
    "lng": "148.0076"
  },
  {
    "country": "AU",
    "name": "Footscray",
    "lat": "-37.8",
    "lng": "144.9"
  },
  {
    "country": "AU",
    "name": "Fitzroy",
    "lat": "-37.79839",
    "lng": "144.97833"
  },
  {
    "country": "AU",
    "name": "Finley",
    "lat": "-35.65498",
    "lng": "145.57106"
  },
  {
    "country": "AU",
    "name": "Ferny Creek",
    "lat": "-37.88333",
    "lng": "145.33333"
  },
  {
    "country": "AU",
    "name": "Federal",
    "lat": "-28.6485",
    "lng": "153.4512"
  },
  {
    "country": "AU",
    "name": "Fawkner",
    "lat": "-37.71667",
    "lng": "144.96667"
  },
  {
    "country": "AU",
    "name": "Falls Creek",
    "lat": "-34.96667",
    "lng": "150.6"
  },
  {
    "country": "AU",
    "name": "Evans Head",
    "lat": "-29.11777",
    "lng": "153.43072"
  },
  {
    "country": "AU",
    "name": "Evandale",
    "lat": "-41.56858",
    "lng": "147.25271"
  },
  {
    "country": "AU",
    "name": "Eulomogo",
    "lat": "-32.26667",
    "lng": "148.68333"
  },
  {
    "country": "AU",
    "name": "Ettalong Beach",
    "lat": "-33.51058",
    "lng": "151.33044"
  },
  {
    "country": "AU",
    "name": "Ettalong",
    "lat": "-33.51301",
    "lng": "151.3383"
  },
  {
    "country": "AU",
    "name": "Essendon",
    "lat": "-37.76667",
    "lng": "144.91667"
  },
  {
    "country": "AU",
    "name": "Erina",
    "lat": "-33.43218",
    "lng": "151.38972"
  },
  {
    "country": "AU",
    "name": "Epsom",
    "lat": "-36.71667",
    "lng": "144.31667"
  },
  {
    "country": "AU",
    "name": "Epping",
    "lat": "-37.65",
    "lng": "145.03333"
  },
  {
    "country": "AU",
    "name": "Epping",
    "lat": "-33.77271",
    "lng": "151.08184"
  },
  {
    "country": "AU",
    "name": "Enmore",
    "lat": "-30.73333",
    "lng": "151.8"
  },
  {
    "country": "AU",
    "name": "Engadine",
    "lat": "-34.06564",
    "lng": "151.01266"
  },
  {
    "country": "AU",
    "name": "Empire Bay",
    "lat": "-33.49385",
    "lng": "151.3629"
  },
  {
    "country": "AU",
    "name": "Emerald",
    "lat": "-37.93167",
    "lng": "145.44093"
  },
  {
    "country": "AU",
    "name": "Emerald",
    "lat": "-23.52296",
    "lng": "148.15784"
  },
  {
    "country": "AU",
    "name": "Eltham North",
    "lat": "-37.7",
    "lng": "145.15"
  },
  {
    "country": "AU",
    "name": "Eltham",
    "lat": "-37.73333",
    "lng": "145.15"
  },
  {
    "country": "AU",
    "name": "Elderslie",
    "lat": "-34.05",
    "lng": "150.7"
  },
  {
    "country": "AU",
    "name": "Eglinton",
    "lat": "-33.37731",
    "lng": "149.54654"
  },
  {
    "country": "AU",
    "name": "Edithvale",
    "lat": "-38.03724",
    "lng": "145.10974"
  },
  {
    "country": "AU",
    "name": "Edgecliff",
    "lat": "-33.88333",
    "lng": "151.25"
  },
  {
    "country": "AU",
    "name": "Eden",
    "lat": "-37.06675",
    "lng": "149.90029"
  },
  {
    "country": "AU",
    "name": "Echuca",
    "lat": "-36.14057",
    "lng": "144.75185"
  },
  {
    "country": "AU",
    "name": "East Maitland",
    "lat": "-32.75",
    "lng": "151.58333"
  },
  {
    "country": "AU",
    "name": "East Hills",
    "lat": "-33.96667",
    "lng": "150.98333"
  },
  {
    "country": "AU",
    "name": "East Gosford",
    "lat": "-33.43874",
    "lng": "151.35338"
  },
  {
    "country": "AU",
    "name": "East Ballina",
    "lat": "-28.86667",
    "lng": "153.58333"
  },
  {
    "country": "AU",
    "name": "Earlwood",
    "lat": "-33.95",
    "lng": "151.1"
  },
  {
    "country": "AU",
    "name": "Dungog",
    "lat": "-32.40431",
    "lng": "151.75192"
  },
  {
    "country": "AU",
    "name": "Dunedoo",
    "lat": "-32.01634",
    "lng": "149.3871"
  },
  {
    "country": "AU",
    "name": "Dubbo",
    "lat": "-32.24295",
    "lng": "148.60484"
  },
  {
    "country": "AU",
    "name": "Dromana",
    "lat": "-38.33375",
    "lng": "144.96458"
  },
  {
    "country": "AU",
    "name": "Douglas Park",
    "lat": "-34.18496",
    "lng": "150.71449"
  },
  {
    "country": "AU",
    "name": "Dorrigo",
    "lat": "-30.34112",
    "lng": "152.71394"
  },
  {
    "country": "AU",
    "name": "Doreen",
    "lat": "-37.6",
    "lng": "145.15"
  },
  {
    "country": "AU",
    "name": "Dora Creek",
    "lat": "-33.08139",
    "lng": "151.49677"
  },
  {
    "country": "AU",
    "name": "Doonside",
    "lat": "-33.76667",
    "lng": "150.86667"
  },
  {
    "country": "AU",
    "name": "Donvale",
    "lat": "-37.7891",
    "lng": "145.17488"
  },
  {
    "country": "AU",
    "name": "Doncaster East",
    "lat": "-37.78761",
    "lng": "145.14888"
  },
  {
    "country": "AU",
    "name": "Doncaster",
    "lat": "-37.78828",
    "lng": "145.12373"
  },
  {
    "country": "AU",
    "name": "Dingley Village",
    "lat": "-37.9827",
    "lng": "145.1342"
  },
  {
    "country": "AU",
    "name": "Diggers Rest",
    "lat": "-37.62597",
    "lng": "144.71881"
  },
  {
    "country": "AU",
    "name": "Diamond Creek",
    "lat": "-37.66667",
    "lng": "145.15"
  },
  {
    "country": "AU",
    "name": "Devonport",
    "lat": "-41.17695",
    "lng": "146.35152"
  },
  {
    "country": "AU",
    "name": "Derrimut",
    "lat": "-37.79238",
    "lng": "144.76994"
  },
  {
    "country": "AU",
    "name": "Denman",
    "lat": "-32.38788",
    "lng": "150.68935"
  },
  {
    "country": "AU",
    "name": "Deniliquin",
    "lat": "-35.53245",
    "lng": "144.95364"
  },
  {
    "country": "AU",
    "name": "Deloraine",
    "lat": "-41.52477",
    "lng": "146.65701"
  },
  {
    "country": "AU",
    "name": "Deer Park",
    "lat": "-37.76667",
    "lng": "144.78333"
  },
  {
    "country": "AU",
    "name": "Deception Bay",
    "lat": "-27.19354",
    "lng": "153.02631"
  },
  {
    "country": "AU",
    "name": "Deagon",
    "lat": "-27.33333",
    "lng": "153.06667"
  },
  {
    "country": "AU",
    "name": "Davistown",
    "lat": "-33.48559",
    "lng": "151.36151"
  },
  {
    "country": "AU",
    "name": "Davidson",
    "lat": "-33.74297",
    "lng": "151.2008"
  },
  {
    "country": "AU",
    "name": "Darlington Point",
    "lat": "-34.56942",
    "lng": "145.9987"
  },
  {
    "country": "AU",
    "name": "Darlinghurst",
    "lat": "-33.87939",
    "lng": "151.21925"
  },
  {
    "country": "AU",
    "name": "Dareton",
    "lat": "-34.09468",
    "lng": "142.03966"
  },
  {
    "country": "AU",
    "name": "Lower Plenty",
    "lat": "-37.75",
    "lng": "145.11667"
  },
  {
    "country": "AU",
    "name": "Dapto",
    "lat": "-34.5",
    "lng": "150.78333"
  },
  {
    "country": "AU",
    "name": "Dandenong",
    "lat": "-37.98333",
    "lng": "145.2"
  },
  {
    "country": "AU",
    "name": "Dalby",
    "lat": "-27.18169",
    "lng": "151.26205"
  },
  {
    "country": "AU",
    "name": "D’Aguilar",
    "lat": "-26.98333",
    "lng": "152.8"
  },
  {
    "country": "AU",
    "name": "Daceyville",
    "lat": "-33.93333",
    "lng": "151.23333"
  },
  {
    "country": "AU",
    "name": "Cygnet",
    "lat": "-43.15333",
    "lng": "147.07253"
  },
  {
    "country": "AU",
    "name": "Currie",
    "lat": "-39.92976",
    "lng": "143.85385"
  },
  {
    "country": "AU",
    "name": "Cundletown",
    "lat": "-31.8941",
    "lng": "152.52141"
  },
  {
    "country": "AU",
    "name": "Culcairn",
    "lat": "-35.66669",
    "lng": "147.03845"
  },
  {
    "country": "AU",
    "name": "Croydon North",
    "lat": "-37.78333",
    "lng": "145.3"
  },
  {
    "country": "AU",
    "name": "Croydon",
    "lat": "-33.88333",
    "lng": "151.11667"
  },
  {
    "country": "AU",
    "name": "Crookwell",
    "lat": "-34.45925",
    "lng": "149.47137"
  },
  {
    "country": "AU",
    "name": "Cronulla",
    "lat": "-34.06251",
    "lng": "151.14961"
  },
  {
    "country": "AU",
    "name": "Cringila",
    "lat": "-34.46667",
    "lng": "150.88333"
  },
  {
    "country": "AU",
    "name": "Crib Point",
    "lat": "-38.35",
    "lng": "145.2"
  },
  {
    "country": "AU",
    "name": "Crescent Head",
    "lat": "-31.1887",
    "lng": "152.97301"
  },
  {
    "country": "AU",
    "name": "Cremorne",
    "lat": "-37.83333",
    "lng": "145"
  },
  {
    "country": "AU",
    "name": "Cranbourne",
    "lat": "-38.1",
    "lng": "145.28333"
  },
  {
    "country": "AU",
    "name": "Cranbourne",
    "lat": "-38.11342",
    "lng": "145.28326"
  },
  {
    "country": "AU",
    "name": "Craigieburn",
    "lat": "-37.6",
    "lng": "144.95"
  },
  {
    "country": "AU",
    "name": "Cowra",
    "lat": "-33.83554",
    "lng": "148.69663"
  },
  {
    "country": "AU",
    "name": "Cowes",
    "lat": "-38.45231",
    "lng": "145.23865"
  },
  {
    "country": "AU",
    "name": "Coutts Crossing",
    "lat": "-29.82619",
    "lng": "152.89156"
  },
  {
    "country": "AU",
    "name": "Corrimal",
    "lat": "-34.37864",
    "lng": "150.90356"
  },
  {
    "country": "AU",
    "name": "Corowa",
    "lat": "-35.99704",
    "lng": "146.38552"
  },
  {
    "country": "AU",
    "name": "Coraki",
    "lat": "-28.99332",
    "lng": "153.28212"
  },
  {
    "country": "AU",
    "name": "Cootamundra",
    "lat": "-34.64095",
    "lng": "148.02838"
  },
  {
    "country": "AU",
    "name": "Cooranbong",
    "lat": "-33.07622",
    "lng": "151.45409"
  },
  {
    "country": "AU",
    "name": "Coonamble",
    "lat": "-30.95389",
    "lng": "148.38881"
  },
  {
    "country": "AU",
    "name": "Coonabarabran",
    "lat": "-31.27734",
    "lng": "149.27904"
  },
  {
    "country": "AU",
    "name": "Cooma",
    "lat": "-36.23517",
    "lng": "149.12408"
  },
  {
    "country": "AU",
    "name": "Coolum Beach",
    "lat": "-26.5283",
    "lng": "153.08809"
  },
  {
    "country": "AU",
    "name": "Coolamon",
    "lat": "-34.81641",
    "lng": "147.19577"
  },
  {
    "country": "AU",
    "name": "Cooktown",
    "lat": "-15.43912",
    "lng": "145.136"
  },
  {
    "country": "AU",
    "name": "Coogee",
    "lat": "-33.9205",
    "lng": "151.25522"
  },
  {
    "country": "AU",
    "name": "Coniston",
    "lat": "-34.45",
    "lng": "150.88333"
  },
  {
    "country": "AU",
    "name": "Condobolin",
    "lat": "-33.08877",
    "lng": "147.15139"
  },
  {
    "country": "AU",
    "name": "Concord",
    "lat": "-33.84722",
    "lng": "151.10381"
  },
  {
    "country": "AU",
    "name": "Como",
    "lat": "-33.99941",
    "lng": "151.06389"
  },
  {
    "country": "AU",
    "name": "Colo Vale",
    "lat": "-34.40095",
    "lng": "150.48573"
  },
  {
    "country": "AU",
    "name": "Collingwood",
    "lat": "-37.8",
    "lng": "144.98333"
  },
  {
    "country": "AU",
    "name": "Colac",
    "lat": "-38.339",
    "lng": "143.58489"
  },
  {
    "country": "AU",
    "name": "Coffs Harbour",
    "lat": "-30.29626",
    "lng": "153.11351"
  },
  {
    "country": "AU",
    "name": "Cockatoo",
    "lat": "-37.93677",
    "lng": "145.49376"
  },
  {
    "country": "AU",
    "name": "Coburg",
    "lat": "-37.75",
    "lng": "144.96667"
  },
  {
    "country": "AU",
    "name": "Cobbitty",
    "lat": "-34.01592",
    "lng": "150.67854"
  },
  {
    "country": "AU",
    "name": "Cobar",
    "lat": "-31.49666",
    "lng": "145.83439"
  },
  {
    "country": "AU",
    "name": "Cloncurry",
    "lat": "-20.70718",
    "lng": "140.51303"
  },
  {
    "country": "AU",
    "name": "Clifton Springs",
    "lat": "-38.1567",
    "lng": "144.5551"
  },
  {
    "country": "AU",
    "name": "Clifton Hill",
    "lat": "-37.79798",
    "lng": "144.99533"
  },
  {
    "country": "AU",
    "name": "Cleveland",
    "lat": "-27.52677",
    "lng": "153.26516"
  },
  {
    "country": "AU",
    "name": "Clayton South",
    "lat": "-37.93333",
    "lng": "145.11667"
  },
  {
    "country": "AU",
    "name": "Clayton",
    "lat": "-37.91667",
    "lng": "145.11667"
  },
  {
    "country": "AU",
    "name": "Clarinda",
    "lat": "-37.93333",
    "lng": "145.11667"
  },
  {
    "country": "AU",
    "name": "Clarence Town",
    "lat": "-32.58395",
    "lng": "151.77757"
  },
  {
    "country": "AU",
    "name": "Claremont",
    "lat": "-42.78333",
    "lng": "147.25"
  },
  {
    "country": "AU",
    "name": "Wollongong",
    "lat": "-34.424",
    "lng": "150.89345"
  },
  {
    "country": "AU",
    "name": "Churchill",
    "lat": "-27.64233",
    "lng": "152.75022"
  },
  {
    "country": "AU",
    "name": "Chipping Norton",
    "lat": "-33.9",
    "lng": "150.95"
  },
  {
    "country": "AU",
    "name": "Chippendale",
    "lat": "-33.88673",
    "lng": "151.19745"
  },
  {
    "country": "AU",
    "name": "Chinderah",
    "lat": "-28.23333",
    "lng": "153.55"
  },
  {
    "country": "AU",
    "name": "Chinchilla",
    "lat": "-26.73787",
    "lng": "150.6297"
  },
  {
    "country": "AU",
    "name": "Childers",
    "lat": "-25.23708",
    "lng": "152.27876"
  },
  {
    "country": "AU",
    "name": "Chelsea Heights",
    "lat": "-38.03333",
    "lng": "145.13333"
  },
  {
    "country": "AU",
    "name": "Chelsea",
    "lat": "-38.05",
    "lng": "145.11667"
  },
  {
    "country": "AU",
    "name": "Chatswood",
    "lat": "-33.8",
    "lng": "151.18333"
  },
  {
    "country": "AU",
    "name": "Charters Towers",
    "lat": "-20.07671",
    "lng": "146.26353"
  },
  {
    "country": "AU",
    "name": "Charlestown",
    "lat": "-32.95",
    "lng": "151.66667"
  },
  {
    "country": "AU",
    "name": "Cessnock",
    "lat": "-32.83211",
    "lng": "151.35623"
  },
  {
    "country": "AU",
    "name": "Caulfield North",
    "lat": "-37.8739",
    "lng": "145.02485"
  },
  {
    "country": "AU",
    "name": "Caulfield East",
    "lat": "-37.88333",
    "lng": "145.05"
  },
  {
    "country": "AU",
    "name": "Caulfield",
    "lat": "-37.88251",
    "lng": "145.02288"
  },
  {
    "country": "AU",
    "name": "Castlemaine",
    "lat": "-37.06709",
    "lng": "144.21684"
  },
  {
    "country": "AU",
    "name": "Castle Hill",
    "lat": "-33.73333",
    "lng": "151"
  },
  {
    "country": "AU",
    "name": "Castlecrag",
    "lat": "-33.79987",
    "lng": "151.2231"
  },
  {
    "country": "AU",
    "name": "Casino",
    "lat": "-28.85819",
    "lng": "153.04748"
  },
  {
    "country": "AU",
    "name": "Carrum Downs",
    "lat": "-38.09968",
    "lng": "145.17248"
  },
  {
    "country": "AU",
    "name": "Carrum",
    "lat": "-38.08333",
    "lng": "145.13333"
  },
  {
    "country": "AU",
    "name": "Carnegie",
    "lat": "-37.88333",
    "lng": "145.06667"
  },
  {
    "country": "AU",
    "name": "Carlton North",
    "lat": "-37.78333",
    "lng": "144.96667"
  },
  {
    "country": "AU",
    "name": "Carlton",
    "lat": "-37.8",
    "lng": "144.96667"
  },
  {
    "country": "AU",
    "name": "Carlingford",
    "lat": "-33.78269",
    "lng": "151.04888"
  },
  {
    "country": "AU",
    "name": "Caringbah",
    "lat": "-34.04726",
    "lng": "151.12051"
  },
  {
    "country": "AU",
    "name": "Cardiff",
    "lat": "-32.95",
    "lng": "151.66667"
  },
  {
    "country": "AU",
    "name": "Canowindra",
    "lat": "-33.56247",
    "lng": "148.66434"
  },
  {
    "country": "AU",
    "name": "Canberra",
    "lat": "-35.28346",
    "lng": "149.12807"
  },
  {
    "country": "AU",
    "name": "Canadian",
    "lat": "-37.57606",
    "lng": "143.87742"
  },
  {
    "country": "AU",
    "name": "Camperdown",
    "lat": "-33.88965",
    "lng": "151.17642"
  },
  {
    "country": "AU",
    "name": "Campbelltown",
    "lat": "-34.06667",
    "lng": "150.81667"
  },
  {
    "country": "AU",
    "name": "Campbellfield",
    "lat": "-37.68333",
    "lng": "144.95"
  },
  {
    "country": "AU",
    "name": "Cambridge",
    "lat": "-42.83333",
    "lng": "147.45"
  },
  {
    "country": "AU",
    "name": "Camberwell",
    "lat": "-37.84205",
    "lng": "145.0694"
  },
  {
    "country": "AU",
    "name": "Caloundra",
    "lat": "-26.80346",
    "lng": "153.12195"
  },
  {
    "country": "AU",
    "name": "Cairns",
    "lat": "-16.92304",
    "lng": "145.76625"
  },
  {
    "country": "AU",
    "name": "Caboolture",
    "lat": "-27.08465",
    "lng": "152.9511"
  },
  {
    "country": "AU",
    "name": "Byron Bay",
    "lat": "-28.64201",
    "lng": "153.61194"
  },
  {
    "country": "AU",
    "name": "Buxton",
    "lat": "-34.26017",
    "lng": "150.53288"
  },
  {
    "country": "AU",
    "name": "Burwood East",
    "lat": "-37.85",
    "lng": "145.15"
  },
  {
    "country": "AU",
    "name": "Burringbar",
    "lat": "-28.4358",
    "lng": "153.47324"
  },
  {
    "country": "AU",
    "name": "Burpengary",
    "lat": "-27.15746",
    "lng": "152.95758"
  },
  {
    "country": "AU",
    "name": "Burnie",
    "lat": "-41.05584",
    "lng": "145.90375"
  },
  {
    "country": "AU",
    "name": "Bunyip",
    "lat": "-38.09789",
    "lng": "145.71606"
  },
  {
    "country": "AU",
    "name": "Bungendore",
    "lat": "-35.25382",
    "lng": "149.44007"
  },
  {
    "country": "AU",
    "name": "Bundanoon",
    "lat": "-34.65658",
    "lng": "150.29623"
  },
  {
    "country": "AU",
    "name": "Bundamba",
    "lat": "-27.60947",
    "lng": "152.81133"
  },
  {
    "country": "AU",
    "name": "Bundaberg",
    "lat": "-24.86621",
    "lng": "152.3479"
  },
  {
    "country": "AU",
    "name": "Bulli",
    "lat": "-34.33834",
    "lng": "150.91347"
  },
  {
    "country": "AU",
    "name": "Bulleen",
    "lat": "-37.76667",
    "lng": "145.08333"
  },
  {
    "country": "AU",
    "name": "Bulahdelah",
    "lat": "-32.40698",
    "lng": "152.21185"
  },
  {
    "country": "AU",
    "name": "Budgewoi",
    "lat": "-33.2339",
    "lng": "151.55412"
  },
  {
    "country": "AU",
    "name": "Buderim",
    "lat": "-26.68443",
    "lng": "153.05705"
  },
  {
    "country": "AU",
    "name": "Brunswick West",
    "lat": "-37.76461",
    "lng": "144.94383"
  },
  {
    "country": "AU",
    "name": "Brunswick Heads",
    "lat": "-28.54154",
    "lng": "153.5481"
  },
  {
    "country": "AU",
    "name": "Brunswick East",
    "lat": "-37.77255",
    "lng": "144.97241"
  },
  {
    "country": "AU",
    "name": "Brunswick",
    "lat": "-37.76667",
    "lng": "144.96667"
  },
  {
    "country": "AU",
    "name": "Brown Hill",
    "lat": "-37.55",
    "lng": "143.9"
  },
  {
    "country": "AU",
    "name": "Broulee",
    "lat": "-35.85469",
    "lng": "150.17392"
  },
  {
    "country": "AU",
    "name": "Broken Hill",
    "lat": "-31.9652",
    "lng": "141.4512"
  },
  {
    "country": "AU",
    "name": "Broadmeadows",
    "lat": "-37.68015",
    "lng": "144.91877"
  },
  {
    "country": "AU",
    "name": "Brisbane",
    "lat": "-27.46794",
    "lng": "153.02809"
  },
  {
    "country": "AU",
    "name": "Bringelly",
    "lat": "-33.93333",
    "lng": "150.73333"
  },
  {
    "country": "AU",
    "name": "Brighton",
    "lat": "-27.29582",
    "lng": "153.05721"
  },
  {
    "country": "AU",
    "name": "Bridport",
    "lat": "-41.00046",
    "lng": "147.39175"
  },
  {
    "country": "AU",
    "name": "Bridgewater",
    "lat": "-42.73719",
    "lng": "147.22784"
  },
  {
    "country": "AU",
    "name": "Briar Hill",
    "lat": "-37.71667",
    "lng": "145.11667"
  },
  {
    "country": "AU",
    "name": "Brewarrina",
    "lat": "-29.96067",
    "lng": "146.85986"
  },
  {
    "country": "AU",
    "name": "Branxton",
    "lat": "-32.65547",
    "lng": "151.35113"
  },
  {
    "country": "AU",
    "name": "Braidwood",
    "lat": "-35.44148",
    "lng": "149.7998"
  },
  {
    "country": "AU",
    "name": "Box Hill",
    "lat": "-37.81887",
    "lng": "145.12545"
  },
  {
    "country": "AU",
    "name": "Bowraville",
    "lat": "-30.64997",
    "lng": "152.85146"
  },
  {
    "country": "AU",
    "name": "Bowral",
    "lat": "-34.4775",
    "lng": "150.4204"
  },
  {
    "country": "AU",
    "name": "Bowenfels",
    "lat": "-33.51667",
    "lng": "150.11667"
  },
  {
    "country": "AU",
    "name": "Bowen",
    "lat": "-20.01367",
    "lng": "148.24754"
  },
  {
    "country": "AU",
    "name": "Bourke",
    "lat": "-30.09011",
    "lng": "145.93646"
  },
  {
    "country": "AU",
    "name": "Botany",
    "lat": "-33.94599",
    "lng": "151.19591"
  },
  {
    "country": "AU",
    "name": "Boronia",
    "lat": "-37.86667",
    "lng": "145.28333"
  },
  {
    "country": "AU",
    "name": "Bordertown",
    "lat": "-36.30768",
    "lng": "140.77167"
  },
  {
    "country": "AU",
    "name": "Boorowa",
    "lat": "-34.43661",
    "lng": "148.71634"
  },
  {
    "country": "AU",
    "name": "Booker Bay",
    "lat": "-33.51667",
    "lng": "151.35"
  },
  {
    "country": "AU",
    "name": "Bonville",
    "lat": "-30.38284",
    "lng": "153.05959"
  },
  {
    "country": "AU",
    "name": "Bongaree",
    "lat": "-27.08367",
    "lng": "153.15942"
  },
  {
    "country": "AU",
    "name": "Bombala",
    "lat": "-36.91212",
    "lng": "149.23669"
  },
  {
    "country": "AU",
    "name": "Bomaderry",
    "lat": "-34.84967",
    "lng": "150.61093"
  },
  {
    "country": "AU",
    "name": "Bolwarra",
    "lat": "-32.71667",
    "lng": "151.56667"
  },
  {
    "country": "AU",
    "name": "Boggabri",
    "lat": "-30.70953",
    "lng": "150.04121"
  },
  {
    "country": "AU",
    "name": "Boggabilla",
    "lat": "-28.60477",
    "lng": "150.35934"
  },
  {
    "country": "AU",
    "name": "Boambee",
    "lat": "-30.33981",
    "lng": "153.06783"
  },
  {
    "country": "AU",
    "name": "Blayney",
    "lat": "-33.53233",
    "lng": "149.25367"
  },
  {
    "country": "AU",
    "name": "Blaxland",
    "lat": "-33.75",
    "lng": "150.6"
  },
  {
    "country": "AU",
    "name": "Blair Athol",
    "lat": "-30.65",
    "lng": "150.2"
  },
  {
    "country": "AU",
    "name": "Blackwater",
    "lat": "-23.58351",
    "lng": "148.87912"
  },
  {
    "country": "AU",
    "name": "Blackwall",
    "lat": "-33.5019",
    "lng": "151.32365"
  },
  {
    "country": "AU",
    "name": "Blacktown",
    "lat": "-33.76667",
    "lng": "150.91667"
  },
  {
    "country": "AU",
    "name": "Blackmans Bay",
    "lat": "-43.00311",
    "lng": "147.31694"
  },
  {
    "country": "AU",
    "name": "Black Hill",
    "lat": "-37.55",
    "lng": "143.86667"
  },
  {
    "country": "AU",
    "name": "Blackheath",
    "lat": "-33.63567",
    "lng": "150.28318"
  },
  {
    "country": "AU",
    "name": "Bingara",
    "lat": "-29.86931",
    "lng": "150.57204"
  },
  {
    "country": "AU",
    "name": "Biloela",
    "lat": "-24.39589",
    "lng": "150.51504"
  },
  {
    "country": "AU",
    "name": "Bilambil",
    "lat": "-28.2266",
    "lng": "153.4676"
  },
  {
    "country": "AU",
    "name": "Bexley",
    "lat": "-33.95",
    "lng": "151.11667"
  },
  {
    "country": "AU",
    "name": "Berwick",
    "lat": "-38.03333",
    "lng": "145.35"
  },
  {
    "country": "AU",
    "name": "Berry",
    "lat": "-34.77507",
    "lng": "150.69436"
  },
  {
    "country": "AU",
    "name": "Berrigan",
    "lat": "-35.65879",
    "lng": "145.81145"
  },
  {
    "country": "AU",
    "name": "Berriedale",
    "lat": "-42.81667",
    "lng": "147.25"
  },
  {
    "country": "AU",
    "name": "Berridale",
    "lat": "-36.36673",
    "lng": "148.82772"
  },
  {
    "country": "AU",
    "name": "Berri",
    "lat": "-34.28107",
    "lng": "140.59958"
  },
  {
    "country": "AU",
    "name": "Berowra",
    "lat": "-33.62078",
    "lng": "151.15091"
  },
  {
    "country": "AU",
    "name": "Bermagui",
    "lat": "-36.419",
    "lng": "150.06355"
  },
  {
    "country": "AU",
    "name": "Berkeley Vale",
    "lat": "-33.35",
    "lng": "151.43333"
  },
  {
    "country": "AU",
    "name": "Berkeley",
    "lat": "-34.48333",
    "lng": "150.85"
  },
  {
    "country": "AU",
    "name": "Beresfield",
    "lat": "-32.8",
    "lng": "151.65"
  },
  {
    "country": "AU",
    "name": "Bentleigh",
    "lat": "-37.91806",
    "lng": "145.03544"
  },
  {
    "country": "AU",
    "name": "Bensville",
    "lat": "-33.49757",
    "lng": "151.38084"
  },
  {
    "country": "AU",
    "name": "Bendigo",
    "lat": "-36.75818",
    "lng": "144.28024"
  },
  {
    "country": "AU",
    "name": "Benalla",
    "lat": "-36.55113",
    "lng": "145.98425"
  },
  {
    "country": "AU",
    "name": "Belmont",
    "lat": "-33.0274",
    "lng": "151.6601"
  },
  {
    "country": "AU",
    "name": "Belmont",
    "lat": "-27.5",
    "lng": "153.11667"
  },
  {
    "country": "AU",
    "name": "Bellingen",
    "lat": "-30.45294",
    "lng": "152.89911"
  },
  {
    "country": "AU",
    "name": "Bellerive",
    "lat": "-42.87551",
    "lng": "147.3703"
  },
  {
    "country": "AU",
    "name": "Belgrave South",
    "lat": "-37.93333",
    "lng": "145.33333"
  },
  {
    "country": "AU",
    "name": "Belgrave Heights",
    "lat": "-37.91667",
    "lng": "145.35"
  },
  {
    "country": "AU",
    "name": "Belgrave",
    "lat": "-37.9",
    "lng": "145.35"
  },
  {
    "country": "AU",
    "name": "Belconnen",
    "lat": "-35.21667",
    "lng": "149.08333"
  },
  {
    "country": "AU",
    "name": "Bega",
    "lat": "-36.67392",
    "lng": "149.84178"
  },
  {
    "country": "AU",
    "name": "Beenleigh",
    "lat": "-27.71137",
    "lng": "153.2029"
  },
  {
    "country": "AU",
    "name": "Beauty Point",
    "lat": "-41.16216",
    "lng": "146.82146"
  },
  {
    "country": "AU",
    "name": "Beaumaris",
    "lat": "-37.98534",
    "lng": "145.03361"
  },
  {
    "country": "AU",
    "name": "Beaconsfield Upper",
    "lat": "-37.99415",
    "lng": "145.4142"
  },
  {
    "country": "AU",
    "name": "Beaconsfield",
    "lat": "-41.20227",
    "lng": "146.81723"
  },
  {
    "country": "AU",
    "name": "Bay View",
    "lat": "-33.65982",
    "lng": "151.29878"
  },
  {
    "country": "AU",
    "name": "Bayswater",
    "lat": "-37.85",
    "lng": "145.26667"
  },
  {
    "country": "AU",
    "name": "Baxter",
    "lat": "-38.2",
    "lng": "145.15"
  },
  {
    "country": "AU",
    "name": "Baulkham Hills",
    "lat": "-33.75881",
    "lng": "150.99292"
  },
  {
    "country": "AU",
    "name": "Bathurst",
    "lat": "-33.41665",
    "lng": "149.5806"
  },
  {
    "country": "AU",
    "name": "Batemans Bay",
    "lat": "-35.70658",
    "lng": "150.17541"
  },
  {
    "country": "AU",
    "name": "Barmera",
    "lat": "-34.25562",
    "lng": "140.46147"
  },
  {
    "country": "AU",
    "name": "Banora Point",
    "lat": "-28.21298",
    "lng": "153.53634"
  },
  {
    "country": "AU",
    "name": "Bankstown",
    "lat": "-33.91667",
    "lng": "151.03333"
  },
  {
    "country": "AU",
    "name": "Balwyn",
    "lat": "-37.81667",
    "lng": "145.06667"
  },
  {
    "country": "AU",
    "name": "Balnarring",
    "lat": "-38.36667",
    "lng": "145.13333"
  },
  {
    "country": "AU",
    "name": "Balmain",
    "lat": "-33.85481",
    "lng": "151.1833"
  },
  {
    "country": "AU",
    "name": "Ballina",
    "lat": "-28.86414",
    "lng": "153.56541"
  },
  {
    "country": "AU",
    "name": "Ballarat East",
    "lat": "-37.56667",
    "lng": "143.86667"
  },
  {
    "country": "AU",
    "name": "Ballarat",
    "lat": "-37.56622",
    "lng": "143.84957"
  },
  {
    "country": "AU",
    "name": "Balgowlah",
    "lat": "-33.79494",
    "lng": "151.2572"
  },
  {
    "country": "AU",
    "name": "Balaclava",
    "lat": "-37.86667",
    "lng": "145"
  },
  {
    "country": "AU",
    "name": "Bairnsdale",
    "lat": "-37.82289",
    "lng": "147.61041"
  },
  {
    "country": "AU",
    "name": "Badger Creek",
    "lat": "-37.7",
    "lng": "145.51667"
  },
  {
    "country": "AU",
    "name": "Bacchus Marsh",
    "lat": "-37.67268",
    "lng": "144.43829"
  },
  {
    "country": "AU",
    "name": "Ayr",
    "lat": "-19.57393",
    "lng": "147.40666"
  },
  {
    "country": "AU",
    "name": "Avoca Beach",
    "lat": "-33.46818",
    "lng": "151.4339"
  },
  {
    "country": "AU",
    "name": "Austins Ferry",
    "lat": "-42.76667",
    "lng": "147.25"
  },
  {
    "country": "AU",
    "name": "Auburn",
    "lat": "-33.85",
    "lng": "151.03333"
  },
  {
    "country": "AU",
    "name": "Atherton",
    "lat": "-17.26864",
    "lng": "145.47522"
  },
  {
    "country": "AU",
    "name": "Asquith",
    "lat": "-33.68333",
    "lng": "151.1"
  },
  {
    "country": "AU",
    "name": "Aspendale",
    "lat": "-38.02913",
    "lng": "145.10266"
  },
  {
    "country": "AU",
    "name": "Ashfield",
    "lat": "-33.88834",
    "lng": "151.12274"
  },
  {
    "country": "AU",
    "name": "Ashburton",
    "lat": "-37.86667",
    "lng": "145.08333"
  },
  {
    "country": "AU",
    "name": "Ascot Vale",
    "lat": "-37.78333",
    "lng": "144.91667"
  },
  {
    "country": "AU",
    "name": "Artarmon",
    "lat": "-33.81667",
    "lng": "151.18333"
  },
  {
    "country": "AU",
    "name": "Armidale",
    "lat": "-30.50123",
    "lng": "151.66553"
  },
  {
    "country": "AU",
    "name": "Arcadia",
    "lat": "-33.61667",
    "lng": "151.03333"
  },
  {
    "country": "AU",
    "name": "Ararat",
    "lat": "-37.28542",
    "lng": "142.92728"
  },
  {
    "country": "AU",
    "name": "Apollo Bay",
    "lat": "-38.7594",
    "lng": "143.67219"
  },
  {
    "country": "AU",
    "name": "Anna Bay",
    "lat": "-32.78135",
    "lng": "152.08586"
  },
  {
    "country": "AU",
    "name": "Anglesea",
    "lat": "-38.4073",
    "lng": "144.18587"
  },
  {
    "country": "AU",
    "name": "Altona",
    "lat": "-37.86964",
    "lng": "144.83036"
  },
  {
    "country": "AU",
    "name": "Alphington",
    "lat": "-37.78333",
    "lng": "145.03333"
  },
  {
    "country": "AU",
    "name": "Allansford",
    "lat": "-38.38639",
    "lng": "142.59431"
  },
  {
    "country": "AU",
    "name": "Alexandria",
    "lat": "-33.91667",
    "lng": "151.2"
  },
  {
    "country": "AU",
    "name": "Alexandra",
    "lat": "-37.19132",
    "lng": "145.7112"
  },
  {
    "country": "AU",
    "name": "Albury",
    "lat": "-36.07482",
    "lng": "146.92401"
  },
  {
    "country": "AU",
    "name": "Albion",
    "lat": "-37.76667",
    "lng": "144.83333"
  },
  {
    "country": "AU",
    "name": "Albert Park",
    "lat": "-37.83333",
    "lng": "145"
  },
  {
    "country": "AU",
    "name": "Abbotsford",
    "lat": "-37.8",
    "lng": "145"
  },
  {
    "country": "AU",
    "name": "Holmesville",
    "lat": "-32.9",
    "lng": "151.59167"
  },
  {
    "country": "AU",
    "name": "Lambton",
    "lat": "-32.91667",
    "lng": "151.7"
  },
  {
    "country": "AU",
    "name": "New Lambton",
    "lat": "-32.95",
    "lng": "151.68333"
  },
  {
    "country": "AU",
    "name": "Raymond Terrace",
    "lat": "-32.75",
    "lng": "151.75"
  },
  {
    "country": "AU",
    "name": "Mayfield",
    "lat": "-41.3876",
    "lng": "147.13052"
  },
  {
    "country": "AU",
    "name": "Invermay",
    "lat": "-41.39167",
    "lng": "147.13056"
  },
  {
    "country": "AU",
    "name": "Gymea",
    "lat": "-34.03637",
    "lng": "151.08528"
  },
  {
    "country": "AU",
    "name": "Kirrawee",
    "lat": "-34.03831",
    "lng": "151.06903"
  },
  {
    "country": "AU",
    "name": "Loftus",
    "lat": "-34.04467",
    "lng": "151.04646"
  },
  {
    "country": "AU",
    "name": "Dolans Bay",
    "lat": "-34.06653",
    "lng": "151.12806"
  },
  {
    "country": "AU",
    "name": "Bundeena",
    "lat": "-34.08384",
    "lng": "151.15016"
  },
  {
    "country": "AU",
    "name": "Gymea Bay",
    "lat": "-34.05209",
    "lng": "151.08795"
  },
  {
    "country": "AU",
    "name": "Kareela",
    "lat": "-34.01336",
    "lng": "151.08345"
  },
  {
    "country": "AU",
    "name": "Bonnet Bay",
    "lat": "-34.01023",
    "lng": "151.05253"
  },
  {
    "country": "AU",
    "name": "Oyster Bay",
    "lat": "-34.00407",
    "lng": "151.07588"
  },
  {
    "country": "AU",
    "name": "Grays Point",
    "lat": "-34.05873",
    "lng": "151.08604"
  },
  {
    "country": "AU",
    "name": "Brighton-Le-Sands",
    "lat": "-33.96009",
    "lng": "151.1511"
  },
  {
    "country": "AU",
    "name": "Monterey",
    "lat": "-33.9725",
    "lng": "151.1481"
  },
  {
    "country": "AU",
    "name": "Ramsgate",
    "lat": "-33.9822",
    "lng": "151.14"
  },
  {
    "country": "AU",
    "name": "Blakehurst",
    "lat": "-33.99152",
    "lng": "151.10876"
  },
  {
    "country": "AU",
    "name": "Connells Point",
    "lat": "-33.98827",
    "lng": "151.09094"
  },
  {
    "country": "AU",
    "name": "Lugarno",
    "lat": "-33.98267",
    "lng": "151.04184"
  },
  {
    "country": "AU",
    "name": "Peakhurst",
    "lat": "-33.96288",
    "lng": "151.05161"
  },
  {
    "country": "AU",
    "name": "Padstow",
    "lat": "-33.95687",
    "lng": "151.03191"
  },
  {
    "country": "AU",
    "name": "Goodwood",
    "lat": "-42.82822",
    "lng": "147.29301"
  },
  {
    "country": "AU",
    "name": "Lutana",
    "lat": "-42.83475",
    "lng": "147.31152"
  },
  {
    "country": "AU",
    "name": "New Town",
    "lat": "-42.85758",
    "lng": "147.30869"
  },
  {
    "country": "AU",
    "name": "Lake Heights",
    "lat": "-34.48667",
    "lng": "150.875"
  },
  {
    "country": "AU",
    "name": "Sandy Bay",
    "lat": "-42.89449",
    "lng": "147.32439"
  },
  {
    "country": "AU",
    "name": "Fairy Meadow",
    "lat": "-34.39303",
    "lng": "150.89275"
  },
  {
    "country": "AU",
    "name": "Mount Ousley",
    "lat": "-34.40213",
    "lng": "150.88786"
  },
  {
    "country": "AU",
    "name": "Mount Keira",
    "lat": "-34.41889",
    "lng": "150.85417"
  },
  {
    "country": "AU",
    "name": "Gwynneville",
    "lat": "-34.41667",
    "lng": "150.8875"
  },
  {
    "country": "AU",
    "name": "Mangerton",
    "lat": "-34.43667",
    "lng": "150.87167"
  },
  {
    "country": "AU",
    "name": "Mount Saint Thomas",
    "lat": "-34.44333",
    "lng": "150.87222"
  },
  {
    "country": "AU",
    "name": "Palm Cove",
    "lat": "-16.75",
    "lng": "145.66667"
  },
  {
    "country": "AU",
    "name": "Yorkeys Knob",
    "lat": "-16.80278",
    "lng": "145.72083"
  },
  {
    "country": "AU",
    "name": "South Brisbane",
    "lat": "-27.48034",
    "lng": "153.02049"
  },
  {
    "country": "AU",
    "name": "Scarborough",
    "lat": "-27.20118",
    "lng": "153.10939"
  },
  {
    "country": "AU",
    "name": "Bonbeach",
    "lat": "-38.06528",
    "lng": "145.12278"
  },
  {
    "country": "AU",
    "name": "McCrae",
    "lat": "-38.34972",
    "lng": "144.92806"
  },
  {
    "country": "AU",
    "name": "Laverton",
    "lat": "-37.86201",
    "lng": "144.76979"
  },
  {
    "country": "AU",
    "name": "North Brighton",
    "lat": "-37.90694",
    "lng": "145.00528"
  },
  {
    "country": "AU",
    "name": "Cheltenham",
    "lat": "-37.96944",
    "lng": "145.04806"
  },
  {
    "country": "AU",
    "name": "Bellevue Hill",
    "lat": "-33.87899",
    "lng": "151.25101"
  },
  {
    "country": "AU",
    "name": "Paddington",
    "lat": "-33.88419",
    "lng": "151.23151"
  },
  {
    "country": "AU",
    "name": "Lilyfield",
    "lat": "-33.87499",
    "lng": "151.1653"
  },
  {
    "country": "AU",
    "name": "Drummoyne",
    "lat": "-33.85237",
    "lng": "151.15491"
  },
  {
    "country": "AU",
    "name": "Greenwich",
    "lat": "-33.83954",
    "lng": "151.183"
  },
  {
    "country": "AU",
    "name": "Hunters Hill",
    "lat": "-33.83432",
    "lng": "151.1459"
  },
  {
    "country": "AU",
    "name": "Longueville",
    "lat": "-33.83285",
    "lng": "151.16531"
  },
  {
    "country": "AU",
    "name": "Crows Nest",
    "lat": "-33.82494",
    "lng": "151.20398"
  },
  {
    "country": "AU",
    "name": "Cammeray",
    "lat": "-33.82132",
    "lng": "151.21609"
  },
  {
    "country": "AU",
    "name": "Clontarf",
    "lat": "-33.80554",
    "lng": "151.25367"
  },
  {
    "country": "AU",
    "name": "Cremorne",
    "lat": "-33.82679",
    "lng": "151.22633"
  },
  {
    "country": "AU",
    "name": "Neutral Bay",
    "lat": "-33.83784",
    "lng": "151.2175"
  },
  {
    "country": "AU",
    "name": "Point Piper",
    "lat": "-33.86667",
    "lng": "151.25"
  },
  {
    "country": "AU",
    "name": "Darling Point",
    "lat": "-33.87064",
    "lng": "151.23895"
  },
  {
    "country": "AU",
    "name": "Dover Heights",
    "lat": "-33.87083",
    "lng": "151.27917"
  },
  {
    "country": "AU",
    "name": "Randwick",
    "lat": "-33.91439",
    "lng": "151.24895"
  },
  {
    "country": "AU",
    "name": "Clovelly",
    "lat": "-33.91214",
    "lng": "151.25882"
  },
  {
    "country": "AU",
    "name": "Bronte",
    "lat": "-33.90198",
    "lng": "151.26556"
  },
  {
    "country": "AU",
    "name": "Bondi",
    "lat": "-33.89429",
    "lng": "151.26444"
  },
  {
    "country": "AU",
    "name": "Gladesville",
    "lat": "-33.83333",
    "lng": "151.13333"
  },
  {
    "country": "AU",
    "name": "Forestville",
    "lat": "-33.76667",
    "lng": "151.20833"
  },
  {
    "country": "AU",
    "name": "Brookvale",
    "lat": "-33.76108",
    "lng": "151.27446"
  },
  {
    "country": "AU",
    "name": "Curl Curl",
    "lat": "-33.76886",
    "lng": "151.28888"
  },
  {
    "country": "AU",
    "name": "Dee Why",
    "lat": "-33.75",
    "lng": "151.3"
  },
  {
    "country": "AU",
    "name": "Umina",
    "lat": "-33.52314",
    "lng": "151.31325"
  },
  {
    "country": "AU",
    "name": "Blairgowrie",
    "lat": "-38.36131",
    "lng": "144.77955"
  },
  {
    "country": "AU",
    "name": "Flinders",
    "lat": "-34.58333",
    "lng": "150.85516"
  },
  {
    "country": "AU",
    "name": "Airport West",
    "lat": "-37.7247",
    "lng": "144.88126"
  },
  {
    "country": "AU",
    "name": "Niddrie",
    "lat": "-37.7375",
    "lng": "144.89212"
  },
  {
    "country": "AU",
    "name": "Gladstone Park",
    "lat": "-37.68742",
    "lng": "144.88675"
  },
  {
    "country": "AU",
    "name": "Palmerston",
    "lat": "-12.48602",
    "lng": "130.9833"
  },
  {
    "country": "AU",
    "name": "Tom Price",
    "lat": "-22.6939",
    "lng": "117.7931"
  },
  {
    "country": "AU",
    "name": "Moranbah",
    "lat": "-22.00163",
    "lng": "148.04661"
  },
  {
    "country": "AU",
    "name": "Heyfield",
    "lat": "-37.9813",
    "lng": "146.78559"
  },
  {
    "country": "AU",
    "name": "Kaleen",
    "lat": "-35.21814",
    "lng": "149.10516"
  },
  {
    "country": "AU",
    "name": "Karratha",
    "lat": "-20.73765",
    "lng": "116.84629"
  },
  {
    "country": "AU",
    "name": "Enfield",
    "lat": "-34.8526",
    "lng": "138.60255"
  },
  {
    "country": "AU",
    "name": "Hillarys",
    "lat": "-31.80698",
    "lng": "115.74045"
  },
  {
    "country": "AU",
    "name": "Kingsford",
    "lat": "-33.92399",
    "lng": "151.22749"
  },
  {
    "country": "AU",
    "name": "Klemzig",
    "lat": "-34.87928",
    "lng": "138.63562"
  },
  {
    "country": "AU",
    "name": "Maidstone",
    "lat": "-37.78035",
    "lng": "144.87353"
  },
  {
    "country": "AU",
    "name": "Osborne Park",
    "lat": "-31.90066",
    "lng": "115.81083"
  },
  {
    "country": "AU",
    "name": "Seven Mile Beach",
    "lat": "-42.85863",
    "lng": "147.50532"
  },
  {
    "country": "AU",
    "name": "Woollahra",
    "lat": "-33.8878",
    "lng": "151.23681"
  },
  {
    "country": "AU",
    "name": "Corlette",
    "lat": "-32.72014",
    "lng": "152.10846"
  },
  {
    "country": "AU",
    "name": "Burswood",
    "lat": "-31.95872",
    "lng": "115.90396"
  },
  {
    "country": "AU",
    "name": "Howrah",
    "lat": "-42.88728",
    "lng": "147.40554"
  },
  {
    "country": "AU",
    "name": "Springfield Lakes",
    "lat": "-27.66757",
    "lng": "152.92488"
  },
  {
    "country": "AU",
    "name": "Attwood",
    "lat": "-37.66955",
    "lng": "144.88675"
  },
  {
    "country": "AU",
    "name": "North Narrabeen",
    "lat": "-33.70935",
    "lng": "151.29607"
  },
  {
    "country": "AU",
    "name": "Joondalup",
    "lat": "-31.74445",
    "lng": "115.76835"
  },
  {
    "country": "AU",
    "name": "Como",
    "lat": "-31.99119",
    "lng": "115.86336"
  },
  {
    "country": "AU",
    "name": "Arncliffe",
    "lat": "-33.93627",
    "lng": "151.14819"
  },
  {
    "country": "AU",
    "name": "East Lismore",
    "lat": "-28.82591",
    "lng": "153.2888"
  },
  {
    "country": "AU",
    "name": "Mindarie",
    "lat": "-31.68932",
    "lng": "115.70698"
  },
  {
    "country": "AU",
    "name": "Clarkson",
    "lat": "-31.68282",
    "lng": "115.7247"
  },
  {
    "country": "AU",
    "name": "Kinross",
    "lat": "-31.71868",
    "lng": "115.73839"
  },
  {
    "country": "AU",
    "name": "Currambine",
    "lat": "-31.73306",
    "lng": "115.74766"
  },
  {
    "country": "AU",
    "name": "Iluka",
    "lat": "-31.73554",
    "lng": "115.73058"
  },
  {
    "country": "AU",
    "name": "Heathridge",
    "lat": "-31.76244",
    "lng": "115.75895"
  },
  {
    "country": "AU",
    "name": "Girraween",
    "lat": "-33.799",
    "lng": "150.943"
  },
  {
    "country": "AU",
    "name": "Freshwater",
    "lat": "-33.77867",
    "lng": "151.28569"
  },
  {
    "country": "AU",
    "name": "Tieri",
    "lat": "-23.03829",
    "lng": "148.34463"
  },
  {
    "country": "AU",
    "name": "Kingsbury",
    "lat": "-37.71406",
    "lng": "145.03509"
  },
  {
    "country": "AU",
    "name": "Taringa",
    "lat": "-27.49061",
    "lng": "152.97861"
  },
  {
    "country": "AU",
    "name": "Inala",
    "lat": "-27.59715",
    "lng": "152.97432"
  },
  {
    "country": "AU",
    "name": "Mount Lawley",
    "lat": "-31.93439",
    "lng": "115.8716"
  },
  {
    "country": "AU",
    "name": "Main Beach",
    "lat": "-27.97879",
    "lng": "153.4266"
  },
  {
    "country": "AU",
    "name": "Paradise",
    "lat": "-34.87361",
    "lng": "138.66896"
  },
  {
    "country": "AU",
    "name": "Blair Athol",
    "lat": "-34.85889",
    "lng": "138.59656"
  },
  {
    "country": "AU",
    "name": "Athelstone",
    "lat": "-34.87019",
    "lng": "138.6999"
  },
  {
    "country": "AU",
    "name": "Wooloowin",
    "lat": "-27.42244",
    "lng": "153.04204"
  },
  {
    "country": "AU",
    "name": "Zillmere",
    "lat": "-27.35591",
    "lng": "153.04453"
  },
  {
    "country": "AU",
    "name": "Taigum",
    "lat": "-27.34265",
    "lng": "153.04444"
  },
  {
    "country": "AU",
    "name": "Bracken Ridge",
    "lat": "-27.3171",
    "lng": "153.03097"
  },
  {
    "country": "AU",
    "name": "Mango Hill",
    "lat": "-27.24349",
    "lng": "153.02384"
  },
  {
    "country": "AU",
    "name": "Woolloongabba",
    "lat": "-27.48855",
    "lng": "153.03655"
  },
  {
    "country": "AU",
    "name": "Milton",
    "lat": "-27.47039",
    "lng": "153.00312"
  },
  {
    "country": "AU",
    "name": "Fortitude Valley",
    "lat": "-27.45706",
    "lng": "153.03178"
  },
  {
    "country": "AU",
    "name": "Windsor",
    "lat": "-27.43631",
    "lng": "153.02882"
  },
  {
    "country": "AU",
    "name": "Twin Waters",
    "lat": "-26.61",
    "lng": "153"
  },
  {
    "country": "AU",
    "name": "Bridegman Downs",
    "lat": "-27.35538",
    "lng": "152.99432"
  },
  {
    "country": "AU",
    "name": "Canada Bay",
    "lat": "-33.85",
    "lng": "151.15"
  },
  {
    "country": "AU",
    "name": "Canterbury",
    "lat": "-33.91192",
    "lng": "151.11862"
  },
  {
    "country": "AU",
    "name": "Forresters Beach",
    "lat": "-33.407",
    "lng": "151.476"
  },
  {
    "country": "AU",
    "name": "Tamborine Mountain",
    "lat": "-27.96954",
    "lng": "153.19937"
  },
  {
    "country": "AU",
    "name": "East Melbourne",
    "lat": "-37.81667",
    "lng": "144.9879"
  },
  {
    "country": "AU",
    "name": "Rainbow Beach",
    "lat": "-25.90432",
    "lng": "153.09174"
  },
  {
    "country": "AU",
    "name": "North Shore",
    "lat": "-31.40237",
    "lng": "152.90185"
  },
  {
    "country": "AU",
    "name": "North Ryde",
    "lat": "-33.79677",
    "lng": "151.12436"
  },
  {
    "country": "AU",
    "name": "Stirling",
    "lat": "-31.88343",
    "lng": "115.8099"
  },
  {
    "country": "AU",
    "name": "North Melbourne",
    "lat": "-37.80289",
    "lng": "144.94816"
  },
  {
    "country": "AU",
    "name": "Caroline Springs",
    "lat": "-37.74124",
    "lng": "144.73631"
  },
  {
    "country": "AU",
    "name": "Hoppers Crossing",
    "lat": "-37.88264",
    "lng": "144.7003"
  },
  {
    "country": "AU",
    "name": "West Melbourne",
    "lat": "-37.81014",
    "lng": "144.95"
  },
  {
    "country": "AU",
    "name": "Rouse Hill",
    "lat": "-33.68207",
    "lng": "150.9154"
  },
  {
    "country": "AU",
    "name": "Logan City",
    "lat": "-27.63917",
    "lng": "153.10944"
  },
  {
    "country": "AU",
    "name": "Carindale",
    "lat": "-27.50578",
    "lng": "153.10236"
  },
  {
    "country": "AU",
    "name": "Parramatta",
    "lat": "-33.8178",
    "lng": "151.00348"
  },
  {
    "country": "AU",
    "name": "Macquarie",
    "lat": "-35.25126",
    "lng": "149.06363"
  },
  {
    "country": "AU",
    "name": "Ferntree Gully",
    "lat": "-37.88461",
    "lng": "145.29539"
  },
  {
    "country": "AU",
    "name": "Fullarton",
    "lat": "-34.951",
    "lng": "138.629"
  },
  {
    "country": "AU",
    "name": "Macarthur",
    "lat": "-35.40885",
    "lng": "149.12696"
  },
  {
    "country": "AU",
    "name": "City of Parramatta",
    "lat": "-33.81667",
    "lng": "151"
  },
  {
    "country": "AU",
    "name": "Phillip Island",
    "lat": "-38.48349",
    "lng": "145.23102"
  },
  {
    "country": "AU",
    "name": "Springwood",
    "lat": "-27.61183",
    "lng": "153.12899"
  },
  {
    "country": "AU",
    "name": "Adelaide Hills",
    "lat": "-34.91119",
    "lng": "138.70735"
  },
  {
    "country": "AU",
    "name": "Erskine",
    "lat": "-32.55717",
    "lng": "115.70657"
  },
  {
    "country": "AU",
    "name": "Canning Vale",
    "lat": "-32.05799",
    "lng": "115.91814"
  },
  {
    "country": "AU",
    "name": "Varsity Lakes",
    "lat": "-28.0894",
    "lng": "153.4122"
  },
  {
    "country": "AU",
    "name": "Roselands",
    "lat": "-33.93317",
    "lng": "151.0732"
  },
  {
    "country": "AU",
    "name": "Oxenford",
    "lat": "-27.89033",
    "lng": "153.31309"
  },
  {
    "country": "AU",
    "name": "Toormina",
    "lat": "-30.35384",
    "lng": "153.08843"
  },
  {
    "country": "AU",
    "name": "Glenmore Park",
    "lat": "-33.79068",
    "lng": "150.6693"
  },
  {
    "country": "AU",
    "name": "Southbank",
    "lat": "-37.8228",
    "lng": "144.96434"
  },
  {
    "country": "AU",
    "name": "Magnetic Island",
    "lat": "-19.15514",
    "lng": "146.8485"
  },
  {
    "country": "AU",
    "name": "St Kilda East",
    "lat": "-37.86594",
    "lng": "145.00018"
  },
  {
    "country": "AU",
    "name": "Docklands",
    "lat": "-37.8149",
    "lng": "144.95052"
  },
  {
    "country": "AU",
    "name": "Shoalwater",
    "lat": "-32.29088",
    "lng": "115.71101"
  },
  {
    "country": "AU",
    "name": "Melton West",
    "lat": "-37.67852",
    "lng": "144.56883"
  },
  {
    "country": "AU",
    "name": "Brookfield",
    "lat": "-37.7008",
    "lng": "144.56025"
  },
  {
    "country": "AU",
    "name": "Kurunjang",
    "lat": "-37.67587",
    "lng": "144.5969"
  },
  {
    "country": "AU",
    "name": "Ashwood",
    "lat": "-37.86659",
    "lng": "145.10553"
  },
  {
    "country": "AU",
    "name": "Glen Iris",
    "lat": "-37.85995",
    "lng": "145.05489"
  },
  {
    "country": "AU",
    "name": "Caulfield North",
    "lat": "-37.87255",
    "lng": "145.02262"
  },
  {
    "country": "AU",
    "name": "Elsternwick",
    "lat": "-37.88441",
    "lng": "145.00434"
  },
  {
    "country": "AU",
    "name": "Elwood",
    "lat": "-37.88214",
    "lng": "144.98215"
  },
  {
    "country": "AU",
    "name": "Burwood",
    "lat": "-37.84978",
    "lng": "145.11901"
  },
  {
    "country": "AU",
    "name": "Box Hill South",
    "lat": "-37.83236",
    "lng": "145.12098"
  },
  {
    "country": "AU",
    "name": "Blackburn",
    "lat": "-37.81901",
    "lng": "145.15326"
  },
  {
    "country": "AU",
    "name": "Canterbury",
    "lat": "-37.8247",
    "lng": "145.08476"
  },
  {
    "country": "AU",
    "name": "Hawthorn East",
    "lat": "-37.82484",
    "lng": "145.0464"
  },
  {
    "country": "AU",
    "name": "Kew East",
    "lat": "-37.79758",
    "lng": "145.05378"
  },
  {
    "country": "AU",
    "name": "Balwyn North",
    "lat": "-37.79086",
    "lng": "145.09386"
  },
  {
    "country": "AU",
    "name": "Mont Albert North",
    "lat": "-37.80043",
    "lng": "145.10828"
  },
  {
    "country": "AU",
    "name": "Box Hill North",
    "lat": "-37.80266",
    "lng": "145.12656"
  },
  {
    "country": "AU",
    "name": "Blackburn North",
    "lat": "-37.80931",
    "lng": "145.1518"
  },
  {
    "country": "AU",
    "name": "Blackburn South",
    "lat": "-37.83975",
    "lng": "145.15549"
  },
  {
    "country": "AU",
    "name": "Chadstone",
    "lat": "-37.88766",
    "lng": "145.09519"
  },
  {
    "country": "AU",
    "name": "Malvern East",
    "lat": "-37.87397",
    "lng": "145.04253"
  },
  {
    "country": "AU",
    "name": "Oakleigh South",
    "lat": "-37.92416",
    "lng": "145.09146"
  },
  {
    "country": "AU",
    "name": "Caulfield South",
    "lat": "-37.89562",
    "lng": "145.02597"
  },
  {
    "country": "AU",
    "name": "Brighton East",
    "lat": "-37.90232",
    "lng": "145.01734"
  },
  {
    "country": "AU",
    "name": "Hampton East",
    "lat": "-37.93695",
    "lng": "145.02863"
  },
  {
    "country": "AU",
    "name": "Black Rock",
    "lat": "-37.97357",
    "lng": "145.01636"
  },
  {
    "country": "AU",
    "name": "Aspendale Gardens",
    "lat": "-38.02277",
    "lng": "145.11798"
  },
  {
    "country": "AU",
    "name": "Booval",
    "lat": "-27.61328",
    "lng": "152.78944"
  },
  {
    "country": "AU",
    "name": "North Booval",
    "lat": "-27.60392",
    "lng": "152.79485"
  },
  {
    "country": "AU",
    "name": "North Ipswich",
    "lat": "-27.60286",
    "lng": "152.76146"
  },
  {
    "country": "AU",
    "name": "Brassall",
    "lat": "-27.59753",
    "lng": "152.74755"
  },
  {
    "country": "AU",
    "name": "Silkstone",
    "lat": "-27.62126",
    "lng": "152.78768"
  },
  {
    "country": "AU",
    "name": "Eastern Heights",
    "lat": "-27.62849",
    "lng": "152.77828"
  },
  {
    "country": "AU",
    "name": "Raceview",
    "lat": "-27.63472",
    "lng": "152.77519"
  },
  {
    "country": "AU",
    "name": "Flinders View",
    "lat": "-27.65046",
    "lng": "152.77451"
  },
  {
    "country": "AU",
    "name": "Deebing Heights",
    "lat": "-27.66719",
    "lng": "152.74867"
  },
  {
    "country": "AU",
    "name": "Yamanto",
    "lat": "-27.66027",
    "lng": "152.73863"
  },
  {
    "country": "AU",
    "name": "Redbank Plains",
    "lat": "-27.64613",
    "lng": "152.85965"
  },
  {
    "country": "AU",
    "name": "Collingwood Park",
    "lat": "-27.61282",
    "lng": "152.86008"
  },
  {
    "country": "AU",
    "name": "Clontarf",
    "lat": "-27.25341",
    "lng": "153.07835"
  },
  {
    "country": "AU",
    "name": "Woody Point",
    "lat": "-27.25608",
    "lng": "153.10427"
  },
  {
    "country": "AU",
    "name": "Ballarat Central",
    "lat": "-37.56206",
    "lng": "143.85082"
  },
  {
    "country": "AU",
    "name": "Golden Point",
    "lat": "-37.57493",
    "lng": "143.8687"
  },
  {
    "country": "AU",
    "name": "Delacombe",
    "lat": "-37.58911",
    "lng": "143.81472"
  },
  {
    "country": "AU",
    "name": "St Albans",
    "lat": "-37.74496",
    "lng": "144.80049"
  },
  {
    "country": "AU",
    "name": "St Leonards",
    "lat": "-33.82344",
    "lng": "151.19836"
  },
  {
    "country": "AU",
    "name": "St Kilda West",
    "lat": "-37.85988",
    "lng": "144.97108"
  },
  {
    "country": "AU",
    "name": "Eleebana",
    "lat": "-32.9896",
    "lng": "151.63642"
  },
  {
    "country": "AU",
    "name": "Summer Hill",
    "lat": "-33.89146",
    "lng": "151.13825"
  },
  {
    "country": "AU",
    "name": "Bohle Plains",
    "lat": "-19.31365",
    "lng": "146.69186"
  },
  {
    "country": "AU",
    "name": "Jacobs Well",
    "lat": "-27.77992",
    "lng": "153.36153"
  },
  {
    "country": "AU",
    "name": "Launching Place",
    "lat": "-37.78058",
    "lng": "145.56834"
  },
  {
    "country": "AU",
    "name": "Saint Andrews Beach",
    "lat": "-38.4141",
    "lng": "144.82436"
  },
  {
    "country": "AU",
    "name": "West Perth",
    "lat": "-31.94896",
    "lng": "115.84199"
  },
  {
    "country": "AU",
    "name": "Altona North",
    "lat": "-37.83487",
    "lng": "144.84735"
  },
  {
    "country": "AU",
    "name": "Balcatta",
    "lat": "-31.87501",
    "lng": "115.82839"
  },
  {
    "country": "AU",
    "name": "Belmont",
    "lat": "-31.9435",
    "lng": "115.9255"
  },
  {
    "country": "AU",
    "name": "Bateau Bay",
    "lat": "-33.38334",
    "lng": "151.46671"
  },
  {
    "country": "AU",
    "name": "Macmasters Beach",
    "lat": "-33.49663",
    "lng": "151.42215"
  },
  {
    "country": "AU",
    "name": "Paraburdoo",
    "lat": "-23.20417",
    "lng": "117.66973"
  },
  {
    "country": "AU",
    "name": "Pottsville Beach",
    "lat": "-28.38853",
    "lng": "153.56564"
  },
  {
    "country": "AU",
    "name": "Thursday Island",
    "lat": "-10.58257",
    "lng": "142.21949"
  },
  {
    "country": "AU",
    "name": "East Perth",
    "lat": "-31.95872",
    "lng": "115.87109"
  },
  {
    "country": "AU",
    "name": "Leederville",
    "lat": "-31.93628",
    "lng": "115.8419"
  },
  {
    "country": "AU",
    "name": "Alexandria",
    "lat": "-33.90219",
    "lng": "151.20037"
  },
  {
    "country": "AU",
    "name": "Doveton",
    "lat": "-37.99346",
    "lng": "145.23891"
  },
  {
    "country": "AU",
    "name": "Endeavour Hills",
    "lat": "-37.97695",
    "lng": "145.25866"
  },
  {
    "country": "AU",
    "name": "Tighes Hill",
    "lat": "-32.90732",
    "lng": "151.7509"
  },
  {
    "country": "AU",
    "name": "White Gum Valley",
    "lat": "-32.06031",
    "lng": "115.77058"
  },
  {
    "country": "AU",
    "name": "Tapping",
    "lat": "-31.71947",
    "lng": "115.79559"
  },
  {
    "country": "AU",
    "name": "Casuarina",
    "lat": "-28.30042",
    "lng": "153.57064"
  },
  {
    "country": "AU",
    "name": "Taylors Lakes",
    "lat": "-37.69863",
    "lng": "144.78631"
  },
  {
    "country": "AU",
    "name": "Woodvale",
    "lat": "-31.78928",
    "lng": "115.79676"
  },
  {
    "country": "AU",
    "name": "Bellfield",
    "lat": "-37.75309",
    "lng": "145.03848"
  },
  {
    "country": "AU",
    "name": "Roxburgh Park",
    "lat": "-37.62581",
    "lng": "144.92555"
  },
  {
    "country": "AU",
    "name": "Eumemmerring",
    "lat": "-37.9978",
    "lng": "145.24821"
  },
  {
    "country": "AU",
    "name": "Warriewood",
    "lat": "-33.68857",
    "lng": "151.29534"
  },
  {
    "country": "AU",
    "name": "Beeliar",
    "lat": "-32.13339",
    "lng": "115.80637"
  },
  {
    "country": "AU",
    "name": "Lynbrook",
    "lat": "-38.05588",
    "lng": "145.25615"
  },
  {
    "country": "AU",
    "name": "Botanic Ridge",
    "lat": "-38.13922",
    "lng": "145.26841"
  },
  {
    "country": "AU",
    "name": "Orelia",
    "lat": "-32.2333",
    "lng": "115.82227"
  },
  {
    "country": "AU",
    "name": "Waterways",
    "lat": "-38.01478",
    "lng": "145.1305"
  },
  {
    "country": "AU",
    "name": "Wyndham Vale",
    "lat": "-37.8415",
    "lng": "144.54101"
  },
  {
    "country": "AU",
    "name": "Ardross",
    "lat": "-32.02696",
    "lng": "115.83548"
  },
  {
    "country": "AU",
    "name": "Long Gully",
    "lat": "-36.74305",
    "lng": "144.25788"
  },
  {
    "country": "AU",
    "name": "Willetton",
    "lat": "-32.05251",
    "lng": "115.88782"
  },
  {
    "country": "AU",
    "name": "Travancore",
    "lat": "-37.78076",
    "lng": "144.93545"
  },
  {
    "country": "AU",
    "name": "Carramar",
    "lat": "-31.69023",
    "lng": "115.77159"
  },
  {
    "country": "AU",
    "name": "Seaholme",
    "lat": "-37.864",
    "lng": "144.84504"
  },
  {
    "country": "AU",
    "name": "South Kingsville",
    "lat": "-37.83018",
    "lng": "144.8709"
  },
  {
    "country": "AU",
    "name": "Safety Beach",
    "lat": "-38.31535",
    "lng": "145.00027"
  },
  {
    "country": "AU",
    "name": "Blind Bight",
    "lat": "-38.21427",
    "lng": "145.3377"
  },
  {
    "country": "AU",
    "name": "Alexander Heights",
    "lat": "-31.82758",
    "lng": "115.86501"
  },
  {
    "country": "AU",
    "name": "Singleton",
    "lat": "-32.44403",
    "lng": "115.75725"
  },
  {
    "country": "AU",
    "name": "Ridgewood",
    "lat": "-31.6615",
    "lng": "115.72261"
  },
  {
    "country": "AU",
    "name": "Delahey",
    "lat": "-37.7198",
    "lng": "144.77732"
  },
  {
    "country": "AU",
    "name": "Wilson",
    "lat": "-32.02058",
    "lng": "115.91181"
  },
  {
    "country": "AU",
    "name": "Butler",
    "lat": "-31.64298",
    "lng": "115.70431"
  },
  {
    "country": "AU",
    "name": "Darch",
    "lat": "-31.81255",
    "lng": "115.8458"
  },
  {
    "country": "AU",
    "name": "Queens Park",
    "lat": "-32.00314",
    "lng": "115.94621"
  },
  {
    "country": "AU",
    "name": "Innaloo",
    "lat": "-31.89272",
    "lng": "115.79508"
  },
  {
    "country": "AU",
    "name": "Cannon Hill",
    "lat": "-27.47237",
    "lng": "153.09475"
  },
  {
    "country": "AU",
    "name": "Booragoon",
    "lat": "-32.03945",
    "lng": "115.83369"
  },
  {
    "country": "AU",
    "name": "Rossmoyne",
    "lat": "-32.03965",
    "lng": "115.86781"
  },
  {
    "country": "AU",
    "name": "Seville Grove",
    "lat": "-32.13645",
    "lng": "115.98905"
  },
  {
    "country": "AU",
    "name": "Murrumba Downs",
    "lat": "-27.26733",
    "lng": "153.01053"
  },
  {
    "country": "AU",
    "name": "Knoxfield",
    "lat": "-37.88978",
    "lng": "145.24962"
  },
  {
    "country": "AU",
    "name": "Chambers Flat",
    "lat": "-27.74811",
    "lng": "153.07764"
  },
  {
    "country": "AU",
    "name": "Brookdale",
    "lat": "-32.16696",
    "lng": "116.00193"
  },
  {
    "country": "AU",
    "name": "Little Mountain",
    "lat": "-26.78436",
    "lng": "153.09218"
  },
  {
    "country": "AU",
    "name": "Glendenning",
    "lat": "-33.7483",
    "lng": "150.85411"
  },
  {
    "country": "AU",
    "name": "Sinagra",
    "lat": "-31.74261",
    "lng": "115.80633"
  },
  {
    "country": "AU",
    "name": "Langford",
    "lat": "-32.04092",
    "lng": "115.94157"
  },
  {
    "country": "AU",
    "name": "Padbury",
    "lat": "-31.80645",
    "lng": "115.7688"
  },
  {
    "country": "AU",
    "name": "East Victoria Park",
    "lat": "-31.98894",
    "lng": "115.90388"
  },
  {
    "country": "AU",
    "name": "Milperra",
    "lat": "-33.93934",
    "lng": "150.98148"
  },
  {
    "country": "AU",
    "name": "Soldiers Hill",
    "lat": "-37.54962",
    "lng": "143.85872"
  },
  {
    "country": "AU",
    "name": "Tecoma",
    "lat": "-37.90303",
    "lng": "145.34468"
  },
  {
    "country": "AU",
    "name": "Palmyra",
    "lat": "-32.04502",
    "lng": "115.78589"
  },
  {
    "country": "AU",
    "name": "Stratton",
    "lat": "-31.86828",
    "lng": "116.04066"
  },
  {
    "country": "AU",
    "name": "Tootgarook",
    "lat": "-38.3777",
    "lng": "144.85015"
  },
  {
    "country": "AU",
    "name": "Spotswood",
    "lat": "-37.82995",
    "lng": "144.88784"
  },
  {
    "country": "AU",
    "name": "Bell Park",
    "lat": "-38.10793",
    "lng": "144.33839"
  },
  {
    "country": "AU",
    "name": "Bell Post Hill",
    "lat": "-38.09564",
    "lng": "144.31968"
  },
  {
    "country": "AU",
    "name": "Quarry Hill",
    "lat": "-36.77646",
    "lng": "144.28024"
  },
  {
    "country": "AU",
    "name": "Park Orchards",
    "lat": "-37.77688",
    "lng": "145.21463"
  },
  {
    "country": "AU",
    "name": "Golden Square",
    "lat": "-36.77265",
    "lng": "144.25271"
  },
  {
    "country": "AU",
    "name": "Annerley",
    "lat": "-27.51228",
    "lng": "153.03248"
  },
  {
    "country": "AU",
    "name": "Kealba",
    "lat": "-37.7371",
    "lng": "144.8283"
  },
  {
    "country": "AU",
    "name": "Jacana",
    "lat": "-37.68778",
    "lng": "144.91111"
  },
  {
    "country": "AU",
    "name": "Dulwich Hill",
    "lat": "-33.9041",
    "lng": "151.13945"
  },
  {
    "country": "AU",
    "name": "Viewbank",
    "lat": "-37.73991",
    "lng": "145.09323"
  },
  {
    "country": "AU",
    "name": "Highvale",
    "lat": "-27.37227",
    "lng": "152.80195"
  },
  {
    "country": "AU",
    "name": "Chirnside Park",
    "lat": "-37.7386",
    "lng": "145.31431"
  },
  {
    "country": "AU",
    "name": "Coolaroo",
    "lat": "-37.65675",
    "lng": "144.9346"
  },
  {
    "country": "AU",
    "name": "Junction Village",
    "lat": "-38.13636",
    "lng": "145.29684"
  },
  {
    "country": "AU",
    "name": "Meadow Heights",
    "lat": "-37.65117",
    "lng": "144.91855"
  },
  {
    "country": "AU",
    "name": "Middle Park",
    "lat": "-37.85116",
    "lng": "144.96201"
  },
  {
    "country": "AU",
    "name": "Westminster",
    "lat": "-31.86744",
    "lng": "115.83919"
  },
  {
    "country": "AU",
    "name": "Bertram",
    "lat": "-32.24369",
    "lng": "115.84572"
  },
  {
    "country": "AU",
    "name": "Bibra Lake",
    "lat": "-32.09764",
    "lng": "115.81921"
  },
  {
    "country": "AU",
    "name": "Hammond Park",
    "lat": "-32.16853",
    "lng": "115.8504"
  },
  {
    "country": "AU",
    "name": "Hillman",
    "lat": "-32.28327",
    "lng": "115.76364"
  },
  {
    "country": "AU",
    "name": "Yallambie",
    "lat": "-37.72515",
    "lng": "145.09352"
  },
  {
    "country": "AU",
    "name": "Kardinya",
    "lat": "-32.06561",
    "lng": "115.81483"
  },
  {
    "country": "AU",
    "name": "Karrinyup",
    "lat": "-31.87233",
    "lng": "115.77684"
  },
  {
    "country": "AU",
    "name": "Kewdale",
    "lat": "-31.97886",
    "lng": "115.95159"
  },
  {
    "country": "AU",
    "name": "Millars Well",
    "lat": "-20.74168",
    "lng": "116.81731"
  },
  {
    "country": "AU",
    "name": "Ocean Reef",
    "lat": "-31.75871",
    "lng": "115.73601"
  },
  {
    "country": "AU",
    "name": "Samson",
    "lat": "-32.06996",
    "lng": "115.7977"
  },
  {
    "country": "AU",
    "name": "Port Kennedy",
    "lat": "-32.37342",
    "lng": "115.7515"
  },
  {
    "country": "AU",
    "name": "Secret Harbour",
    "lat": "-32.40589",
    "lng": "115.75852"
  },
  {
    "country": "AU",
    "name": "Success",
    "lat": "-32.14281",
    "lng": "115.84999"
  },
  {
    "country": "AU",
    "name": "Tuart Hill",
    "lat": "-31.89808",
    "lng": "115.83495"
  },
  {
    "country": "AU",
    "name": "Thornlie",
    "lat": "-32.06003",
    "lng": "115.955"
  },
  {
    "country": "AU",
    "name": "Winthrop",
    "lat": "-32.05216",
    "lng": "115.82972"
  },
  {
    "country": "AU",
    "name": "Yangebup",
    "lat": "-32.12065",
    "lng": "115.81623"
  },
  {
    "country": "AU",
    "name": "Yokine",
    "lat": "-31.90113",
    "lng": "115.85319"
  },
  {
    "country": "AU",
    "name": "Brooklyn",
    "lat": "-37.81609",
    "lng": "144.8415"
  },
  {
    "country": "AU",
    "name": "Hillside",
    "lat": "-37.69047",
    "lng": "144.74172"
  },
  {
    "country": "AU",
    "name": "Redcliffe",
    "lat": "-31.93845",
    "lng": "115.94645"
  },
  {
    "country": "AU",
    "name": "Wavell Heights",
    "lat": "-27.39385",
    "lng": "153.04698"
  },
  {
    "country": "AU",
    "name": "The Vines",
    "lat": "-31.75492",
    "lng": "116.00238"
  },
  {
    "country": "AU",
    "name": "Springvale",
    "lat": "-35.16687",
    "lng": "147.33058"
  },
  {
    "country": "AU",
    "name": "Grange",
    "lat": "-27.42251",
    "lng": "153.01527"
  },
  {
    "country": "AU",
    "name": "Beldon",
    "lat": "-31.77466",
    "lng": "115.7627"
  },
  {
    "country": "AU",
    "name": "St James",
    "lat": "-32.00004",
    "lng": "115.9098"
  },
  {
    "country": "AU",
    "name": "Braybrook",
    "lat": "-37.78671",
    "lng": "144.85484"
  },
  {
    "country": "AU",
    "name": "Cairnlea",
    "lat": "-37.75931",
    "lng": "144.78781"
  },
  {
    "country": "AU",
    "name": "Bundoora",
    "lat": "-37.69825",
    "lng": "145.05967"
  },
  {
    "country": "AU",
    "name": "Patterson Lakes",
    "lat": "-38.06934",
    "lng": "145.14327"
  },
  {
    "country": "AU",
    "name": "Southern River",
    "lat": "-32.10658",
    "lng": "115.95896"
  },
  {
    "country": "AU",
    "name": "Skye",
    "lat": "-38.10505",
    "lng": "145.2163"
  },
  {
    "country": "AU",
    "name": "City of Cockburn",
    "lat": "-32.10261",
    "lng": "115.84422"
  },
  {
    "country": "AU",
    "name": "Beaumont Hills",
    "lat": "-33.69993",
    "lng": "150.9411"
  },
  {
    "country": "AU",
    "name": "North Adelaide",
    "lat": "-34.90733",
    "lng": "138.59141"
  },
  {
    "country": "AU",
    "name": "Victoria Park",
    "lat": "-31.97619",
    "lng": "115.90525"
  },
  {
    "country": "AU",
    "name": "Milsons Point",
    "lat": "-33.846",
    "lng": "151.21192"
  },
  {
    "country": "AU",
    "name": "Forrest",
    "lat": "-35.31499",
    "lng": "149.12859"
  },
  {
    "country": "AU",
    "name": "Cranbourne South",
    "lat": "-38.13502",
    "lng": "145.23958"
  },
  {
    "country": "AU",
    "name": "Bondi Junction",
    "lat": "-33.89275",
    "lng": "151.24723"
  },
  {
    "country": "AU",
    "name": "Bald Hills",
    "lat": "-27.32112",
    "lng": "153.00857"
  },
  {
    "country": "AU",
    "name": "East Geelong",
    "lat": "-38.15568",
    "lng": "144.37202"
  },
  {
    "country": "AU",
    "name": "Beecroft",
    "lat": "-33.74954",
    "lng": "151.0648"
  },
  {
    "country": "AU",
    "name": "Williams Landing",
    "lat": "-37.8619",
    "lng": "144.74371"
  },
  {
    "country": "AU",
    "name": "Nickol",
    "lat": "-20.74558",
    "lng": "116.7954"
  },
  {
    "country": "AU",
    "name": "Lane Cove North",
    "lat": "-33.80543",
    "lng": "151.16638"
  },
  {
    "country": "AU",
    "name": "Carrolls Creek",
    "lat": "-28.82272",
    "lng": "152.10305"
  },
  {
    "country": "AU",
    "name": "Ascot",
    "lat": "-27.43154",
    "lng": "153.058"
  },
  {
    "country": "AU",
    "name": "Robertson",
    "lat": "-27.56583",
    "lng": "153.05738"
  },
  {
    "country": "AU",
    "name": "Nathan",
    "lat": "-27.55888",
    "lng": "153.0623"
  },
  {
    "country": "AU",
    "name": "Chermside West",
    "lat": "-27.38383",
    "lng": "153.01586"
  },
  {
    "country": "AU",
    "name": "Everton Park",
    "lat": "-27.40732",
    "lng": "152.9884"
  },
  {
    "country": "AU",
    "name": "Gordon Park",
    "lat": "-27.41899",
    "lng": "153.02547"
  },
  {
    "country": "AU",
    "name": "Stafford",
    "lat": "-27.41044",
    "lng": "153.01105"
  },
  {
    "country": "AU",
    "name": "Stafford Heights",
    "lat": "-27.39354",
    "lng": "153.0105"
  },
  {
    "country": "AU",
    "name": "Wilston",
    "lat": "-27.43218",
    "lng": "153.01904"
  },
  {
    "country": "AU",
    "name": "Burbank",
    "lat": "-27.55584",
    "lng": "153.14701"
  },
  {
    "country": "AU",
    "name": "Coopers Plains",
    "lat": "-27.56463",
    "lng": "153.04067"
  },
  {
    "country": "AU",
    "name": "Forest Lake",
    "lat": "-27.62563",
    "lng": "152.96883"
  },
  {
    "country": "AU",
    "name": "Greenslopes",
    "lat": "-27.50815",
    "lng": "153.04951"
  },
  {
    "country": "AU",
    "name": "Mackenzie",
    "lat": "-27.54351",
    "lng": "153.12057"
  },
  {
    "country": "AU",
    "name": "Mansfield",
    "lat": "-27.53929",
    "lng": "153.09895"
  },
  {
    "country": "AU",
    "name": "Mount Gravatt East",
    "lat": "-27.5405",
    "lng": "153.08221"
  },
  {
    "country": "AU",
    "name": "Richlands",
    "lat": "-27.59616",
    "lng": "152.95321"
  },
  {
    "country": "AU",
    "name": "Seventeen Mile Rocks",
    "lat": "-27.5507",
    "lng": "152.95896"
  },
  {
    "country": "AU",
    "name": "Sunnybank Hills",
    "lat": "-27.61025",
    "lng": "153.05388"
  },
  {
    "country": "AU",
    "name": "Upper Mount Gravatt",
    "lat": "-27.56128",
    "lng": "153.08453"
  },
  {
    "country": "AU",
    "name": "Yeerongpilly",
    "lat": "-27.5215",
    "lng": "153.01234"
  },
  {
    "country": "AU",
    "name": "Yeronga",
    "lat": "-27.51571",
    "lng": "153.01642"
  },
  {
    "country": "AU",
    "name": "Balmoral",
    "lat": "-27.45341",
    "lng": "153.0668"
  },
  {
    "country": "AU",
    "name": "Camp Hill",
    "lat": "-27.49354",
    "lng": "153.07629"
  },
  {
    "country": "AU",
    "name": "Chandler",
    "lat": "-27.51398",
    "lng": "153.14907"
  },
  {
    "country": "AU",
    "name": "Manly West",
    "lat": "-27.47382",
    "lng": "153.16641"
  },
  {
    "country": "AU",
    "name": "Morningside",
    "lat": "-27.46165",
    "lng": "153.07511"
  },
  {
    "country": "AU",
    "name": "Seven Hills",
    "lat": "-27.48341",
    "lng": "153.07474"
  },
  {
    "country": "AU",
    "name": "Wynnum West",
    "lat": "-27.45824",
    "lng": "153.15319"
  },
  {
    "country": "AU",
    "name": "Kenmore Hills",
    "lat": "-27.5042",
    "lng": "152.93183"
  },
  {
    "country": "AU",
    "name": "Pullenvale",
    "lat": "-27.52283",
    "lng": "152.88651"
  },
  {
    "country": "AU",
    "name": "Riverhills",
    "lat": "-27.55928",
    "lng": "152.91106"
  },
  {
    "country": "AU",
    "name": "East Ipswich",
    "lat": "-27.60637",
    "lng": "152.77232"
  },
  {
    "country": "AU",
    "name": "Sadliers Crossing",
    "lat": "-27.61251",
    "lng": "152.74577"
  },
  {
    "country": "AU",
    "name": "Springfield",
    "lat": "-27.65365",
    "lng": "152.91716"
  },
  {
    "country": "AU",
    "name": "Tivoli",
    "lat": "-27.59278",
    "lng": "152.76798"
  },
  {
    "country": "AU",
    "name": "Cedar Vale",
    "lat": "-27.88923",
    "lng": "153.02891"
  },
  {
    "country": "AU",
    "name": "Logan Reserve",
    "lat": "-27.72414",
    "lng": "153.09002"
  },
  {
    "country": "AU",
    "name": "North Maclean",
    "lat": "-27.76759",
    "lng": "153.01646"
  },
  {
    "country": "AU",
    "name": "Park Ridge South",
    "lat": "-27.72707",
    "lng": "153.0332"
  },
  {
    "country": "AU",
    "name": "Rochedale South",
    "lat": "-27.59521",
    "lng": "153.12332"
  },
  {
    "country": "AU",
    "name": "Waterford West",
    "lat": "-27.69056",
    "lng": "153.13319"
  },
  {
    "country": "AU",
    "name": "Caboolture South",
    "lat": "-27.09389",
    "lng": "152.94874"
  },
  {
    "country": "AU",
    "name": "Ferny Hills",
    "lat": "-27.39594",
    "lng": "152.93737"
  },
  {
    "country": "AU",
    "name": "Samford Valley",
    "lat": "-27.3727",
    "lng": "152.86699"
  },
  {
    "country": "AU",
    "name": "Flemington",
    "lat": "-37.78825",
    "lng": "144.93001"
  },
  {
    "country": "AU",
    "name": "Fairfield",
    "lat": "-37.77977",
    "lng": "145.01764"
  },
  {
    "country": "AU",
    "name": "Heidelberg Heights",
    "lat": "-37.74313",
    "lng": "145.05695"
  },
  {
    "country": "AU",
    "name": "Watsonia North",
    "lat": "-37.69981",
    "lng": "145.08468"
  },
  {
    "country": "AU",
    "name": "Westmeadows",
    "lat": "-37.67604",
    "lng": "144.88701"
  },
  {
    "country": "AU",
    "name": "Essendon North",
    "lat": "-37.74225",
    "lng": "144.90546"
  },
  {
    "country": "AU",
    "name": "Essendon West",
    "lat": "-37.75758",
    "lng": "144.87903"
  },
  {
    "country": "AU",
    "name": "Keilor East",
    "lat": "-37.73261",
    "lng": "144.86504"
  },
  {
    "country": "AU",
    "name": "Coburg North",
    "lat": "-37.72867",
    "lng": "144.96134"
  },
  {
    "country": "AU",
    "name": "Gowanbrae",
    "lat": "-37.70823",
    "lng": "144.89079"
  },
  {
    "country": "AU",
    "name": "Hadfield",
    "lat": "-37.70728",
    "lng": "144.9416"
  },
  {
    "country": "AU",
    "name": "Oak Park",
    "lat": "-37.71842",
    "lng": "144.91945"
  },
  {
    "country": "AU",
    "name": "Pascoe Vale South",
    "lat": "-37.73973",
    "lng": "144.94615"
  },
  {
    "country": "AU",
    "name": "North Warrandyte",
    "lat": "-37.72924",
    "lng": "145.21574"
  },
  {
    "country": "AU",
    "name": "Bayswater North",
    "lat": "-37.82612",
    "lng": "145.29831"
  },
  {
    "country": "AU",
    "name": "Croydon Hills",
    "lat": "-37.77651",
    "lng": "145.26355"
  },
  {
    "country": "AU",
    "name": "Croydon South",
    "lat": "-37.81232",
    "lng": "145.2681"
  },
  {
    "country": "AU",
    "name": "Kilsyth South",
    "lat": "-37.82033",
    "lng": "145.31599"
  },
  {
    "country": "AU",
    "name": "Warranwood",
    "lat": "-37.77555",
    "lng": "145.24728"
  },
  {
    "country": "AU",
    "name": "Vermont South",
    "lat": "-37.85747",
    "lng": "145.1827"
  },
  {
    "country": "AU",
    "name": "Officer South",
    "lat": "-38.0863",
    "lng": "145.40208"
  },
  {
    "country": "AU",
    "name": "Cranbourne East",
    "lat": "-38.11531",
    "lng": "145.29814"
  },
  {
    "country": "AU",
    "name": "Cranbourne North",
    "lat": "-38.08292",
    "lng": "145.27805"
  },
  {
    "country": "AU",
    "name": "Cranbourne West",
    "lat": "-38.0965",
    "lng": "145.26707"
  },
  {
    "country": "AU",
    "name": "Narre Warren South",
    "lat": "-38.04369",
    "lng": "145.2923"
  },
  {
    "country": "AU",
    "name": "Dandenong North",
    "lat": "-37.96649",
    "lng": "145.2081"
  },
  {
    "country": "AU",
    "name": "Noble Park North",
    "lat": "-37.94978",
    "lng": "145.19257"
  },
  {
    "country": "AU",
    "name": "Frankston North",
    "lat": "-38.12352",
    "lng": "145.14836"
  },
  {
    "country": "AU",
    "name": "Frankston South",
    "lat": "-38.16604",
    "lng": "145.13643"
  },
  {
    "country": "AU",
    "name": "Sandhurst",
    "lat": "-38.081",
    "lng": "145.20767"
  },
  {
    "country": "AU",
    "name": "Langwarrin South",
    "lat": "-38.19868",
    "lng": "145.18068"
  },
  {
    "country": "AU",
    "name": "Rosebud West",
    "lat": "-38.36444",
    "lng": "144.87748"
  },
  {
    "country": "AU",
    "name": "Keilor Downs",
    "lat": "-37.72337",
    "lng": "144.80839"
  },
  {
    "country": "AU",
    "name": "Keilor Lodge",
    "lat": "-37.69997",
    "lng": "144.80332"
  },
  {
    "country": "AU",
    "name": "Keilor Park",
    "lat": "-37.72025",
    "lng": "144.85422"
  },
  {
    "country": "AU",
    "name": "Sunshine North",
    "lat": "-37.76987",
    "lng": "144.82787"
  },
  {
    "country": "AU",
    "name": "Sunshine West",
    "lat": "-37.79117",
    "lng": "144.81637"
  },
  {
    "country": "AU",
    "name": "Altona Meadows",
    "lat": "-37.88413",
    "lng": "144.78367"
  },
  {
    "country": "AU",
    "name": "Williamstown North",
    "lat": "-37.85515",
    "lng": "144.88259"
  },
  {
    "country": "AU",
    "name": "Kingsville",
    "lat": "-37.80819",
    "lng": "144.87911"
  },
  {
    "country": "AU",
    "name": "Seddon",
    "lat": "-37.80607",
    "lng": "144.8907"
  },
  {
    "country": "AU",
    "name": "West Footscray",
    "lat": "-37.79746",
    "lng": "144.87727"
  },
  {
    "country": "AU",
    "name": "Burnside Heights",
    "lat": "-37.72691",
    "lng": "144.75225"
  },
  {
    "country": "AU",
    "name": "Taylors Hill",
    "lat": "-37.70988",
    "lng": "144.75483"
  },
  {
    "country": "AU",
    "name": "Allambie Heights",
    "lat": "-33.76655",
    "lng": "151.24981"
  },
  {
    "country": "AU",
    "name": "Balmain East",
    "lat": "-33.8571",
    "lng": "151.19282"
  },
  {
    "country": "AU",
    "name": "Banksia",
    "lat": "-33.94601",
    "lng": "151.14304"
  },
  {
    "country": "AU",
    "name": "Bardwell Valley",
    "lat": "-33.93344",
    "lng": "151.13668"
  },
  {
    "country": "AU",
    "name": "Belfield",
    "lat": "-33.90354",
    "lng": "151.08467"
  },
  {
    "country": "AU",
    "name": "Berala",
    "lat": "-33.87197",
    "lng": "151.03386"
  },
  {
    "country": "AU",
    "name": "Berowra Heights",
    "lat": "-33.61211",
    "lng": "151.13754"
  },
  {
    "country": "AU",
    "name": "Beverly Park",
    "lat": "-33.97707",
    "lng": "151.13437"
  },
  {
    "country": "AU",
    "name": "Bexley North",
    "lat": "-33.93848",
    "lng": "151.11385"
  },
  {
    "country": "AU",
    "name": "Bilgola Beach",
    "lat": "-33.64487",
    "lng": "151.32427"
  },
  {
    "country": "AU",
    "name": "Blackett",
    "lat": "-33.73792",
    "lng": "150.81812"
  },
  {
    "country": "AU",
    "name": "Bondi Beach",
    "lat": "-33.89079",
    "lng": "151.27852"
  },
  {
    "country": "AU",
    "name": "Cabramatta West",
    "lat": "-33.89669",
    "lng": "150.91056"
  },
  {
    "country": "AU",
    "name": "Cambridge Park",
    "lat": "-33.74784",
    "lng": "150.72208"
  },
  {
    "country": "AU",
    "name": "Camden South",
    "lat": "-34.08312",
    "lng": "150.69491"
  },
  {
    "country": "AU",
    "name": "Caringbah South",
    "lat": "-34.05662",
    "lng": "151.12149"
  },
  {
    "country": "AU",
    "name": "Castle Cove",
    "lat": "-33.78655",
    "lng": "151.20925"
  },
  {
    "country": "AU",
    "name": "Chatswood West",
    "lat": "-33.79402",
    "lng": "151.16492"
  },
  {
    "country": "AU",
    "name": "Church Point",
    "lat": "-33.6451",
    "lng": "151.28367"
  },
  {
    "country": "AU",
    "name": "Carramar",
    "lat": "-33.88382",
    "lng": "150.96153"
  },
  {
    "country": "AU",
    "name": "Cecil Park",
    "lat": "-33.87433",
    "lng": "150.84177"
  },
  {
    "country": "AU",
    "name": "Clemton Park",
    "lat": "-33.93476",
    "lng": "151.09046"
  },
  {
    "country": "AU",
    "name": "Concord West",
    "lat": "-33.84809",
    "lng": "151.08609"
  },
  {
    "country": "AU",
    "name": "Constitution Hill",
    "lat": "-33.79259",
    "lng": "150.97627"
  },
  {
    "country": "AU",
    "name": "Cremorne Point",
    "lat": "-33.84008",
    "lng": "151.22698"
  },
  {
    "country": "AU",
    "name": "Darlington",
    "lat": "-33.89103",
    "lng": "151.19548"
  },
  {
    "country": "AU",
    "name": "Denham Court",
    "lat": "-33.98307",
    "lng": "150.84606"
  },
  {
    "country": "AU",
    "name": "Denistone",
    "lat": "-33.79835",
    "lng": "151.09051"
  },
  {
    "country": "AU",
    "name": "Dolls Point",
    "lat": "-33.99498",
    "lng": "151.14552"
  },
  {
    "country": "AU",
    "name": "Dundas Valley",
    "lat": "-33.78826",
    "lng": "151.05261"
  },
  {
    "country": "AU",
    "name": "East Lindfield",
    "lat": "-33.76664",
    "lng": "151.18685"
  },
  {
    "country": "AU",
    "name": "East Ryde",
    "lat": "-33.81031",
    "lng": "151.13153"
  },
  {
    "country": "AU",
    "name": "Emu Heights",
    "lat": "-33.73453",
    "lng": "150.64874"
  },
  {
    "country": "AU",
    "name": "Ermington",
    "lat": "-33.81483",
    "lng": "151.05467"
  },
  {
    "country": "AU",
    "name": "Fairfield East",
    "lat": "-33.86938",
    "lng": "150.97129"
  },
  {
    "country": "AU",
    "name": "Fairfield Heights",
    "lat": "-33.86445",
    "lng": "150.93884"
  },
  {
    "country": "AU",
    "name": "Fairlight",
    "lat": "-33.79575",
    "lng": "151.27346"
  },
  {
    "country": "AU",
    "name": "Glen Alpine",
    "lat": "-34.086",
    "lng": "150.78512"
  },
  {
    "country": "AU",
    "name": "Guildford West",
    "lat": "-33.85242",
    "lng": "150.97395"
  },
  {
    "country": "AU",
    "name": "Harris Park",
    "lat": "-33.82285",
    "lng": "151.00781"
  },
  {
    "country": "AU",
    "name": "Hassall Grove",
    "lat": "-33.73349",
    "lng": "150.83542"
  },
  {
    "country": "AU",
    "name": "Hornsby Heights",
    "lat": "-33.6713",
    "lng": "151.09428"
  },
  {
    "country": "AU",
    "name": "Horsley Park",
    "lat": "-33.84322",
    "lng": "150.84889"
  },
  {
    "country": "AU",
    "name": "Ingleside",
    "lat": "-33.68462",
    "lng": "151.26354"
  },
  {
    "country": "AU",
    "name": "Killara",
    "lat": "-33.76604",
    "lng": "151.16213"
  },
  {
    "country": "AU",
    "name": "Killarney Heights",
    "lat": "-33.77451",
    "lng": "151.22028"
  },
  {
    "country": "AU",
    "name": "Kingswood Park",
    "lat": "-33.76651",
    "lng": "150.7144"
  },
  {
    "country": "AU",
    "name": "Kogarah Bay",
    "lat": "-33.97951",
    "lng": "151.12119"
  },
  {
    "country": "AU",
    "name": "Kurraba Point",
    "lat": "-33.84235",
    "lng": "151.22256"
  },
  {
    "country": "AU",
    "name": "Koomooloo",
    "lat": "-33.5547",
    "lng": "139.46805"
  },
  {
    "country": "AU",
    "name": "Lane Cove West",
    "lat": "-33.81613",
    "lng": "151.15145"
  },
  {
    "country": "AU",
    "name": "Lewisham",
    "lat": "-33.89719",
    "lng": "151.14883"
  },
  {
    "country": "AU",
    "name": "Macquarie Park",
    "lat": "-33.775",
    "lng": "151.11248"
  },
  {
    "country": "AU",
    "name": "Marsfield",
    "lat": "-33.77784",
    "lng": "151.10574"
  },
  {
    "country": "AU",
    "name": "Miller",
    "lat": "-33.92089",
    "lng": "150.88469"
  },
  {
    "country": "AU",
    "name": "Narellan Vale",
    "lat": "-34.04974",
    "lng": "150.74392"
  },
  {
    "country": "AU",
    "name": "Narraweena",
    "lat": "-33.75519",
    "lng": "151.27659"
  },
  {
    "country": "AU",
    "name": "North Bondi",
    "lat": "-33.88787",
    "lng": "151.28075"
  },
  {
    "country": "AU",
    "name": "North Curl Curl",
    "lat": "-33.76434",
    "lng": "151.29727"
  },
  {
    "country": "AU",
    "name": "North Epping",
    "lat": "-33.75944",
    "lng": "151.09248"
  },
  {
    "country": "AU",
    "name": "North Manly",
    "lat": "-33.77561",
    "lng": "151.26921"
  },
  {
    "country": "AU",
    "name": "North Wahroonga",
    "lat": "-33.70531",
    "lng": "151.12278"
  },
  {
    "country": "AU",
    "name": "Ramsgate Beach",
    "lat": "-33.98523",
    "lng": "151.14634"
  },
  {
    "country": "AU",
    "name": "Roseville Chase",
    "lat": "-33.77852",
    "lng": "151.19677"
  },
  {
    "country": "AU",
    "name": "Scheyville",
    "lat": "-33.6045",
    "lng": "150.88314"
  },
  {
    "country": "AU",
    "name": "South Coogee",
    "lat": "-33.93106",
    "lng": "151.25599"
  },
  {
    "country": "AU",
    "name": "South Turramurra",
    "lat": "-33.74941",
    "lng": "151.11257"
  },
  {
    "country": "AU",
    "name": "South Windsor",
    "lat": "-33.61808",
    "lng": "150.80443"
  },
  {
    "country": "AU",
    "name": "Stanhope Gardens",
    "lat": "-33.72206",
    "lng": "150.92597"
  },
  {
    "country": "AU",
    "name": "Strathfield South",
    "lat": "-33.89252",
    "lng": "151.08334"
  },
  {
    "country": "AU",
    "name": "Telopea",
    "lat": "-33.79279",
    "lng": "151.03858"
  },
  {
    "country": "AU",
    "name": "Wareemba",
    "lat": "-33.85819",
    "lng": "151.13085"
  },
  {
    "country": "AU",
    "name": "Werrington County",
    "lat": "-33.7465",
    "lng": "150.73929"
  },
  {
    "country": "AU",
    "name": "Werrington Downs",
    "lat": "-33.74206",
    "lng": "150.72779"
  },
  {
    "country": "AU",
    "name": "West Pennant",
    "lat": "-33.7457",
    "lng": "151.04764"
  },
  {
    "country": "AU",
    "name": "West Ryde",
    "lat": "-33.80543",
    "lng": "151.07386"
  },
  {
    "country": "AU",
    "name": "Wollstonecraft",
    "lat": "-33.8328",
    "lng": "151.18981"
  },
  {
    "country": "AU",
    "name": "Woronora Heights",
    "lat": "-34.03562",
    "lng": "151.02734"
  },
  {
    "country": "AU",
    "name": "Virginia",
    "lat": "-12.51895",
    "lng": "131.02844"
  },
  {
    "country": "AU",
    "name": "Glenunga",
    "lat": "-34.95013",
    "lng": "138.63841"
  },
  {
    "country": "AU",
    "name": "Hazelwood Park",
    "lat": "-34.93947",
    "lng": "138.65879"
  },
  {
    "country": "AU",
    "name": "Kensington Gardens",
    "lat": "-34.92582",
    "lng": "138.66145"
  },
  {
    "country": "AU",
    "name": "Leabrook",
    "lat": "-34.92976",
    "lng": "138.65862"
  },
  {
    "country": "AU",
    "name": "Linden Park",
    "lat": "-34.94728",
    "lng": "138.65287"
  },
  {
    "country": "AU",
    "name": "Mount Osmond",
    "lat": "-34.9629",
    "lng": "138.65664"
  },
  {
    "country": "AU",
    "name": "Tusmore",
    "lat": "-34.93894",
    "lng": "138.65059"
  },
  {
    "country": "AU",
    "name": "Wattle Park",
    "lat": "-34.92516",
    "lng": "138.67501"
  },
  {
    "country": "AU",
    "name": "Hectorville",
    "lat": "-34.89157",
    "lng": "138.65892"
  },
  {
    "country": "AU",
    "name": "Albert Park",
    "lat": "-34.87201",
    "lng": "138.51966"
  },
  {
    "country": "AU",
    "name": "Allenby Gardens",
    "lat": "-34.89766",
    "lng": "138.55425"
  },
  {
    "country": "AU",
    "name": "Henley Beach",
    "lat": "-34.92029",
    "lng": "138.49442"
  },
  {
    "country": "AU",
    "name": "Royal Park",
    "lat": "-34.87415",
    "lng": "138.51189"
  },
  {
    "country": "AU",
    "name": "West Lakes Shore",
    "lat": "-34.8601",
    "lng": "138.48966"
  },
  {
    "country": "AU",
    "name": "Woodville North",
    "lat": "-34.872",
    "lng": "138.54309"
  },
  {
    "country": "AU",
    "name": "Woodville West",
    "lat": "-34.8864",
    "lng": "138.53095"
  },
  {
    "country": "AU",
    "name": "Glenelg East",
    "lat": "-34.9764",
    "lng": "138.52962"
  },
  {
    "country": "AU",
    "name": "North Brighton",
    "lat": "-35.00279",
    "lng": "138.52211"
  },
  {
    "country": "AU",
    "name": "Seacliff Park",
    "lat": "-35.02983",
    "lng": "138.53129"
  },
  {
    "country": "AU",
    "name": "Clovelly Park",
    "lat": "-34.99951",
    "lng": "138.57081"
  },
  {
    "country": "AU",
    "name": "Plympton Park",
    "lat": "-34.98071",
    "lng": "138.54918"
  },
  {
    "country": "AU",
    "name": "South Plympton",
    "lat": "-34.97682",
    "lng": "138.55588"
  },
  {
    "country": "AU",
    "name": "Trott Park",
    "lat": "-35.07576",
    "lng": "138.54189"
  },
  {
    "country": "AU",
    "name": "Clarence Gardens",
    "lat": "-34.97539",
    "lng": "138.57983"
  },
  {
    "country": "AU",
    "name": "Hawthorn",
    "lat": "-34.97384",
    "lng": "138.60738"
  },
  {
    "country": "AU",
    "name": "Marden",
    "lat": "-34.89569",
    "lng": "138.6378"
  },
  {
    "country": "AU",
    "name": "Payneham",
    "lat": "-34.89724",
    "lng": "138.64064"
  },
  {
    "country": "AU",
    "name": "Royston Park",
    "lat": "-34.90045",
    "lng": "138.63605"
  },
  {
    "country": "AU",
    "name": "Trinity Gardens",
    "lat": "-34.91438",
    "lng": "138.64141"
  },
  {
    "country": "AU",
    "name": "Noarlunga Downs",
    "lat": "-35.1504",
    "lng": "138.50395"
  },
  {
    "country": "AU",
    "name": "Alberton",
    "lat": "-34.85925",
    "lng": "138.52138"
  },
  {
    "country": "AU",
    "name": "Forestville",
    "lat": "-34.94946",
    "lng": "138.57845"
  },
  {
    "country": "AU",
    "name": "Millswood",
    "lat": "-34.95505",
    "lng": "138.58888"
  },
  {
    "country": "AU",
    "name": "Unley Park",
    "lat": "-34.96388",
    "lng": "138.60776"
  },
  {
    "country": "AU",
    "name": "Acton",
    "lat": "-35.27767",
    "lng": "149.11829"
  },
  {
    "country": "AU",
    "name": "Alfred Cove",
    "lat": "-32.03316",
    "lng": "115.81259"
  },
  {
    "country": "AU",
    "name": "Bedford",
    "lat": "-31.91132",
    "lng": "115.8892"
  },
  {
    "country": "AU",
    "name": "City Beach",
    "lat": "-31.9344",
    "lng": "115.76174"
  },
  {
    "country": "AU",
    "name": "Coolbinia",
    "lat": "-31.9147",
    "lng": "115.84894"
  },
  {
    "country": "AU",
    "name": "Crawley",
    "lat": "-31.98418",
    "lng": "115.81603"
  },
  {
    "country": "AU",
    "name": "Daglish",
    "lat": "-31.94828",
    "lng": "115.81899"
  },
  {
    "country": "AU",
    "name": "East Cannington",
    "lat": "-32.0098",
    "lng": "115.95503"
  },
  {
    "country": "AU",
    "name": "Eden Hill",
    "lat": "-31.88908",
    "lng": "115.94675"
  },
  {
    "country": "AU",
    "name": "Embleton",
    "lat": "-31.90355",
    "lng": "115.90902"
  },
  {
    "country": "AU",
    "name": "Ferndale",
    "lat": "-32.03494",
    "lng": "115.92233"
  },
  {
    "country": "AU",
    "name": "Harrisdale",
    "lat": "-32.11084",
    "lng": "115.93563"
  },
  {
    "country": "AU",
    "name": "Henley Brook",
    "lat": "-31.81393",
    "lng": "115.98807"
  },
  {
    "country": "AU",
    "name": "Hilton",
    "lat": "-32.06208",
    "lng": "115.78049"
  },
  {
    "country": "AU",
    "name": "Jindalee",
    "lat": "-31.64938",
    "lng": "115.69496"
  },
  {
    "country": "AU",
    "name": "Joondanna",
    "lat": "-31.90767",
    "lng": "115.84233"
  },
  {
    "country": "AU",
    "name": "Kallaroo",
    "lat": "-31.79098",
    "lng": "115.75298"
  },
  {
    "country": "AU",
    "name": "Mount Pleasant",
    "lat": "-32.03974",
    "lng": "115.84993"
  },
  {
    "country": "AU",
    "name": "Myaree",
    "lat": "-32.04",
    "lng": "115.81761"
  },
  {
    "country": "AU",
    "name": "Oakford",
    "lat": "-32.20094",
    "lng": "115.93391"
  },
  {
    "country": "AU",
    "name": "Parmelia",
    "lat": "-32.25784",
    "lng": "115.82208"
  },
  {
    "country": "AU",
    "name": "Rivervale",
    "lat": "-31.95546",
    "lng": "115.91306"
  },
  {
    "country": "AU",
    "name": "South Fremantle",
    "lat": "-32.06907",
    "lng": "115.75453"
  },
  {
    "country": "AU",
    "name": "South Guildford",
    "lat": "-31.9122",
    "lng": "115.96825"
  },
  {
    "country": "AU",
    "name": "South Lake",
    "lat": "-32.11125",
    "lng": "115.83873"
  },
  {
    "country": "AU",
    "name": "Watermans Bay",
    "lat": "-31.84915",
    "lng": "115.7559"
  },
  {
    "country": "AU",
    "name": "Wembley Downs",
    "lat": "-31.91169",
    "lng": "115.77358"
  },
  {
    "country": "AU",
    "name": "West Leederville",
    "lat": "-31.94141",
    "lng": "115.83117"
  },
  {
    "country": "AU",
    "name": "Woodbridge",
    "lat": "-31.88695",
    "lng": "115.99196"
  },
  {
    "country": "AU",
    "name": "Acton Park",
    "lat": "-42.87932",
    "lng": "147.48459"
  },
  {
    "country": "AU",
    "name": "West Moonah",
    "lat": "-42.84996",
    "lng": "147.28181"
  },
  {
    "country": "AU",
    "name": "Dynnyrne",
    "lat": "-42.90541",
    "lng": "147.31576"
  },
  {
    "country": "AU",
    "name": "Burleigh Waters",
    "lat": "-28.09975",
    "lng": "153.42463"
  },
  {
    "country": "AU",
    "name": "Clear Island Waters",
    "lat": "-28.05308",
    "lng": "153.39815"
  },
  {
    "country": "AU",
    "name": "Lower Beechmont",
    "lat": "-28.04751",
    "lng": "153.24572"
  },
  {
    "country": "AU",
    "name": "Mount Nathan",
    "lat": "-27.9643",
    "lng": "153.27198"
  },
  {
    "country": "AU",
    "name": "Ormeau Hills",
    "lat": "-27.79653",
    "lng": "153.2567"
  },
  {
    "country": "AU",
    "name": "Tallebudgera Valley",
    "lat": "-28.1927",
    "lng": "153.35489"
  },
  {
    "country": "AU",
    "name": "Lakelands",
    "lat": "-32.47754",
    "lng": "115.75573"
  },
  {
    "country": "AU",
    "name": "South Yunderup",
    "lat": "-32.5851",
    "lng": "115.78015"
  },
  {
    "country": "AU",
    "name": "Arcadia vale",
    "lat": "-33.06052",
    "lng": "151.58408"
  },
  {
    "country": "AU",
    "name": "Buff Point",
    "lat": "-33.22285",
    "lng": "151.53125"
  },
  {
    "country": "AU",
    "name": "Charmhaven",
    "lat": "-33.22671",
    "lng": "151.50284"
  },
  {
    "country": "AU",
    "name": "Chittaway Bay",
    "lat": "-33.32769",
    "lng": "151.42971"
  },
  {
    "country": "AU",
    "name": "Kingfisher Shores",
    "lat": "-33.16834",
    "lng": "151.55305"
  },
  {
    "country": "AU",
    "name": "Little Jilliby",
    "lat": "-33.24066",
    "lng": "151.37006"
  },
  {
    "country": "AU",
    "name": "Noraville",
    "lat": "-33.26785",
    "lng": "151.55352"
  },
  {
    "country": "AU",
    "name": "Tuggerawong",
    "lat": "-33.2804",
    "lng": "151.48044"
  },
  {
    "country": "AU",
    "name": "Bar Beach",
    "lat": "-32.94128",
    "lng": "151.76544"
  },
  {
    "country": "AU",
    "name": "Broadmeadow",
    "lat": "-32.92371",
    "lng": "151.72849"
  },
  {
    "country": "AU",
    "name": "Carrington",
    "lat": "-32.91501",
    "lng": "151.76436"
  },
  {
    "country": "AU",
    "name": "Cooks Hill",
    "lat": "-32.93244",
    "lng": "151.77114"
  },
  {
    "country": "AU",
    "name": "Elermore Vale",
    "lat": "-32.91621",
    "lng": "151.67665"
  },
  {
    "country": "AU",
    "name": "Hamilton",
    "lat": "-32.92207",
    "lng": "151.74711"
  },
  {
    "country": "AU",
    "name": "The Junction",
    "lat": "-32.93822",
    "lng": "151.75909"
  },
  {
    "country": "AU",
    "name": "Mayfield",
    "lat": "-32.89793",
    "lng": "151.73613"
  },
  {
    "country": "AU",
    "name": "Mayfield West",
    "lat": "-32.89195",
    "lng": "151.72711"
  },
  {
    "country": "AU",
    "name": "Merewether Heights",
    "lat": "-32.94733",
    "lng": "151.73565"
  },
  {
    "country": "AU",
    "name": "New Lambton Heights",
    "lat": "-32.92466",
    "lng": "151.69364"
  },
  {
    "country": "AU",
    "name": "North Lambton",
    "lat": "-32.90605",
    "lng": "151.70574"
  },
  {
    "country": "AU",
    "name": "Rankin Park",
    "lat": "-32.92516",
    "lng": "151.68016"
  },
  {
    "country": "AU",
    "name": "Waratah",
    "lat": "-32.90667",
    "lng": "151.72647"
  },
  {
    "country": "AU",
    "name": "Belmont North",
    "lat": "-33.02081",
    "lng": "151.66849"
  },
  {
    "country": "AU",
    "name": "Belmont South",
    "lat": "-33.04934",
    "lng": "151.65695"
  },
  {
    "country": "AU",
    "name": "Bolton Point",
    "lat": "-33.00177",
    "lng": "151.61013"
  },
  {
    "country": "AU",
    "name": "Cardiff Heights",
    "lat": "-32.93626",
    "lng": "151.67227"
  },
  {
    "country": "AU",
    "name": "Cardiff South",
    "lat": "-32.9547",
    "lng": "151.66446"
  },
  {
    "country": "AU",
    "name": "Coal Point",
    "lat": "-33.04225",
    "lng": "151.61159"
  },
  {
    "country": "AU",
    "name": "Fennell Bay",
    "lat": "-32.9922",
    "lng": "151.60008"
  },
  {
    "country": "AU",
    "name": "Floraville",
    "lat": "-33.01116",
    "lng": "151.6648"
  },
  {
    "country": "AU",
    "name": "Garden Suburb",
    "lat": "-32.94368",
    "lng": "151.68085"
  },
  {
    "country": "AU",
    "name": "Gateshead",
    "lat": "-32.98208",
    "lng": "151.69188"
  },
  {
    "country": "AU",
    "name": "Glendale",
    "lat": "-32.93194",
    "lng": "151.64103"
  },
  {
    "country": "AU",
    "name": "Highfields",
    "lat": "-32.95331",
    "lng": "151.71231"
  },
  {
    "country": "AU",
    "name": "Jewells",
    "lat": "-33.01386",
    "lng": "151.68308"
  },
  {
    "country": "AU",
    "name": "Tingira Heights",
    "lat": "-32.99725",
    "lng": "151.67021"
  },
  {
    "country": "AU",
    "name": "Windale",
    "lat": "-32.99277",
    "lng": "151.68167"
  },
  {
    "country": "AU",
    "name": "Toronto",
    "lat": "-33.01357",
    "lng": "151.59373"
  },
  {
    "country": "AU",
    "name": "Bolwarra Heights",
    "lat": "-32.701",
    "lng": "151.58541"
  },
  {
    "country": "AU",
    "name": "West Rockhampton",
    "lat": "-23.37941",
    "lng": "150.48175"
  },
  {
    "country": "AU",
    "name": "Black Mountain",
    "lat": "-26.39886",
    "lng": "152.87561"
  },
  {
    "country": "AU",
    "name": "Caloundra West",
    "lat": "-26.79854",
    "lng": "153.11405"
  },
  {
    "country": "AU",
    "name": "Dicky Beach",
    "lat": "-26.78364",
    "lng": "153.13766"
  },
  {
    "country": "AU",
    "name": "Peregian Springs",
    "lat": "-26.48801",
    "lng": "153.07577"
  },
  {
    "country": "AU",
    "name": "Albion Park Rail",
    "lat": "-34.56634",
    "lng": "150.79177"
  },
  {
    "country": "AU",
    "name": "Barrack Heights",
    "lat": "-34.56464",
    "lng": "150.85692"
  },
  {
    "country": "AU",
    "name": "Calderwood",
    "lat": "-34.5505",
    "lng": "150.71131"
  },
  {
    "country": "AU",
    "name": "Cordeaux Heights",
    "lat": "-34.44043",
    "lng": "150.83748"
  },
  {
    "country": "AU",
    "name": "Croom",
    "lat": "-34.59432",
    "lng": "150.84126"
  },
  {
    "country": "AU",
    "name": "East Corrimal",
    "lat": "-34.37606",
    "lng": "150.91078"
  },
  {
    "country": "AU",
    "name": "Koonawarra",
    "lat": "-34.50212",
    "lng": "150.80855"
  },
  {
    "country": "AU",
    "name": "West Wollongong",
    "lat": "-34.4248",
    "lng": "150.86417"
  },
  {
    "country": "AU",
    "name": "Lake Wendouree",
    "lat": "-37.54993",
    "lng": "143.8473"
  },
  {
    "country": "AU",
    "name": "White Hills",
    "lat": "-36.72875",
    "lng": "144.30525"
  },
  {
    "country": "AU",
    "name": "Nulsen",
    "lat": "-33.85696",
    "lng": "121.87499"
  },
  {
    "country": "AU",
    "name": "Breakwater",
    "lat": "-38.17987",
    "lng": "144.36765"
  },
  {
    "country": "AU",
    "name": "Hamlyn Heights",
    "lat": "-38.12108",
    "lng": "144.32799"
  },
  {
    "country": "AU",
    "name": "Wandana Heights",
    "lat": "-38.17577",
    "lng": "144.30387"
  },
  {
    "country": "AU",
    "name": "Monkland",
    "lat": "-26.21191",
    "lng": "152.68245"
  },
  {
    "country": "AU",
    "name": "East Launceston",
    "lat": "-41.43843",
    "lng": "147.15101"
  },
  {
    "country": "AU",
    "name": "Summerhill",
    "lat": "-41.46747",
    "lng": "147.12796"
  },
  {
    "country": "AU",
    "name": "West Launceston",
    "lat": "-41.45092",
    "lng": "147.13114"
  },
  {
    "country": "AU",
    "name": "Bilambil Heights",
    "lat": "-28.2161",
    "lng": "153.48415"
  },
  {
    "country": "AU",
    "name": "Tweed Heads West",
    "lat": "-28.18736",
    "lng": "153.52278"
  },
  {
    "country": "AU",
    "name": "Rangeville",
    "lat": "-27.58318",
    "lng": "151.97997"
  },
  {
    "country": "AU",
    "name": "Darling Heights",
    "lat": "-27.59659",
    "lng": "151.93045"
  },
  {
    "country": "AU",
    "name": "East Toowoomba",
    "lat": "-27.57086",
    "lng": "151.97422"
  },
  {
    "country": "AU",
    "name": "Top Camp",
    "lat": "-27.63584",
    "lng": "151.9392"
  },
  {
    "country": "AU",
    "name": "Wilsonton Heights",
    "lat": "-27.53227",
    "lng": "151.92444"
  },
  {
    "country": "AU",
    "name": "East Tamworth",
    "lat": "-31.08548",
    "lng": "150.93721"
  },
  {
    "country": "AU",
    "name": "South Tamworth",
    "lat": "-31.11",
    "lng": "150.92254"
  },
  {
    "country": "AU",
    "name": "Tinbeerwah",
    "lat": "-26.40443",
    "lng": "152.98256"
  },
  {
    "country": "AU",
    "name": "Cooroibah",
    "lat": "-26.36316",
    "lng": "152.98599"
  },
  {
    "country": "AU",
    "name": "East Albury",
    "lat": "-36.08144",
    "lng": "146.92991"
  },
  {
    "country": "AU",
    "name": "North Albury",
    "lat": "-36.05745",
    "lng": "146.92995"
  },
  {
    "country": "AU",
    "name": "South Albury",
    "lat": "-36.08654",
    "lng": "146.90905"
  },
  {
    "country": "AU",
    "name": "West Albury",
    "lat": "-36.07979",
    "lng": "146.89227"
  },
  {
    "country": "AU",
    "name": "Sunshine Coast",
    "lat": "-26.65682",
    "lng": "153.07955"
  },
  {
    "country": "AU",
    "name": "Marangaroo",
    "lat": "-31.82711",
    "lng": "115.83843"
  },
  {
    "country": "AW",
    "name": "Oranjestad",
    "lat": "12.52398",
    "lng": "-70.02703"
  },
  {
    "country": "AX",
    "name": "Vårdö",
    "lat": "60.25",
    "lng": "20.38333"
  },
  {
    "country": "AX",
    "name": "Sund",
    "lat": "60.25",
    "lng": "20.11667"
  },
  {
    "country": "AX",
    "name": "Sottunga",
    "lat": "60.13023",
    "lng": "20.66683"
  },
  {
    "country": "AX",
    "name": "Saltvik",
    "lat": "60.28333",
    "lng": "20.05"
  },
  {
    "country": "AX",
    "name": "Lumparland",
    "lat": "60.11695",
    "lng": "20.25819"
  },
  {
    "country": "AX",
    "name": "Lemland",
    "lat": "60.07178",
    "lng": "20.08472"
  },
  {
    "country": "AX",
    "name": "Kumlinge",
    "lat": "60.26013",
    "lng": "20.77892"
  },
  {
    "country": "AX",
    "name": "Kökar",
    "lat": "59.92051",
    "lng": "20.90883"
  },
  {
    "country": "AX",
    "name": "Föglö",
    "lat": "60.01667",
    "lng": "20.41667"
  },
  {
    "country": "AX",
    "name": "Brändö",
    "lat": "60.41165",
    "lng": "21.04534"
  },
  {
    "country": "AX",
    "name": "Mariehamn",
    "lat": "60.09726",
    "lng": "19.93481"
  },
  {
    "country": "AX",
    "name": "Jomala",
    "lat": "60.14902",
    "lng": "19.951"
  },
  {
    "country": "AX",
    "name": "Hammarland",
    "lat": "60.21667",
    "lng": "19.75"
  },
  {
    "country": "AX",
    "name": "Geta",
    "lat": "60.37453",
    "lng": "19.84455"
  },
  {
    "country": "AX",
    "name": "Finström",
    "lat": "60.26667",
    "lng": "19.93333"
  },
  {
    "country": "AX",
    "name": "Eckerö",
    "lat": "60.21249",
    "lng": "19.61442"
  },
  {
    "country": "AZ",
    "name": "Sharur City",
    "lat": "39.55298",
    "lng": "44.97993"
  },
  {
    "country": "AZ",
    "name": "Prishibinskoye",
    "lat": "39.11817",
    "lng": "48.59255"
  },
  {
    "country": "AZ",
    "name": "Zangilan",
    "lat": "39.0884",
    "lng": "46.6513"
  },
  {
    "country": "AZ",
    "name": "Yaycı",
    "lat": "38.94052",
    "lng": "45.73244"
  },
  {
    "country": "AZ",
    "name": "Yardımlı",
    "lat": "38.90771",
    "lng": "48.24052"
  },
  {
    "country": "AZ",
    "name": "Novyy Karanlug",
    "lat": "39.79546",
    "lng": "47.10989"
  },
  {
    "country": "AZ",
    "name": "Xankandi",
    "lat": "39.8177",
    "lng": "46.7528"
  },
  {
    "country": "AZ",
    "name": "Əhmədbəyli",
    "lat": "39.87867",
    "lng": "48.39901"
  },
  {
    "country": "AZ",
    "name": "Shushi",
    "lat": "39.76006",
    "lng": "46.74989"
  },
  {
    "country": "AZ",
    "name": "Salyan",
    "lat": "39.59621",
    "lng": "48.98479"
  },
  {
    "country": "AZ",
    "name": "Şahbuz",
    "lat": "39.40722",
    "lng": "45.57389"
  },
  {
    "country": "AZ",
    "name": "Sedarak",
    "lat": "39.71427",
    "lng": "44.88455"
  },
  {
    "country": "AZ",
    "name": "Sumbatan-diza",
    "lat": "38.94804",
    "lng": "45.82572"
  },
  {
    "country": "AZ",
    "name": "Saatlı",
    "lat": "39.93214",
    "lng": "48.36892"
  },
  {
    "country": "AZ",
    "name": "Qubadlı",
    "lat": "39.34441",
    "lng": "46.58183"
  },
  {
    "country": "AZ",
    "name": "Qaraçala",
    "lat": "39.81614",
    "lng": "48.93792"
  },
  {
    "country": "AZ",
    "name": "Orconikidze",
    "lat": "39.63238",
    "lng": "47.6898"
  },
  {
    "country": "AZ",
    "name": "Ordubad",
    "lat": "38.90961",
    "lng": "46.02274"
  },
  {
    "country": "AZ",
    "name": "Neftçala",
    "lat": "39.3768",
    "lng": "49.247"
  },
  {
    "country": "AZ",
    "name": "Nakhchivan",
    "lat": "39.20889",
    "lng": "45.41222"
  },
  {
    "country": "AZ",
    "name": "Mincivan",
    "lat": "39.03058",
    "lng": "46.7214"
  },
  {
    "country": "AZ",
    "name": "Masally",
    "lat": "39.03532",
    "lng": "48.6654"
  },
  {
    "country": "AZ",
    "name": "Lerik",
    "lat": "38.77388",
    "lng": "48.41497"
  },
  {
    "country": "AZ",
    "name": "Lankaran",
    "lat": "38.75428",
    "lng": "48.85062"
  },
  {
    "country": "AZ",
    "name": "Laçın",
    "lat": "39.59881",
    "lng": "46.55045"
  },
  {
    "country": "AZ",
    "name": "Qıvraq",
    "lat": "39.39939",
    "lng": "45.11513"
  },
  {
    "country": "AZ",
    "name": "Qırmızı Bazar",
    "lat": "39.67833",
    "lng": "46.94884"
  },
  {
    "country": "AZ",
    "name": "Kizhaba",
    "lat": "38.53461",
    "lng": "48.80546"
  },
  {
    "country": "AZ",
    "name": "Xocalı",
    "lat": "39.91297",
    "lng": "46.79028"
  },
  {
    "country": "AZ",
    "name": "Xıllı",
    "lat": "39.43012",
    "lng": "49.10166"
  },
  {
    "country": "AZ",
    "name": "Imishli",
    "lat": "39.87095",
    "lng": "48.05995"
  },
  {
    "country": "AZ",
    "name": "Horadiz",
    "lat": "39.44877",
    "lng": "47.33531"
  },
  {
    "country": "AZ",
    "name": "Haftoni",
    "lat": "38.76325",
    "lng": "48.76223"
  },
  {
    "country": "AZ",
    "name": "Hadrut",
    "lat": "39.52002",
    "lng": "47.0318"
  },
  {
    "country": "AZ",
    "name": "Fizuli",
    "lat": "39.60094",
    "lng": "47.14529"
  },
  {
    "country": "AZ",
    "name": "Jebrail",
    "lat": "39.39917",
    "lng": "47.02835"
  },
  {
    "country": "AZ",
    "name": "Dünyamalılar",
    "lat": "39.77278",
    "lng": "47.75889"
  },
  {
    "country": "AZ",
    "name": "Deste",
    "lat": "38.88375",
    "lng": "45.90963"
  },
  {
    "country": "AZ",
    "name": "Culfa",
    "lat": "38.95397",
    "lng": "45.62961"
  },
  {
    "country": "AZ",
    "name": "Dzhalilabad",
    "lat": "39.20963",
    "lng": "48.49186"
  },
  {
    "country": "AZ",
    "name": "Cahri",
    "lat": "39.34837",
    "lng": "45.41557"
  },
  {
    "country": "AZ",
    "name": "Boradigah",
    "lat": "38.93013",
    "lng": "48.7092"
  },
  {
    "country": "AZ",
    "name": "Pushkino",
    "lat": "39.45833",
    "lng": "48.545"
  },
  {
    "country": "AZ",
    "name": "Beylagan",
    "lat": "39.77556",
    "lng": "47.61861"
  },
  {
    "country": "AZ",
    "name": "Severo-Vostotchnyi Bank",
    "lat": "39.41117",
    "lng": "49.24792"
  },
  {
    "country": "AZ",
    "name": "Tazakend",
    "lat": "39.15459",
    "lng": "45.44282"
  },
  {
    "country": "AZ",
    "name": "Astara",
    "lat": "38.45598",
    "lng": "48.87498"
  },
  {
    "country": "AZ",
    "name": "Askyaran",
    "lat": "39.93667",
    "lng": "46.83278"
  },
  {
    "country": "AZ",
    "name": "Şirvan",
    "lat": "39.93778",
    "lng": "48.929"
  },
  {
    "country": "AZ",
    "name": "Ağdam",
    "lat": "39.99096",
    "lng": "46.92736"
  },
  {
    "country": "AZ",
    "name": "Sovetabad",
    "lat": "39.33667",
    "lng": "49.21414"
  },
  {
    "country": "AZ",
    "name": "Avşar",
    "lat": "39.97389",
    "lng": "47.42389"
  },
  {
    "country": "AZ",
    "name": "Birinci Aşıqlı",
    "lat": "39.81917",
    "lng": "47.67944"
  },
  {
    "country": "AZ",
    "name": "Yuxarı Aran",
    "lat": "39.73361",
    "lng": "47.655"
  },
  {
    "country": "AZ",
    "name": "Çalxanqala",
    "lat": "39.44167",
    "lng": "45.28333"
  },
  {
    "country": "AZ",
    "name": "Oğlanqala",
    "lat": "39.58694",
    "lng": "45.04611"
  },
  {
    "country": "AZ",
    "name": "Zyrya",
    "lat": "40.36613",
    "lng": "50.29198"
  },
  {
    "country": "AZ",
    "name": "Zardob",
    "lat": "40.21991",
    "lng": "47.70997"
  },
  {
    "country": "AZ",
    "name": "Zaqatala",
    "lat": "41.6316",
    "lng": "46.64479"
  },
  {
    "country": "AZ",
    "name": "Zabrat",
    "lat": "40.47746",
    "lng": "49.94174"
  },
  {
    "country": "AZ",
    "name": "Yevlakh",
    "lat": "40.61832",
    "lng": "47.15014"
  },
  {
    "country": "AZ",
    "name": "Yanıqlı",
    "lat": "40.84115",
    "lng": "45.67283"
  },
  {
    "country": "AZ",
    "name": "Xudat",
    "lat": "41.63052",
    "lng": "48.68161"
  },
  {
    "country": "AZ",
    "name": "Yelenendorf",
    "lat": "40.58584",
    "lng": "46.3189"
  },
  {
    "country": "AZ",
    "name": "Xaçmaz",
    "lat": "41.46426",
    "lng": "48.80565"
  },
  {
    "country": "AZ",
    "name": "Verkhniy Dashkesan",
    "lat": "40.49357",
    "lng": "46.07175"
  },
  {
    "country": "AZ",
    "name": "Ujar",
    "lat": "40.51902",
    "lng": "47.65423"
  },
  {
    "country": "AZ",
    "name": "Türkan",
    "lat": "40.3646",
    "lng": "50.22075"
  },
  {
    "country": "AZ",
    "name": "Tovuz",
    "lat": "40.99249",
    "lng": "45.62838"
  },
  {
    "country": "AZ",
    "name": "Terter",
    "lat": "40.34179",
    "lng": "46.93242"
  },
  {
    "country": "AZ",
    "name": "Sumqayıt",
    "lat": "40.58972",
    "lng": "49.66861"
  },
  {
    "country": "AZ",
    "name": "Kyzyl-Burun",
    "lat": "41.07754",
    "lng": "49.11257"
  },
  {
    "country": "AZ",
    "name": "Şuraabad",
    "lat": "40.81943",
    "lng": "49.46787"
  },
  {
    "country": "AZ",
    "name": "Qaraçuxur",
    "lat": "40.39667",
    "lng": "49.97361"
  },
  {
    "country": "AZ",
    "name": "Saray",
    "lat": "40.53299",
    "lng": "49.71681"
  },
  {
    "country": "AZ",
    "name": "Samur",
    "lat": "41.63671",
    "lng": "48.43028"
  },
  {
    "country": "AZ",
    "name": "Shamkhor",
    "lat": "40.82975",
    "lng": "46.0178"
  },
  {
    "country": "AZ",
    "name": "Shamakhi",
    "lat": "40.63141",
    "lng": "48.64137"
  },
  {
    "country": "AZ",
    "name": "Saloğlu",
    "lat": "41.27524",
    "lng": "45.35293"
  },
  {
    "country": "AZ",
    "name": "Sheki",
    "lat": "41.19194",
    "lng": "47.17056"
  },
  {
    "country": "AZ",
    "name": "Samux",
    "lat": "40.76485",
    "lng": "46.40868"
  },
  {
    "country": "AZ",
    "name": "Sabunçu",
    "lat": "40.4425",
    "lng": "49.94806"
  },
  {
    "country": "AZ",
    "name": "Sabirabad",
    "lat": "40.00869",
    "lng": "48.47701"
  },
  {
    "country": "AZ",
    "name": "Qusar",
    "lat": "41.4275",
    "lng": "48.4302"
  },
  {
    "country": "AZ",
    "name": "Quba",
    "lat": "41.36108",
    "lng": "48.51341"
  },
  {
    "country": "AZ",
    "name": "Qobustan",
    "lat": "40.08238",
    "lng": "49.41205"
  },
  {
    "country": "AZ",
    "name": "Hacıqabul",
    "lat": "40.03874",
    "lng": "48.94286"
  },
  {
    "country": "AZ",
    "name": "Qazax",
    "lat": "41.09246",
    "lng": "45.36561"
  },
  {
    "country": "AZ",
    "name": "Qax",
    "lat": "41.41826",
    "lng": "46.92043"
  },
  {
    "country": "AZ",
    "name": "Qasım İsmayılov",
    "lat": "40.81156",
    "lng": "46.26112"
  },
  {
    "country": "AZ",
    "name": "Qutqashen",
    "lat": "40.98247",
    "lng": "47.84909"
  },
  {
    "country": "AZ",
    "name": "Puta",
    "lat": "40.29667",
    "lng": "49.66028"
  },
  {
    "country": "AZ",
    "name": "Oğuz",
    "lat": "41.07128",
    "lng": "47.46528"
  },
  {
    "country": "AZ",
    "name": "Novosaratovka",
    "lat": "40.59811",
    "lng": "45.60079"
  },
  {
    "country": "AZ",
    "name": "Hacı Zeynalabdin",
    "lat": "40.62333",
    "lng": "49.55861"
  },
  {
    "country": "AZ",
    "name": "Nardaran",
    "lat": "40.55611",
    "lng": "50.00556"
  },
  {
    "country": "AZ",
    "name": "Naftalan",
    "lat": "40.50821",
    "lng": "46.8203"
  },
  {
    "country": "AZ",
    "name": "Mingelchaur",
    "lat": "40.76395",
    "lng": "47.05953"
  },
  {
    "country": "AZ",
    "name": "Maştağa",
    "lat": "40.52983",
    "lng": "50.00616"
  },
  {
    "country": "AZ",
    "name": "Mardakan",
    "lat": "40.49182",
    "lng": "50.14292"
  },
  {
    "country": "AZ",
    "name": "Qobustan",
    "lat": "40.5336",
    "lng": "48.92819"
  },
  {
    "country": "AZ",
    "name": "Mamrux",
    "lat": "41.54243",
    "lng": "46.767"
  },
  {
    "country": "AZ",
    "name": "Lökbatan",
    "lat": "40.3256",
    "lng": "49.73376"
  },
  {
    "country": "AZ",
    "name": "Qızılhacılı",
    "lat": "40.57362",
    "lng": "46.849"
  },
  {
    "country": "AZ",
    "name": "Kyurdarmir",
    "lat": "40.34532",
    "lng": "48.15085"
  },
  {
    "country": "AZ",
    "name": "Qobu",
    "lat": "40.40472",
    "lng": "49.71306"
  },
  {
    "country": "AZ",
    "name": "Kilyazi",
    "lat": "40.87098",
    "lng": "49.34233"
  },
  {
    "country": "AZ",
    "name": "Khyzy",
    "lat": "40.90576",
    "lng": "49.08127"
  },
  {
    "country": "AZ",
    "name": "Khirdalan",
    "lat": "40.44808",
    "lng": "49.75502"
  },
  {
    "country": "AZ",
    "name": "Khodzhi-Gasan",
    "lat": "40.41293",
    "lng": "49.76904"
  },
  {
    "country": "AZ",
    "name": "Korgöz",
    "lat": "40.30446",
    "lng": "49.6236"
  },
  {
    "country": "AZ",
    "name": "Qarayeri",
    "lat": "40.78825",
    "lng": "46.3072"
  },
  {
    "country": "AZ",
    "name": "Qaramanlı",
    "lat": "40.48135",
    "lng": "46.99339"
  },
  {
    "country": "AZ",
    "name": "Qaraxanlı",
    "lat": "41.03415",
    "lng": "45.64516"
  },
  {
    "country": "AZ",
    "name": "Qandax",
    "lat": "41.47546",
    "lng": "46.54128"
  },
  {
    "country": "AZ",
    "name": "Vurğun",
    "lat": "41.09524",
    "lng": "45.47111"
  },
  {
    "country": "AZ",
    "name": "Kerbakhiar",
    "lat": "40.10984",
    "lng": "46.04446"
  },
  {
    "country": "AZ",
    "name": "Qala",
    "lat": "40.44256",
    "lng": "50.16759"
  },
  {
    "country": "AZ",
    "name": "Qax İngiloy",
    "lat": "41.42412",
    "lng": "46.93859"
  },
  {
    "country": "AZ",
    "name": "Qaxbaş",
    "lat": "41.43254",
    "lng": "46.9646"
  },
  {
    "country": "AZ",
    "name": "İsmayıllı",
    "lat": "40.78485",
    "lng": "48.15141"
  },
  {
    "country": "AZ",
    "name": "Yeni Suraxanı",
    "lat": "40.43026",
    "lng": "50.03598"
  },
  {
    "country": "AZ",
    "name": "Gyuzdek",
    "lat": "40.37444",
    "lng": "49.68194"
  },
  {
    "country": "AZ",
    "name": "Geoktschai",
    "lat": "40.65055",
    "lng": "47.74219"
  },
  {
    "country": "AZ",
    "name": "Hövsan",
    "lat": "40.37444",
    "lng": "50.08528"
  },
  {
    "country": "AZ",
    "name": "Goranboy",
    "lat": "40.61028",
    "lng": "46.78972"
  },
  {
    "country": "AZ",
    "name": "Ganja",
    "lat": "40.68278",
    "lng": "46.36056"
  },
  {
    "country": "AZ",
    "name": "Kyadabek",
    "lat": "40.57055",
    "lng": "45.81229"
  },
  {
    "country": "AZ",
    "name": "Faldarlı",
    "lat": "41.46868",
    "lng": "46.51579"
  },
  {
    "country": "AZ",
    "name": "Corat",
    "lat": "40.57176",
    "lng": "49.70509"
  },
  {
    "country": "AZ",
    "name": "Ceyranbatan",
    "lat": "40.54194",
    "lng": "49.66073"
  },
  {
    "country": "AZ",
    "name": "Dzagam",
    "lat": "40.9033",
    "lng": "45.88564"
  },
  {
    "country": "AZ",
    "name": "Dondar Quşçu",
    "lat": "40.9539",
    "lng": "45.61942"
  },
  {
    "country": "AZ",
    "name": "Digah",
    "lat": "40.49257",
    "lng": "49.87477"
  },
  {
    "country": "AZ",
    "name": "Divichibazar",
    "lat": "41.20117",
    "lng": "48.98712"
  },
  {
    "country": "AZ",
    "name": "Yukhary-Dashkesan",
    "lat": "40.52393",
    "lng": "46.08186"
  },
  {
    "country": "AZ",
    "name": "Dolyar",
    "lat": "40.86278",
    "lng": "46.03493"
  },
  {
    "country": "AZ",
    "name": "Çobansığnaq",
    "lat": "40.75244",
    "lng": "45.70645"
  },
  {
    "country": "AZ",
    "name": "Çinarlı",
    "lat": "41.46965",
    "lng": "46.91582"
  },
  {
    "country": "AZ",
    "name": "Çatax",
    "lat": "40.72622",
    "lng": "45.55919"
  },
  {
    "country": "AZ",
    "name": "Buzovna",
    "lat": "40.51903",
    "lng": "50.11438"
  },
  {
    "country": "AZ",
    "name": "Binagadi",
    "lat": "40.46602",
    "lng": "49.82783"
  },
  {
    "country": "AZ",
    "name": "Biny Selo",
    "lat": "40.45076",
    "lng": "50.08686"
  },
  {
    "country": "AZ",
    "name": "Bilajer",
    "lat": "40.56441",
    "lng": "50.04002"
  },
  {
    "country": "AZ",
    "name": "Basqal",
    "lat": "40.7552",
    "lng": "48.39104"
  },
  {
    "country": "AZ",
    "name": "Baş Göynük",
    "lat": "41.32582",
    "lng": "47.11357"
  },
  {
    "country": "AZ",
    "name": "Barda",
    "lat": "40.37577",
    "lng": "47.12619"
  },
  {
    "country": "AZ",
    "name": "Belokany",
    "lat": "41.72626",
    "lng": "46.40478"
  },
  {
    "country": "AZ",
    "name": "Balakhani",
    "lat": "40.46344",
    "lng": "49.91893"
  },
  {
    "country": "AZ",
    "name": "Bilajari",
    "lat": "40.4444",
    "lng": "49.80566"
  },
  {
    "country": "AZ",
    "name": "Baku",
    "lat": "40.37767",
    "lng": "49.89201"
  },
  {
    "country": "AZ",
    "name": "Arıqıran",
    "lat": "40.53971",
    "lng": "45.61414"
  },
  {
    "country": "AZ",
    "name": "Arıqdam",
    "lat": "40.59313",
    "lng": "45.799"
  },
  {
    "country": "AZ",
    "name": "Pirallahı",
    "lat": "40.47013",
    "lng": "50.32476"
  },
  {
    "country": "AZ",
    "name": "Amirdzhan",
    "lat": "40.42639",
    "lng": "49.98361"
  },
  {
    "country": "AZ",
    "name": "Altıağac",
    "lat": "40.85927",
    "lng": "48.93477"
  },
  {
    "country": "AZ",
    "name": "Aliabad",
    "lat": "41.4829",
    "lng": "46.63483"
  },
  {
    "country": "AZ",
    "name": "Aghsu",
    "lat": "40.57028",
    "lng": "48.40087"
  },
  {
    "country": "AZ",
    "name": "Aghstafa",
    "lat": "41.11889",
    "lng": "45.45389"
  },
  {
    "country": "AZ",
    "name": "Ağdaş",
    "lat": "40.64699",
    "lng": "47.4738"
  },
  {
    "country": "AZ",
    "name": "Martakert",
    "lat": "40.21238",
    "lng": "46.82086"
  },
  {
    "country": "AZ",
    "name": "Agdzhabedy",
    "lat": "40.05015",
    "lng": "47.45937"
  },
  {
    "country": "AZ",
    "name": "Böyük Qaramurad",
    "lat": "40.57626",
    "lng": "45.63727"
  },
  {
    "country": "AZ",
    "name": "Mughan",
    "lat": "40.09902",
    "lng": "48.81886"
  },
  {
    "country": "AZ",
    "name": "Qabaqçöl",
    "lat": "41.75259",
    "lng": "46.27052"
  },
  {
    "country": "AZ",
    "name": "Bakıxanov",
    "lat": "40.41894",
    "lng": "49.96693"
  },
  {
    "country": "AZ",
    "name": "Qırmızı Samux",
    "lat": "40.93972",
    "lng": "46.37889"
  },
  {
    "country": "AZ",
    "name": "Hacıhüseynli",
    "lat": "41.45639",
    "lng": "48.64889"
  },
  {
    "country": "AZ",
    "name": "Aran",
    "lat": "40.62528",
    "lng": "46.97556"
  },
  {
    "country": "AZ",
    "name": "Samuxlu",
    "lat": "40.50833",
    "lng": "47.16917"
  },
  {
    "country": "AZ",
    "name": "Ramana",
    "lat": "40.44222",
    "lng": "49.98056"
  },
  {
    "country": "AZ",
    "name": "Badamdar",
    "lat": "40.34024",
    "lng": "49.8045"
  },
  {
    "country": "AZ",
    "name": "Heydarabad",
    "lat": "39.72286",
    "lng": "44.84846"
  },
  {
    "country": "BA",
    "name": "Zvornik",
    "lat": "44.38605",
    "lng": "19.10247"
  },
  {
    "country": "BA",
    "name": "Živinice",
    "lat": "44.54765",
    "lng": "17.37357"
  },
  {
    "country": "BA",
    "name": "Živinice",
    "lat": "44.44929",
    "lng": "18.64978"
  },
  {
    "country": "BA",
    "name": "Žepče",
    "lat": "44.42667",
    "lng": "18.03778"
  },
  {
    "country": "BA",
    "name": "Zenica",
    "lat": "44.20169",
    "lng": "17.90397"
  },
  {
    "country": "BA",
    "name": "Željezno Polje",
    "lat": "44.39875",
    "lng": "17.94103"
  },
  {
    "country": "BA",
    "name": "Zborište",
    "lat": "45.14593",
    "lng": "16.01728"
  },
  {
    "country": "BA",
    "name": "Zavidovići",
    "lat": "44.44583",
    "lng": "18.14972"
  },
  {
    "country": "BA",
    "name": "Zabrišće",
    "lat": "43.79224",
    "lng": "16.94224"
  },
  {
    "country": "BA",
    "name": "Vukovije Donje",
    "lat": "44.46209",
    "lng": "18.74941"
  },
  {
    "country": "BA",
    "name": "Vrnograč",
    "lat": "45.16369",
    "lng": "15.95444"
  },
  {
    "country": "BA",
    "name": "Vozuća",
    "lat": "44.35878",
    "lng": "18.35397"
  },
  {
    "country": "BA",
    "name": "Voljevac",
    "lat": "43.87873",
    "lng": "17.65861"
  },
  {
    "country": "BA",
    "name": "Vogošća",
    "lat": "43.90225",
    "lng": "18.34438"
  },
  {
    "country": "BA",
    "name": "Vlasenica",
    "lat": "44.18183",
    "lng": "18.94096"
  },
  {
    "country": "BA",
    "name": "Vitina",
    "lat": "43.2375",
    "lng": "17.48389"
  },
  {
    "country": "BA",
    "name": "Vitez",
    "lat": "44.15424",
    "lng": "17.79009"
  },
  {
    "country": "BA",
    "name": "Visoko",
    "lat": "43.98889",
    "lng": "18.17806"
  },
  {
    "country": "BA",
    "name": "Višegrad",
    "lat": "43.7826",
    "lng": "19.29256"
  },
  {
    "country": "BA",
    "name": "Vidoši",
    "lat": "43.77139",
    "lng": "17.02833"
  },
  {
    "country": "BA",
    "name": "Velika Obarska",
    "lat": "44.80461",
    "lng": "19.16183"
  },
  {
    "country": "BA",
    "name": "Velika Kladuša",
    "lat": "45.18497",
    "lng": "15.80579"
  },
  {
    "country": "BA",
    "name": "Velagići",
    "lat": "44.55618",
    "lng": "16.73349"
  },
  {
    "country": "BA",
    "name": "Varoška Rijeka",
    "lat": "45.08936",
    "lng": "16.01906"
  },
  {
    "country": "BA",
    "name": "Vareš",
    "lat": "44.16444",
    "lng": "18.32833"
  },
  {
    "country": "BA",
    "name": "Ustikolina",
    "lat": "43.58338",
    "lng": "18.79106"
  },
  {
    "country": "BA",
    "name": "Ugljevik",
    "lat": "44.66361",
    "lng": "19.02028"
  },
  {
    "country": "BA",
    "name": "Tuzla",
    "lat": "44.53842",
    "lng": "18.66709"
  },
  {
    "country": "BA",
    "name": "Turbe",
    "lat": "44.24352",
    "lng": "17.57499"
  },
  {
    "country": "BA",
    "name": "Tržačka Raštela",
    "lat": "44.97597",
    "lng": "15.78489"
  },
  {
    "country": "BA",
    "name": "Trnovo",
    "lat": "43.6658",
    "lng": "18.44593"
  },
  {
    "country": "BA",
    "name": "Trn",
    "lat": "44.85829",
    "lng": "17.23583"
  },
  {
    "country": "BA",
    "name": "Trebinje",
    "lat": "42.71197",
    "lng": "18.34362"
  },
  {
    "country": "BA",
    "name": "Travnik",
    "lat": "44.22637",
    "lng": "17.66583"
  },
  {
    "country": "BA",
    "name": "Tojšići",
    "lat": "44.50133",
    "lng": "18.78523"
  },
  {
    "country": "BA",
    "name": "Teslić",
    "lat": "44.60639",
    "lng": "17.85972"
  },
  {
    "country": "BA",
    "name": "Tešanj",
    "lat": "44.61191",
    "lng": "17.98552"
  },
  {
    "country": "BA",
    "name": "Tasovčići",
    "lat": "43.11333",
    "lng": "17.72"
  },
  {
    "country": "BA",
    "name": "Svodna",
    "lat": "45.0377",
    "lng": "16.54019"
  },
  {
    "country": "BA",
    "name": "Šumatac",
    "lat": "45.09743",
    "lng": "15.85818"
  },
  {
    "country": "BA",
    "name": "Šturlić",
    "lat": "45.06389",
    "lng": "15.77806"
  },
  {
    "country": "BA",
    "name": "Stupari",
    "lat": "44.31382",
    "lng": "18.68416"
  },
  {
    "country": "BA",
    "name": "Stolac",
    "lat": "43.084",
    "lng": "17.95995"
  },
  {
    "country": "BA",
    "name": "Stjepan-Polje",
    "lat": "44.71634",
    "lng": "18.25783"
  },
  {
    "country": "BA",
    "name": "Stijena",
    "lat": "44.9363",
    "lng": "16.02224"
  },
  {
    "country": "BA",
    "name": "Srebrenik",
    "lat": "44.70819",
    "lng": "18.48834"
  },
  {
    "country": "BA",
    "name": "Srebrenica",
    "lat": "44.10748",
    "lng": "19.29669"
  },
  {
    "country": "BA",
    "name": "Srbac",
    "lat": "45.0973",
    "lng": "17.52331"
  },
  {
    "country": "BA",
    "name": "Solina",
    "lat": "44.56226",
    "lng": "18.69322"
  },
  {
    "country": "BA",
    "name": "Sokolac",
    "lat": "43.93817",
    "lng": "18.80079"
  },
  {
    "country": "BA",
    "name": "Sladna",
    "lat": "44.72897",
    "lng": "18.42575"
  },
  {
    "country": "BA",
    "name": "Kneževo",
    "lat": "44.49071",
    "lng": "17.38161"
  },
  {
    "country": "BA",
    "name": "Šipovo",
    "lat": "44.28237",
    "lng": "17.08597"
  },
  {
    "country": "BA",
    "name": "Šerići",
    "lat": "44.46674",
    "lng": "18.5637"
  },
  {
    "country": "BA",
    "name": "Šekovići",
    "lat": "44.29896",
    "lng": "18.85532"
  },
  {
    "country": "BA",
    "name": "Sarajevo",
    "lat": "43.84864",
    "lng": "18.35644"
  },
  {
    "country": "BA",
    "name": "Sapna",
    "lat": "44.5038",
    "lng": "18.99818"
  },
  {
    "country": "BA",
    "name": "Sanski Most",
    "lat": "44.7667",
    "lng": "16.667"
  },
  {
    "country": "BA",
    "name": "Sanica",
    "lat": "44.61354",
    "lng": "16.64062"
  },
  {
    "country": "BA",
    "name": "Rumboci",
    "lat": "43.83154",
    "lng": "17.50273"
  },
  {
    "country": "BA",
    "name": "Rudo",
    "lat": "43.61781",
    "lng": "19.36719"
  },
  {
    "country": "BA",
    "name": "Rogatica",
    "lat": "43.79894",
    "lng": "19.00363"
  },
  {
    "country": "BA",
    "name": "Rodoč",
    "lat": "43.31453",
    "lng": "17.8029"
  },
  {
    "country": "BA",
    "name": "Ravno",
    "lat": "42.88741",
    "lng": "17.96555"
  },
  {
    "country": "BA",
    "name": "Radišići",
    "lat": "43.22302",
    "lng": "17.54056"
  },
  {
    "country": "BA",
    "name": "Puračić",
    "lat": "44.54562",
    "lng": "18.47865"
  },
  {
    "country": "BA",
    "name": "Novi Travnik",
    "lat": "44.17133",
    "lng": "17.65816"
  },
  {
    "country": "BA",
    "name": "Prozor",
    "lat": "43.82222",
    "lng": "17.60917"
  },
  {
    "country": "BA",
    "name": "Prnjavor",
    "lat": "44.87021",
    "lng": "17.66256"
  },
  {
    "country": "BA",
    "name": "Prijedor",
    "lat": "44.97991",
    "lng": "16.71401"
  },
  {
    "country": "BA",
    "name": "Priboj",
    "lat": "44.60233",
    "lng": "18.93165"
  },
  {
    "country": "BA",
    "name": "Pribinić",
    "lat": "44.6101",
    "lng": "17.68981"
  },
  {
    "country": "BA",
    "name": "Prača",
    "lat": "43.76367",
    "lng": "18.76512"
  },
  {
    "country": "BA",
    "name": "Potoci",
    "lat": "44.39261",
    "lng": "16.62001"
  },
  {
    "country": "BA",
    "name": "Potoci",
    "lat": "43.40953",
    "lng": "17.87855"
  },
  {
    "country": "BA",
    "name": "Posušje",
    "lat": "43.47281",
    "lng": "17.32621"
  },
  {
    "country": "BA",
    "name": "Popovi",
    "lat": "44.76547",
    "lng": "19.28667"
  },
  {
    "country": "BA",
    "name": "Polje-Bijela",
    "lat": "43.63299",
    "lng": "17.97216"
  },
  {
    "country": "BA",
    "name": "Podzvizd",
    "lat": "45.17417",
    "lng": "15.87361"
  },
  {
    "country": "BA",
    "name": "Podhum",
    "lat": "43.72295",
    "lng": "16.99887"
  },
  {
    "country": "BA",
    "name": "Petkovci",
    "lat": "44.46849",
    "lng": "19.07466"
  },
  {
    "country": "BA",
    "name": "Pelagićevo",
    "lat": "44.90105",
    "lng": "18.59185"
  },
  {
    "country": "BA",
    "name": "Pećigrad",
    "lat": "45.05444",
    "lng": "15.89694"
  },
  {
    "country": "BA",
    "name": "Peći",
    "lat": "44.63139",
    "lng": "16.7825"
  },
  {
    "country": "BA",
    "name": "Pazarić",
    "lat": "43.78882",
    "lng": "18.16049"
  },
  {
    "country": "BA",
    "name": "Pale",
    "lat": "43.81664",
    "lng": "18.56949"
  },
  {
    "country": "BA",
    "name": "Otoka",
    "lat": "44.96",
    "lng": "16.17917"
  },
  {
    "country": "BA",
    "name": "Ostrožac",
    "lat": "44.90866",
    "lng": "15.94045"
  },
  {
    "country": "BA",
    "name": "Oštra Luka",
    "lat": "44.99724",
    "lng": "18.58464"
  },
  {
    "country": "BA",
    "name": "Oštra Luka",
    "lat": "44.86027",
    "lng": "16.66069"
  },
  {
    "country": "BA",
    "name": "Osmaci",
    "lat": "44.40159",
    "lng": "18.91638"
  },
  {
    "country": "BA",
    "name": "Orguz",
    "lat": "43.77414",
    "lng": "16.86329"
  },
  {
    "country": "BA",
    "name": "Orašje",
    "lat": "45.03366",
    "lng": "18.69334"
  },
  {
    "country": "BA",
    "name": "Orašac",
    "lat": "44.63039",
    "lng": "16.07443"
  },
  {
    "country": "BA",
    "name": "Orahovica Donja",
    "lat": "44.65345",
    "lng": "18.36951"
  },
  {
    "country": "BA",
    "name": "Omarska",
    "lat": "44.8917",
    "lng": "16.89814"
  },
  {
    "country": "BA",
    "name": "Omanjska",
    "lat": "44.69831",
    "lng": "17.95757"
  },
  {
    "country": "BA",
    "name": "Olovo",
    "lat": "44.1277",
    "lng": "18.58065"
  },
  {
    "country": "BA",
    "name": "Odžak",
    "lat": "45.02461",
    "lng": "18.32107"
  },
  {
    "country": "BA",
    "name": "Obudovac",
    "lat": "44.95215",
    "lng": "18.59869"
  },
  {
    "country": "BA",
    "name": "Novo Selo",
    "lat": "44.08007",
    "lng": "17.15556"
  },
  {
    "country": "BA",
    "name": "Novi Šeher",
    "lat": "44.51031",
    "lng": "18.02624"
  },
  {
    "country": "BA",
    "name": "Nevesinje",
    "lat": "43.25861",
    "lng": "18.11333"
  },
  {
    "country": "BA",
    "name": "Neum",
    "lat": "42.92333",
    "lng": "17.61556"
  },
  {
    "country": "BA",
    "name": "Mrkonjić Grad",
    "lat": "44.41729",
    "lng": "17.08288"
  },
  {
    "country": "BA",
    "name": "Mramor",
    "lat": "44.59234",
    "lng": "18.56458"
  },
  {
    "country": "BA",
    "name": "Mostar",
    "lat": "43.34333",
    "lng": "17.80806"
  },
  {
    "country": "BA",
    "name": "Mionica",
    "lat": "44.86646",
    "lng": "18.46603"
  },
  {
    "country": "BA",
    "name": "Milići",
    "lat": "44.17016",
    "lng": "19.09195"
  },
  {
    "country": "BA",
    "name": "Matuzići",
    "lat": "44.68776",
    "lng": "18.04885"
  },
  {
    "country": "BA",
    "name": "Maslovare",
    "lat": "44.56594",
    "lng": "17.53216"
  },
  {
    "country": "BA",
    "name": "Marićka",
    "lat": "44.86801",
    "lng": "16.8551"
  },
  {
    "country": "BA",
    "name": "Mala Kladuša",
    "lat": "45.13443",
    "lng": "15.85217"
  },
  {
    "country": "BA",
    "name": "Mahala",
    "lat": "44.01194",
    "lng": "18.25528"
  },
  {
    "country": "BA",
    "name": "Maglajani",
    "lat": "44.94975",
    "lng": "17.35014"
  },
  {
    "country": "BA",
    "name": "Maglaj",
    "lat": "44.54771",
    "lng": "18.10003"
  },
  {
    "country": "BA",
    "name": "Lukavica",
    "lat": "44.76452",
    "lng": "18.16887"
  },
  {
    "country": "BA",
    "name": "Lukavica",
    "lat": "43.82693",
    "lng": "18.38318"
  },
  {
    "country": "BA",
    "name": "Lukavac",
    "lat": "44.54245",
    "lng": "18.52618"
  },
  {
    "country": "BA",
    "name": "Lopare",
    "lat": "44.63498",
    "lng": "18.8434"
  },
  {
    "country": "BA",
    "name": "Lokvine",
    "lat": "44.20466",
    "lng": "17.85665"
  },
  {
    "country": "BA",
    "name": "Ljubuški",
    "lat": "43.19694",
    "lng": "17.545"
  },
  {
    "country": "BA",
    "name": "Ljubinje",
    "lat": "42.9512",
    "lng": "18.08702"
  },
  {
    "country": "BA",
    "name": "Livno",
    "lat": "43.82695",
    "lng": "17.00746"
  },
  {
    "country": "BA",
    "name": "Široki Brijeg",
    "lat": "43.3829",
    "lng": "17.59416"
  },
  {
    "country": "BA",
    "name": "Laktaši",
    "lat": "44.90857",
    "lng": "17.30135"
  },
  {
    "country": "BA",
    "name": "Kupres",
    "lat": "43.99273",
    "lng": "17.27639"
  },
  {
    "country": "BA",
    "name": "Krupa na Vrbasu",
    "lat": "44.61875",
    "lng": "17.14351"
  },
  {
    "country": "BA",
    "name": "Teočak",
    "lat": "44.60321",
    "lng": "18.97967"
  },
  {
    "country": "BA",
    "name": "Kreševo",
    "lat": "43.86556",
    "lng": "18.04333"
  },
  {
    "country": "BA",
    "name": "Kotor Varoš",
    "lat": "44.61831",
    "lng": "17.37204"
  },
  {
    "country": "BA",
    "name": "Kopači",
    "lat": "43.67833",
    "lng": "19.02845"
  },
  {
    "country": "BA",
    "name": "Kočerin",
    "lat": "43.39005",
    "lng": "17.48552"
  },
  {
    "country": "BA",
    "name": "Kobilja Glava",
    "lat": "43.88188",
    "lng": "18.38864"
  },
  {
    "country": "BA",
    "name": "Klokotnica",
    "lat": "44.7329",
    "lng": "18.18884"
  },
  {
    "country": "BA",
    "name": "Ključ",
    "lat": "44.53251",
    "lng": "16.77682"
  },
  {
    "country": "BA",
    "name": "Kladanj",
    "lat": "44.22669",
    "lng": "18.69274"
  },
  {
    "country": "BA",
    "name": "Kiseljak",
    "lat": "44.48904",
    "lng": "18.56982"
  },
  {
    "country": "BA",
    "name": "Kiseljak",
    "lat": "43.94295",
    "lng": "18.08132"
  },
  {
    "country": "BA",
    "name": "Karadaglije",
    "lat": "44.57065",
    "lng": "18.01775"
  },
  {
    "country": "BA",
    "name": "Kalinovik",
    "lat": "43.50464",
    "lng": "18.44649"
  },
  {
    "country": "BA",
    "name": "Kalesija",
    "lat": "44.43765",
    "lng": "18.90713"
  },
  {
    "country": "BA",
    "name": "Kalenderovci Donji",
    "lat": "44.94673",
    "lng": "17.83785"
  },
  {
    "country": "BA",
    "name": "Kakanj",
    "lat": "44.13311",
    "lng": "18.12292"
  },
  {
    "country": "BA",
    "name": "Jezerski",
    "lat": "44.98172",
    "lng": "16.09447"
  },
  {
    "country": "BA",
    "name": "Jezero",
    "lat": "44.34954",
    "lng": "17.1688"
  },
  {
    "country": "BA",
    "name": "Janja",
    "lat": "44.66554",
    "lng": "19.24691"
  },
  {
    "country": "BA",
    "name": "Jajce",
    "lat": "44.34203",
    "lng": "17.27059"
  },
  {
    "country": "BA",
    "name": "Izačić",
    "lat": "44.87485",
    "lng": "15.78256"
  },
  {
    "country": "BA",
    "name": "Ilijaš",
    "lat": "43.95128",
    "lng": "18.27128"
  },
  {
    "country": "BA",
    "name": "Ilidža",
    "lat": "43.82939",
    "lng": "18.30003"
  },
  {
    "country": "BA",
    "name": "Hreša",
    "lat": "43.878",
    "lng": "18.49699"
  },
  {
    "country": "BA",
    "name": "Han Pijesak",
    "lat": "44.08161",
    "lng": "18.95258"
  },
  {
    "country": "BA",
    "name": "Hadžići",
    "lat": "43.82222",
    "lng": "18.20667"
  },
  {
    "country": "BA",
    "name": "Grude",
    "lat": "43.37208",
    "lng": "17.41449"
  },
  {
    "country": "BA",
    "name": "Gromiljak",
    "lat": "43.96668",
    "lng": "18.05504"
  },
  {
    "country": "BA",
    "name": "Gradačac",
    "lat": "44.87851",
    "lng": "18.42764"
  },
  {
    "country": "BA",
    "name": "Gračanica",
    "lat": "44.70307",
    "lng": "18.3101"
  },
  {
    "country": "BA",
    "name": "Gračanica",
    "lat": "43.73333",
    "lng": "18.28333"
  },
  {
    "country": "BA",
    "name": "Gostovići",
    "lat": "44.41124",
    "lng": "18.17029"
  },
  {
    "country": "BA",
    "name": "Gornji Vakuf",
    "lat": "43.93806",
    "lng": "17.58833"
  },
  {
    "country": "BA",
    "name": "Gornji Ribnik",
    "lat": "44.41752",
    "lng": "16.8169"
  },
  {
    "country": "BA",
    "name": "Gornje Živinice",
    "lat": "44.42921",
    "lng": "18.61667"
  },
  {
    "country": "BA",
    "name": "Gornje Moštre",
    "lat": "44.01911",
    "lng": "18.15477"
  },
  {
    "country": "BA",
    "name": "Gornja Tuzla",
    "lat": "44.55659",
    "lng": "18.76159"
  },
  {
    "country": "BA",
    "name": "Gornja Koprivna",
    "lat": "45.01091",
    "lng": "15.95487"
  },
  {
    "country": "BA",
    "name": "Goražde",
    "lat": "43.66795",
    "lng": "18.97564"
  },
  {
    "country": "BA",
    "name": "Gnojnica",
    "lat": "44.62058",
    "lng": "18.44684"
  },
  {
    "country": "BA",
    "name": "Glamoč",
    "lat": "44.04583",
    "lng": "16.84861"
  },
  {
    "country": "BA",
    "name": "Gacko",
    "lat": "43.16722",
    "lng": "18.53528"
  },
  {
    "country": "BA",
    "name": "Fojnica",
    "lat": "43.95952",
    "lng": "17.90288"
  },
  {
    "country": "BA",
    "name": "Foča",
    "lat": "43.50646",
    "lng": "18.77854"
  },
  {
    "country": "BA",
    "name": "Tomislavgrad",
    "lat": "43.71849",
    "lng": "17.22515"
  },
  {
    "country": "BA",
    "name": "Dubravica",
    "lat": "44.44131",
    "lng": "18.11883"
  },
  {
    "country": "BA",
    "name": "Dubrave Gornje",
    "lat": "44.47229",
    "lng": "18.72685"
  },
  {
    "country": "BA",
    "name": "Dubrave Donje",
    "lat": "44.4806",
    "lng": "18.69709"
  },
  {
    "country": "BA",
    "name": "Drvar",
    "lat": "44.37389",
    "lng": "16.38083"
  },
  {
    "country": "BA",
    "name": "Drinovci",
    "lat": "43.35454",
    "lng": "17.32536"
  },
  {
    "country": "BA",
    "name": "Drinić",
    "lat": "44.50671",
    "lng": "16.46699"
  },
  {
    "country": "BA",
    "name": "Donji Žabar",
    "lat": "44.94317",
    "lng": "18.64673"
  },
  {
    "country": "BA",
    "name": "Donji Vakuf",
    "lat": "44.14361",
    "lng": "17.4"
  },
  {
    "country": "BA",
    "name": "Donji Dubovik",
    "lat": "44.89021",
    "lng": "16.3251"
  },
  {
    "country": "BA",
    "name": "Donja Međiđa",
    "lat": "44.80235",
    "lng": "18.40477"
  },
  {
    "country": "BA",
    "name": "Donja Mahala",
    "lat": "45.04327",
    "lng": "18.66996"
  },
  {
    "country": "BA",
    "name": "Donja Dubica",
    "lat": "45.07559",
    "lng": "18.41023"
  },
  {
    "country": "BA",
    "name": "Domaljevac",
    "lat": "45.0611",
    "lng": "18.58612"
  },
  {
    "country": "BA",
    "name": "Dobrljin",
    "lat": "45.15106",
    "lng": "16.47869"
  },
  {
    "country": "BA",
    "name": "Dobrinje",
    "lat": "44.05008",
    "lng": "18.11958"
  },
  {
    "country": "BA",
    "name": "Doboj",
    "lat": "44.73179",
    "lng": "18.08698"
  },
  {
    "country": "BA",
    "name": "Divičani",
    "lat": "44.36682",
    "lng": "17.32678"
  },
  {
    "country": "BA",
    "name": "Derventa",
    "lat": "44.97839",
    "lng": "17.90779"
  },
  {
    "country": "BA",
    "name": "Čitluk",
    "lat": "43.22861",
    "lng": "17.70083"
  },
  {
    "country": "BA",
    "name": "Cim",
    "lat": "43.35401",
    "lng": "17.78045"
  },
  {
    "country": "BA",
    "name": "Čelinac",
    "lat": "44.73998",
    "lng": "17.31881"
  },
  {
    "country": "BA",
    "name": "Čelić",
    "lat": "44.72524",
    "lng": "18.81474"
  },
  {
    "country": "BA",
    "name": "Čečava",
    "lat": "44.67961",
    "lng": "17.7578"
  },
  {
    "country": "BA",
    "name": "Cazin",
    "lat": "44.96694",
    "lng": "15.94306"
  },
  {
    "country": "BA",
    "name": "Čapljina",
    "lat": "43.12139",
    "lng": "17.68444"
  },
  {
    "country": "BA",
    "name": "Čajniče",
    "lat": "43.55712",
    "lng": "19.07186"
  },
  {
    "country": "BA",
    "name": "Bužim",
    "lat": "45.05361",
    "lng": "16.03254"
  },
  {
    "country": "BA",
    "name": "Busovača",
    "lat": "44.09769",
    "lng": "17.8783"
  },
  {
    "country": "BA",
    "name": "Bugojno",
    "lat": "44.05722",
    "lng": "17.45083"
  },
  {
    "country": "BA",
    "name": "Bronzani Majdan",
    "lat": "44.79237",
    "lng": "16.94039"
  },
  {
    "country": "BA",
    "name": "Brka",
    "lat": "44.82837",
    "lng": "18.7242"
  },
  {
    "country": "BA",
    "name": "Breza",
    "lat": "44.01862",
    "lng": "18.26063"
  },
  {
    "country": "BA",
    "name": "Brčko",
    "lat": "44.86995",
    "lng": "18.81012"
  },
  {
    "country": "BA",
    "name": "Bratunac",
    "lat": "44.18455",
    "lng": "19.33085"
  },
  {
    "country": "BA",
    "name": "Petrovo",
    "lat": "44.62804",
    "lng": "18.35323"
  },
  {
    "country": "BA",
    "name": "Bosansko Grahovo",
    "lat": "44.17944",
    "lng": "16.36389"
  },
  {
    "country": "BA",
    "name": "Šamac",
    "lat": "45.05987",
    "lng": "18.46756"
  },
  {
    "country": "BA",
    "name": "Bosanski Petrovac",
    "lat": "44.55537",
    "lng": "16.36897"
  },
  {
    "country": "BA",
    "name": "Novi Grad",
    "lat": "45.04643",
    "lng": "16.37782"
  },
  {
    "country": "BA",
    "name": "Brod",
    "lat": "45.13747",
    "lng": "17.98722"
  },
  {
    "country": "BA",
    "name": "Bosanska Krupa",
    "lat": "44.8825",
    "lng": "16.15139"
  },
  {
    "country": "BA",
    "name": "Kostajnica",
    "lat": "45.21956",
    "lng": "16.53929"
  },
  {
    "country": "BA",
    "name": "Gradiška",
    "lat": "45.14484",
    "lng": "17.25453"
  },
  {
    "country": "BA",
    "name": "Kozarska Dubica",
    "lat": "45.17667",
    "lng": "16.80944"
  },
  {
    "country": "BA",
    "name": "Blatnica",
    "lat": "44.48677",
    "lng": "17.82278"
  },
  {
    "country": "BA",
    "name": "Blagaj",
    "lat": "43.25822",
    "lng": "17.8897"
  },
  {
    "country": "BA",
    "name": "Bileća",
    "lat": "42.87645",
    "lng": "18.42967"
  },
  {
    "country": "BA",
    "name": "Bila",
    "lat": "43.78265",
    "lng": "16.92676"
  },
  {
    "country": "BA",
    "name": "Bijeljina",
    "lat": "44.75874",
    "lng": "19.21437"
  },
  {
    "country": "BA",
    "name": "Bihać",
    "lat": "44.81694",
    "lng": "15.87083"
  },
  {
    "country": "BA",
    "name": "Berkovići",
    "lat": "43.09472",
    "lng": "18.17028"
  },
  {
    "country": "BA",
    "name": "Banovići",
    "lat": "44.40596",
    "lng": "18.52648"
  },
  {
    "country": "BA",
    "name": "Banja Luka",
    "lat": "44.77842",
    "lng": "17.19386"
  },
  {
    "country": "BA",
    "name": "Balatun",
    "lat": "44.86332",
    "lng": "19.33931"
  },
  {
    "country": "BA",
    "name": "Koran",
    "lat": "43.81038",
    "lng": "18.56999"
  },
  {
    "country": "BA",
    "name": "Jelah",
    "lat": "44.654",
    "lng": "17.95897"
  },
  {
    "country": "BA",
    "name": "Stanari",
    "lat": "44.74475",
    "lng": "17.82714"
  },
  {
    "country": "BA",
    "name": "Dobratići",
    "lat": "44.37792",
    "lng": "17.41426"
  },
  {
    "country": "BA",
    "name": "Podbrdo",
    "lat": "44.44189",
    "lng": "17.01495"
  },
  {
    "country": "BA",
    "name": "Malešići",
    "lat": "44.73824",
    "lng": "18.27335"
  },
  {
    "country": "BA",
    "name": "Svojat",
    "lat": "44.39548",
    "lng": "18.73849"
  },
  {
    "country": "BA",
    "name": "Dvorovi",
    "lat": "44.80753",
    "lng": "19.25999"
  },
  {
    "country": "BA",
    "name": "Knežica",
    "lat": "45.10548",
    "lng": "16.67668"
  },
  {
    "country": "BA",
    "name": "Pjanići",
    "lat": "44.98568",
    "lng": "15.82304"
  },
  {
    "country": "BA",
    "name": "Polje",
    "lat": "43.88014",
    "lng": "18.07452"
  },
  {
    "country": "BA",
    "name": "Ilići",
    "lat": "43.34765",
    "lng": "17.76848"
  },
  {
    "country": "BA",
    "name": "Careva Ćuprija",
    "lat": "44.2663",
    "lng": "18.42961"
  },
  {
    "country": "BA",
    "name": "Starcevica",
    "lat": "44.75708",
    "lng": "17.21178"
  },
  {
    "country": "BA",
    "name": "Čelinac",
    "lat": "44.72453",
    "lng": "17.32431"
  },
  {
    "country": "BA",
    "name": "Hiseti",
    "lat": "44.76111",
    "lng": "17.17944"
  },
  {
    "country": "BA",
    "name": "Piskavica",
    "lat": "44.86717",
    "lng": "16.97464"
  },
  {
    "country": "BA",
    "name": "Lamovita",
    "lat": "44.92018",
    "lng": "16.89933"
  },
  {
    "country": "BA",
    "name": "Tešanjka",
    "lat": "44.67228",
    "lng": "18.01109"
  },
  {
    "country": "BA",
    "name": "Kovači",
    "lat": "44.44874",
    "lng": "18.20521"
  },
  {
    "country": "BA",
    "name": "Liješnica",
    "lat": "44.49497",
    "lng": "18.07644"
  },
  {
    "country": "BA",
    "name": "Ćoralići",
    "lat": "45.00694",
    "lng": "15.87194"
  },
  {
    "country": "BA",
    "name": "Crnići",
    "lat": "43.13156",
    "lng": "17.86452"
  },
  {
    "country": "BA",
    "name": "Barice",
    "lat": "44.54065",
    "lng": "18.48069"
  },
  {
    "country": "BA",
    "name": "Hotonj",
    "lat": "43.89341",
    "lng": "18.37751"
  },
  {
    "country": "BA",
    "name": "Ustikolina",
    "lat": "43.59564",
    "lng": "18.78324"
  },
  {
    "country": "BA",
    "name": "Skokovi",
    "lat": "45.03139",
    "lng": "15.91444"
  },
  {
    "country": "BA",
    "name": "Drežnica",
    "lat": "43.52891",
    "lng": "17.2812"
  },
  {
    "country": "BA",
    "name": "Kačuni",
    "lat": "44.06433",
    "lng": "17.93894"
  },
  {
    "country": "BA",
    "name": "Pajić Polje",
    "lat": "43.97583",
    "lng": "17.5275"
  },
  {
    "country": "BA",
    "name": "Gornja Breza",
    "lat": "44.03758",
    "lng": "18.24564"
  },
  {
    "country": "BA",
    "name": "Todorovo",
    "lat": "45.08833",
    "lng": "15.93083"
  },
  {
    "country": "BA",
    "name": "Konjic",
    "lat": "43.65126",
    "lng": "17.96082"
  },
  {
    "country": "BA",
    "name": "Jablanica",
    "lat": "43.66028",
    "lng": "17.76167"
  },
  {
    "country": "BA",
    "name": "Bijela",
    "lat": "43.60871",
    "lng": "17.95078"
  },
  {
    "country": "BA",
    "name": "Mejdan - Obilićevo",
    "lat": "44.76324",
    "lng": "17.19012"
  },
  {
    "country": "BB",
    "name": "Welchman Hall",
    "lat": "13.18676",
    "lng": "-59.57663"
  },
  {
    "country": "BB",
    "name": "Crane",
    "lat": "13.10487",
    "lng": "-59.44861"
  },
  {
    "country": "BB",
    "name": "Speightstown",
    "lat": "13.25072",
    "lng": "-59.64396"
  },
  {
    "country": "BB",
    "name": "Oistins",
    "lat": "13.07067",
    "lng": "-59.54637"
  },
  {
    "country": "BB",
    "name": "Holetown",
    "lat": "13.18672",
    "lng": "-59.63808"
  },
  {
    "country": "BB",
    "name": "Greenland",
    "lat": "13.25808",
    "lng": "-59.57763"
  },
  {
    "country": "BB",
    "name": "Four Cross Roads",
    "lat": "13.17018",
    "lng": "-59.52186"
  },
  {
    "country": "BB",
    "name": "Checker Hall",
    "lat": "13.28445",
    "lng": "-59.64223"
  },
  {
    "country": "BB",
    "name": "Bridgetown",
    "lat": "13.10732",
    "lng": "-59.62021"
  },
  {
    "country": "BB",
    "name": "Bathsheba",
    "lat": "13.21133",
    "lng": "-59.52596"
  },
  {
    "country": "BD",
    "name": "Thākurgaon",
    "lat": "26.03097",
    "lng": "88.46989"
  },
  {
    "country": "BD",
    "name": "Teknāf",
    "lat": "20.85829",
    "lng": "92.29773"
  },
  {
    "country": "BD",
    "name": "Tungi",
    "lat": "23.89154",
    "lng": "90.40232"
  },
  {
    "country": "BD",
    "name": "Sylhet",
    "lat": "24.89904",
    "lng": "91.87198"
  },
  {
    "country": "BD",
    "name": "Dohār",
    "lat": "23.59311",
    "lng": "90.14251"
  },
  {
    "country": "BD",
    "name": "Jamālpur",
    "lat": "24.91965",
    "lng": "89.94812"
  },
  {
    "country": "BD",
    "name": "Shibganj",
    "lat": "25.00146",
    "lng": "89.32266"
  },
  {
    "country": "BD",
    "name": "Shibganj",
    "lat": "24.68501",
    "lng": "88.15638"
  },
  {
    "country": "BD",
    "name": "Sātkhira",
    "lat": "22.70817",
    "lng": "89.07185"
  },
  {
    "country": "BD",
    "name": "Sirajganj",
    "lat": "24.45771",
    "lng": "89.70802"
  },
  {
    "country": "BD",
    "name": "Netrakona",
    "lat": "24.88352",
    "lng": "90.72898"
  },
  {
    "country": "BD",
    "name": "Narsingdi",
    "lat": "23.92298",
    "lng": "90.71768"
  },
  {
    "country": "BD",
    "name": "Sandwīp",
    "lat": "22.51409",
    "lng": "91.45491"
  },
  {
    "country": "BD",
    "name": "Shāhzādpur",
    "lat": "24.17687",
    "lng": "89.5988"
  },
  {
    "country": "BD",
    "name": "Rāmganj",
    "lat": "23.1006",
    "lng": "90.84989"
  },
  {
    "country": "BD",
    "name": "Rājshāhi",
    "lat": "24.374",
    "lng": "88.60114"
  },
  {
    "country": "BD",
    "name": "Purbadhala",
    "lat": "24.94077",
    "lng": "90.60025"
  },
  {
    "country": "BD",
    "name": "Pirojpur",
    "lat": "22.57965",
    "lng": "89.97521"
  },
  {
    "country": "BD",
    "name": "Panchagarh",
    "lat": "26.33338",
    "lng": "88.55777"
  },
  {
    "country": "BD",
    "name": "Patiya",
    "lat": "22.29543",
    "lng": "91.979"
  },
  {
    "country": "BD",
    "name": "Parbatipur",
    "lat": "25.66369",
    "lng": "88.93093"
  },
  {
    "country": "BD",
    "name": "Nārāyanganj",
    "lat": "23.61352",
    "lng": "90.50298"
  },
  {
    "country": "BD",
    "name": "Nālchiti",
    "lat": "22.63696",
    "lng": "90.27195"
  },
  {
    "country": "BD",
    "name": "Nāgarpur",
    "lat": "24.05783",
    "lng": "89.87696"
  },
  {
    "country": "BD",
    "name": "Nageswari",
    "lat": "25.96817",
    "lng": "89.69153"
  },
  {
    "country": "BD",
    "name": "Mymensingh",
    "lat": "24.75636",
    "lng": "90.40646"
  },
  {
    "country": "BD",
    "name": "Muktāgācha",
    "lat": "24.76484",
    "lng": "90.25698"
  },
  {
    "country": "BD",
    "name": "Mirzāpur",
    "lat": "24.10287",
    "lng": "90.09841"
  },
  {
    "country": "BD",
    "name": "Maulavi Bāzār",
    "lat": "24.48888",
    "lng": "91.77075"
  },
  {
    "country": "BD",
    "name": "Morrelgonj",
    "lat": "22.45566",
    "lng": "89.85584"
  },
  {
    "country": "BD",
    "name": "Mehendiganj",
    "lat": "22.82257",
    "lng": "90.52859"
  },
  {
    "country": "BD",
    "name": "Mathba",
    "lat": "22.28616",
    "lng": "89.95883"
  },
  {
    "country": "BD",
    "name": "Lalmanirhat",
    "lat": "25.91719",
    "lng": "89.44595"
  },
  {
    "country": "BD",
    "name": "Lākshām",
    "lat": "23.24018",
    "lng": "91.12143"
  },
  {
    "country": "BD",
    "name": "Comilla",
    "lat": "23.46186",
    "lng": "91.18503"
  },
  {
    "country": "BD",
    "name": "Rangpur",
    "lat": "25.74664",
    "lng": "89.25166"
  },
  {
    "country": "BD",
    "name": "Kushtia",
    "lat": "23.9028",
    "lng": "89.11943"
  },
  {
    "country": "BD",
    "name": "Kālīganj",
    "lat": "23.40964",
    "lng": "89.13801"
  },
  {
    "country": "BD",
    "name": "Jhingergācha",
    "lat": "23.11134",
    "lng": "89.09061"
  },
  {
    "country": "BD",
    "name": "Joypur Hāt",
    "lat": "25.10147",
    "lng": "89.02734"
  },
  {
    "country": "BD",
    "name": "Ishurdi",
    "lat": "24.12858",
    "lng": "89.06573"
  },
  {
    "country": "BD",
    "name": "Habiganj",
    "lat": "24.38044",
    "lng": "91.41299"
  },
  {
    "country": "BD",
    "name": "Gaurnadi",
    "lat": "22.97372",
    "lng": "90.22376"
  },
  {
    "country": "BD",
    "name": "Gafargaon",
    "lat": "24.432",
    "lng": "90.5585"
  },
  {
    "country": "BD",
    "name": "Feni",
    "lat": "23.0144",
    "lng": "91.3966"
  },
  {
    "country": "BD",
    "name": "Rāipur",
    "lat": "23.0391",
    "lng": "90.76808"
  },
  {
    "country": "BD",
    "name": "Sarankhola",
    "lat": "22.31006",
    "lng": "89.79113"
  },
  {
    "country": "BD",
    "name": "Dhaka",
    "lat": "23.7104",
    "lng": "90.40744"
  },
  {
    "country": "BD",
    "name": "Chilmāri",
    "lat": "25.55613",
    "lng": "89.67097"
  },
  {
    "country": "BD",
    "name": "Chhāgalnāiya",
    "lat": "23.02475",
    "lng": "91.51091"
  },
  {
    "country": "BD",
    "name": "Lālmohan",
    "lat": "22.33774",
    "lng": "90.73708"
  },
  {
    "country": "BD",
    "name": "Khagrachhari",
    "lat": "23.10787",
    "lng": "91.97007"
  },
  {
    "country": "BD",
    "name": "Chhātak",
    "lat": "25.03852",
    "lng": "91.66958"
  },
  {
    "country": "BD",
    "name": "Bhātpāra Abhaynagar",
    "lat": "23.01472",
    "lng": "89.43936"
  },
  {
    "country": "BD",
    "name": "Bherāmāra",
    "lat": "24.02452",
    "lng": "88.99234"
  },
  {
    "country": "BD",
    "name": "Bhairab Bāzār",
    "lat": "24.0524",
    "lng": "90.9764"
  },
  {
    "country": "BD",
    "name": "Bāndarban",
    "lat": "22.19534",
    "lng": "92.21946"
  },
  {
    "country": "BD",
    "name": "Kālia",
    "lat": "23.043",
    "lng": "89.63094"
  },
  {
    "country": "BD",
    "name": "Baniachang",
    "lat": "24.51863",
    "lng": "91.35787"
  },
  {
    "country": "BD",
    "name": "Bājitpur",
    "lat": "24.21623",
    "lng": "90.95002"
  },
  {
    "country": "BD",
    "name": "Bagerhat",
    "lat": "22.65657",
    "lng": "89.79123"
  },
  {
    "country": "BD",
    "name": "Badarganj",
    "lat": "25.67419",
    "lng": "89.05377"
  },
  {
    "country": "BD",
    "name": "Narail",
    "lat": "23.15509",
    "lng": "89.49515"
  },
  {
    "country": "BD",
    "name": "Tungipāra",
    "lat": "22.89983",
    "lng": "89.90326"
  },
  {
    "country": "BD",
    "name": "Sonārgaon",
    "lat": "23.65",
    "lng": "90.61667"
  },
  {
    "country": "BD",
    "name": "Sarishābāri",
    "lat": "24.75127",
    "lng": "89.83126"
  },
  {
    "country": "BD",
    "name": "Sakhipur",
    "lat": "24.31988",
    "lng": "90.16943"
  },
  {
    "country": "BD",
    "name": "Raojān",
    "lat": "22.53511",
    "lng": "91.91919"
  },
  {
    "country": "BD",
    "name": "Phultala",
    "lat": "22.71673",
    "lng": "89.51194"
  },
  {
    "country": "BD",
    "name": "Pālang",
    "lat": "23.21824",
    "lng": "90.35076"
  },
  {
    "country": "BD",
    "name": "Pār Naogaon",
    "lat": "24.80418",
    "lng": "88.94875"
  },
  {
    "country": "BD",
    "name": "Nabīnagar",
    "lat": "23.88791",
    "lng": "90.96792"
  },
  {
    "country": "BD",
    "name": "Lakshmīpur",
    "lat": "22.9443",
    "lng": "90.83005"
  },
  {
    "country": "BD",
    "name": "Kesabpur",
    "lat": "22.90725",
    "lng": "89.21954"
  },
  {
    "country": "BD",
    "name": "Jahedpur",
    "lat": "24.83333",
    "lng": "91.65"
  },
  {
    "country": "BD",
    "name": "Hājīganj",
    "lat": "23.25191",
    "lng": "90.85508"
  },
  {
    "country": "BD",
    "name": "Farīdpur",
    "lat": "23.60612",
    "lng": "89.84064"
  },
  {
    "country": "BD",
    "name": "Dinājpur",
    "lat": "25.62745",
    "lng": "88.63779"
  },
  {
    "country": "BD",
    "name": "Uttar Char Fasson",
    "lat": "22.22647",
    "lng": "90.71275"
  },
  {
    "country": "BD",
    "name": "Chittagong",
    "lat": "22.3384",
    "lng": "91.83168"
  },
  {
    "country": "BD",
    "name": "Char Bhadrāsan",
    "lat": "23.30916",
    "lng": "90.22698"
  },
  {
    "country": "BD",
    "name": "Bera",
    "lat": "24.07821",
    "lng": "89.63262"
  },
  {
    "country": "BD",
    "name": "Burhānuddin",
    "lat": "22.49518",
    "lng": "90.72391"
  },
  {
    "country": "BD",
    "name": "Sātkania",
    "lat": "22.07639",
    "lng": "92.04955"
  },
  {
    "country": "BD",
    "name": "Cox’s Bāzār",
    "lat": "21.43973",
    "lng": "92.00955"
  },
  {
    "country": "BD",
    "name": "Khulna",
    "lat": "22.80979",
    "lng": "89.56439"
  },
  {
    "country": "BD",
    "name": "Bhola",
    "lat": "22.68759",
    "lng": "90.64403"
  },
  {
    "country": "BD",
    "name": "Barisāl",
    "lat": "22.70497",
    "lng": "90.37013"
  },
  {
    "country": "BD",
    "name": "Jessore",
    "lat": "23.16971",
    "lng": "89.21371"
  },
  {
    "country": "BD",
    "name": "Pābna",
    "lat": "24.00644",
    "lng": "89.2372"
  },
  {
    "country": "BD",
    "name": "Tāngāil",
    "lat": "24.24984",
    "lng": "89.91655"
  },
  {
    "country": "BD",
    "name": "Bogra",
    "lat": "24.85098",
    "lng": "89.37108"
  },
  {
    "country": "BD",
    "name": "Pīrgaaj",
    "lat": "25.85587",
    "lng": "88.35943"
  },
  {
    "country": "BD",
    "name": "Nawābganj",
    "lat": "24.59025",
    "lng": "88.27444"
  },
  {
    "country": "BD",
    "name": "Mādārīpur",
    "lat": "23.17097",
    "lng": "90.20935"
  },
  {
    "country": "BD",
    "name": "Sherpur",
    "lat": "25.01881",
    "lng": "90.01751"
  },
  {
    "country": "BD",
    "name": "Kishorganj",
    "lat": "24.43944",
    "lng": "90.78291"
  },
  {
    "country": "BD",
    "name": "Manikchari",
    "lat": "22.83957",
    "lng": "91.84128"
  },
  {
    "country": "BD",
    "name": "Bhāndāria",
    "lat": "22.48898",
    "lng": "90.06273"
  },
  {
    "country": "BD",
    "name": "Fatikchari",
    "lat": "22.68768",
    "lng": "91.78123"
  },
  {
    "country": "BD",
    "name": "Saidpur",
    "lat": "25.77769",
    "lng": "88.89169"
  },
  {
    "country": "BD",
    "name": "Puthia",
    "lat": "24.36537",
    "lng": "88.83431"
  },
  {
    "country": "BD",
    "name": "Natore",
    "lat": "24.41112",
    "lng": "88.98673"
  },
  {
    "country": "BD",
    "name": "Nowlamary",
    "lat": "23.67346",
    "lng": "88.98885"
  },
  {
    "country": "BD",
    "name": "Magura",
    "lat": "23.48702",
    "lng": "89.41592"
  },
  {
    "country": "BD",
    "name": "Azimpur",
    "lat": "23.7298",
    "lng": "90.3854"
  },
  {
    "country": "BD",
    "name": "Gaibandha",
    "lat": "25.3293",
    "lng": "89.5438"
  },
  {
    "country": "BD",
    "name": "Mahasthangarh",
    "lat": "24.96111",
    "lng": "89.34278"
  },
  {
    "country": "BD",
    "name": "Paltan",
    "lat": "23.73625",
    "lng": "90.41426"
  },
  {
    "country": "BD",
    "name": "Parvez Ali Hossain",
    "lat": "23.78758",
    "lng": "90.16487"
  },
  {
    "country": "BD",
    "name": "Khanbaniara",
    "lat": "23.78225",
    "lng": "90.18382"
  },
  {
    "country": "BD",
    "name": "Char Golora",
    "lat": "23.82037",
    "lng": "90.12175"
  },
  {
    "country": "BD",
    "name": "Parvez Ali Family",
    "lat": "23.81741",
    "lng": "90.11921"
  },
  {
    "country": "BD",
    "name": "Joymontop",
    "lat": "23.78789",
    "lng": "90.16472"
  },
  {
    "country": "BE",
    "name": "Zwijndrecht",
    "lat": "51.21979",
    "lng": "4.32664"
  },
  {
    "country": "BE",
    "name": "Zwevegem",
    "lat": "50.81268",
    "lng": "3.33848"
  },
  {
    "country": "BE",
    "name": "Zutendaal",
    "lat": "50.93306",
    "lng": "5.5753"
  },
  {
    "country": "BE",
    "name": "Zulte",
    "lat": "50.91954",
    "lng": "3.44859"
  },
  {
    "country": "BE",
    "name": "Zuienkerke",
    "lat": "51.26511",
    "lng": "3.15506"
  },
  {
    "country": "BE",
    "name": "Zoutleeuw",
    "lat": "50.83316",
    "lng": "5.10376"
  },
  {
    "country": "BE",
    "name": "Zottegem",
    "lat": "50.86955",
    "lng": "3.81052"
  },
  {
    "country": "BE",
    "name": "Zonnebeke",
    "lat": "50.8726",
    "lng": "2.98725"
  },
  {
    "country": "BE",
    "name": "Zonhoven",
    "lat": "50.99064",
    "lng": "5.36819"
  },
  {
    "country": "BE",
    "name": "Zomergem",
    "lat": "51.11994",
    "lng": "3.56496"
  },
  {
    "country": "BE",
    "name": "Zoersel",
    "lat": "51.26825",
    "lng": "4.71296"
  },
  {
    "country": "BE",
    "name": "Zingem",
    "lat": "50.90409",
    "lng": "3.65305"
  },
  {
    "country": "BE",
    "name": "Zemst",
    "lat": "50.98318",
    "lng": "4.46079"
  },
  {
    "country": "BE",
    "name": "Zelzate",
    "lat": "51.18963",
    "lng": "3.80777"
  },
  {
    "country": "BE",
    "name": "Zele",
    "lat": "51.06566",
    "lng": "4.0403"
  },
  {
    "country": "BE",
    "name": "Zeebrugge",
    "lat": "51.32901",
    "lng": "3.18188"
  },
  {
    "country": "BE",
    "name": "Zedelgem",
    "lat": "51.14236",
    "lng": "3.1368"
  },
  {
    "country": "BE",
    "name": "Zaventem",
    "lat": "50.88365",
    "lng": "4.47298"
  },
  {
    "country": "BE",
    "name": "Zandhoven",
    "lat": "51.21488",
    "lng": "4.66164"
  },
  {
    "country": "BE",
    "name": "Yvoir",
    "lat": "50.3279",
    "lng": "4.88059"
  },
  {
    "country": "BE",
    "name": "Wuustwezel",
    "lat": "51.39214",
    "lng": "4.59546"
  },
  {
    "country": "BE",
    "name": "Wommelgem",
    "lat": "51.20452",
    "lng": "4.5225"
  },
  {
    "country": "BE",
    "name": "Wingene",
    "lat": "51.05782",
    "lng": "3.27359"
  },
  {
    "country": "BE",
    "name": "Willebroek",
    "lat": "51.06041",
    "lng": "4.36019"
  },
  {
    "country": "BE",
    "name": "Wijnegem",
    "lat": "51.22787",
    "lng": "4.51895"
  },
  {
    "country": "BE",
    "name": "Wielsbeke",
    "lat": "50.9",
    "lng": "3.36667"
  },
  {
    "country": "BE",
    "name": "Wichelen",
    "lat": "51.00526",
    "lng": "3.97683"
  },
  {
    "country": "BE",
    "name": "Wezembeek-Oppem",
    "lat": "50.8395",
    "lng": "4.49427"
  },
  {
    "country": "BE",
    "name": "Wevelgem",
    "lat": "50.8",
    "lng": "3.16667"
  },
  {
    "country": "BE",
    "name": "Wetteren",
    "lat": "51.00526",
    "lng": "3.88341"
  },
  {
    "country": "BE",
    "name": "Westerlo",
    "lat": "51.09049",
    "lng": "4.91544"
  },
  {
    "country": "BE",
    "name": "Wervik",
    "lat": "50.78069",
    "lng": "3.03854"
  },
  {
    "country": "BE",
    "name": "Wenduine",
    "lat": "51.2983",
    "lng": "3.08213"
  },
  {
    "country": "BE",
    "name": "Wemmel",
    "lat": "50.90812",
    "lng": "4.30613"
  },
  {
    "country": "BE",
    "name": "Wellin",
    "lat": "50.08133",
    "lng": "5.11413"
  },
  {
    "country": "BE",
    "name": "Wellen",
    "lat": "50.84096",
    "lng": "5.33867"
  },
  {
    "country": "BE",
    "name": "Welkenraedt",
    "lat": "50.6605",
    "lng": "5.97034"
  },
  {
    "country": "BE",
    "name": "Wavre",
    "lat": "50.71717",
    "lng": "4.60138"
  },
  {
    "country": "BE",
    "name": "Waterloo",
    "lat": "50.71469",
    "lng": "4.3991"
  },
  {
    "country": "BE",
    "name": "Wasseiges",
    "lat": "50.62186",
    "lng": "5.00528"
  },
  {
    "country": "BE",
    "name": "Waremme",
    "lat": "50.6976",
    "lng": "5.25524"
  },
  {
    "country": "BE",
    "name": "Waregem",
    "lat": "50.88898",
    "lng": "3.42756"
  },
  {
    "country": "BE",
    "name": "Wanze",
    "lat": "50.53907",
    "lng": "5.20846"
  },
  {
    "country": "BE",
    "name": "Walhain-Saint-Paul",
    "lat": "50.62627",
    "lng": "4.69837"
  },
  {
    "country": "BE",
    "name": "Walcourt",
    "lat": "50.25401",
    "lng": "4.43796"
  },
  {
    "country": "BE",
    "name": "Waimes",
    "lat": "50.41488",
    "lng": "6.11207"
  },
  {
    "country": "BE",
    "name": "Wachtebeke",
    "lat": "51.16852",
    "lng": "3.87183"
  },
  {
    "country": "BE",
    "name": "Waasmunster",
    "lat": "51.10572",
    "lng": "4.08573"
  },
  {
    "country": "BE",
    "name": "Waarschoot",
    "lat": "51.1525",
    "lng": "3.605"
  },
  {
    "country": "BE",
    "name": "Vosselaar",
    "lat": "51.30856",
    "lng": "4.8896"
  },
  {
    "country": "BE",
    "name": "Vorselaar",
    "lat": "51.20243",
    "lng": "4.77259"
  },
  {
    "country": "BE",
    "name": "Visé",
    "lat": "50.7376",
    "lng": "5.69907"
  },
  {
    "country": "BE",
    "name": "Virton",
    "lat": "49.56824",
    "lng": "5.53259"
  },
  {
    "country": "BE",
    "name": "Vilvoorde",
    "lat": "50.92814",
    "lng": "4.42938"
  },
  {
    "country": "BE",
    "name": "Villers-le-Bouillet",
    "lat": "50.57708",
    "lng": "5.25945"
  },
  {
    "country": "BE",
    "name": "Villers-la-Ville",
    "lat": "50.56667",
    "lng": "4.51667"
  },
  {
    "country": "BE",
    "name": "Vielsalm",
    "lat": "50.28407",
    "lng": "5.91502"
  },
  {
    "country": "BE",
    "name": "Veurne",
    "lat": "51.07316",
    "lng": "2.66803"
  },
  {
    "country": "BE",
    "name": "Verviers",
    "lat": "50.58907",
    "lng": "5.86241"
  },
  {
    "country": "BE",
    "name": "Verlaine",
    "lat": "50.60743",
    "lng": "5.3174"
  },
  {
    "country": "BE",
    "name": "Vaux-sur-Sûre",
    "lat": "49.911",
    "lng": "5.57848"
  },
  {
    "country": "BE",
    "name": "Turnhout",
    "lat": "51.32254",
    "lng": "4.94471"
  },
  {
    "country": "BE",
    "name": "Tubize",
    "lat": "50.69059",
    "lng": "4.2009"
  },
  {
    "country": "BE",
    "name": "Trooz",
    "lat": "50.57026",
    "lng": "5.69521"
  },
  {
    "country": "BE",
    "name": "Trois-Ponts",
    "lat": "50.37128",
    "lng": "5.87146"
  },
  {
    "country": "BE",
    "name": "Tremelo",
    "lat": "50.99231",
    "lng": "4.70807"
  },
  {
    "country": "BE",
    "name": "Tournai",
    "lat": "50.60715",
    "lng": "3.38932"
  },
  {
    "country": "BE",
    "name": "Torhout",
    "lat": "51.0656",
    "lng": "3.10085"
  },
  {
    "country": "BE",
    "name": "Tongeren",
    "lat": "50.78054",
    "lng": "5.46484"
  },
  {
    "country": "BE",
    "name": "Tintigny",
    "lat": "49.68326",
    "lng": "5.51349"
  },
  {
    "country": "BE",
    "name": "Tinlot",
    "lat": "50.47493",
    "lng": "5.37755"
  },
  {
    "country": "BE",
    "name": "Tienen",
    "lat": "50.80745",
    "lng": "4.9378"
  },
  {
    "country": "BE",
    "name": "Tielt",
    "lat": "50.99931",
    "lng": "3.32707"
  },
  {
    "country": "BE",
    "name": "Thuin",
    "lat": "50.33933",
    "lng": "4.28604"
  },
  {
    "country": "BE",
    "name": "Theux",
    "lat": "50.53323",
    "lng": "5.81245"
  },
  {
    "country": "BE",
    "name": "Tessenderlo",
    "lat": "51.06513",
    "lng": "5.08856"
  },
  {
    "country": "BE",
    "name": "Tervuren",
    "lat": "50.82372",
    "lng": "4.51418"
  },
  {
    "country": "BE",
    "name": "Ternat",
    "lat": "50.86654",
    "lng": "4.16682"
  },
  {
    "country": "BE",
    "name": "Tenneville",
    "lat": "50.09501",
    "lng": "5.52895"
  },
  {
    "country": "BE",
    "name": "Temse",
    "lat": "51.12794",
    "lng": "4.21372"
  },
  {
    "country": "BE",
    "name": "Tellin",
    "lat": "50.08038",
    "lng": "5.21638"
  },
  {
    "country": "BE",
    "name": "Stoumont",
    "lat": "50.40667",
    "lng": "5.80838"
  },
  {
    "country": "BE",
    "name": "Stekene",
    "lat": "51.2099",
    "lng": "4.03651"
  },
  {
    "country": "BE",
    "name": "Steenokkerzeel",
    "lat": "50.91851",
    "lng": "4.50989"
  },
  {
    "country": "BE",
    "name": "Stavelot",
    "lat": "50.395",
    "lng": "5.93124"
  },
  {
    "country": "BE",
    "name": "Staden",
    "lat": "50.97456",
    "lng": "3.01469"
  },
  {
    "country": "BE",
    "name": "Stabroek",
    "lat": "51.33189",
    "lng": "4.37127"
  },
  {
    "country": "BE",
    "name": "Sprimont",
    "lat": "50.50922",
    "lng": "5.6595"
  },
  {
    "country": "BE",
    "name": "Spa",
    "lat": "50.48375",
    "lng": "5.86674"
  },
  {
    "country": "BE",
    "name": "Soumagne",
    "lat": "50.61385",
    "lng": "5.74679"
  },
  {
    "country": "BE",
    "name": "Somme-Leuze",
    "lat": "50.33699",
    "lng": "5.36705"
  },
  {
    "country": "BE",
    "name": "Sombreffe",
    "lat": "50.52865",
    "lng": "4.60087"
  },
  {
    "country": "BE",
    "name": "Soignies",
    "lat": "50.57904",
    "lng": "4.07129"
  },
  {
    "country": "BE",
    "name": "Sint-Truiden",
    "lat": "50.81679",
    "lng": "5.18647"
  },
  {
    "country": "BE",
    "name": "Sint-Pieters-Leeuw",
    "lat": "50.77926",
    "lng": "4.24355"
  },
  {
    "country": "BE",
    "name": "Sint-Niklaas",
    "lat": "51.16509",
    "lng": "4.1437"
  },
  {
    "country": "BE",
    "name": "Sint-Martens-Lennik",
    "lat": "50.81158",
    "lng": "4.16965"
  },
  {
    "country": "BE",
    "name": "Sint-Martens-Latem",
    "lat": "51.01459",
    "lng": "3.63779"
  },
  {
    "country": "BE",
    "name": "Sint-Maria-Lierde",
    "lat": "50.82172",
    "lng": "3.84814"
  },
  {
    "country": "BE",
    "name": "Sint-Lievens-Houtem",
    "lat": "50.9197",
    "lng": "3.86225"
  },
  {
    "country": "BE",
    "name": "Sint-Laureins",
    "lat": "51.24202",
    "lng": "3.52441"
  },
  {
    "country": "BE",
    "name": "Sint-Kruis",
    "lat": "51.21399",
    "lng": "3.24949"
  },
  {
    "country": "BE",
    "name": "Sint-Katelijne-Waver",
    "lat": "51.06691",
    "lng": "4.53469"
  },
  {
    "country": "BE",
    "name": "Sint-Gillis-Waas",
    "lat": "51.21914",
    "lng": "4.12374"
  },
  {
    "country": "BE",
    "name": "Sint-Genesius-Rode",
    "lat": "50.74645",
    "lng": "4.35754"
  },
  {
    "country": "BE",
    "name": "Sint-Amands",
    "lat": "51.05645",
    "lng": "4.20957"
  },
  {
    "country": "BE",
    "name": "Silly",
    "lat": "50.64877",
    "lng": "3.92363"
  },
  {
    "country": "BE",
    "name": "Seraing",
    "lat": "50.58362",
    "lng": "5.50115"
  },
  {
    "country": "BE",
    "name": "Seneffe",
    "lat": "50.53135",
    "lng": "4.26301"
  },
  {
    "country": "BE",
    "name": "Schoten",
    "lat": "51.25251",
    "lng": "4.50268"
  },
  {
    "country": "BE",
    "name": "Schilde",
    "lat": "51.24107",
    "lng": "4.58336"
  },
  {
    "country": "BE",
    "name": "Schelle",
    "lat": "51.12615",
    "lng": "4.34114"
  },
  {
    "country": "BE",
    "name": "Saint-Yvon",
    "lat": "50.74335",
    "lng": "2.90992"
  },
  {
    "country": "BE",
    "name": "Saint-Vith",
    "lat": "50.28146",
    "lng": "6.12724"
  },
  {
    "country": "BE",
    "name": "Saint-Nicolas",
    "lat": "50.62837",
    "lng": "5.53243"
  },
  {
    "country": "BE",
    "name": "Saint-Léger",
    "lat": "49.61196",
    "lng": "5.65688"
  },
  {
    "country": "BE",
    "name": "Saint-Hubert",
    "lat": "50.02668",
    "lng": "5.37401"
  },
  {
    "country": "BE",
    "name": "Saint-Ghislain",
    "lat": "50.44816",
    "lng": "3.81886"
  },
  {
    "country": "BE",
    "name": "Sainte-Ode",
    "lat": "50.01723",
    "lng": "5.51926"
  },
  {
    "country": "BE",
    "name": "Rumst",
    "lat": "51.08153",
    "lng": "4.42217"
  },
  {
    "country": "BE",
    "name": "Rumes",
    "lat": "50.5545",
    "lng": "3.30535"
  },
  {
    "country": "BE",
    "name": "Ruiselede",
    "lat": "51.04039",
    "lng": "3.39416"
  },
  {
    "country": "BE",
    "name": "Rouvroy",
    "lat": "49.53771",
    "lng": "5.49031"
  },
  {
    "country": "BE",
    "name": "Rotselaar",
    "lat": "50.95302",
    "lng": "4.71665"
  },
  {
    "country": "BE",
    "name": "Ronse",
    "lat": "50.74574",
    "lng": "3.6005"
  },
  {
    "country": "BE",
    "name": "Mons-lez-Liège",
    "lat": "50.61667",
    "lng": "5.46667"
  },
  {
    "country": "BE",
    "name": "Roeulx",
    "lat": "50.50365",
    "lng": "4.11163"
  },
  {
    "country": "BE",
    "name": "Roeselare",
    "lat": "50.94653",
    "lng": "3.12269"
  },
  {
    "country": "BE",
    "name": "Rochefort",
    "lat": "50.1631",
    "lng": "5.2216"
  },
  {
    "country": "BE",
    "name": "Rixensart",
    "lat": "50.71229",
    "lng": "4.52529"
  },
  {
    "country": "BE",
    "name": "Rijkevorsel",
    "lat": "51.34795",
    "lng": "4.76053"
  },
  {
    "country": "BE",
    "name": "Riemst",
    "lat": "50.80995",
    "lng": "5.60131"
  },
  {
    "country": "BE",
    "name": "Retie",
    "lat": "51.26652",
    "lng": "5.08242"
  },
  {
    "country": "BE",
    "name": "Rendeux",
    "lat": "50.23423",
    "lng": "5.50414"
  },
  {
    "country": "BE",
    "name": "Remicourt",
    "lat": "50.68069",
    "lng": "5.32785"
  },
  {
    "country": "BE",
    "name": "Rebecq-Rognon",
    "lat": "50.65147",
    "lng": "4.10683"
  },
  {
    "country": "BE",
    "name": "Ravels",
    "lat": "51.37274",
    "lng": "4.9921"
  },
  {
    "country": "BE",
    "name": "Ranst",
    "lat": "51.18983",
    "lng": "4.56533"
  },
  {
    "country": "BE",
    "name": "Ramillies",
    "lat": "50.63395",
    "lng": "4.90119"
  },
  {
    "country": "BE",
    "name": "Raeren",
    "lat": "50.6672",
    "lng": "6.11535"
  },
  {
    "country": "BE",
    "name": "Quiévrain",
    "lat": "50.40737",
    "lng": "3.68351"
  },
  {
    "country": "BE",
    "name": "Quévy-le-Petit",
    "lat": "50.36879",
    "lng": "3.93602"
  },
  {
    "country": "BE",
    "name": "Quaregnon",
    "lat": "50.44067",
    "lng": "3.8653"
  },
  {
    "country": "BE",
    "name": "Puurs",
    "lat": "51.07409",
    "lng": "4.28844"
  },
  {
    "country": "BE",
    "name": "Putte",
    "lat": "51.05337",
    "lng": "4.63263"
  },
  {
    "country": "BE",
    "name": "Profondeville",
    "lat": "50.37581",
    "lng": "4.86506"
  },
  {
    "country": "BE",
    "name": "Poperinge",
    "lat": "50.85386",
    "lng": "2.72659"
  },
  {
    "country": "BE",
    "name": "Pont-à-Celles",
    "lat": "50.50518",
    "lng": "4.36887"
  },
  {
    "country": "BE",
    "name": "Plombières",
    "lat": "50.73656",
    "lng": "5.95922"
  },
  {
    "country": "BE",
    "name": "Pittem",
    "lat": "50.99279",
    "lng": "3.26317"
  },
  {
    "country": "BE",
    "name": "Philippeville",
    "lat": "50.19612",
    "lng": "4.54374"
  },
  {
    "country": "BE",
    "name": "Perwez",
    "lat": "50.62426",
    "lng": "4.81354"
  },
  {
    "country": "BE",
    "name": "Péruwelz",
    "lat": "50.50819",
    "lng": "3.59373"
  },
  {
    "country": "BE",
    "name": "Perre",
    "lat": "50.88914",
    "lng": "3.86098"
  },
  {
    "country": "BE",
    "name": "Pepinster",
    "lat": "50.57375",
    "lng": "5.8049"
  },
  {
    "country": "BE",
    "name": "Pepingen",
    "lat": "50.75922",
    "lng": "4.15983"
  },
  {
    "country": "BE",
    "name": "Peer",
    "lat": "51.1303",
    "lng": "5.45952"
  },
  {
    "country": "BE",
    "name": "Pecq",
    "lat": "50.68619",
    "lng": "3.33789"
  },
  {
    "country": "BE",
    "name": "Paliseul",
    "lat": "49.90395",
    "lng": "5.13537"
  },
  {
    "country": "BE",
    "name": "Overpelt",
    "lat": "51.21038",
    "lng": "5.41557"
  },
  {
    "country": "BE",
    "name": "Overijse",
    "lat": "50.77436",
    "lng": "4.53461"
  },
  {
    "country": "BE",
    "name": "Oupeye",
    "lat": "50.71184",
    "lng": "5.6468"
  },
  {
    "country": "BE",
    "name": "Ouffet",
    "lat": "50.4387",
    "lng": "5.4657"
  },
  {
    "country": "BE",
    "name": "Oud-Turnhout",
    "lat": "51.31978",
    "lng": "4.9841"
  },
  {
    "country": "BE",
    "name": "Oud-Heverlee",
    "lat": "50.83522",
    "lng": "4.66421"
  },
  {
    "country": "BE",
    "name": "Oudenburg",
    "lat": "51.18489",
    "lng": "3.00035"
  },
  {
    "country": "BE",
    "name": "Oudenaarde",
    "lat": "50.85168",
    "lng": "3.60891"
  },
  {
    "country": "BE",
    "name": "Ottignies",
    "lat": "50.66535",
    "lng": "4.56679"
  },
  {
    "country": "BE",
    "name": "Oreye",
    "lat": "50.71749",
    "lng": "5.3488"
  },
  {
    "country": "BE",
    "name": "Opwijk",
    "lat": "50.96724",
    "lng": "4.18442"
  },
  {
    "country": "BE",
    "name": "Opglabbeek",
    "lat": "51.04258",
    "lng": "5.58346"
  },
  {
    "country": "BE",
    "name": "Oostrozebeke",
    "lat": "50.92093",
    "lng": "3.33799"
  },
  {
    "country": "BE",
    "name": "Oostmalle",
    "lat": "51.3",
    "lng": "4.73333"
  },
  {
    "country": "BE",
    "name": "Oostkamp",
    "lat": "51.15432",
    "lng": "3.23128"
  },
  {
    "country": "BE",
    "name": "Oosterzele",
    "lat": "50.95261",
    "lng": "3.79826"
  },
  {
    "country": "BE",
    "name": "Ostend",
    "lat": "51.21551",
    "lng": "2.927"
  },
  {
    "country": "BE",
    "name": "Onhaye",
    "lat": "50.24148",
    "lng": "4.84069"
  },
  {
    "country": "BE",
    "name": "Olne",
    "lat": "50.58994",
    "lng": "5.74662"
  },
  {
    "country": "BE",
    "name": "Olen",
    "lat": "51.14391",
    "lng": "4.8598"
  },
  {
    "country": "BE",
    "name": "Ohey",
    "lat": "50.4357",
    "lng": "5.12375"
  },
  {
    "country": "BE",
    "name": "Noville-les-Bois",
    "lat": "50.55702",
    "lng": "4.98466"
  },
  {
    "country": "BE",
    "name": "Nivelles",
    "lat": "50.59833",
    "lng": "4.32848"
  },
  {
    "country": "BE",
    "name": "Ninove",
    "lat": "50.82776",
    "lng": "4.02657"
  },
  {
    "country": "BE",
    "name": "Nijlen",
    "lat": "51.16096",
    "lng": "4.67008"
  },
  {
    "country": "BE",
    "name": "Nieuwpoort",
    "lat": "51.13008",
    "lng": "2.75135"
  },
  {
    "country": "BE",
    "name": "Nieuwerkerken",
    "lat": "50.8638",
    "lng": "5.19467"
  },
  {
    "country": "BE",
    "name": "Niel",
    "lat": "51.11096",
    "lng": "4.33428"
  },
  {
    "country": "BE",
    "name": "Nevele",
    "lat": "51.03531",
    "lng": "3.54574"
  },
  {
    "country": "BE",
    "name": "Neufchâteau",
    "lat": "49.84074",
    "lng": "5.43535"
  },
  {
    "country": "BE",
    "name": "Neerpelt",
    "lat": "51.22807",
    "lng": "5.4427"
  },
  {
    "country": "BE",
    "name": "Nazareth",
    "lat": "50.95686",
    "lng": "3.59425"
  },
  {
    "country": "BE",
    "name": "Nassogne",
    "lat": "50.12849",
    "lng": "5.34274"
  },
  {
    "country": "BE",
    "name": "Nandrin",
    "lat": "50.50675",
    "lng": "5.41905"
  },
  {
    "country": "BE",
    "name": "Namur",
    "lat": "50.4669",
    "lng": "4.86746"
  },
  {
    "country": "BE",
    "name": "Musson",
    "lat": "49.55835",
    "lng": "5.70525"
  },
  {
    "country": "BE",
    "name": "Mouscron",
    "lat": "50.74497",
    "lng": "3.20639"
  },
  {
    "country": "BE",
    "name": "Mortsel",
    "lat": "51.16697",
    "lng": "4.45127"
  },
  {
    "country": "BE",
    "name": "Morlanwelz-Mariemont",
    "lat": "50.45502",
    "lng": "4.24519"
  },
  {
    "country": "BE",
    "name": "Moorslede",
    "lat": "50.8919",
    "lng": "3.06117"
  },
  {
    "country": "BE",
    "name": "Mont-Saint-Guibert",
    "lat": "50.63427",
    "lng": "4.61061"
  },
  {
    "country": "BE",
    "name": "Mons",
    "lat": "50.45413",
    "lng": "3.95229"
  },
  {
    "country": "BE",
    "name": "Momignies",
    "lat": "50.0271",
    "lng": "4.16519"
  },
  {
    "country": "BE",
    "name": "Mol",
    "lat": "51.19188",
    "lng": "5.11662"
  },
  {
    "country": "BE",
    "name": "Moerbeke",
    "lat": "51.17409",
    "lng": "3.93001"
  },
  {
    "country": "BE",
    "name": "Modave",
    "lat": "50.44614",
    "lng": "5.29532"
  },
  {
    "country": "BE",
    "name": "Middelkerke",
    "lat": "51.18532",
    "lng": "2.82077"
  },
  {
    "country": "BE",
    "name": "Meulebeke",
    "lat": "50.95136",
    "lng": "3.28804"
  },
  {
    "country": "BE",
    "name": "Mettet",
    "lat": "50.32119",
    "lng": "4.66232"
  },
  {
    "country": "BE",
    "name": "Messancy",
    "lat": "49.59201",
    "lng": "5.81879"
  },
  {
    "country": "BE",
    "name": "Merksplas",
    "lat": "51.35851",
    "lng": "4.86513"
  },
  {
    "country": "BE",
    "name": "Merelbeke",
    "lat": "50.99447",
    "lng": "3.74621"
  },
  {
    "country": "BE",
    "name": "Merchtem",
    "lat": "50.95129",
    "lng": "4.23197"
  },
  {
    "country": "BE",
    "name": "Merbes-le-Château",
    "lat": "50.32449",
    "lng": "4.16489"
  },
  {
    "country": "BE",
    "name": "Menen",
    "lat": "50.79722",
    "lng": "3.12245"
  },
  {
    "country": "BE",
    "name": "Melle",
    "lat": "51.00232",
    "lng": "3.80526"
  },
  {
    "country": "BE",
    "name": "Meix-devant-Virton",
    "lat": "49.60581",
    "lng": "5.48045"
  },
  {
    "country": "BE",
    "name": "Meise",
    "lat": "50.93934",
    "lng": "4.32655"
  },
  {
    "country": "BE",
    "name": "Meerhout",
    "lat": "51.1321",
    "lng": "5.07842"
  },
  {
    "country": "BE",
    "name": "Mechelen",
    "lat": "51.02574",
    "lng": "4.47762"
  },
  {
    "country": "BE",
    "name": "Martelange",
    "lat": "49.83195",
    "lng": "5.73655"
  },
  {
    "country": "BE",
    "name": "Marchin",
    "lat": "50.46707",
    "lng": "5.2428"
  },
  {
    "country": "BE",
    "name": "Marche-en-Famenne",
    "lat": "50.22678",
    "lng": "5.34416"
  },
  {
    "country": "BE",
    "name": "Manhay",
    "lat": "50.29219",
    "lng": "5.67562"
  },
  {
    "country": "BE",
    "name": "Manage",
    "lat": "50.50312",
    "lng": "4.23589"
  },
  {
    "country": "BE",
    "name": "Malmédy",
    "lat": "50.42686",
    "lng": "6.02794"
  },
  {
    "country": "BE",
    "name": "Maldegem",
    "lat": "51.20737",
    "lng": "3.44511"
  },
  {
    "country": "BE",
    "name": "Machelen",
    "lat": "50.91061",
    "lng": "4.44174"
  },
  {
    "country": "BE",
    "name": "Maasmechelen",
    "lat": "50.96545",
    "lng": "5.69452"
  },
  {
    "country": "BE",
    "name": "Maaseik",
    "lat": "51.09802",
    "lng": "5.78379"
  },
  {
    "country": "BE",
    "name": "Lummen",
    "lat": "50.98772",
    "lng": "5.19121"
  },
  {
    "country": "BE",
    "name": "Lubbeek",
    "lat": "50.88278",
    "lng": "4.83896"
  },
  {
    "country": "BE",
    "name": "Lovendegem",
    "lat": "51.10168",
    "lng": "3.61298"
  },
  {
    "country": "BE",
    "name": "Louvain-la-Neuve",
    "lat": "50.66829",
    "lng": "4.61443"
  },
  {
    "country": "BE",
    "name": "Lontzen",
    "lat": "50.68126",
    "lng": "6.00712"
  },
  {
    "country": "BE",
    "name": "Londerzeel",
    "lat": "51.00468",
    "lng": "4.30304"
  },
  {
    "country": "BE",
    "name": "Lommel",
    "lat": "51.23074",
    "lng": "5.31349"
  },
  {
    "country": "BE",
    "name": "Lokeren",
    "lat": "51.10364",
    "lng": "3.99339"
  },
  {
    "country": "BE",
    "name": "Lochristi",
    "lat": "51.09644",
    "lng": "3.83194"
  },
  {
    "country": "BE",
    "name": "Lobbes",
    "lat": "50.35258",
    "lng": "4.26716"
  },
  {
    "country": "BE",
    "name": "Lint",
    "lat": "51.12707",
    "lng": "4.49669"
  },
  {
    "country": "BE",
    "name": "Linkebeek",
    "lat": "50.76781",
    "lng": "4.33688"
  },
  {
    "country": "BE",
    "name": "Lincent",
    "lat": "50.71222",
    "lng": "5.03654"
  },
  {
    "country": "BE",
    "name": "Limbourg",
    "lat": "50.61222",
    "lng": "5.9412"
  },
  {
    "country": "BE",
    "name": "Lille",
    "lat": "51.24197",
    "lng": "4.82313"
  },
  {
    "country": "BE",
    "name": "Lier",
    "lat": "51.13128",
    "lng": "4.57041"
  },
  {
    "country": "BE",
    "name": "Lierneux",
    "lat": "50.28477",
    "lng": "5.79236"
  },
  {
    "country": "BE",
    "name": "Liège",
    "lat": "50.63373",
    "lng": "5.56749"
  },
  {
    "country": "BE",
    "name": "Liedekerke",
    "lat": "50.86892",
    "lng": "4.08743"
  },
  {
    "country": "BE",
    "name": "Lichtervelde",
    "lat": "51.03333",
    "lng": "3.15"
  },
  {
    "country": "BE",
    "name": "Libin",
    "lat": "49.98107",
    "lng": "5.25612"
  },
  {
    "country": "BE",
    "name": "Leuven",
    "lat": "50.87959",
    "lng": "4.70093"
  },
  {
    "country": "BE",
    "name": "Lessines",
    "lat": "50.71104",
    "lng": "3.83579"
  },
  {
    "country": "BE",
    "name": "Leopoldsburg",
    "lat": "51.11667",
    "lng": "5.25"
  },
  {
    "country": "BE",
    "name": "Lens",
    "lat": "50.55696",
    "lng": "3.89946"
  },
  {
    "country": "BE",
    "name": "Lendelede",
    "lat": "50.88626",
    "lng": "3.23747"
  },
  {
    "country": "BE",
    "name": "Léglise",
    "lat": "49.79985",
    "lng": "5.53652"
  },
  {
    "country": "BE",
    "name": "Ledegem",
    "lat": "50.85785",
    "lng": "3.12409"
  },
  {
    "country": "BE",
    "name": "Ledeberg",
    "lat": "51.03859",
    "lng": "3.74458"
  },
  {
    "country": "BE",
    "name": "Ledeberg",
    "lat": "50.84356",
    "lng": "4.09112"
  },
  {
    "country": "BE",
    "name": "Lede",
    "lat": "50.96626",
    "lng": "3.98594"
  },
  {
    "country": "BE",
    "name": "Lebbeke",
    "lat": "51.00464",
    "lng": "4.13457"
  },
  {
    "country": "BE",
    "name": "La Roche-en-Ardenne",
    "lat": "50.18361",
    "lng": "5.57547"
  },
  {
    "country": "BE",
    "name": "Landen",
    "lat": "50.75267",
    "lng": "5.082"
  },
  {
    "country": "BE",
    "name": "Lanaken",
    "lat": "50.89318",
    "lng": "5.6468"
  },
  {
    "country": "BE",
    "name": "La Louvière",
    "lat": "50.48657",
    "lng": "4.18785"
  },
  {
    "country": "BE",
    "name": "La Hulpe",
    "lat": "50.73091",
    "lng": "4.48577"
  },
  {
    "country": "BE",
    "name": "La Calamine",
    "lat": "50.71809",
    "lng": "6.01107"
  },
  {
    "country": "BE",
    "name": "La Bruyère",
    "lat": "50.39478",
    "lng": "4.61444"
  },
  {
    "country": "BE",
    "name": "Laarne",
    "lat": "51.03078",
    "lng": "3.85077"
  },
  {
    "country": "BE",
    "name": "Kuurne",
    "lat": "50.85143",
    "lng": "3.2824"
  },
  {
    "country": "BE",
    "name": "Kruishoutem",
    "lat": "50.90168",
    "lng": "3.52588"
  },
  {
    "country": "BE",
    "name": "Kruibeke",
    "lat": "51.17048",
    "lng": "4.31444"
  },
  {
    "country": "BE",
    "name": "Kraainem",
    "lat": "50.86155",
    "lng": "4.46946"
  },
  {
    "country": "BE",
    "name": "Kortrijk",
    "lat": "50.82803",
    "lng": "3.26487"
  },
  {
    "country": "BE",
    "name": "Kortessem",
    "lat": "50.8589",
    "lng": "5.38974"
  },
  {
    "country": "BE",
    "name": "Kortenberg",
    "lat": "50.88982",
    "lng": "4.54353"
  },
  {
    "country": "BE",
    "name": "Kortenaken",
    "lat": "50.90862",
    "lng": "5.05968"
  },
  {
    "country": "BE",
    "name": "Kortemark",
    "lat": "51.02951",
    "lng": "3.04112"
  },
  {
    "country": "BE",
    "name": "Kontich",
    "lat": "51.13213",
    "lng": "4.44706"
  },
  {
    "country": "BE",
    "name": "Koksijde",
    "lat": "51.11642",
    "lng": "2.63772"
  },
  {
    "country": "BE",
    "name": "Koekelare",
    "lat": "51.09047",
    "lng": "2.9783"
  },
  {
    "country": "BE",
    "name": "Knokke-Heist",
    "lat": "51.35",
    "lng": "3.26667"
  },
  {
    "country": "BE",
    "name": "Knesselare",
    "lat": "51.13932",
    "lng": "3.41282"
  },
  {
    "country": "BE",
    "name": "Kinrooi",
    "lat": "51.14543",
    "lng": "5.74207"
  },
  {
    "country": "BE",
    "name": "Keerbergen",
    "lat": "51.00295",
    "lng": "4.63434"
  },
  {
    "country": "BE",
    "name": "Kasterlee",
    "lat": "51.24118",
    "lng": "4.96651"
  },
  {
    "country": "BE",
    "name": "Kaprijke",
    "lat": "51.2172",
    "lng": "3.61519"
  },
  {
    "country": "BE",
    "name": "Kapelle-op-den-Bos",
    "lat": "51.0097",
    "lng": "4.36303"
  },
  {
    "country": "BE",
    "name": "Kapellen",
    "lat": "51.31377",
    "lng": "4.43539"
  },
  {
    "country": "BE",
    "name": "Kampenhout",
    "lat": "50.9421",
    "lng": "4.55103"
  },
  {
    "country": "BE",
    "name": "Kalmthout",
    "lat": "51.38442",
    "lng": "4.47556"
  },
  {
    "country": "BE",
    "name": "Jurbise",
    "lat": "50.531",
    "lng": "3.90942"
  },
  {
    "country": "BE",
    "name": "Juprelle",
    "lat": "50.7076",
    "lng": "5.53127"
  },
  {
    "country": "BE",
    "name": "Jodoigne",
    "lat": "50.72357",
    "lng": "4.86914"
  },
  {
    "country": "BE",
    "name": "Jalhay",
    "lat": "50.55876",
    "lng": "5.96764"
  },
  {
    "country": "BE",
    "name": "Jabbeke",
    "lat": "51.18185",
    "lng": "3.08935"
  },
  {
    "country": "BE",
    "name": "Izegem",
    "lat": "50.91396",
    "lng": "3.21378"
  },
  {
    "country": "BE",
    "name": "Ittre",
    "lat": "50.64396",
    "lng": "4.26476"
  },
  {
    "country": "BE",
    "name": "Ingelmunster",
    "lat": "50.92081",
    "lng": "3.25571"
  },
  {
    "country": "BE",
    "name": "Incourt",
    "lat": "50.69151",
    "lng": "4.79816"
  },
  {
    "country": "BE",
    "name": "Ieper",
    "lat": "50.85114",
    "lng": "2.88569"
  },
  {
    "country": "BE",
    "name": "Ichtegem",
    "lat": "51.09572",
    "lng": "3.01549"
  },
  {
    "country": "BE",
    "name": "Huy",
    "lat": "50.51894",
    "lng": "5.23284"
  },
  {
    "country": "BE",
    "name": "Hulshout",
    "lat": "51.07451",
    "lng": "4.79081"
  },
  {
    "country": "BE",
    "name": "Huldenberg",
    "lat": "50.78939",
    "lng": "4.5831"
  },
  {
    "country": "BE",
    "name": "Hove",
    "lat": "51.15446",
    "lng": "4.4707"
  },
  {
    "country": "BE",
    "name": "Houyet",
    "lat": "50.18619",
    "lng": "5.00762"
  },
  {
    "country": "BE",
    "name": "Houthulst",
    "lat": "50.97824",
    "lng": "2.9505"
  },
  {
    "country": "BE",
    "name": "Houthalen",
    "lat": "51.03427",
    "lng": "5.37429"
  },
  {
    "country": "BE",
    "name": "Houffalize",
    "lat": "50.13235",
    "lng": "5.78962"
  },
  {
    "country": "BE",
    "name": "Hotton",
    "lat": "50.26742",
    "lng": "5.44609"
  },
  {
    "country": "BE",
    "name": "Hoogstraten",
    "lat": "51.40029",
    "lng": "4.76034"
  },
  {
    "country": "BE",
    "name": "Hooglede",
    "lat": "50.98333",
    "lng": "3.08333"
  },
  {
    "country": "BE",
    "name": "Holsbeek",
    "lat": "50.92097",
    "lng": "4.75747"
  },
  {
    "country": "BE",
    "name": "Hoeselt",
    "lat": "50.84714",
    "lng": "5.48767"
  },
  {
    "country": "BE",
    "name": "Hoeilaart",
    "lat": "50.7673",
    "lng": "4.46835"
  },
  {
    "country": "BE",
    "name": "Hoegaarden",
    "lat": "50.7756",
    "lng": "4.88952"
  },
  {
    "country": "BE",
    "name": "Hoboken",
    "lat": "51.17611",
    "lng": "4.34844"
  },
  {
    "country": "BE",
    "name": "Heusden",
    "lat": "51.03664",
    "lng": "5.28013"
  },
  {
    "country": "BE",
    "name": "Herzele",
    "lat": "50.88681",
    "lng": "3.89014"
  },
  {
    "country": "BE",
    "name": "Herve",
    "lat": "50.64083",
    "lng": "5.79353"
  },
  {
    "country": "BE",
    "name": "Herstal",
    "lat": "50.66415",
    "lng": "5.62346"
  },
  {
    "country": "BE",
    "name": "Herselt",
    "lat": "51.05159",
    "lng": "4.88231"
  },
  {
    "country": "BE",
    "name": "Héron",
    "lat": "50.54731",
    "lng": "5.09774"
  },
  {
    "country": "BE",
    "name": "Herne",
    "lat": "50.72423",
    "lng": "4.03481"
  },
  {
    "country": "BE",
    "name": "Herk-de-Stad",
    "lat": "50.94013",
    "lng": "5.16636"
  },
  {
    "country": "BE",
    "name": "Herenthout",
    "lat": "51.1401",
    "lng": "4.75572"
  },
  {
    "country": "BE",
    "name": "Herentals",
    "lat": "51.17655",
    "lng": "4.83248"
  },
  {
    "country": "BE",
    "name": "Herent",
    "lat": "50.90861",
    "lng": "4.67056"
  },
  {
    "country": "BE",
    "name": "Herbeumont",
    "lat": "49.78086",
    "lng": "5.2358"
  },
  {
    "country": "BE",
    "name": "Hensies",
    "lat": "50.43263",
    "lng": "3.68411"
  },
  {
    "country": "BE",
    "name": "Hemiksem",
    "lat": "51.14484",
    "lng": "4.33874"
  },
  {
    "country": "BE",
    "name": "Helchteren",
    "lat": "51.05591",
    "lng": "5.38244"
  },
  {
    "country": "BE",
    "name": "Heist-op-den-Berg",
    "lat": "51.07537",
    "lng": "4.72827"
  },
  {
    "country": "BE",
    "name": "Heers",
    "lat": "50.75383",
    "lng": "5.3021"
  },
  {
    "country": "BE",
    "name": "Havelange",
    "lat": "50.38931",
    "lng": "5.23816"
  },
  {
    "country": "BE",
    "name": "Hastière-Lavaux",
    "lat": "50.21849",
    "lng": "4.82446"
  },
  {
    "country": "BE",
    "name": "Hasselt",
    "lat": "50.93106",
    "lng": "5.33781"
  },
  {
    "country": "BE",
    "name": "Harelbeke",
    "lat": "50.85343",
    "lng": "3.30935"
  },
  {
    "country": "BE",
    "name": "Hannut",
    "lat": "50.67142",
    "lng": "5.07898"
  },
  {
    "country": "BE",
    "name": "Hamois",
    "lat": "50.3402",
    "lng": "5.15619"
  },
  {
    "country": "BE",
    "name": "Hamoir",
    "lat": "50.42675",
    "lng": "5.53304"
  },
  {
    "country": "BE",
    "name": "Hamme",
    "lat": "51.09822",
    "lng": "4.13705"
  },
  {
    "country": "BE",
    "name": "Halle",
    "lat": "50.73385",
    "lng": "4.23454"
  },
  {
    "country": "BE",
    "name": "Halen",
    "lat": "50.94837",
    "lng": "5.11096"
  },
  {
    "country": "BE",
    "name": "Habay-la-Vieille",
    "lat": "49.72329",
    "lng": "5.61999"
  },
  {
    "country": "BE",
    "name": "Haaltert",
    "lat": "50.90634",
    "lng": "4.00093"
  },
  {
    "country": "BE",
    "name": "Haacht",
    "lat": "50.97737",
    "lng": "4.63777"
  },
  {
    "country": "BE",
    "name": "Grobbendonk",
    "lat": "51.19043",
    "lng": "4.73562"
  },
  {
    "country": "BE",
    "name": "Grimbergen",
    "lat": "50.93409",
    "lng": "4.37213"
  },
  {
    "country": "BE",
    "name": "Grez-Doiceau",
    "lat": "50.73901",
    "lng": "4.69829"
  },
  {
    "country": "BE",
    "name": "Gouvy",
    "lat": "50.186",
    "lng": "5.93917"
  },
  {
    "country": "BE",
    "name": "Gooik",
    "lat": "50.79443",
    "lng": "4.11378"
  },
  {
    "country": "BE",
    "name": "Glabbeek-Zuurbemde",
    "lat": "50.87348",
    "lng": "4.94442"
  },
  {
    "country": "BE",
    "name": "Gistel",
    "lat": "51.15612",
    "lng": "2.96387"
  },
  {
    "country": "BE",
    "name": "Gingelom",
    "lat": "50.74792",
    "lng": "5.13422"
  },
  {
    "country": "BE",
    "name": "Gesves",
    "lat": "50.40146",
    "lng": "5.07457"
  },
  {
    "country": "BE",
    "name": "Gerpinnes",
    "lat": "50.33789",
    "lng": "4.52731"
  },
  {
    "country": "BE",
    "name": "Geraardsbergen",
    "lat": "50.77343",
    "lng": "3.88223"
  },
  {
    "country": "BE",
    "name": "Gent",
    "lat": "51.05",
    "lng": "3.71667"
  },
  {
    "country": "BE",
    "name": "Genk",
    "lat": "50.965",
    "lng": "5.50082"
  },
  {
    "country": "BE",
    "name": "Genappe",
    "lat": "50.61173",
    "lng": "4.45152"
  },
  {
    "country": "BE",
    "name": "Gembloux",
    "lat": "50.56149",
    "lng": "4.69889"
  },
  {
    "country": "BE",
    "name": "Geetbets",
    "lat": "50.89431",
    "lng": "5.11199"
  },
  {
    "country": "BE",
    "name": "Geer",
    "lat": "50.6699",
    "lng": "5.17364"
  },
  {
    "country": "BE",
    "name": "Geel",
    "lat": "51.16557",
    "lng": "4.98917"
  },
  {
    "country": "BE",
    "name": "Gedinne",
    "lat": "49.98037",
    "lng": "4.93674"
  },
  {
    "country": "BE",
    "name": "Gavere",
    "lat": "50.92917",
    "lng": "3.66184"
  },
  {
    "country": "BE",
    "name": "Galmaarden",
    "lat": "50.75389",
    "lng": "3.97121"
  },
  {
    "country": "BE",
    "name": "Froidchapelle",
    "lat": "50.15106",
    "lng": "4.32742"
  },
  {
    "country": "BE",
    "name": "Frasnes-lez-Buissenal",
    "lat": "50.66783",
    "lng": "3.62047"
  },
  {
    "country": "BE",
    "name": "Frameries",
    "lat": "50.40578",
    "lng": "3.89603"
  },
  {
    "country": "BE",
    "name": "Sint-Pieters-Voeren",
    "lat": "50.73863",
    "lng": "5.82224"
  },
  {
    "country": "BE",
    "name": "Fosses-la-Ville",
    "lat": "50.39517",
    "lng": "4.69623"
  },
  {
    "country": "BE",
    "name": "Forville",
    "lat": "50.57424",
    "lng": "4.99861"
  },
  {
    "country": "BE",
    "name": "Florenville",
    "lat": "49.69983",
    "lng": "5.3074"
  },
  {
    "country": "BE",
    "name": "Florennes",
    "lat": "50.25127",
    "lng": "4.60636"
  },
  {
    "country": "BE",
    "name": "Floreffe",
    "lat": "50.43452",
    "lng": "4.7596"
  },
  {
    "country": "BE",
    "name": "Flobecq",
    "lat": "50.73733",
    "lng": "3.73876"
  },
  {
    "country": "BE",
    "name": "Fleurus",
    "lat": "50.48351",
    "lng": "4.55006"
  },
  {
    "country": "BE",
    "name": "Fléron",
    "lat": "50.61516",
    "lng": "5.68062"
  },
  {
    "country": "BE",
    "name": "Flémalle-Haute",
    "lat": "50.59994",
    "lng": "5.44471"
  },
  {
    "country": "BE",
    "name": "Fexhe-le-Haut-Clocher",
    "lat": "50.6654",
    "lng": "5.39978"
  },
  {
    "country": "BE",
    "name": "Ferrières",
    "lat": "50.40157",
    "lng": "5.61092"
  },
  {
    "country": "BE",
    "name": "Fauvillers",
    "lat": "49.85116",
    "lng": "5.66405"
  },
  {
    "country": "BE",
    "name": "Farciennes",
    "lat": "50.43006",
    "lng": "4.54152"
  },
  {
    "country": "BE",
    "name": "Faimes",
    "lat": "50.66252",
    "lng": "5.26005"
  },
  {
    "country": "BE",
    "name": "Evergem",
    "lat": "51.10529",
    "lng": "3.704"
  },
  {
    "country": "BE",
    "name": "Eupen",
    "lat": "50.6279",
    "lng": "6.03647"
  },
  {
    "country": "BE",
    "name": "Étalle",
    "lat": "49.67385",
    "lng": "5.60019"
  },
  {
    "country": "BE",
    "name": "Estinnes-au-Val",
    "lat": "50.41016",
    "lng": "4.10477"
  },
  {
    "country": "BE",
    "name": "Estaimpuis",
    "lat": "50.70485",
    "lng": "3.26785"
  },
  {
    "country": "BE",
    "name": "Essen",
    "lat": "51.46791",
    "lng": "4.46901"
  },
  {
    "country": "BE",
    "name": "Esneux",
    "lat": "50.53596",
    "lng": "5.56775"
  },
  {
    "country": "BE",
    "name": "Erquelinnes",
    "lat": "50.30688",
    "lng": "4.11129"
  },
  {
    "country": "BE",
    "name": "Érezée",
    "lat": "50.29292",
    "lng": "5.55815"
  },
  {
    "country": "BE",
    "name": "Engis",
    "lat": "50.58156",
    "lng": "5.39916"
  },
  {
    "country": "BE",
    "name": "Enghien",
    "lat": "50.68373",
    "lng": "4.03284"
  },
  {
    "country": "BE",
    "name": "Ellezelles",
    "lat": "50.73512",
    "lng": "3.67985"
  },
  {
    "country": "BE",
    "name": "Éghezée",
    "lat": "50.59076",
    "lng": "4.91175"
  },
  {
    "country": "BE",
    "name": "Eeklo",
    "lat": "51.18703",
    "lng": "3.55654"
  },
  {
    "country": "BE",
    "name": "Edegem",
    "lat": "51.15662",
    "lng": "4.44504"
  },
  {
    "country": "BE",
    "name": "Écaussinnes-d’Enghien",
    "lat": "50.56822",
    "lng": "4.1658"
  },
  {
    "country": "BE",
    "name": "Durbuy",
    "lat": "50.35291",
    "lng": "5.45631"
  },
  {
    "country": "BE",
    "name": "Duffel",
    "lat": "51.09554",
    "lng": "4.50903"
  },
  {
    "country": "BE",
    "name": "Drogenbos",
    "lat": "50.78733",
    "lng": "4.31471"
  },
  {
    "country": "BE",
    "name": "Dour",
    "lat": "50.39583",
    "lng": "3.77792"
  },
  {
    "country": "BE",
    "name": "Donceel",
    "lat": "50.64827",
    "lng": "5.32"
  },
  {
    "country": "BE",
    "name": "Doische",
    "lat": "50.13356",
    "lng": "4.73545"
  },
  {
    "country": "BE",
    "name": "Dison",
    "lat": "50.61004",
    "lng": "5.8534"
  },
  {
    "country": "BE",
    "name": "Dinant",
    "lat": "50.25807",
    "lng": "4.91166"
  },
  {
    "country": "BE",
    "name": "Dilbeek",
    "lat": "50.84799",
    "lng": "4.25972"
  },
  {
    "country": "BE",
    "name": "Diksmuide",
    "lat": "51.03248",
    "lng": "2.86384"
  },
  {
    "country": "BE",
    "name": "Diest",
    "lat": "50.98923",
    "lng": "5.05062"
  },
  {
    "country": "BE",
    "name": "Diepenbeek",
    "lat": "50.90769",
    "lng": "5.41875"
  },
  {
    "country": "BE",
    "name": "Diegem",
    "lat": "50.89727",
    "lng": "4.43354"
  },
  {
    "country": "BE",
    "name": "Destelbergen",
    "lat": "51.05952",
    "lng": "3.79899"
  },
  {
    "country": "BE",
    "name": "Dessel",
    "lat": "51.23855",
    "lng": "5.11448"
  },
  {
    "country": "BE",
    "name": "De Pinte",
    "lat": "50.99339",
    "lng": "3.64747"
  },
  {
    "country": "BE",
    "name": "De Panne",
    "lat": "51.09793",
    "lng": "2.59368"
  },
  {
    "country": "BE",
    "name": "Dentergem",
    "lat": "50.96429",
    "lng": "3.41617"
  },
  {
    "country": "BE",
    "name": "Dendermonde",
    "lat": "51.02869",
    "lng": "4.10106"
  },
  {
    "country": "BE",
    "name": "Denderleeuw",
    "lat": "50.88506",
    "lng": "4.07601"
  },
  {
    "country": "BE",
    "name": "Deinze",
    "lat": "50.98175",
    "lng": "3.53096"
  },
  {
    "country": "BE",
    "name": "De Haan",
    "lat": "51.27261",
    "lng": "3.03446"
  },
  {
    "country": "BE",
    "name": "Deerlijk",
    "lat": "50.85337",
    "lng": "3.35416"
  },
  {
    "country": "BE",
    "name": "Daverdisse",
    "lat": "50.02161",
    "lng": "5.11811"
  },
  {
    "country": "BE",
    "name": "Damme",
    "lat": "51.25147",
    "lng": "3.28144"
  },
  {
    "country": "BE",
    "name": "Dalhem",
    "lat": "50.71315",
    "lng": "5.72774"
  },
  {
    "country": "BE",
    "name": "Crisnée",
    "lat": "50.71703",
    "lng": "5.39802"
  },
  {
    "country": "BE",
    "name": "Couvin",
    "lat": "50.05284",
    "lng": "4.49495"
  },
  {
    "country": "BE",
    "name": "Court-Saint-Étienne",
    "lat": "50.63378",
    "lng": "4.56851"
  },
  {
    "country": "BE",
    "name": "Courcelles",
    "lat": "50.46379",
    "lng": "4.3747"
  },
  {
    "country": "BE",
    "name": "Comblain-au-Pont",
    "lat": "50.47488",
    "lng": "5.57711"
  },
  {
    "country": "BE",
    "name": "Colfontaine",
    "lat": "50.4141",
    "lng": "3.85569"
  },
  {
    "country": "BE",
    "name": "Clavier",
    "lat": "50.40069",
    "lng": "5.35154"
  },
  {
    "country": "BE",
    "name": "Ciney",
    "lat": "50.29449",
    "lng": "5.10015"
  },
  {
    "country": "BE",
    "name": "Chiny",
    "lat": "49.73833",
    "lng": "5.34104"
  },
  {
    "country": "BE",
    "name": "Chimay",
    "lat": "50.04856",
    "lng": "4.31712"
  },
  {
    "country": "BE",
    "name": "Chièvres",
    "lat": "50.58787",
    "lng": "3.80711"
  },
  {
    "country": "BE",
    "name": "Chaumont-Gistoux",
    "lat": "50.67753",
    "lng": "4.7212"
  },
  {
    "country": "BE",
    "name": "Chaudfontaine",
    "lat": "50.5828",
    "lng": "5.6341"
  },
  {
    "country": "BE",
    "name": "Châtelet",
    "lat": "50.40338",
    "lng": "4.52826"
  },
  {
    "country": "BE",
    "name": "Chastre-Villeroux-Blanmont",
    "lat": "50.60857",
    "lng": "4.64198"
  },
  {
    "country": "BE",
    "name": "Chasse Royale",
    "lat": "50.42842",
    "lng": "3.95001"
  },
  {
    "country": "BE",
    "name": "Charleroi",
    "lat": "50.41136",
    "lng": "4.44448"
  },
  {
    "country": "BE",
    "name": "Chapelle-lez-Herlaimont",
    "lat": "50.4713",
    "lng": "4.28227"
  },
  {
    "country": "BE",
    "name": "Cerfontaine",
    "lat": "50.17047",
    "lng": "4.41028"
  },
  {
    "country": "BE",
    "name": "Celles",
    "lat": "50.71229",
    "lng": "3.45733"
  },
  {
    "country": "BE",
    "name": "Butgenbach",
    "lat": "50.42689",
    "lng": "6.20504"
  },
  {
    "country": "BE",
    "name": "Burdinne",
    "lat": "50.58454",
    "lng": "5.07663"
  },
  {
    "country": "BE",
    "name": "Bullange",
    "lat": "50.40731",
    "lng": "6.25749"
  },
  {
    "country": "BE",
    "name": "Buggenhout",
    "lat": "51.0159",
    "lng": "4.20173"
  },
  {
    "country": "BE",
    "name": "Brussels",
    "lat": "50.85045",
    "lng": "4.34878"
  },
  {
    "country": "BE",
    "name": "Brunehault",
    "lat": "50.50524",
    "lng": "4.43209"
  },
  {
    "country": "BE",
    "name": "Brugge",
    "lat": "51.20892",
    "lng": "3.22424"
  },
  {
    "country": "BE",
    "name": "Brugelette",
    "lat": "50.59577",
    "lng": "3.85363"
  },
  {
    "country": "BE",
    "name": "Bree",
    "lat": "51.14152",
    "lng": "5.5969"
  },
  {
    "country": "BE",
    "name": "Bredene",
    "lat": "51.23489",
    "lng": "2.97559"
  },
  {
    "country": "BE",
    "name": "Brecht",
    "lat": "51.35024",
    "lng": "4.63829"
  },
  {
    "country": "BE",
    "name": "Brasschaat",
    "lat": "51.2912",
    "lng": "4.49182"
  },
  {
    "country": "BE",
    "name": "Braives",
    "lat": "50.61745",
    "lng": "5.13302"
  },
  {
    "country": "BE",
    "name": "Braine-le-Comte",
    "lat": "50.60979",
    "lng": "4.14658"
  },
  {
    "country": "BE",
    "name": "Braine-le-Château",
    "lat": "50.6799",
    "lng": "4.27385"
  },
  {
    "country": "BE",
    "name": "Braine-l'Alleud",
    "lat": "50.68363",
    "lng": "4.36784"
  },
  {
    "country": "BE",
    "name": "Boutersem",
    "lat": "50.83511",
    "lng": "4.8345"
  },
  {
    "country": "BE",
    "name": "Boussu",
    "lat": "50.43417",
    "lng": "3.7944"
  },
  {
    "country": "BE",
    "name": "Bouillon",
    "lat": "49.79324",
    "lng": "5.06703"
  },
  {
    "country": "BE",
    "name": "Borsbeek",
    "lat": "51.19661",
    "lng": "4.48543"
  },
  {
    "country": "BE",
    "name": "Bornem",
    "lat": "51.09716",
    "lng": "4.24364"
  },
  {
    "country": "BE",
    "name": "Borgloon",
    "lat": "50.80505",
    "lng": "5.34366"
  },
  {
    "country": "BE",
    "name": "Boortmeerbeek",
    "lat": "50.97929",
    "lng": "4.57443"
  },
  {
    "country": "BE",
    "name": "Boom",
    "lat": "51.09242",
    "lng": "4.3717"
  },
  {
    "country": "BE",
    "name": "Bonheiden",
    "lat": "51.02261",
    "lng": "4.54714"
  },
  {
    "country": "BE",
    "name": "Boechout",
    "lat": "51.15959",
    "lng": "4.49195"
  },
  {
    "country": "BE",
    "name": "Bocholt",
    "lat": "51.17337",
    "lng": "5.57994"
  },
  {
    "country": "BE",
    "name": "Blégny",
    "lat": "50.67255",
    "lng": "5.72508"
  },
  {
    "country": "BE",
    "name": "Blankenberge",
    "lat": "51.31306",
    "lng": "3.13227"
  },
  {
    "country": "BE",
    "name": "Binche",
    "lat": "50.41155",
    "lng": "4.16469"
  },
  {
    "country": "BE",
    "name": "Bilzen",
    "lat": "50.87325",
    "lng": "5.5184"
  },
  {
    "country": "BE",
    "name": "Bièvre",
    "lat": "49.94085",
    "lng": "5.01591"
  },
  {
    "country": "BE",
    "name": "Bierbeek",
    "lat": "50.82876",
    "lng": "4.75949"
  },
  {
    "country": "BE",
    "name": "Beyne-Heusay",
    "lat": "50.62251",
    "lng": "5.66508"
  },
  {
    "country": "BE",
    "name": "Beveren",
    "lat": "51.21187",
    "lng": "4.25633"
  },
  {
    "country": "BE",
    "name": "Bever",
    "lat": "50.91667",
    "lng": "4.31667"
  },
  {
    "country": "BE",
    "name": "Bertrix",
    "lat": "49.85596",
    "lng": "5.25539"
  },
  {
    "country": "BE",
    "name": "Bertogne",
    "lat": "50.08364",
    "lng": "5.66689"
  },
  {
    "country": "BE",
    "name": "Bertem",
    "lat": "50.86403",
    "lng": "4.62918"
  },
  {
    "country": "BE",
    "name": "Bernissart",
    "lat": "50.4746",
    "lng": "3.64961"
  },
  {
    "country": "BE",
    "name": "Berloz",
    "lat": "50.69829",
    "lng": "5.21236"
  },
  {
    "country": "BE",
    "name": "Berlare",
    "lat": "51.03333",
    "lng": "4"
  },
  {
    "country": "BE",
    "name": "Berlaar",
    "lat": "51.1176",
    "lng": "4.65835"
  },
  {
    "country": "BE",
    "name": "Beringen",
    "lat": "51.04954",
    "lng": "5.22606"
  },
  {
    "country": "BE",
    "name": "Beloeil",
    "lat": "50.55047",
    "lng": "3.73484"
  },
  {
    "country": "BE",
    "name": "Bekkevoort",
    "lat": "50.94074",
    "lng": "4.969"
  },
  {
    "country": "BE",
    "name": "Begijnendijk",
    "lat": "51.01942",
    "lng": "4.78377"
  },
  {
    "country": "BE",
    "name": "Beersel",
    "lat": "50.76589",
    "lng": "4.3002"
  },
  {
    "country": "BE",
    "name": "Beerse",
    "lat": "51.31927",
    "lng": "4.85304"
  },
  {
    "country": "BE",
    "name": "Beernem",
    "lat": "51.13981",
    "lng": "3.33896"
  },
  {
    "country": "BE",
    "name": "Beauvechain",
    "lat": "50.78195",
    "lng": "4.7718"
  },
  {
    "country": "BE",
    "name": "Beauraing",
    "lat": "50.11042",
    "lng": "4.95554"
  },
  {
    "country": "BE",
    "name": "Beaumont",
    "lat": "50.23699",
    "lng": "4.23926"
  },
  {
    "country": "BE",
    "name": "Bastogne",
    "lat": "50.00347",
    "lng": "5.71844"
  },
  {
    "country": "BE",
    "name": "Bassenge",
    "lat": "50.75883",
    "lng": "5.60989"
  },
  {
    "country": "BE",
    "name": "Basse Lasne",
    "lat": "50.69503",
    "lng": "4.49218"
  },
  {
    "country": "BE",
    "name": "Balen",
    "lat": "51.16837",
    "lng": "5.17027"
  },
  {
    "country": "BE",
    "name": "Baelen",
    "lat": "50.63131",
    "lng": "5.97433"
  },
  {
    "country": "BE",
    "name": "Baarle-Hertog",
    "lat": "51.40504",
    "lng": "4.89226"
  },
  {
    "country": "BE",
    "name": "Aywaille",
    "lat": "50.47411",
    "lng": "5.67684"
  },
  {
    "country": "BE",
    "name": "Awans",
    "lat": "50.66774",
    "lng": "5.46329"
  },
  {
    "country": "BE",
    "name": "Avelgem",
    "lat": "50.77618",
    "lng": "3.44502"
  },
  {
    "country": "BE",
    "name": "Aubel",
    "lat": "50.70189",
    "lng": "5.85812"
  },
  {
    "country": "BE",
    "name": "Aubange",
    "lat": "49.56652",
    "lng": "5.80492"
  },
  {
    "country": "BE",
    "name": "Attert",
    "lat": "49.75035",
    "lng": "5.78634"
  },
  {
    "country": "BE",
    "name": "Ath",
    "lat": "50.62937",
    "lng": "3.77801"
  },
  {
    "country": "BE",
    "name": "Assesse",
    "lat": "50.36934",
    "lng": "5.02204"
  },
  {
    "country": "BE",
    "name": "Assenede",
    "lat": "51.22598",
    "lng": "3.75085"
  },
  {
    "country": "BE",
    "name": "Asse",
    "lat": "50.91011",
    "lng": "4.19836"
  },
  {
    "country": "BE",
    "name": "As",
    "lat": "51.00755",
    "lng": "5.58453"
  },
  {
    "country": "BE",
    "name": "Arlon",
    "lat": "49.68333",
    "lng": "5.81667"
  },
  {
    "country": "BE",
    "name": "Arendonk",
    "lat": "51.32267",
    "lng": "5.08289"
  },
  {
    "country": "BE",
    "name": "Ardooie",
    "lat": "50.9757",
    "lng": "3.19736"
  },
  {
    "country": "BE",
    "name": "Anzegem",
    "lat": "50.837",
    "lng": "3.47786"
  },
  {
    "country": "BE",
    "name": "Antwerpen",
    "lat": "51.21989",
    "lng": "4.40346"
  },
  {
    "country": "BE",
    "name": "Antoing",
    "lat": "50.56765",
    "lng": "3.4492"
  },
  {
    "country": "BE",
    "name": "Anthisnes",
    "lat": "50.48323",
    "lng": "5.519"
  },
  {
    "country": "BE",
    "name": "Ans",
    "lat": "50.6623",
    "lng": "5.52029"
  },
  {
    "country": "BE",
    "name": "Anhée",
    "lat": "50.31039",
    "lng": "4.87827"
  },
  {
    "country": "BE",
    "name": "Anderlues",
    "lat": "50.40704",
    "lng": "4.27136"
  },
  {
    "country": "BE",
    "name": "Andenne",
    "lat": "50.48941",
    "lng": "5.09513"
  },
  {
    "country": "BE",
    "name": "Amblève",
    "lat": "50.35357",
    "lng": "6.17002"
  },
  {
    "country": "BE",
    "name": "Amay",
    "lat": "50.54829",
    "lng": "5.30974"
  },
  {
    "country": "BE",
    "name": "Alveringem",
    "lat": "51.01238",
    "lng": "2.71117"
  },
  {
    "country": "BE",
    "name": "Alken",
    "lat": "50.87553",
    "lng": "5.30558"
  },
  {
    "country": "BE",
    "name": "Aiseau",
    "lat": "50.41158",
    "lng": "4.58671"
  },
  {
    "country": "BE",
    "name": "Aartselaar",
    "lat": "51.13412",
    "lng": "4.38678"
  },
  {
    "country": "BE",
    "name": "Aarschot",
    "lat": "50.98715",
    "lng": "4.83695"
  },
  {
    "country": "BE",
    "name": "Aalter",
    "lat": "51.09017",
    "lng": "3.44693"
  },
  {
    "country": "BE",
    "name": "Aalst",
    "lat": "50.93604",
    "lng": "4.0355"
  },
  {
    "country": "BE",
    "name": "Frasnes-lez-Anvaing",
    "lat": "50.69211",
    "lng": "3.63562"
  },
  {
    "country": "BE",
    "name": "Chastre",
    "lat": "50.60067",
    "lng": "4.634"
  },
  {
    "country": "BE",
    "name": "Lennik",
    "lat": "50.80903",
    "lng": "4.16219"
  },
  {
    "country": "BE",
    "name": "Laakdal",
    "lat": "51.08067",
    "lng": "5.00556"
  },
  {
    "country": "BE",
    "name": "Scherpenheuvel-Zichem",
    "lat": "51.01041",
    "lng": "4.97492"
  },
  {
    "country": "BE",
    "name": "Sint-Joris",
    "lat": "50.87117",
    "lng": "5.272"
  },
  {
    "country": "BE",
    "name": "Terkoest",
    "lat": "50.89832",
    "lng": "5.27623"
  },
  {
    "country": "BF",
    "name": "Zorgo",
    "lat": "12.24922",
    "lng": "-0.61527"
  },
  {
    "country": "BF",
    "name": "Ziniaré",
    "lat": "12.58186",
    "lng": "-1.2971"
  },
  {
    "country": "BF",
    "name": "Yako",
    "lat": "12.9591",
    "lng": "-2.26075"
  },
  {
    "country": "BF",
    "name": "Tougan",
    "lat": "13.0725",
    "lng": "-3.0694"
  },
  {
    "country": "BF",
    "name": "Toma",
    "lat": "12.75844",
    "lng": "-2.89879"
  },
  {
    "country": "BF",
    "name": "Titao",
    "lat": "13.76667",
    "lng": "-2.06667"
  },
  {
    "country": "BF",
    "name": "Tenkodogo",
    "lat": "11.78",
    "lng": "-0.36972"
  },
  {
    "country": "BF",
    "name": "Salanso",
    "lat": "12.17423",
    "lng": "-4.08477"
  },
  {
    "country": "BF",
    "name": "Sindou",
    "lat": "10.66667",
    "lng": "-5.16667"
  },
  {
    "country": "BF",
    "name": "Sebba",
    "lat": "13.43641",
    "lng": "0.53044"
  },
  {
    "country": "BF",
    "name": "Sapouy",
    "lat": "11.55444",
    "lng": "-1.77361"
  },
  {
    "country": "BF",
    "name": "Réo",
    "lat": "12.31963",
    "lng": "-2.47094"
  },
  {
    "country": "BF",
    "name": "Pô",
    "lat": "11.16972",
    "lng": "-1.145"
  },
  {
    "country": "BF",
    "name": "Pitmoaga",
    "lat": "12.23972",
    "lng": "-1.87667"
  },
  {
    "country": "BF",
    "name": "Pama",
    "lat": "11.24972",
    "lng": "0.7075"
  },
  {
    "country": "BF",
    "name": "Oursi",
    "lat": "14.67553",
    "lng": "-0.46033"
  },
  {
    "country": "BF",
    "name": "Ouargaye",
    "lat": "11.50202",
    "lng": "0.05886"
  },
  {
    "country": "BF",
    "name": "Ouahigouya",
    "lat": "13.58278",
    "lng": "-2.42158"
  },
  {
    "country": "BF",
    "name": "Ouagadougou",
    "lat": "12.36566",
    "lng": "-1.53388"
  },
  {
    "country": "BF",
    "name": "Nouna",
    "lat": "12.72939",
    "lng": "-3.86305"
  },
  {
    "country": "BF",
    "name": "Manga",
    "lat": "11.66361",
    "lng": "-1.07306"
  },
  {
    "country": "BF",
    "name": "Léo",
    "lat": "11.10033",
    "lng": "-2.10654"
  },
  {
    "country": "BF",
    "name": "Koupéla",
    "lat": "12.17864",
    "lng": "-0.35103"
  },
  {
    "country": "BF",
    "name": "Koudougou",
    "lat": "12.25263",
    "lng": "-2.36272"
  },
  {
    "country": "BF",
    "name": "Korsimoro",
    "lat": "12.8207",
    "lng": "-1.06737"
  },
  {
    "country": "BF",
    "name": "Kongoussi",
    "lat": "13.32583",
    "lng": "-1.53472"
  },
  {
    "country": "BF",
    "name": "Kombissiri",
    "lat": "12.06095",
    "lng": "-1.33355"
  },
  {
    "country": "BF",
    "name": "Kokologo",
    "lat": "12.18972",
    "lng": "-1.88556"
  },
  {
    "country": "BF",
    "name": "Kaya",
    "lat": "13.09167",
    "lng": "-1.08444"
  },
  {
    "country": "BF",
    "name": "Houndé",
    "lat": "11.5",
    "lng": "-3.51667"
  },
  {
    "country": "BF",
    "name": "Gourcy",
    "lat": "13.20776",
    "lng": "-2.35893"
  },
  {
    "country": "BF",
    "name": "Goulouré",
    "lat": "12.2276",
    "lng": "-1.92922"
  },
  {
    "country": "BF",
    "name": "Gorom-Gorom",
    "lat": "14.4429",
    "lng": "-0.23468"
  },
  {
    "country": "BF",
    "name": "Gayéri",
    "lat": "12.64824",
    "lng": "0.49314"
  },
  {
    "country": "BF",
    "name": "Garango",
    "lat": "11.8",
    "lng": "-0.55056"
  },
  {
    "country": "BF",
    "name": "Fada N'gourma",
    "lat": "12.06157",
    "lng": "0.35843"
  },
  {
    "country": "BF",
    "name": "Dori",
    "lat": "14.0354",
    "lng": "-0.0345"
  },
  {
    "country": "BF",
    "name": "Djibo",
    "lat": "14.0994",
    "lng": "-1.62554"
  },
  {
    "country": "BF",
    "name": "Diébougou",
    "lat": "10.96209",
    "lng": "-3.24967"
  },
  {
    "country": "BF",
    "name": "Diapaga",
    "lat": "12.07305",
    "lng": "1.78838"
  },
  {
    "country": "BF",
    "name": "Déou",
    "lat": "14.60084",
    "lng": "-0.71901"
  },
  {
    "country": "BF",
    "name": "Dédougou",
    "lat": "12.46338",
    "lng": "-3.46075"
  },
  {
    "country": "BF",
    "name": "Dano",
    "lat": "11.1464",
    "lng": "-3.05784"
  },
  {
    "country": "BF",
    "name": "Boussé",
    "lat": "12.6576",
    "lng": "-1.89288"
  },
  {
    "country": "BF",
    "name": "Boulsa",
    "lat": "12.66664",
    "lng": "-0.57469"
  },
  {
    "country": "BF",
    "name": "Boromo",
    "lat": "11.74542",
    "lng": "-2.93006"
  },
  {
    "country": "BF",
    "name": "Bogandé",
    "lat": "12.9704",
    "lng": "-0.14953"
  },
  {
    "country": "BF",
    "name": "Bobo-Dioulasso",
    "lat": "11.17715",
    "lng": "-4.2979"
  },
  {
    "country": "BF",
    "name": "Bilanga",
    "lat": "12.54652",
    "lng": "-0.02438"
  },
  {
    "country": "BF",
    "name": "Batié",
    "lat": "9.88333",
    "lng": "-2.91667"
  },
  {
    "country": "BF",
    "name": "Barani",
    "lat": "13.1691",
    "lng": "-3.8899"
  },
  {
    "country": "BF",
    "name": "Banfora",
    "lat": "10.63333",
    "lng": "-4.76667"
  },
  {
    "country": "BF",
    "name": "Gaoua",
    "lat": "10.29917",
    "lng": "-3.25083"
  },
  {
    "country": "BF",
    "name": "Orodara",
    "lat": "10.94917",
    "lng": "-4.93417"
  },
  {
    "country": "BF",
    "name": "Tin-Akoff",
    "lat": "14.96549",
    "lng": "-0.16335"
  },
  {
    "country": "BF",
    "name": "Mani",
    "lat": "13.25833",
    "lng": "-0.21306"
  },
  {
    "country": "BG",
    "name": "Beloslav",
    "lat": "43.1896",
    "lng": "27.70429"
  },
  {
    "country": "BG",
    "name": "Zlatograd",
    "lat": "41.3795",
    "lng": "25.09605"
  },
  {
    "country": "BG",
    "name": "Zlatitsa",
    "lat": "42.71667",
    "lng": "24.13333"
  },
  {
    "country": "BG",
    "name": "Zlataritsa",
    "lat": "43.05",
    "lng": "25.9"
  },
  {
    "country": "BG",
    "name": "Zemen",
    "lat": "42.47889",
    "lng": "22.74917"
  },
  {
    "country": "BG",
    "name": "Zelenikovo",
    "lat": "42.4",
    "lng": "25.08333"
  },
  {
    "country": "BG",
    "name": "Zavet",
    "lat": "43.76667",
    "lng": "26.66667"
  },
  {
    "country": "BG",
    "name": "Yambol",
    "lat": "42.48333",
    "lng": "26.5"
  },
  {
    "country": "BG",
    "name": "Yakoruda",
    "lat": "42.02528",
    "lng": "23.68417"
  },
  {
    "country": "BG",
    "name": "Yakimovo",
    "lat": "43.64306",
    "lng": "23.36778"
  },
  {
    "country": "BG",
    "name": "Yablanitsa",
    "lat": "43.03139",
    "lng": "24.11278"
  },
  {
    "country": "BG",
    "name": "Varshets",
    "lat": "43.19528",
    "lng": "23.28611"
  },
  {
    "country": "BG",
    "name": "Varbitsa",
    "lat": "43",
    "lng": "26.63333"
  },
  {
    "country": "BG",
    "name": "Valchidol",
    "lat": "43.4",
    "lng": "27.55"
  },
  {
    "country": "BG",
    "name": "Valchedram",
    "lat": "43.69639",
    "lng": "23.44472"
  },
  {
    "country": "BG",
    "name": "Vratsa",
    "lat": "43.21",
    "lng": "23.5625"
  },
  {
    "country": "BG",
    "name": "Sveti Vlas",
    "lat": "42.7136",
    "lng": "27.75867"
  },
  {
    "country": "BG",
    "name": "Vidin",
    "lat": "43.99",
    "lng": "22.8725"
  },
  {
    "country": "BG",
    "name": "Vetrino",
    "lat": "43.31667",
    "lng": "27.43333"
  },
  {
    "country": "BG",
    "name": "Vetovo",
    "lat": "43.7",
    "lng": "26.26667"
  },
  {
    "country": "BG",
    "name": "Venets",
    "lat": "43.55",
    "lng": "26.93333"
  },
  {
    "country": "BG",
    "name": "Velingrad",
    "lat": "42.02754",
    "lng": "23.99155"
  },
  {
    "country": "BG",
    "name": "Veliko Tŭrnovo",
    "lat": "43.08124",
    "lng": "25.62904"
  },
  {
    "country": "BG",
    "name": "Varna",
    "lat": "43.21667",
    "lng": "27.91667"
  },
  {
    "country": "BG",
    "name": "Ugarchin",
    "lat": "43.1",
    "lng": "24.41667"
  },
  {
    "country": "BG",
    "name": "Tvarditsa",
    "lat": "42.7",
    "lng": "25.9"
  },
  {
    "country": "BG",
    "name": "Tutrakan",
    "lat": "44.05",
    "lng": "26.61667"
  },
  {
    "country": "BG",
    "name": "Targovishte",
    "lat": "43.2512",
    "lng": "26.57215"
  },
  {
    "country": "BG",
    "name": "Tsenovo",
    "lat": "43.53588",
    "lng": "25.65764"
  },
  {
    "country": "BG",
    "name": "Tryavna",
    "lat": "42.86667",
    "lng": "25.5"
  },
  {
    "country": "BG",
    "name": "Tran",
    "lat": "42.83528",
    "lng": "22.65167"
  },
  {
    "country": "BG",
    "name": "Troyan",
    "lat": "42.89427",
    "lng": "24.71589"
  },
  {
    "country": "BG",
    "name": "Topolovo",
    "lat": "41.9",
    "lng": "25"
  },
  {
    "country": "BG",
    "name": "Topolovgrad",
    "lat": "42.08333",
    "lng": "26.33333"
  },
  {
    "country": "BG",
    "name": "Dobrich",
    "lat": "43.56667",
    "lng": "27.83333"
  },
  {
    "country": "BG",
    "name": "Tochilari",
    "lat": "43.85",
    "lng": "26.46667"
  },
  {
    "country": "BG",
    "name": "Teteven",
    "lat": "42.91667",
    "lng": "24.26667"
  },
  {
    "country": "BG",
    "name": "Tervel",
    "lat": "43.75",
    "lng": "27.4"
  },
  {
    "country": "BG",
    "name": "Batanovtsi",
    "lat": "42.59972",
    "lng": "22.95056"
  },
  {
    "country": "BG",
    "name": "Svoge",
    "lat": "42.96667",
    "lng": "23.35"
  },
  {
    "country": "BG",
    "name": "Svishtov",
    "lat": "43.61959",
    "lng": "25.35044"
  },
  {
    "country": "BG",
    "name": "Svilengrad",
    "lat": "41.76667",
    "lng": "26.2"
  },
  {
    "country": "BG",
    "name": "Suvorovo",
    "lat": "43.33333",
    "lng": "27.6"
  },
  {
    "country": "BG",
    "name": "Sarnitsa",
    "lat": "41.73835",
    "lng": "24.02435"
  },
  {
    "country": "BG",
    "name": "Sungurlare",
    "lat": "42.76667",
    "lng": "26.78333"
  },
  {
    "country": "BG",
    "name": "Suhindol",
    "lat": "43.19167",
    "lng": "25.18111"
  },
  {
    "country": "BG",
    "name": "Saedinenie",
    "lat": "42.26667",
    "lng": "24.55"
  },
  {
    "country": "BG",
    "name": "Strumyani",
    "lat": "41.63333",
    "lng": "23.2"
  },
  {
    "country": "BG",
    "name": "Strelcha",
    "lat": "42.5",
    "lng": "24.31667"
  },
  {
    "country": "BG",
    "name": "Strazhitsa",
    "lat": "43.23333",
    "lng": "25.96667"
  },
  {
    "country": "BG",
    "name": "Straldzha",
    "lat": "42.6",
    "lng": "26.68333"
  },
  {
    "country": "BG",
    "name": "Stara Zagora",
    "lat": "42.43278",
    "lng": "25.64194"
  },
  {
    "country": "BG",
    "name": "Stara Kresna",
    "lat": "41.8",
    "lng": "23.18333"
  },
  {
    "country": "BG",
    "name": "Dupnitsa",
    "lat": "42.26667",
    "lng": "23.11667"
  },
  {
    "country": "BG",
    "name": "Stamboliyski",
    "lat": "42.13333",
    "lng": "24.53333"
  },
  {
    "country": "BG",
    "name": "Spasovo",
    "lat": "43.70168",
    "lng": "28.30399"
  },
  {
    "country": "BG",
    "name": "Sozopol",
    "lat": "42.41667",
    "lng": "27.7"
  },
  {
    "country": "BG",
    "name": "Sofia",
    "lat": "42.69751",
    "lng": "23.32415"
  },
  {
    "country": "BG",
    "name": "Smyadovo",
    "lat": "43.06667",
    "lng": "27.01667"
  },
  {
    "country": "BG",
    "name": "Smolyan",
    "lat": "41.58528",
    "lng": "24.69194"
  },
  {
    "country": "BG",
    "name": "Slivo Pole",
    "lat": "43.94248",
    "lng": "26.20464"
  },
  {
    "country": "BG",
    "name": "Slivnitsa",
    "lat": "42.85182",
    "lng": "23.03792"
  },
  {
    "country": "BG",
    "name": "Sliven",
    "lat": "42.68583",
    "lng": "26.32917"
  },
  {
    "country": "BG",
    "name": "Slavyanovo",
    "lat": "43.46667",
    "lng": "24.86667"
  },
  {
    "country": "BG",
    "name": "Sitovo",
    "lat": "44.0273",
    "lng": "27.01982"
  },
  {
    "country": "BG",
    "name": "Simitli",
    "lat": "41.88333",
    "lng": "23.11667"
  },
  {
    "country": "BG",
    "name": "Simeonovgrad",
    "lat": "42.03333",
    "lng": "25.83333"
  },
  {
    "country": "BG",
    "name": "Silistra",
    "lat": "44.11667",
    "lng": "27.26667"
  },
  {
    "country": "BG",
    "name": "Shumen",
    "lat": "43.27064",
    "lng": "26.92286"
  },
  {
    "country": "BG",
    "name": "Shipka",
    "lat": "42.71667",
    "lng": "25.33333"
  },
  {
    "country": "BG",
    "name": "Shabla",
    "lat": "43.53983",
    "lng": "28.53429"
  },
  {
    "country": "BG",
    "name": "Sevlievo",
    "lat": "43.02583",
    "lng": "25.11361"
  },
  {
    "country": "BG",
    "name": "Septemvri",
    "lat": "42.21667",
    "lng": "24.1"
  },
  {
    "country": "BG",
    "name": "Senovo",
    "lat": "43.65",
    "lng": "26.36667"
  },
  {
    "country": "BG",
    "name": "Satovcha",
    "lat": "41.61667",
    "lng": "23.98333"
  },
  {
    "country": "BG",
    "name": "Sarafovo",
    "lat": "42.56079",
    "lng": "27.52195"
  },
  {
    "country": "BG",
    "name": "Sapareva Banya",
    "lat": "42.28333",
    "lng": "23.26667"
  },
  {
    "country": "BG",
    "name": "Sandanski",
    "lat": "41.56667",
    "lng": "23.28333"
  },
  {
    "country": "BG",
    "name": "Samuil",
    "lat": "43.51667",
    "lng": "26.75"
  },
  {
    "country": "BG",
    "name": "Samokov",
    "lat": "42.337",
    "lng": "23.5528"
  },
  {
    "country": "BG",
    "name": "Sadovo",
    "lat": "42.13178",
    "lng": "24.93999"
  },
  {
    "country": "BG",
    "name": "Ruzhintsi",
    "lat": "43.62333",
    "lng": "22.83083"
  },
  {
    "country": "BG",
    "name": "Ruse",
    "lat": "43.85639",
    "lng": "25.97083"
  },
  {
    "country": "BG",
    "name": "Ruen",
    "lat": "42.8",
    "lng": "27.28333"
  },
  {
    "country": "BG",
    "name": "Rudozem",
    "lat": "41.48751",
    "lng": "24.84945"
  },
  {
    "country": "BG",
    "name": "Roman",
    "lat": "43.15",
    "lng": "23.91667"
  },
  {
    "country": "BG",
    "name": "Rila",
    "lat": "42.13333",
    "lng": "23.13333"
  },
  {
    "country": "BG",
    "name": "Razlog",
    "lat": "41.8863",
    "lng": "23.46714"
  },
  {
    "country": "BG",
    "name": "Razgrad",
    "lat": "43.53333",
    "lng": "26.51667"
  },
  {
    "country": "BG",
    "name": "Ravda",
    "lat": "42.64185",
    "lng": "27.67713"
  },
  {
    "country": "BG",
    "name": "Rakovski",
    "lat": "42.3",
    "lng": "24.96667"
  },
  {
    "country": "BG",
    "name": "Rakitovo",
    "lat": "41.98333",
    "lng": "24.08333"
  },
  {
    "country": "BG",
    "name": "Radomir",
    "lat": "42.54444",
    "lng": "22.95778"
  },
  {
    "country": "BG",
    "name": "Radnevo",
    "lat": "42.3",
    "lng": "25.93333"
  },
  {
    "country": "BG",
    "name": "Parvomaytsi",
    "lat": "43.15",
    "lng": "25.65"
  },
  {
    "country": "BG",
    "name": "Provadia",
    "lat": "43.18333",
    "lng": "27.43333"
  },
  {
    "country": "BG",
    "name": "Primorsko",
    "lat": "42.26667",
    "lng": "27.76667"
  },
  {
    "country": "BG",
    "name": "Veliki Preslav",
    "lat": "43.16667",
    "lng": "26.81667"
  },
  {
    "country": "BG",
    "name": "Pravets",
    "lat": "42.88333",
    "lng": "23.91667"
  },
  {
    "country": "BG",
    "name": "Pordim",
    "lat": "43.38333",
    "lng": "24.85"
  },
  {
    "country": "BG",
    "name": "Popovo",
    "lat": "43.35",
    "lng": "26.23333"
  },
  {
    "country": "BG",
    "name": "Pomorie",
    "lat": "42.56326",
    "lng": "27.62986"
  },
  {
    "country": "BG",
    "name": "Polski Trambesh",
    "lat": "43.38361",
    "lng": "25.64972"
  },
  {
    "country": "BG",
    "name": "Plovdiv",
    "lat": "42.15",
    "lng": "24.75"
  },
  {
    "country": "BG",
    "name": "Pliska",
    "lat": "43.36667",
    "lng": "27.11667"
  },
  {
    "country": "BG",
    "name": "Pleven",
    "lat": "43.41667",
    "lng": "24.61667"
  },
  {
    "country": "BG",
    "name": "Pirdop",
    "lat": "42.7",
    "lng": "24.18333"
  },
  {
    "country": "BG",
    "name": "Petrich",
    "lat": "41.39846",
    "lng": "23.20702"
  },
  {
    "country": "BG",
    "name": "Peshtera",
    "lat": "42.03333",
    "lng": "24.3"
  },
  {
    "country": "BG",
    "name": "Perushtitsa",
    "lat": "42.05",
    "lng": "24.55"
  },
  {
    "country": "BG",
    "name": "Pernik",
    "lat": "42.6",
    "lng": "23.03333"
  },
  {
    "country": "BG",
    "name": "Iskar",
    "lat": "43.45",
    "lng": "24.26667"
  },
  {
    "country": "BG",
    "name": "Pazardzhik",
    "lat": "42.2",
    "lng": "24.33333"
  },
  {
    "country": "BG",
    "name": "Pavlikeni",
    "lat": "43.24278",
    "lng": "25.32194"
  },
  {
    "country": "BG",
    "name": "Pavel Banya",
    "lat": "42.6",
    "lng": "25.2"
  },
  {
    "country": "BG",
    "name": "Panagyurishte",
    "lat": "42.5",
    "lng": "24.18333"
  },
  {
    "country": "BG",
    "name": "Oryahovo",
    "lat": "43.73504",
    "lng": "23.95792"
  },
  {
    "country": "BG",
    "name": "Opaka",
    "lat": "43.45",
    "lng": "26.16667"
  },
  {
    "country": "BG",
    "name": "Omurtag",
    "lat": "43.1",
    "lng": "26.41667"
  },
  {
    "country": "BG",
    "name": "Obzor",
    "lat": "42.81998",
    "lng": "27.88007"
  },
  {
    "country": "BG",
    "name": "Novo Selo",
    "lat": "44.15861",
    "lng": "22.78667"
  },
  {
    "country": "BG",
    "name": "Novi Pazar",
    "lat": "43.35",
    "lng": "27.2"
  },
  {
    "country": "BG",
    "name": "Nova Zagora",
    "lat": "42.48333",
    "lng": "26.01667"
  },
  {
    "country": "BG",
    "name": "Nikopol",
    "lat": "43.70255",
    "lng": "24.89645"
  },
  {
    "country": "BG",
    "name": "Nikolaevo",
    "lat": "42.63333",
    "lng": "25.8"
  },
  {
    "country": "BG",
    "name": "Nesebar",
    "lat": "42.65921",
    "lng": "27.73602"
  },
  {
    "country": "BG",
    "name": "Nedelino",
    "lat": "41.45602",
    "lng": "25.08008"
  },
  {
    "country": "BG",
    "name": "Maglizh",
    "lat": "42.6",
    "lng": "25.55"
  },
  {
    "country": "BG",
    "name": "Mizia",
    "lat": "43.68623",
    "lng": "23.85371"
  },
  {
    "country": "BG",
    "name": "Mirkovo",
    "lat": "42.7",
    "lng": "23.98333"
  },
  {
    "country": "BG",
    "name": "Mineralni Bani",
    "lat": "41.91667",
    "lng": "25.35"
  },
  {
    "country": "BG",
    "name": "Montana",
    "lat": "43.4125",
    "lng": "23.225"
  },
  {
    "country": "BG",
    "name": "Tsarevo",
    "lat": "42.16955",
    "lng": "27.84541"
  },
  {
    "country": "BG",
    "name": "Mezdra",
    "lat": "43.15",
    "lng": "23.7"
  },
  {
    "country": "BG",
    "name": "Medovene",
    "lat": "43.76667",
    "lng": "26.51667"
  },
  {
    "country": "BG",
    "name": "Medkovets",
    "lat": "43.62972",
    "lng": "23.18111"
  },
  {
    "country": "BG",
    "name": "Malko Tarnovo",
    "lat": "41.97958",
    "lng": "27.52477"
  },
  {
    "country": "BG",
    "name": "Madzharovo",
    "lat": "41.63461",
    "lng": "25.86439"
  },
  {
    "country": "BG",
    "name": "Madan",
    "lat": "41.49869",
    "lng": "24.93973"
  },
  {
    "country": "BG",
    "name": "Lyubimets",
    "lat": "41.83333",
    "lng": "26.08333"
  },
  {
    "country": "BG",
    "name": "Lyaskovets",
    "lat": "43.11111",
    "lng": "25.72833"
  },
  {
    "country": "BG",
    "name": "Lukovit",
    "lat": "43.2",
    "lng": "24.16667"
  },
  {
    "country": "BG",
    "name": "Laki",
    "lat": "41.85",
    "lng": "24.81667"
  },
  {
    "country": "BG",
    "name": "Loznitsa",
    "lat": "43.36667",
    "lng": "26.6"
  },
  {
    "country": "BG",
    "name": "Lovech",
    "lat": "43.13333",
    "lng": "24.71667"
  },
  {
    "country": "BG",
    "name": "Lom",
    "lat": "43.81389",
    "lng": "23.23611"
  },
  {
    "country": "BG",
    "name": "Levski",
    "lat": "43.36667",
    "lng": "25.13333"
  },
  {
    "country": "BG",
    "name": "Letnitsa",
    "lat": "43.31167",
    "lng": "25.07333"
  },
  {
    "country": "BG",
    "name": "Lesichevo",
    "lat": "42.35",
    "lng": "24.11667"
  },
  {
    "country": "BG",
    "name": "Lakatnik",
    "lat": "43.05",
    "lng": "23.4"
  },
  {
    "country": "BG",
    "name": "Kyustendil",
    "lat": "42.28389",
    "lng": "22.69111"
  },
  {
    "country": "BG",
    "name": "Kardzhali",
    "lat": "41.65",
    "lng": "25.36667"
  },
  {
    "country": "BG",
    "name": "Kula",
    "lat": "43.88778",
    "lng": "22.52139"
  },
  {
    "country": "BG",
    "name": "Kubrat",
    "lat": "43.8",
    "lng": "26.5"
  },
  {
    "country": "BG",
    "name": "Krushari",
    "lat": "43.81675",
    "lng": "27.75552"
  },
  {
    "country": "BG",
    "name": "Krumovgrad",
    "lat": "41.47127",
    "lng": "25.65485"
  },
  {
    "country": "BG",
    "name": "Krivodol",
    "lat": "43.37444",
    "lng": "23.48444"
  },
  {
    "country": "BG",
    "name": "Krichim",
    "lat": "42.05",
    "lng": "24.46667"
  },
  {
    "country": "BG",
    "name": "Kresna",
    "lat": "41.73333",
    "lng": "23.15"
  },
  {
    "country": "BG",
    "name": "Kozloduy",
    "lat": "43.77864",
    "lng": "23.72058"
  },
  {
    "country": "BG",
    "name": "Koynare",
    "lat": "43.35",
    "lng": "24.13333"
  },
  {
    "country": "BG",
    "name": "Kotel",
    "lat": "42.88333",
    "lng": "26.45"
  },
  {
    "country": "BG",
    "name": "Kostinbrod",
    "lat": "42.81667",
    "lng": "23.21667"
  },
  {
    "country": "BG",
    "name": "Koprivshtitsa",
    "lat": "42.63333",
    "lng": "24.35"
  },
  {
    "country": "BG",
    "name": "Kocherinovo",
    "lat": "42.08439",
    "lng": "23.0571"
  },
  {
    "country": "BG",
    "name": "Knezha",
    "lat": "43.5",
    "lng": "24.08333"
  },
  {
    "country": "BG",
    "name": "Klisura",
    "lat": "42.7",
    "lng": "24.45"
  },
  {
    "country": "BG",
    "name": "Kiten",
    "lat": "43.08333",
    "lng": "27.31667"
  },
  {
    "country": "BG",
    "name": "Kiten",
    "lat": "42.23424",
    "lng": "27.7749"
  },
  {
    "country": "BG",
    "name": "Kirkovo",
    "lat": "41.32715",
    "lng": "25.36379"
  },
  {
    "country": "BG",
    "name": "Kilifarevo",
    "lat": "42.98333",
    "lng": "25.63333"
  },
  {
    "country": "BG",
    "name": "Tsar Kaloyan",
    "lat": "43.61667",
    "lng": "26.25"
  },
  {
    "country": "BG",
    "name": "Hisarya",
    "lat": "42.5",
    "lng": "24.7"
  },
  {
    "country": "BG",
    "name": "Hayredin",
    "lat": "43.6",
    "lng": "23.66667"
  },
  {
    "country": "BG",
    "name": "Haskovo",
    "lat": "41.93415",
    "lng": "25.55557"
  },
  {
    "country": "BG",
    "name": "Harmanli",
    "lat": "41.93333",
    "lng": "25.9"
  },
  {
    "country": "BG",
    "name": "Hadzhidimovo",
    "lat": "41.52222",
    "lng": "23.86861"
  },
  {
    "country": "BG",
    "name": "Kermen",
    "lat": "42.5",
    "lng": "26.25"
  },
  {
    "country": "BG",
    "name": "Kazanlak",
    "lat": "42.61667",
    "lng": "25.4"
  },
  {
    "country": "BG",
    "name": "Kaynardzha",
    "lat": "43.98333",
    "lng": "27.5"
  },
  {
    "country": "BG",
    "name": "Kavarna",
    "lat": "43.43601",
    "lng": "28.33953"
  },
  {
    "country": "BG",
    "name": "Kaspichan",
    "lat": "43.31667",
    "lng": "27.16667"
  },
  {
    "country": "BG",
    "name": "Karnobat",
    "lat": "42.65",
    "lng": "26.98333"
  },
  {
    "country": "BG",
    "name": "Karlovo",
    "lat": "42.63333",
    "lng": "24.8"
  },
  {
    "country": "BG",
    "name": "Kaolinovo",
    "lat": "43.61667",
    "lng": "27.11667"
  },
  {
    "country": "BG",
    "name": "Kameno",
    "lat": "42.57084",
    "lng": "27.29875"
  },
  {
    "country": "BG",
    "name": "Kaloyanovo",
    "lat": "42.35",
    "lng": "24.73333"
  },
  {
    "country": "BG",
    "name": "Kalofer",
    "lat": "42.61667",
    "lng": "24.98333"
  },
  {
    "country": "BG",
    "name": "Ivaylovgrad",
    "lat": "41.52672",
    "lng": "26.1249"
  },
  {
    "country": "BG",
    "name": "Ivanovo",
    "lat": "43.68568",
    "lng": "25.95565"
  },
  {
    "country": "BG",
    "name": "Isperih",
    "lat": "43.71667",
    "lng": "26.83333"
  },
  {
    "country": "BG",
    "name": "Iskar",
    "lat": "43.6708",
    "lng": "24.45233"
  },
  {
    "country": "BG",
    "name": "Ihtiman",
    "lat": "42.43333",
    "lng": "23.81667"
  },
  {
    "country": "BG",
    "name": "Garmen",
    "lat": "41.6",
    "lng": "23.81667"
  },
  {
    "country": "BG",
    "name": "Gurkovo",
    "lat": "42.66667",
    "lng": "25.8"
  },
  {
    "country": "BG",
    "name": "Gulyantsi",
    "lat": "43.64109",
    "lng": "24.69368"
  },
  {
    "country": "BG",
    "name": "Gŭlŭbovo",
    "lat": "42.13333",
    "lng": "25.85"
  },
  {
    "country": "BG",
    "name": "Sredets",
    "lat": "42.34747",
    "lng": "27.17898"
  },
  {
    "country": "BG",
    "name": "Gramada",
    "lat": "43.83444",
    "lng": "22.65861"
  },
  {
    "country": "BG",
    "name": "Gyovren",
    "lat": "41.66326",
    "lng": "24.37557"
  },
  {
    "country": "BG",
    "name": "Gotse Delchev",
    "lat": "41.56667",
    "lng": "23.73333"
  },
  {
    "country": "BG",
    "name": "Gorna Oryahovitsa",
    "lat": "43.12778",
    "lng": "25.70167"
  },
  {
    "country": "BG",
    "name": "Gorna Malina",
    "lat": "42.68333",
    "lng": "23.7"
  },
  {
    "country": "BG",
    "name": "Gorichevo",
    "lat": "43.85",
    "lng": "26.45"
  },
  {
    "country": "BG",
    "name": "Godech",
    "lat": "43.01682",
    "lng": "23.04852"
  },
  {
    "country": "BG",
    "name": "Glavinitsa",
    "lat": "43.91667",
    "lng": "26.83333"
  },
  {
    "country": "BG",
    "name": "Dolni Chiflik",
    "lat": "42.99296",
    "lng": "27.71596"
  },
  {
    "country": "BG",
    "name": "General-Toshevo",
    "lat": "43.7",
    "lng": "28.03333"
  },
  {
    "country": "BG",
    "name": "Gara Hitrino",
    "lat": "43.43333",
    "lng": "26.91667"
  },
  {
    "country": "BG",
    "name": "Gabrovo",
    "lat": "42.87472",
    "lng": "25.33417"
  },
  {
    "country": "BG",
    "name": "Gabrovo",
    "lat": "41.8",
    "lng": "25.26667"
  },
  {
    "country": "BG",
    "name": "Etropole",
    "lat": "42.83333",
    "lng": "24"
  },
  {
    "country": "BG",
    "name": "Elkhovo",
    "lat": "42.38333",
    "lng": "25.43333"
  },
  {
    "country": "BG",
    "name": "Elhovo",
    "lat": "42.16667",
    "lng": "26.56667"
  },
  {
    "country": "BG",
    "name": "Elin Pelin",
    "lat": "42.66667",
    "lng": "23.6"
  },
  {
    "country": "BG",
    "name": "Elena",
    "lat": "42.93333",
    "lng": "25.88333"
  },
  {
    "country": "BG",
    "name": "Dzhebel",
    "lat": "41.49566",
    "lng": "25.30363"
  },
  {
    "country": "BG",
    "name": "Dve Mogili",
    "lat": "43.59258",
    "lng": "25.87486"
  },
  {
    "country": "BG",
    "name": "Dunavtsi",
    "lat": "43.92111",
    "lng": "22.82111"
  },
  {
    "country": "BG",
    "name": "Dulovo",
    "lat": "43.81667",
    "lng": "27.15"
  },
  {
    "country": "BG",
    "name": "Dalgopol",
    "lat": "43.05",
    "lng": "27.35"
  },
  {
    "country": "BG",
    "name": "Dryanovo",
    "lat": "42.97897",
    "lng": "25.4785"
  },
  {
    "country": "BG",
    "name": "Dragoman",
    "lat": "42.92191",
    "lng": "22.93109"
  },
  {
    "country": "BG",
    "name": "Dospat",
    "lat": "41.64462",
    "lng": "24.15857"
  },
  {
    "country": "BG",
    "name": "Dolni Dabnik",
    "lat": "43.4",
    "lng": "24.43333"
  },
  {
    "country": "BG",
    "name": "Dolna Mitropolia",
    "lat": "43.46667",
    "lng": "24.53333"
  },
  {
    "country": "BG",
    "name": "Dolna Banya",
    "lat": "42.3",
    "lng": "23.76667"
  },
  {
    "country": "BG",
    "name": "Dimovo",
    "lat": "43.74167",
    "lng": "22.72694"
  },
  {
    "country": "BG",
    "name": "Dimitrovgrad",
    "lat": "42.05",
    "lng": "25.6"
  },
  {
    "country": "BG",
    "name": "Devnya",
    "lat": "43.22222",
    "lng": "27.56944"
  },
  {
    "country": "BG",
    "name": "Devin",
    "lat": "41.74327",
    "lng": "24.40003"
  },
  {
    "country": "BG",
    "name": "Debelets",
    "lat": "43.03333",
    "lng": "25.61667"
  },
  {
    "country": "BG",
    "name": "Chuprene",
    "lat": "43.51806",
    "lng": "22.66611"
  },
  {
    "country": "BG",
    "name": "Chirpan",
    "lat": "42.2",
    "lng": "25.33333"
  },
  {
    "country": "BG",
    "name": "Chiprovtsi",
    "lat": "43.38417",
    "lng": "22.88083"
  },
  {
    "country": "BG",
    "name": "Cherven Bryag",
    "lat": "43.26667",
    "lng": "24.1"
  },
  {
    "country": "BG",
    "name": "Chernomorets",
    "lat": "42.44589",
    "lng": "27.63834"
  },
  {
    "country": "BG",
    "name": "Chepelare",
    "lat": "41.73333",
    "lng": "24.68333"
  },
  {
    "country": "BG",
    "name": "Chelopech",
    "lat": "42.7",
    "lng": "24.08333"
  },
  {
    "country": "BG",
    "name": "Chavdar",
    "lat": "42.65",
    "lng": "24.05"
  },
  {
    "country": "BG",
    "name": "Byala Slatina",
    "lat": "43.46667",
    "lng": "23.93333"
  },
  {
    "country": "BG",
    "name": "Byala Cherkva",
    "lat": "43.2",
    "lng": "25.3"
  },
  {
    "country": "BG",
    "name": "Byala",
    "lat": "42.87426",
    "lng": "27.88865"
  },
  {
    "country": "BG",
    "name": "Burgas",
    "lat": "42.50606",
    "lng": "27.46781"
  },
  {
    "country": "BG",
    "name": "Buhovo",
    "lat": "42.76667",
    "lng": "23.56667"
  },
  {
    "country": "BG",
    "name": "Brusartsi",
    "lat": "43.66667",
    "lng": "23.06667"
  },
  {
    "country": "BG",
    "name": "Brezovo",
    "lat": "42.35",
    "lng": "25.08333"
  },
  {
    "country": "BG",
    "name": "Breznik",
    "lat": "42.74139",
    "lng": "22.89806"
  },
  {
    "country": "BG",
    "name": "Bregovo",
    "lat": "44.15167",
    "lng": "22.6425"
  },
  {
    "country": "BG",
    "name": "Bratsigovo",
    "lat": "42.01667",
    "lng": "24.36667"
  },
  {
    "country": "BG",
    "name": "Bozhurishte",
    "lat": "42.75",
    "lng": "23.2"
  },
  {
    "country": "BG",
    "name": "Boychinovtsi",
    "lat": "43.47222",
    "lng": "23.33583"
  },
  {
    "country": "BG",
    "name": "Bov",
    "lat": "43.0325",
    "lng": "23.37806"
  },
  {
    "country": "BG",
    "name": "Botevgrad",
    "lat": "42.9",
    "lng": "23.78333"
  },
  {
    "country": "BG",
    "name": "Borovo",
    "lat": "43.50086",
    "lng": "25.80992"
  },
  {
    "country": "BG",
    "name": "Borovan",
    "lat": "43.43333",
    "lng": "23.75"
  },
  {
    "country": "BG",
    "name": "Borino",
    "lat": "41.68408",
    "lng": "24.293"
  },
  {
    "country": "BG",
    "name": "Bolyarovo",
    "lat": "42.14962",
    "lng": "26.81116"
  },
  {
    "country": "BG",
    "name": "Bobovdol",
    "lat": "42.36972",
    "lng": "23.01722"
  },
  {
    "country": "BG",
    "name": "Boboshevo",
    "lat": "42.15296",
    "lng": "23.00146"
  },
  {
    "country": "BG",
    "name": "Blagoevgrad",
    "lat": "42.01667",
    "lng": "23.1"
  },
  {
    "country": "BG",
    "name": "Berkovitsa",
    "lat": "43.23611",
    "lng": "23.12583"
  },
  {
    "country": "BG",
    "name": "Belovo",
    "lat": "42.21667",
    "lng": "24.01667"
  },
  {
    "country": "BG",
    "name": "Belogradchik",
    "lat": "43.62722",
    "lng": "22.68361"
  },
  {
    "country": "BG",
    "name": "Belitsa",
    "lat": "41.95694",
    "lng": "23.5725"
  },
  {
    "country": "BG",
    "name": "Belene",
    "lat": "43.64594",
    "lng": "25.12627"
  },
  {
    "country": "BG",
    "name": "Batak",
    "lat": "41.95",
    "lng": "24.21667"
  },
  {
    "country": "BG",
    "name": "Bata",
    "lat": "42.73802",
    "lng": "27.49643"
  },
  {
    "country": "BG",
    "name": "Bansko",
    "lat": "41.8383",
    "lng": "23.48851"
  },
  {
    "country": "BG",
    "name": "Banite",
    "lat": "41.61667",
    "lng": "25.01667"
  },
  {
    "country": "BG",
    "name": "Balchik",
    "lat": "43.42166",
    "lng": "28.15848"
  },
  {
    "country": "BG",
    "name": "Aytos",
    "lat": "42.7",
    "lng": "27.25"
  },
  {
    "country": "BG",
    "name": "Asenovgrad",
    "lat": "42.01667",
    "lng": "24.86667"
  },
  {
    "country": "BG",
    "name": "Asen",
    "lat": "42.65",
    "lng": "25.2"
  },
  {
    "country": "BG",
    "name": "Ardino",
    "lat": "41.58333",
    "lng": "25.13333"
  },
  {
    "country": "BG",
    "name": "Apriltsi",
    "lat": "42.84142",
    "lng": "24.91759"
  },
  {
    "country": "BG",
    "name": "Antonovo",
    "lat": "43.15",
    "lng": "26.16667"
  },
  {
    "country": "BG",
    "name": "Anton",
    "lat": "42.75",
    "lng": "24.28333"
  },
  {
    "country": "BG",
    "name": "Alfatar",
    "lat": "43.95",
    "lng": "27.28333"
  },
  {
    "country": "BG",
    "name": "Aksakovo",
    "lat": "43.25",
    "lng": "27.81667"
  },
  {
    "country": "BG",
    "name": "Ahtopol",
    "lat": "42.09768",
    "lng": "27.93961"
  },
  {
    "country": "BG",
    "name": "Zlatni Pyasatsi",
    "lat": "43.285",
    "lng": "28.0418"
  },
  {
    "country": "BG",
    "name": "Aheloy",
    "lat": "42.64987",
    "lng": "27.64838"
  },
  {
    "country": "BG",
    "name": "Balgarevo",
    "lat": "43.40296",
    "lng": "28.41189"
  },
  {
    "country": "BH",
    "name": "Sitrah",
    "lat": "26.15472",
    "lng": "50.62056"
  },
  {
    "country": "BH",
    "name": "Madīnat ‘Īsá",
    "lat": "26.17361",
    "lng": "50.54778"
  },
  {
    "country": "BH",
    "name": "Jidd Ḩafş",
    "lat": "26.21861",
    "lng": "50.54778"
  },
  {
    "country": "BH",
    "name": "Madīnat Ḩamad",
    "lat": "26.11528",
    "lng": "50.50694"
  },
  {
    "country": "BH",
    "name": "Dār Kulayb",
    "lat": "26.06861",
    "lng": "50.50389"
  },
  {
    "country": "BH",
    "name": "Al Muharraq",
    "lat": "26.25722",
    "lng": "50.61194"
  },
  {
    "country": "BH",
    "name": "Manama",
    "lat": "26.22787",
    "lng": "50.58565"
  },
  {
    "country": "BH",
    "name": "Al Ḩadd",
    "lat": "26.24556",
    "lng": "50.65417"
  },
  {
    "country": "BH",
    "name": "Ar Rifā‘",
    "lat": "26.13",
    "lng": "50.555"
  },
  {
    "country": "BI",
    "name": "Makamba",
    "lat": "-4.1348",
    "lng": "29.804"
  },
  {
    "country": "BI",
    "name": "Bururi",
    "lat": "-3.94877",
    "lng": "29.62438"
  },
  {
    "country": "BI",
    "name": "Rumonge",
    "lat": "-3.9736",
    "lng": "29.4386"
  },
  {
    "country": "BI",
    "name": "Mwaro",
    "lat": "-3.51128",
    "lng": "29.70334"
  },
  {
    "country": "BI",
    "name": "Isale",
    "lat": "-3.3489",
    "lng": "29.4839"
  },
  {
    "country": "BI",
    "name": "Bujumbura",
    "lat": "-3.3822",
    "lng": "29.3644"
  },
  {
    "country": "BI",
    "name": "Muramvya",
    "lat": "-3.2682",
    "lng": "29.6079"
  },
  {
    "country": "BI",
    "name": "Gitega",
    "lat": "-3.4264",
    "lng": "29.9308"
  },
  {
    "country": "BI",
    "name": "Ruyigi",
    "lat": "-3.47639",
    "lng": "30.24861"
  },
  {
    "country": "BI",
    "name": "Cankuzo",
    "lat": "-3.2186",
    "lng": "30.5528"
  },
  {
    "country": "BI",
    "name": "Karuzi",
    "lat": "-3.10139",
    "lng": "30.16278"
  },
  {
    "country": "BI",
    "name": "Bubanza",
    "lat": "-3.0804",
    "lng": "29.391"
  },
  {
    "country": "BI",
    "name": "Cibitoke",
    "lat": "-2.8869",
    "lng": "29.1248"
  },
  {
    "country": "BI",
    "name": "Buganda",
    "lat": "-2.9663",
    "lng": "29.1944"
  },
  {
    "country": "BI",
    "name": "Ngozi",
    "lat": "-2.9075",
    "lng": "29.8306"
  },
  {
    "country": "BI",
    "name": "Kayanza",
    "lat": "-2.9221",
    "lng": "29.6293"
  },
  {
    "country": "BI",
    "name": "Muyinga",
    "lat": "-2.8451",
    "lng": "30.3414"
  },
  {
    "country": "BI",
    "name": "Kirundo",
    "lat": "-2.5845",
    "lng": "30.0959"
  },
  {
    "country": "BI",
    "name": "Rutana",
    "lat": "-3.9279",
    "lng": "29.992"
  },
  {
    "country": "BJ",
    "name": "Tchaourou",
    "lat": "8.88649",
    "lng": "2.59753"
  },
  {
    "country": "BJ",
    "name": "Tanguiéta",
    "lat": "10.62118",
    "lng": "1.26651"
  },
  {
    "country": "BJ",
    "name": "Savé",
    "lat": "8.03424",
    "lng": "2.4866"
  },
  {
    "country": "BJ",
    "name": "Savalou",
    "lat": "7.92807",
    "lng": "1.97558"
  },
  {
    "country": "BJ",
    "name": "Sakété",
    "lat": "6.73618",
    "lng": "2.65866"
  },
  {
    "country": "BJ",
    "name": "Porto-Novo",
    "lat": "6.49646",
    "lng": "2.60359"
  },
  {
    "country": "BJ",
    "name": "Pobé",
    "lat": "6.98008",
    "lng": "2.6649"
  },
  {
    "country": "BJ",
    "name": "Parakou",
    "lat": "9.33716",
    "lng": "2.63031"
  },
  {
    "country": "BJ",
    "name": "Ouidah",
    "lat": "6.36307",
    "lng": "2.08506"
  },
  {
    "country": "BJ",
    "name": "Nikki",
    "lat": "9.94009",
    "lng": "3.21075"
  },
  {
    "country": "BJ",
    "name": "Natitingou",
    "lat": "10.30416",
    "lng": "1.37962"
  },
  {
    "country": "BJ",
    "name": "Malanville",
    "lat": "11.86819",
    "lng": "3.38327"
  },
  {
    "country": "BJ",
    "name": "Lokossa",
    "lat": "6.63869",
    "lng": "1.71674"
  },
  {
    "country": "BJ",
    "name": "Kétou",
    "lat": "7.36332",
    "lng": "2.59978"
  },
  {
    "country": "BJ",
    "name": "Kandi",
    "lat": "11.13417",
    "lng": "2.93861"
  },
  {
    "country": "BJ",
    "name": "Hinvi",
    "lat": "6.76667",
    "lng": "2.16667"
  },
  {
    "country": "BJ",
    "name": "Hévié",
    "lat": "6.41667",
    "lng": "2.25"
  },
  {
    "country": "BJ",
    "name": "Guilmaro",
    "lat": "10.56583",
    "lng": "1.72444"
  },
  {
    "country": "BJ",
    "name": "Grand-Popo",
    "lat": "6.28036",
    "lng": "1.82251"
  },
  {
    "country": "BJ",
    "name": "Dogbo",
    "lat": "6.81667",
    "lng": "1.78333"
  },
  {
    "country": "BJ",
    "name": "Djougou",
    "lat": "9.70853",
    "lng": "1.66598"
  },
  {
    "country": "BJ",
    "name": "Dassa-Zoumé",
    "lat": "7.75",
    "lng": "2.18333"
  },
  {
    "country": "BJ",
    "name": "Cové",
    "lat": "7.22097",
    "lng": "2.34017"
  },
  {
    "country": "BJ",
    "name": "Cotonou",
    "lat": "6.36536",
    "lng": "2.41833"
  },
  {
    "country": "BJ",
    "name": "Comé",
    "lat": "6.40764",
    "lng": "1.88198"
  },
  {
    "country": "BJ",
    "name": "Bohicon",
    "lat": "7.17826",
    "lng": "2.0667"
  },
  {
    "country": "BJ",
    "name": "Bétérou",
    "lat": "9.19916",
    "lng": "2.25855"
  },
  {
    "country": "BJ",
    "name": "Bembèrèkè",
    "lat": "10.22827",
    "lng": "2.66335"
  },
  {
    "country": "BJ",
    "name": "Bassila",
    "lat": "9.00814",
    "lng": "1.6654"
  },
  {
    "country": "BJ",
    "name": "Banikoara",
    "lat": "11.29845",
    "lng": "2.43856"
  },
  {
    "country": "BJ",
    "name": "Aplahoué",
    "lat": "6.93333",
    "lng": "1.68333"
  },
  {
    "country": "BJ",
    "name": "Allada",
    "lat": "6.66547",
    "lng": "2.15138"
  },
  {
    "country": "BJ",
    "name": "Abomey-Calavi",
    "lat": "6.44852",
    "lng": "2.35566"
  },
  {
    "country": "BJ",
    "name": "Abomey",
    "lat": "7.18286",
    "lng": "1.99119"
  },
  {
    "country": "BJ",
    "name": "Houinvigue",
    "lat": "6.8862",
    "lng": "2.4806"
  },
  {
    "country": "BL",
    "name": "Gustavia",
    "lat": "17.89618",
    "lng": "-62.84978"
  },
  {
    "country": "BM",
    "name": "Saint George",
    "lat": "32.38167",
    "lng": "-64.67806"
  },
  {
    "country": "BM",
    "name": "Hamilton",
    "lat": "32.2949",
    "lng": "-64.78303"
  },
  {
    "country": "BN",
    "name": "Tutong",
    "lat": "4.8",
    "lng": "114.65"
  },
  {
    "country": "BN",
    "name": "Seria",
    "lat": "4.60637",
    "lng": "114.32476"
  },
  {
    "country": "BN",
    "name": "Kuala Belait",
    "lat": "4.58361",
    "lng": "114.2312"
  },
  {
    "country": "BN",
    "name": "Bangar",
    "lat": "4.71667",
    "lng": "115.06667"
  },
  {
    "country": "BN",
    "name": "Bandar Seri Begawan",
    "lat": "4.94029",
    "lng": "114.94806"
  },
  {
    "country": "BO",
    "name": "San Pedro",
    "lat": "-18.28333",
    "lng": "-59.81667"
  },
  {
    "country": "BO",
    "name": "San Matías",
    "lat": "-16.36667",
    "lng": "-58.4"
  },
  {
    "country": "BO",
    "name": "Roboré",
    "lat": "-18.33473",
    "lng": "-59.76142"
  },
  {
    "country": "BO",
    "name": "Puerto Quijarro",
    "lat": "-17.78333",
    "lng": "-57.76667"
  },
  {
    "country": "BO",
    "name": "Nueva Manoa",
    "lat": "-9.71828",
    "lng": "-65.39544"
  },
  {
    "country": "BO",
    "name": "Yamparáez",
    "lat": "-19.18929",
    "lng": "-65.12329"
  },
  {
    "country": "BO",
    "name": "Yacuiba",
    "lat": "-22.01643",
    "lng": "-63.67753"
  },
  {
    "country": "BO",
    "name": "Warnes",
    "lat": "-17.5163",
    "lng": "-63.16778"
  },
  {
    "country": "BO",
    "name": "Viloco",
    "lat": "-16.95",
    "lng": "-67.55"
  },
  {
    "country": "BO",
    "name": "Villazón",
    "lat": "-22.08659",
    "lng": "-65.59422"
  },
  {
    "country": "BO",
    "name": "Villa Yapacaní",
    "lat": "-17.4",
    "lng": "-63.83333"
  },
  {
    "country": "BO",
    "name": "Villa Serrano",
    "lat": "-19.12489",
    "lng": "-64.32343"
  },
  {
    "country": "BO",
    "name": "Yotala",
    "lat": "-19.15861",
    "lng": "-65.26417"
  },
  {
    "country": "BO",
    "name": "Villamontes",
    "lat": "-21.26235",
    "lng": "-63.46903"
  },
  {
    "country": "BO",
    "name": "Villa Charcas",
    "lat": "-20.72278",
    "lng": "-64.88478"
  },
  {
    "country": "BO",
    "name": "Vallegrande",
    "lat": "-18.48923",
    "lng": "-64.10609"
  },
  {
    "country": "BO",
    "name": "Uyuni",
    "lat": "-20.45967",
    "lng": "-66.82503"
  },
  {
    "country": "BO",
    "name": "Urubichá",
    "lat": "-15.39286",
    "lng": "-62.94661"
  },
  {
    "country": "BO",
    "name": "Tupiza",
    "lat": "-21.44345",
    "lng": "-65.71875"
  },
  {
    "country": "BO",
    "name": "Trinidad",
    "lat": "-14.83333",
    "lng": "-64.9"
  },
  {
    "country": "BO",
    "name": "Totoral",
    "lat": "-18.49587",
    "lng": "-66.8738"
  },
  {
    "country": "BO",
    "name": "Totora",
    "lat": "-17.72662",
    "lng": "-65.1932"
  },
  {
    "country": "BO",
    "name": "Tomina",
    "lat": "-19.18333",
    "lng": "-64.53333"
  },
  {
    "country": "BO",
    "name": "Eucaliptus",
    "lat": "-17.58333",
    "lng": "-67.51667"
  },
  {
    "country": "BO",
    "name": "Tiahuanaco",
    "lat": "-16.55228",
    "lng": "-68.67953"
  },
  {
    "country": "BO",
    "name": "Tarija",
    "lat": "-21.53549",
    "lng": "-64.72956"
  },
  {
    "country": "BO",
    "name": "Tarata",
    "lat": "-17.60898",
    "lng": "-66.02135"
  },
  {
    "country": "BO",
    "name": "Tarabuco",
    "lat": "-19.18168",
    "lng": "-64.91517"
  },
  {
    "country": "BO",
    "name": "Sucre",
    "lat": "-19.03332",
    "lng": "-65.26274"
  },
  {
    "country": "BO",
    "name": "Sotomayor",
    "lat": "-19.34",
    "lng": "-64.99917"
  },
  {
    "country": "BO",
    "name": "Sorata",
    "lat": "-15.76667",
    "lng": "-68.63333"
  },
  {
    "country": "BO",
    "name": "Sipe Sipe",
    "lat": "-17.45",
    "lng": "-66.38333"
  },
  {
    "country": "BO",
    "name": "Sapirangui",
    "lat": "-19.93333",
    "lng": "-63.78333"
  },
  {
    "country": "BO",
    "name": "Santiago del Torno",
    "lat": "-17.98674",
    "lng": "-63.38118"
  },
  {
    "country": "BO",
    "name": "Santa Rosa del Sara",
    "lat": "-17.10916",
    "lng": "-63.59514"
  },
  {
    "country": "BO",
    "name": "Santa Rosa",
    "lat": "-14.16667",
    "lng": "-66.88333"
  },
  {
    "country": "BO",
    "name": "Santa Rita",
    "lat": "-17.96667",
    "lng": "-63.35"
  },
  {
    "country": "BO",
    "name": "Santa Elena",
    "lat": "-20.55",
    "lng": "-64.78333"
  },
  {
    "country": "BO",
    "name": "Santa Cruz de la Sierra",
    "lat": "-17.78629",
    "lng": "-63.18117"
  },
  {
    "country": "BO",
    "name": "Santa Bárbara",
    "lat": "-20.91667",
    "lng": "-66.05"
  },
  {
    "country": "BO",
    "name": "San Ramón",
    "lat": "-13.28333",
    "lng": "-64.71667"
  },
  {
    "country": "BO",
    "name": "San Pedro",
    "lat": "-19.61667",
    "lng": "-64.5"
  },
  {
    "country": "BO",
    "name": "San Pedro",
    "lat": "-16.23717",
    "lng": "-68.85063"
  },
  {
    "country": "BO",
    "name": "San Pablo",
    "lat": "-16.21667",
    "lng": "-68.83333"
  },
  {
    "country": "BO",
    "name": "San Julian",
    "lat": "-17.78333",
    "lng": "-62.86667"
  },
  {
    "country": "BO",
    "name": "San Juan del Surutú",
    "lat": "-17.48333",
    "lng": "-63.7"
  },
  {
    "country": "BO",
    "name": "San Juan",
    "lat": "-21.26667",
    "lng": "-65.3"
  },
  {
    "country": "BO",
    "name": "San Ignacio de Velasco",
    "lat": "-16.36667",
    "lng": "-60.95"
  },
  {
    "country": "BO",
    "name": "San Francisco",
    "lat": "-20.71667",
    "lng": "-64.7"
  },
  {
    "country": "BO",
    "name": "San Carlos",
    "lat": "-17.4",
    "lng": "-63.75"
  },
  {
    "country": "BO",
    "name": "San Borja",
    "lat": "-14.81667",
    "lng": "-66.85"
  },
  {
    "country": "BO",
    "name": "Samaipata",
    "lat": "-18.18005",
    "lng": "-63.87552"
  },
  {
    "country": "BO",
    "name": "Salitre",
    "lat": "-20.88333",
    "lng": "-64.91667"
  },
  {
    "country": "BO",
    "name": "Rurrenabaque",
    "lat": "-14.44125",
    "lng": "-67.52781"
  },
  {
    "country": "BO",
    "name": "Rosario del Ingre",
    "lat": "-20.58333",
    "lng": "-63.9"
  },
  {
    "country": "BO",
    "name": "Riberalta",
    "lat": "-11.00654",
    "lng": "-66.06312"
  },
  {
    "country": "BO",
    "name": "Reyes",
    "lat": "-14.2952",
    "lng": "-67.33624"
  },
  {
    "country": "BO",
    "name": "Quime",
    "lat": "-16.98333",
    "lng": "-67.21667"
  },
  {
    "country": "BO",
    "name": "Punata",
    "lat": "-17.54234",
    "lng": "-65.83472"
  },
  {
    "country": "BO",
    "name": "Pulqui",
    "lat": "-19.23333",
    "lng": "-65.21667"
  },
  {
    "country": "BO",
    "name": "Puesto de Pailas",
    "lat": "-17.65",
    "lng": "-62.8"
  },
  {
    "country": "BO",
    "name": "Presto",
    "lat": "-18.92944",
    "lng": "-64.93917"
  },
  {
    "country": "BO",
    "name": "Potosí",
    "lat": "-19.58361",
    "lng": "-65.75306"
  },
  {
    "country": "BO",
    "name": "Potolo",
    "lat": "-19.00556",
    "lng": "-65.52861"
  },
  {
    "country": "BO",
    "name": "Portachuelo",
    "lat": "-17.35168",
    "lng": "-63.39282"
  },
  {
    "country": "BO",
    "name": "Poopó",
    "lat": "-18.38026",
    "lng": "-66.96695"
  },
  {
    "country": "BO",
    "name": "Pocpo",
    "lat": "-18.83333",
    "lng": "-65.36667"
  },
  {
    "country": "BO",
    "name": "Piocera",
    "lat": "-18.75",
    "lng": "-65.4"
  },
  {
    "country": "BO",
    "name": "Pilaya",
    "lat": "-20.95",
    "lng": "-64.75"
  },
  {
    "country": "BO",
    "name": "Paurito",
    "lat": "-17.88333",
    "lng": "-62.96667"
  },
  {
    "country": "BO",
    "name": "Patacamaya",
    "lat": "-17.2358",
    "lng": "-67.92169"
  },
  {
    "country": "BO",
    "name": "Pailón",
    "lat": "-17.65",
    "lng": "-62.75"
  },
  {
    "country": "BO",
    "name": "Padilla",
    "lat": "-19.30878",
    "lng": "-64.30273"
  },
  {
    "country": "BO",
    "name": "Oruro",
    "lat": "-17.98333",
    "lng": "-67.15"
  },
  {
    "country": "BO",
    "name": "Okinawa Número Uno",
    "lat": "-17.23333",
    "lng": "-62.81667"
  },
  {
    "country": "BO",
    "name": "Montero",
    "lat": "-17.33866",
    "lng": "-63.2505"
  },
  {
    "country": "BO",
    "name": "Monteagudo",
    "lat": "-19.79989",
    "lng": "-63.95461"
  },
  {
    "country": "BO",
    "name": "Mojotoro",
    "lat": "-18.91667",
    "lng": "-65.06667"
  },
  {
    "country": "BO",
    "name": "Mojocoya",
    "lat": "-18.7641",
    "lng": "-64.61978"
  },
  {
    "country": "BO",
    "name": "Mizque",
    "lat": "-17.94101",
    "lng": "-65.34016"
  },
  {
    "country": "BO",
    "name": "Mineros",
    "lat": "-17.11876",
    "lng": "-63.231"
  },
  {
    "country": "BO",
    "name": "Maragua",
    "lat": "-19.04611",
    "lng": "-65.42861"
  },
  {
    "country": "BO",
    "name": "Mapiri",
    "lat": "-15.25",
    "lng": "-68.16667"
  },
  {
    "country": "BO",
    "name": "Mairana",
    "lat": "-18.11919",
    "lng": "-63.95965"
  },
  {
    "country": "BO",
    "name": "Machacamarca",
    "lat": "-18.17251",
    "lng": "-67.02099"
  },
  {
    "country": "BO",
    "name": "Los Negros",
    "lat": "-17.73333",
    "lng": "-63.43333"
  },
  {
    "country": "BO",
    "name": "Llallagua",
    "lat": "-18.42426",
    "lng": "-66.58388"
  },
  {
    "country": "BO",
    "name": "Lintaca",
    "lat": "-20.76667",
    "lng": "-65.33333"
  },
  {
    "country": "BO",
    "name": "Limoncito",
    "lat": "-18.03104",
    "lng": "-63.40523"
  },
  {
    "country": "BO",
    "name": "Las Carreras",
    "lat": "-21.25",
    "lng": "-65.28333"
  },
  {
    "country": "BO",
    "name": "Las Carreras",
    "lat": "-21.2084",
    "lng": "-65.20988"
  },
  {
    "country": "BO",
    "name": "La Paz",
    "lat": "-16.5",
    "lng": "-68.15"
  },
  {
    "country": "BO",
    "name": "Lahuachaca",
    "lat": "-17.37054",
    "lng": "-67.67501"
  },
  {
    "country": "BO",
    "name": "La Cueva",
    "lat": "-20.93333",
    "lng": "-64.9"
  },
  {
    "country": "BO",
    "name": "La Bélgica",
    "lat": "-17.55",
    "lng": "-63.21667"
  },
  {
    "country": "BO",
    "name": "Jorochito",
    "lat": "-18.05514",
    "lng": "-63.42821"
  },
  {
    "country": "BO",
    "name": "Yumani",
    "lat": "-16.03574",
    "lng": "-69.14843"
  },
  {
    "country": "BO",
    "name": "Irpa Irpa",
    "lat": "-17.71667",
    "lng": "-66.26667"
  },
  {
    "country": "BO",
    "name": "Independencia",
    "lat": "-17.08389",
    "lng": "-66.81804"
  },
  {
    "country": "BO",
    "name": "Huayllas",
    "lat": "-19.16972",
    "lng": "-65.32611"
  },
  {
    "country": "BO",
    "name": "Huatajata",
    "lat": "-16.2",
    "lng": "-68.68333"
  },
  {
    "country": "BO",
    "name": "Huata",
    "lat": "-19.01667",
    "lng": "-65.25"
  },
  {
    "country": "BO",
    "name": "Huarina",
    "lat": "-16.2",
    "lng": "-68.63333"
  },
  {
    "country": "BO",
    "name": "Huanuni",
    "lat": "-18.289",
    "lng": "-66.83583"
  },
  {
    "country": "BO",
    "name": "Huajlaya",
    "lat": "-20.6",
    "lng": "-64.55"
  },
  {
    "country": "BO",
    "name": "Huachacalla",
    "lat": "-18.79298",
    "lng": "-68.26157"
  },
  {
    "country": "BO",
    "name": "Guayaramerín",
    "lat": "-10.83676",
    "lng": "-65.36136"
  },
  {
    "country": "BO",
    "name": "Guanay",
    "lat": "-15.49756",
    "lng": "-67.88332"
  },
  {
    "country": "BO",
    "name": "Entre Ríos",
    "lat": "-21.52661",
    "lng": "-64.17299"
  },
  {
    "country": "BO",
    "name": "Curahuara de Carangas",
    "lat": "-17.86667",
    "lng": "-68.43333"
  },
  {
    "country": "BO",
    "name": "Culpina",
    "lat": "-20.82358",
    "lng": "-64.94492"
  },
  {
    "country": "BO",
    "name": "Cotoca",
    "lat": "-17.81667",
    "lng": "-63.05"
  },
  {
    "country": "BO",
    "name": "Cotoca",
    "lat": "-17.74959",
    "lng": "-62.83442"
  },
  {
    "country": "BO",
    "name": "Coroico",
    "lat": "-16.19386",
    "lng": "-67.72998"
  },
  {
    "country": "BO",
    "name": "Coripata",
    "lat": "-16.3",
    "lng": "-67.6"
  },
  {
    "country": "BO",
    "name": "Concepción",
    "lat": "-16.43333",
    "lng": "-60.9"
  },
  {
    "country": "BO",
    "name": "Comarapa",
    "lat": "-17.91537",
    "lng": "-64.53163"
  },
  {
    "country": "BO",
    "name": "Colquiri",
    "lat": "-17.38918",
    "lng": "-67.12671"
  },
  {
    "country": "BO",
    "name": "Colquechaca",
    "lat": "-18.70031",
    "lng": "-66.00397"
  },
  {
    "country": "BO",
    "name": "Colomi",
    "lat": "-17.35",
    "lng": "-65.86667"
  },
  {
    "country": "BO",
    "name": "Colchani",
    "lat": "-20.3",
    "lng": "-66.93333"
  },
  {
    "country": "BO",
    "name": "Colchani",
    "lat": "-17.31667",
    "lng": "-66.71667"
  },
  {
    "country": "BO",
    "name": "Cochabamba",
    "lat": "-17.3895",
    "lng": "-66.1568"
  },
  {
    "country": "BO",
    "name": "Cobija",
    "lat": "-11.02671",
    "lng": "-68.76918"
  },
  {
    "country": "BO",
    "name": "Cliza",
    "lat": "-17.58777",
    "lng": "-65.93253"
  },
  {
    "country": "BO",
    "name": "Chuqui Chuqui",
    "lat": "-18.81667",
    "lng": "-65.06667"
  },
  {
    "country": "BO",
    "name": "Chulumani",
    "lat": "-16.40855",
    "lng": "-67.5294"
  },
  {
    "country": "BO",
    "name": "Chimoré",
    "lat": "-16.99417",
    "lng": "-65.1533"
  },
  {
    "country": "BO",
    "name": "Chaunaca",
    "lat": "-19.01667",
    "lng": "-65.46667"
  },
  {
    "country": "BO",
    "name": "Charagua",
    "lat": "-19.79151",
    "lng": "-63.19864"
  },
  {
    "country": "BO",
    "name": "Challapata",
    "lat": "-18.90208",
    "lng": "-66.77048"
  },
  {
    "country": "BO",
    "name": "Carandayti",
    "lat": "-20.75",
    "lng": "-63.06667"
  },
  {
    "country": "BO",
    "name": "Capinota",
    "lat": "-17.71113",
    "lng": "-66.26082"
  },
  {
    "country": "BO",
    "name": "Camiri",
    "lat": "-20.03849",
    "lng": "-63.51833"
  },
  {
    "country": "BO",
    "name": "Camatindi",
    "lat": "-20.98333",
    "lng": "-63.43333"
  },
  {
    "country": "BO",
    "name": "Camargo",
    "lat": "-20.64064",
    "lng": "-65.20893"
  },
  {
    "country": "BO",
    "name": "Buena Vista",
    "lat": "-17.4583",
    "lng": "-63.67126"
  },
  {
    "country": "BO",
    "name": "Boyuibe",
    "lat": "-20.43227",
    "lng": "-63.28147"
  },
  {
    "country": "BO",
    "name": "Betanzos",
    "lat": "-19.55293",
    "lng": "-65.45395"
  },
  {
    "country": "BO",
    "name": "Batallas",
    "lat": "-16.3",
    "lng": "-68.53333"
  },
  {
    "country": "BO",
    "name": "Azurduy",
    "lat": "-20.10613",
    "lng": "-64.41398"
  },
  {
    "country": "BO",
    "name": "Atocha",
    "lat": "-20.93515",
    "lng": "-66.22139"
  },
  {
    "country": "BO",
    "name": "Ascensión",
    "lat": "-15.7",
    "lng": "-63.08333"
  },
  {
    "country": "BO",
    "name": "Arani",
    "lat": "-17.56854",
    "lng": "-65.76883"
  },
  {
    "country": "BO",
    "name": "Andamarca",
    "lat": "-18.77934",
    "lng": "-67.50753"
  },
  {
    "country": "BO",
    "name": "Amarete",
    "lat": "-15.23333",
    "lng": "-68.96667"
  },
  {
    "country": "BO",
    "name": "Aiquile",
    "lat": "-18.20408",
    "lng": "-65.18068"
  },
  {
    "country": "BO",
    "name": "Achacachi",
    "lat": "-16.05",
    "lng": "-68.68333"
  },
  {
    "country": "BO",
    "name": "Abapó",
    "lat": "-18.88279",
    "lng": "-63.38026"
  },
  {
    "country": "BO",
    "name": "Cruz de Machacamarca",
    "lat": "-18.88395",
    "lng": "-68.41989"
  },
  {
    "country": "BO",
    "name": "Santa Fe",
    "lat": "-17.90818",
    "lng": "-63.03955"
  },
  {
    "country": "BO",
    "name": "San Julian",
    "lat": "-17.80623",
    "lng": "-62.89536"
  },
  {
    "country": "BO",
    "name": "Puearto Pailas",
    "lat": "-17.663",
    "lng": "-62.81227"
  },
  {
    "country": "BQ",
    "name": "Upper Hell's Gate",
    "lat": "17.643",
    "lng": "-63.22649"
  },
  {
    "country": "BQ",
    "name": "The Bottom",
    "lat": "17.6259",
    "lng": "-63.24919"
  },
  {
    "country": "BQ",
    "name": "Oranjestad",
    "lat": "17.48268",
    "lng": "-62.98324"
  },
  {
    "country": "BQ",
    "name": "Kralendijk",
    "lat": "12.15",
    "lng": "-68.26667"
  },
  {
    "country": "BQ",
    "name": "Dorp Tera Kora",
    "lat": "12.13333",
    "lng": "-68.26667"
  },
  {
    "country": "BQ",
    "name": "Dorp Rincón",
    "lat": "12.23333",
    "lng": "-68.33333"
  },
  {
    "country": "BQ",
    "name": "Dorp Antriol",
    "lat": "12.16667",
    "lng": "-68.26667"
  },
  {
    "country": "BR",
    "name": "Vitorino Freire",
    "lat": "-4.04238",
    "lng": "-45.23777"
  },
  {
    "country": "BR",
    "name": "Vitória do Mearim",
    "lat": "-3.46222",
    "lng": "-44.87056"
  },
  {
    "country": "BR",
    "name": "Vitória de Santo Antão",
    "lat": "-8.11806",
    "lng": "-35.29139"
  },
  {
    "country": "BR",
    "name": "Viseu",
    "lat": "-1.19667",
    "lng": "-46.14"
  },
  {
    "country": "BR",
    "name": "Conde",
    "lat": "-7.25972",
    "lng": "-34.9075"
  },
  {
    "country": "BR",
    "name": "Vigia",
    "lat": "-0.85833",
    "lng": "-48.14167"
  },
  {
    "country": "BR",
    "name": "Viçosa do Ceará",
    "lat": "-3.56222",
    "lng": "-41.09222"
  },
  {
    "country": "BR",
    "name": "Viçosa",
    "lat": "-9.37139",
    "lng": "-36.24083"
  },
  {
    "country": "BR",
    "name": "Vicência",
    "lat": "-7.65694",
    "lng": "-35.32667"
  },
  {
    "country": "BR",
    "name": "Viana",
    "lat": "-3.22028",
    "lng": "-45.00361"
  },
  {
    "country": "BR",
    "name": "Várzea Alegre",
    "lat": "-5.35",
    "lng": "-40.38333"
  },
  {
    "country": "BR",
    "name": "Varjota",
    "lat": "-4.19444",
    "lng": "-40.47667"
  },
  {
    "country": "BR",
    "name": "Vargem Grande",
    "lat": "-3.54306",
    "lng": "-43.91583"
  },
  {
    "country": "BR",
    "name": "Valença do Piauí",
    "lat": "-6.4075",
    "lng": "-41.74556"
  },
  {
    "country": "BR",
    "name": "Urucurituba",
    "lat": "-3.12845",
    "lng": "-58.15856"
  },
  {
    "country": "BR",
    "name": "Uruçuí",
    "lat": "-7.22944",
    "lng": "-44.55611"
  },
  {
    "country": "BR",
    "name": "Urucará",
    "lat": "-2.53639",
    "lng": "-57.76"
  },
  {
    "country": "BR",
    "name": "Uruburetama",
    "lat": "-3.625",
    "lng": "-39.50833"
  },
  {
    "country": "BR",
    "name": "Urbano Santos",
    "lat": "-3.20778",
    "lng": "-43.40361"
  },
  {
    "country": "BR",
    "name": "Upanema",
    "lat": "-5.64194",
    "lng": "-37.25778"
  },
  {
    "country": "BR",
    "name": "União dos Palmares",
    "lat": "-9.16278",
    "lng": "-36.03194"
  },
  {
    "country": "BR",
    "name": "União",
    "lat": "-4.58583",
    "lng": "-42.86417"
  },
  {
    "country": "BR",
    "name": "Umirim",
    "lat": "-3.67722",
    "lng": "-39.35028"
  },
  {
    "country": "BR",
    "name": "Umbuzeiro",
    "lat": "-7.69556",
    "lng": "-35.66361"
  },
  {
    "country": "BR",
    "name": "Umarizal",
    "lat": "-5.99056",
    "lng": "-37.81444"
  },
  {
    "country": "BR",
    "name": "Uiraúna",
    "lat": "-6.51833",
    "lng": "-38.41222"
  },
  {
    "country": "BR",
    "name": "Ubajara",
    "lat": "-3.85444",
    "lng": "-40.92111"
  },
  {
    "country": "BR",
    "name": "Uauá",
    "lat": "-9.84139",
    "lng": "-39.48167"
  },
  {
    "country": "BR",
    "name": "Tutóia",
    "lat": "-2.76194",
    "lng": "-42.27444"
  },
  {
    "country": "BR",
    "name": "Turiaçu",
    "lat": "-1.66333",
    "lng": "-45.37167"
  },
  {
    "country": "BR",
    "name": "Tupanatinga",
    "lat": "-8.75333",
    "lng": "-37.33972"
  },
  {
    "country": "BR",
    "name": "Tuntum",
    "lat": "-5.25806",
    "lng": "-44.64889"
  },
  {
    "country": "BR",
    "name": "Tucuruí",
    "lat": "-3.76585",
    "lng": "-49.67923"
  },
  {
    "country": "BR",
    "name": "Tucumã",
    "lat": "-0.18333",
    "lng": "-50.05"
  },
  {
    "country": "BR",
    "name": "Triunfo",
    "lat": "-6.56667",
    "lng": "-38.6"
  },
  {
    "country": "BR",
    "name": "Trindade",
    "lat": "-7.76194",
    "lng": "-40.26778"
  },
  {
    "country": "BR",
    "name": "Trairi",
    "lat": "-3.27778",
    "lng": "-39.26889"
  },
  {
    "country": "BR",
    "name": "Traipu",
    "lat": "-9.97056",
    "lng": "-37.00333"
  },
  {
    "country": "BR",
    "name": "Touros",
    "lat": "-5.19889",
    "lng": "-35.46083"
  },
  {
    "country": "BR",
    "name": "Toritama",
    "lat": "-8.00667",
    "lng": "-36.05667"
  },
  {
    "country": "BR",
    "name": "Tomé Açu",
    "lat": "-2.41889",
    "lng": "-48.15222"
  },
  {
    "country": "BR",
    "name": "Timon",
    "lat": "-5.09417",
    "lng": "-42.83667"
  },
  {
    "country": "BR",
    "name": "Timbiras",
    "lat": "-4.25528",
    "lng": "-43.94056"
  },
  {
    "country": "BR",
    "name": "Timbaúba",
    "lat": "-7.50528",
    "lng": "-35.31833"
  },
  {
    "country": "BR",
    "name": "Tianguá",
    "lat": "-3.73222",
    "lng": "-40.99167"
  },
  {
    "country": "BR",
    "name": "Terra Santa",
    "lat": "-2.10417",
    "lng": "-56.48694"
  },
  {
    "country": "BR",
    "name": "Teresina",
    "lat": "-5.08917",
    "lng": "-42.80194"
  },
  {
    "country": "BR",
    "name": "Teixeira",
    "lat": "-7.22278",
    "lng": "-37.25417"
  },
  {
    "country": "BR",
    "name": "Tavares",
    "lat": "-7.63583",
    "lng": "-37.87833"
  },
  {
    "country": "BR",
    "name": "São João dos Inhamuns",
    "lat": "-6",
    "lng": "-40.28333"
  },
  {
    "country": "BR",
    "name": "Taquaritinga do Norte",
    "lat": "-7.90306",
    "lng": "-36.04417"
  },
  {
    "country": "BR",
    "name": "Taquarana",
    "lat": "-9.645",
    "lng": "-36.49722"
  },
  {
    "country": "BR",
    "name": "Taperoá",
    "lat": "-7.2075",
    "lng": "-36.82667"
  },
  {
    "country": "BR",
    "name": "Tangará",
    "lat": "-6.19944",
    "lng": "-35.80167"
  },
  {
    "country": "BR",
    "name": "Tamboril",
    "lat": "-4.83222",
    "lng": "-40.32056"
  },
  {
    "country": "BR",
    "name": "Tamandaré",
    "lat": "-8.75632",
    "lng": "-35.09995"
  },
  {
    "country": "BR",
    "name": "Taipu",
    "lat": "-5.62167",
    "lng": "-35.59667"
  },
  {
    "country": "BR",
    "name": "Tabira",
    "lat": "-7.59083",
    "lng": "-37.53944"
  },
  {
    "country": "BR",
    "name": "Surubim",
    "lat": "-7.83306",
    "lng": "-35.75472"
  },
  {
    "country": "BR",
    "name": "Sumé",
    "lat": "-7.67167",
    "lng": "-36.88"
  },
  {
    "country": "BR",
    "name": "Sousa",
    "lat": "-6.75917",
    "lng": "-38.22806"
  },
  {
    "country": "BR",
    "name": "Soure",
    "lat": "-0.71667",
    "lng": "-48.52333"
  },
  {
    "country": "BR",
    "name": "Soledade",
    "lat": "-7.05722",
    "lng": "-36.36278"
  },
  {
    "country": "BR",
    "name": "Solânea",
    "lat": "-6.755",
    "lng": "-35.54"
  },
  {
    "country": "BR",
    "name": "Sobral",
    "lat": "-3.68611",
    "lng": "-40.34972"
  },
  {
    "country": "BR",
    "name": "Sirinhaém",
    "lat": "-8.59083",
    "lng": "-35.11611"
  },
  {
    "country": "BR",
    "name": "Simplício Mendes",
    "lat": "-7.85389",
    "lng": "-41.91028"
  },
  {
    "country": "BR",
    "name": "Simões",
    "lat": "-7.59889",
    "lng": "-40.81778"
  },
  {
    "country": "BR",
    "name": "Severiano Melo",
    "lat": "-5.77722",
    "lng": "-37.95778"
  },
  {
    "country": "BR",
    "name": "Sertânia",
    "lat": "-8.07361",
    "lng": "-37.26444"
  },
  {
    "country": "BR",
    "name": "Serra Talhada",
    "lat": "-7.99194",
    "lng": "-38.29833"
  },
  {
    "country": "BR",
    "name": "Serra Branca",
    "lat": "-6.53333",
    "lng": "-38.26667"
  },
  {
    "country": "BR",
    "name": "Senador Pompeu",
    "lat": "-5.58806",
    "lng": "-39.37167"
  },
  {
    "country": "BR",
    "name": "Senador José Porfírio",
    "lat": "-2.59083",
    "lng": "-51.95417"
  },
  {
    "country": "BR",
    "name": "Satuba",
    "lat": "-9.56333",
    "lng": "-35.82444"
  },
  {
    "country": "BR",
    "name": "São Tomé",
    "lat": "-5.9725",
    "lng": "-36.07528"
  },
  {
    "country": "BR",
    "name": "São Sebastião",
    "lat": "-9.93361",
    "lng": "-36.55417"
  },
  {
    "country": "BR",
    "name": "São Raimundo Nonato",
    "lat": "-9.01528",
    "lng": "-42.69944"
  },
  {
    "country": "BR",
    "name": "São Raimundo das Mangabeiras",
    "lat": "-7.02194",
    "lng": "-45.48111"
  },
  {
    "country": "BR",
    "name": "São Pedro do Piauí",
    "lat": "-5.92944",
    "lng": "-42.71861"
  },
  {
    "country": "BR",
    "name": "São Paulo do Potengi",
    "lat": "-5.895",
    "lng": "-35.76278"
  },
  {
    "country": "BR",
    "name": "São Miguel do Tapuio",
    "lat": "-5.50361",
    "lng": "-41.32333"
  },
  {
    "country": "BR",
    "name": "São Miguel dos Campos",
    "lat": "-9.78111",
    "lng": "-36.09361"
  },
  {
    "country": "BR",
    "name": "São Miguel do Guamá",
    "lat": "-1.62667",
    "lng": "-47.48333"
  },
  {
    "country": "BR",
    "name": "São Miguel",
    "lat": "-5.46667",
    "lng": "-35.36667"
  },
  {
    "country": "BR",
    "name": "São Mateus do Maranhão",
    "lat": "-4.04167",
    "lng": "-44.475"
  },
  {
    "country": "BR",
    "name": "São Luís do Quitunde",
    "lat": "-9.31833",
    "lng": "-35.56111"
  },
  {
    "country": "BR",
    "name": "São Luís",
    "lat": "-2.52972",
    "lng": "-44.30278"
  },
  {
    "country": "BR",
    "name": "São Lourenço da Mata",
    "lat": "-8.00222",
    "lng": "-35.01833"
  },
  {
    "country": "BR",
    "name": "São José do Egito",
    "lat": "-7.47889",
    "lng": "-37.27444"
  },
  {
    "country": "BR",
    "name": "São José do Campestre",
    "lat": "-6.31556",
    "lng": "-35.71389"
  },
  {
    "country": "BR",
    "name": "São José do Belmonte",
    "lat": "-7.86139",
    "lng": "-38.75972"
  },
  {
    "country": "BR",
    "name": "São José de Ribamar",
    "lat": "-2.56194",
    "lng": "-44.05417"
  },
  {
    "country": "BR",
    "name": "São José de Piranhas",
    "lat": "-7.12056",
    "lng": "-38.50194"
  },
  {
    "country": "BR",
    "name": "São José de Mipibu",
    "lat": "-6.07472",
    "lng": "-35.23778"
  },
  {
    "country": "BR",
    "name": "São José da Tapera",
    "lat": "-9.55833",
    "lng": "-37.38111"
  },
  {
    "country": "BR",
    "name": "São José da Laje",
    "lat": "-9.00972",
    "lng": "-36.05833"
  },
  {
    "country": "BR",
    "name": "São José da Coroa Grande",
    "lat": "-8.89778",
    "lng": "-35.14778"
  },
  {
    "country": "BR",
    "name": "São Joaquim do Monte",
    "lat": "-8.4325",
    "lng": "-35.80444"
  },
  {
    "country": "BR",
    "name": "São João dos Patos",
    "lat": "-6.495",
    "lng": "-43.70222"
  },
  {
    "country": "BR",
    "name": "São João do Piauí",
    "lat": "-8.35806",
    "lng": "-42.24667"
  },
  {
    "country": "BR",
    "name": "São João de Pirabas",
    "lat": "-0.77472",
    "lng": "-47.17722"
  },
  {
    "country": "BR",
    "name": "São João Batista",
    "lat": "-2.95528",
    "lng": "-44.80694"
  },
  {
    "country": "BR",
    "name": "São João",
    "lat": "-8.87556",
    "lng": "-36.36667"
  },
  {
    "country": "BR",
    "name": "São Gonçalo do Amarante",
    "lat": "-5.79333",
    "lng": "-35.32944"
  },
  {
    "country": "BR",
    "name": "São Gonçalo do Amarante",
    "lat": "-3.60722",
    "lng": "-38.96833"
  },
  {
    "country": "BR",
    "name": "São Geraldo do Araguaia",
    "lat": "-6.40056",
    "lng": "-48.555"
  },
  {
    "country": "BR",
    "name": "São Félix do Xingu",
    "lat": "-6.64472",
    "lng": "-51.995"
  },
  {
    "country": "BR",
    "name": "São Domingos do Maranhão",
    "lat": "-5.57583",
    "lng": "-44.38528"
  },
  {
    "country": "BR",
    "name": "São Caetano de Odivelas",
    "lat": "-0.75",
    "lng": "-48.02"
  },
  {
    "country": "BR",
    "name": "São Bernardo",
    "lat": "-3.36139",
    "lng": "-42.41778"
  },
  {
    "country": "BR",
    "name": "São Bento",
    "lat": "-6.28333",
    "lng": "-37.75"
  },
  {
    "country": "BR",
    "name": "São Bento",
    "lat": "-2.69583",
    "lng": "-44.82139"
  },
  {
    "country": "BR",
    "name": "São Benedito do Rio Preto",
    "lat": "-3.33361",
    "lng": "-43.52833"
  },
  {
    "country": "BR",
    "name": "Santo Antônio do Tauá",
    "lat": "-1.15194",
    "lng": "-48.12944"
  },
  {
    "country": "BR",
    "name": "Santo Antônio",
    "lat": "-6.31056",
    "lng": "-35.47889"
  },
  {
    "country": "BR",
    "name": "Santa Rita",
    "lat": "-7.11389",
    "lng": "-34.97806"
  },
  {
    "country": "BR",
    "name": "Santa Rita",
    "lat": "-3.86358",
    "lng": "-43.85999"
  },
  {
    "country": "BR",
    "name": "Santarém",
    "lat": "-2.44306",
    "lng": "-54.70833"
  },
  {
    "country": "BR",
    "name": "Santa Quitéria do Maranhão",
    "lat": "-3.51556",
    "lng": "-42.54667"
  },
  {
    "country": "BR",
    "name": "Santa Quitéria",
    "lat": "-4.33194",
    "lng": "-40.15667"
  },
  {
    "country": "BR",
    "name": "Santana do Mundaú",
    "lat": "-9.16806",
    "lng": "-36.22222"
  },
  {
    "country": "BR",
    "name": "Santana do Matos",
    "lat": "-5.9575",
    "lng": "-36.65556"
  },
  {
    "country": "BR",
    "name": "Santana do Ipanema",
    "lat": "-9.37833",
    "lng": "-37.24528"
  },
  {
    "country": "BR",
    "name": "Santana do Acaraú",
    "lat": "-3.46056",
    "lng": "-40.21222"
  },
  {
    "country": "BR",
    "name": "Santa Maria do Pará",
    "lat": "-1.35028",
    "lng": "-47.57556"
  },
  {
    "country": "BR",
    "name": "Santa Maria da Boa Vista",
    "lat": "-8.80778",
    "lng": "-39.82556"
  },
  {
    "country": "BR",
    "name": "Santa Luzia",
    "lat": "-7.64265",
    "lng": "-47.21738"
  },
  {
    "country": "BR",
    "name": "Santa Luzia",
    "lat": "-6.87222",
    "lng": "-36.91861"
  },
  {
    "country": "BR",
    "name": "Santa Inês",
    "lat": "-3.66667",
    "lng": "-45.38"
  },
  {
    "country": "BR",
    "name": "Santa Helena",
    "lat": "-2.23111",
    "lng": "-45.3"
  },
  {
    "country": "BR",
    "name": "Santa Cruz do Capibaribe",
    "lat": "-7.9575",
    "lng": "-36.20472"
  },
  {
    "country": "BR",
    "name": "Santa Cruz",
    "lat": "-6.22944",
    "lng": "-36.02278"
  },
  {
    "country": "BR",
    "name": "Salinópolis",
    "lat": "-0.61361",
    "lng": "-47.35611"
  },
  {
    "country": "BR",
    "name": "Salgueiro",
    "lat": "-8.07417",
    "lng": "-39.11917"
  },
  {
    "country": "BR",
    "name": "Salgado de São Félix",
    "lat": "-7.35694",
    "lng": "-35.44056"
  },
  {
    "country": "BR",
    "name": "Russas",
    "lat": "-4.94028",
    "lng": "-37.97583"
  },
  {
    "country": "BR",
    "name": "Rio Tinto",
    "lat": "-6.80306",
    "lng": "-35.08056"
  },
  {
    "country": "BR",
    "name": "Rio Largo",
    "lat": "-9.47833",
    "lng": "-35.85333"
  },
  {
    "country": "BR",
    "name": "Rio Formoso",
    "lat": "-8.66877",
    "lng": "-35.16277"
  },
  {
    "country": "BR",
    "name": "Ribeirão",
    "lat": "-8.51444",
    "lng": "-35.37778"
  },
  {
    "country": "BR",
    "name": "Riachão",
    "lat": "-7.36194",
    "lng": "-46.61722"
  },
  {
    "country": "BR",
    "name": "Reriutaba",
    "lat": "-4.14167",
    "lng": "-40.58222"
  },
  {
    "country": "BR",
    "name": "Remígio",
    "lat": "-6.94646",
    "lng": "-35.78039"
  },
  {
    "country": "BR",
    "name": "Regeneração",
    "lat": "-6.23122",
    "lng": "-42.68691"
  },
  {
    "country": "BR",
    "name": "Redenção",
    "lat": "-4.22583",
    "lng": "-38.73056"
  },
  {
    "country": "BR",
    "name": "Recife",
    "lat": "-8.05389",
    "lng": "-34.88111"
  },
  {
    "country": "BR",
    "name": "Raposa",
    "lat": "-6.51667",
    "lng": "-44.18333"
  },
  {
    "country": "BR",
    "name": "Quixeré",
    "lat": "-5.07417",
    "lng": "-37.98861"
  },
  {
    "country": "BR",
    "name": "Quixeramobim",
    "lat": "-5.19917",
    "lng": "-39.29278"
  },
  {
    "country": "BR",
    "name": "Quixadá",
    "lat": "-4.97139",
    "lng": "-39.01528"
  },
  {
    "country": "BR",
    "name": "Quipapá",
    "lat": "-8.82778",
    "lng": "-36.01167"
  },
  {
    "country": "BR",
    "name": "Quebrangulo",
    "lat": "-9.31889",
    "lng": "-36.47111"
  },
  {
    "country": "BR",
    "name": "Puxinanã",
    "lat": "-7.16111",
    "lng": "-35.96056"
  },
  {
    "country": "BR",
    "name": "Princesa Isabel",
    "lat": "-7.73667",
    "lng": "-37.99333"
  },
  {
    "country": "BR",
    "name": "Presidente Dutra",
    "lat": "-5.29",
    "lng": "-44.49"
  },
  {
    "country": "BR",
    "name": "Prainha",
    "lat": "-1.8",
    "lng": "-53.48"
  },
  {
    "country": "BR",
    "name": "Santana",
    "lat": "-0.05833",
    "lng": "-51.18167"
  },
  {
    "country": "BR",
    "name": "Porto Franco",
    "lat": "-6.33833",
    "lng": "-47.39917"
  },
  {
    "country": "BR",
    "name": "Porto de Moz",
    "lat": "-1.74833",
    "lng": "-52.23833"
  },
  {
    "country": "BR",
    "name": "Porto da Folha",
    "lat": "-9.91722",
    "lng": "-37.27833"
  },
  {
    "country": "BR",
    "name": "Porto Calvo",
    "lat": "-9.045",
    "lng": "-35.39833"
  },
  {
    "country": "BR",
    "name": "Porto",
    "lat": "-3.89333",
    "lng": "-42.71"
  },
  {
    "country": "BR",
    "name": "Portel",
    "lat": "-1.93556",
    "lng": "-50.82111"
  },
  {
    "country": "BR",
    "name": "Pombos",
    "lat": "-8.14139",
    "lng": "-35.39583"
  },
  {
    "country": "BR",
    "name": "Pombal",
    "lat": "-6.77028",
    "lng": "-37.80167"
  },
  {
    "country": "BR",
    "name": "Poço das Trincheiras",
    "lat": "-9.3125",
    "lng": "-37.28556"
  },
  {
    "country": "BR",
    "name": "Poço Branco",
    "lat": "-5.62278",
    "lng": "-35.66278"
  },
  {
    "country": "BR",
    "name": "Pocinhos",
    "lat": "-7.07667",
    "lng": "-36.06111"
  },
  {
    "country": "BR",
    "name": "Poção de Pedras",
    "lat": "-4.66667",
    "lng": "-44.85"
  },
  {
    "country": "BR",
    "name": "Pitimbu",
    "lat": "-7.47056",
    "lng": "-34.80861"
  },
  {
    "country": "BR",
    "name": "Pirpirituba",
    "lat": "-6.78",
    "lng": "-35.49861"
  },
  {
    "country": "BR",
    "name": "Piripiri",
    "lat": "-4.27333",
    "lng": "-41.77694"
  },
  {
    "country": "BR",
    "name": "Pirapemas",
    "lat": "-3.72667",
    "lng": "-44.22333"
  },
  {
    "country": "BR",
    "name": "Piracuruca",
    "lat": "-3.92806",
    "lng": "-41.70917"
  },
  {
    "country": "BR",
    "name": "Pio XII",
    "lat": "-3.8325",
    "lng": "-45.1525"
  },
  {
    "country": "BR",
    "name": "Pio IX",
    "lat": "-6.8375",
    "lng": "-40.57917"
  },
  {
    "country": "BR",
    "name": "Pinheiro",
    "lat": "-2.52139",
    "lng": "-45.0825"
  },
  {
    "country": "BR",
    "name": "Pindaré Mirim",
    "lat": "-3.60833",
    "lng": "-45.34333"
  },
  {
    "country": "BR",
    "name": "Pimenteiras",
    "lat": "-6.24528",
    "lng": "-41.41917"
  },
  {
    "country": "BR",
    "name": "Pilar",
    "lat": "-9.59722",
    "lng": "-35.95667"
  },
  {
    "country": "BR",
    "name": "Pilar",
    "lat": "-7.26722",
    "lng": "-35.26"
  },
  {
    "country": "BR",
    "name": "Picuí",
    "lat": "-6.51056",
    "lng": "-36.34694"
  },
  {
    "country": "BR",
    "name": "Picos",
    "lat": "-7.07694",
    "lng": "-41.46694"
  },
  {
    "country": "BR",
    "name": "Piancó",
    "lat": "-7.19806",
    "lng": "-37.92917"
  },
  {
    "country": "BR",
    "name": "Petrolina",
    "lat": "-9.39861",
    "lng": "-40.50083"
  },
  {
    "country": "BR",
    "name": "Jatobá",
    "lat": "-9.18306",
    "lng": "-38.26889"
  },
  {
    "country": "BR",
    "name": "Pesqueira",
    "lat": "-8.35778",
    "lng": "-36.69639"
  },
  {
    "country": "BR",
    "name": "Pentecoste",
    "lat": "-3.79278",
    "lng": "-39.27028"
  },
  {
    "country": "BR",
    "name": "Pendências",
    "lat": "-5.26",
    "lng": "-36.72222"
  },
  {
    "country": "BR",
    "name": "Penalva",
    "lat": "-3.29417",
    "lng": "-45.17361"
  },
  {
    "country": "BR",
    "name": "Pedro Velho",
    "lat": "-6.43917",
    "lng": "-35.22139"
  },
  {
    "country": "BR",
    "name": "Pedro II",
    "lat": "-4.42472",
    "lng": "-41.45861"
  },
  {
    "country": "BR",
    "name": "Pedras de Fogo",
    "lat": "-7.40194",
    "lng": "-35.11639"
  },
  {
    "country": "BR",
    "name": "Pedra Branca",
    "lat": "-5.45417",
    "lng": "-39.71722"
  },
  {
    "country": "BR",
    "name": "Pedra",
    "lat": "-8.49694",
    "lng": "-36.94083"
  },
  {
    "country": "BR",
    "name": "Paulo Ramos",
    "lat": "-4.21667",
    "lng": "-45.18333"
  },
  {
    "country": "BR",
    "name": "Paulo Afonso",
    "lat": "-9.40611",
    "lng": "-38.21472"
  },
  {
    "country": "BR",
    "name": "Paulista",
    "lat": "-7.94083",
    "lng": "-34.87306"
  },
  {
    "country": "BR",
    "name": "Paulista",
    "lat": "-6.59389",
    "lng": "-37.62417"
  },
  {
    "country": "BR",
    "name": "Patu",
    "lat": "-6.11",
    "lng": "-37.63667"
  },
  {
    "country": "BR",
    "name": "Patos",
    "lat": "-7.02444",
    "lng": "-37.28"
  },
  {
    "country": "BR",
    "name": "Pastos Bons",
    "lat": "-6.60167",
    "lng": "-44.07667"
  },
  {
    "country": "BR",
    "name": "Passira",
    "lat": "-7.995",
    "lng": "-35.58056"
  },
  {
    "country": "BR",
    "name": "Passagem Franca",
    "lat": "-6.17972",
    "lng": "-43.78361"
  },
  {
    "country": "BR",
    "name": "Parnarama",
    "lat": "-5.68167",
    "lng": "-43.09333"
  },
  {
    "country": "BR",
    "name": "Parnamirim",
    "lat": "-8.09056",
    "lng": "-39.57833"
  },
  {
    "country": "BR",
    "name": "Parnamirim",
    "lat": "-5.91556",
    "lng": "-35.26278"
  },
  {
    "country": "BR",
    "name": "Parnaíba",
    "lat": "-2.90472",
    "lng": "-41.77667"
  },
  {
    "country": "BR",
    "name": "Parintins",
    "lat": "-2.62833",
    "lng": "-56.73583"
  },
  {
    "country": "BR",
    "name": "Parelhas",
    "lat": "-6.68778",
    "lng": "-36.6575"
  },
  {
    "country": "BR",
    "name": "Parambu",
    "lat": "-6.21111",
    "lng": "-40.69444"
  },
  {
    "country": "BR",
    "name": "Paraipaba",
    "lat": "-3.43944",
    "lng": "-39.14833"
  },
  {
    "country": "BR",
    "name": "Paraibano",
    "lat": "-6.43306",
    "lng": "-43.98361"
  },
  {
    "country": "BR",
    "name": "Paragominas",
    "lat": "-2.96667",
    "lng": "-47.48333"
  },
  {
    "country": "BR",
    "name": "Paracuru",
    "lat": "-3.41",
    "lng": "-39.03056"
  },
  {
    "country": "BR",
    "name": "Pão de Açúcar",
    "lat": "-9.74833",
    "lng": "-37.43667"
  },
  {
    "country": "BR",
    "name": "Palmeirais",
    "lat": "-5.97778",
    "lng": "-43.06333"
  },
  {
    "country": "BR",
    "name": "Palmares",
    "lat": "-8.68333",
    "lng": "-35.59167"
  },
  {
    "country": "BR",
    "name": "Pacatuba",
    "lat": "-3.98417",
    "lng": "-38.62028"
  },
  {
    "country": "BR",
    "name": "Pacajus",
    "lat": "-4.1725",
    "lng": "-38.46056"
  },
  {
    "country": "BR",
    "name": "Ouricuri",
    "lat": "-7.8825",
    "lng": "-40.08167"
  },
  {
    "country": "BR",
    "name": "Ourém",
    "lat": "-1.55194",
    "lng": "-47.11444"
  },
  {
    "country": "BR",
    "name": "Orós",
    "lat": "-6.24444",
    "lng": "-38.91361"
  },
  {
    "country": "BR",
    "name": "Orobó",
    "lat": "-7.745",
    "lng": "-35.60222"
  },
  {
    "country": "BR",
    "name": "Oriximiná",
    "lat": "-1.76556",
    "lng": "-55.86611"
  },
  {
    "country": "BR",
    "name": "Olivença",
    "lat": "-9.51861",
    "lng": "-37.19056"
  },
  {
    "country": "BR",
    "name": "Olinda",
    "lat": "-8.00889",
    "lng": "-34.85528"
  },
  {
    "country": "BR",
    "name": "Oeiras do Pará",
    "lat": "-2.00306",
    "lng": "-49.85444"
  },
  {
    "country": "BR",
    "name": "Oeiras",
    "lat": "-7.02528",
    "lng": "-42.13111"
  },
  {
    "country": "BR",
    "name": "Ocara",
    "lat": "-4.49083",
    "lng": "-38.59667"
  },
  {
    "country": "BR",
    "name": "Óbidos",
    "lat": "-1.9175",
    "lng": "-55.51806"
  },
  {
    "country": "BR",
    "name": "Novo Oriente",
    "lat": "-5.53444",
    "lng": "-40.77417"
  },
  {
    "country": "BR",
    "name": "Novo Lino",
    "lat": "-8.915",
    "lng": "-35.64667"
  },
  {
    "country": "BR",
    "name": "Nova Russas",
    "lat": "-4.70667",
    "lng": "-40.56306"
  },
  {
    "country": "BR",
    "name": "Nova Olinda do Norte",
    "lat": "-3.89174",
    "lng": "-59.09542"
  },
  {
    "country": "BR",
    "name": "Nova Floresta",
    "lat": "-6.45528",
    "lng": "-36.20333"
  },
  {
    "country": "BR",
    "name": "Nova Cruz",
    "lat": "-6.47806",
    "lng": "-35.43389"
  },
  {
    "country": "BR",
    "name": "Nísia Floresta",
    "lat": "-6.09111",
    "lng": "-35.20861"
  },
  {
    "country": "BR",
    "name": "Nhamundá",
    "lat": "-2.18611",
    "lng": "-56.71306"
  },
  {
    "country": "BR",
    "name": "Nazaré da Mata",
    "lat": "-7.74167",
    "lng": "-35.22778"
  },
  {
    "country": "BR",
    "name": "Natuba",
    "lat": "-7.64139",
    "lng": "-35.55"
  },
  {
    "country": "BR",
    "name": "Natal",
    "lat": "-5.795",
    "lng": "-35.20944"
  },
  {
    "country": "BR",
    "name": "Murici",
    "lat": "-9.30667",
    "lng": "-35.94333"
  },
  {
    "country": "BR",
    "name": "Mulungu",
    "lat": "-7.02444",
    "lng": "-35.46194"
  },
  {
    "country": "BR",
    "name": "Muaná",
    "lat": "-1.52833",
    "lng": "-49.21667"
  },
  {
    "country": "BR",
    "name": "Morros",
    "lat": "-9.44667",
    "lng": "-46.30028"
  },
  {
    "country": "BR",
    "name": "Moreno",
    "lat": "-8.11861",
    "lng": "-35.09222"
  },
  {
    "country": "BR",
    "name": "Morada Nova",
    "lat": "-5.10667",
    "lng": "-38.3725"
  },
  {
    "country": "BR",
    "name": "Montes Altos",
    "lat": "-5.83333",
    "lng": "-47.06667"
  },
  {
    "country": "BR",
    "name": "Monteiro",
    "lat": "-7.88944",
    "lng": "-37.12"
  },
  {
    "country": "BR",
    "name": "Monte Alegre",
    "lat": "-5.88972",
    "lng": "-36.30139"
  },
  {
    "country": "BR",
    "name": "Monte Alegre",
    "lat": "-2.00082",
    "lng": "-54.08102"
  },
  {
    "country": "BR",
    "name": "Montanhas",
    "lat": "-6.48583",
    "lng": "-35.2875"
  },
  {
    "country": "BR",
    "name": "Monsenhor Gil",
    "lat": "-5.56417",
    "lng": "-42.60778"
  },
  {
    "country": "BR",
    "name": "Monção",
    "lat": "-3.49167",
    "lng": "-45.25111"
  },
  {
    "country": "BR",
    "name": "Mombaça",
    "lat": "-5.74306",
    "lng": "-39.6275"
  },
  {
    "country": "BR",
    "name": "Moju",
    "lat": "-1.88389",
    "lng": "-48.76889"
  },
  {
    "country": "BR",
    "name": "Mogeiro",
    "lat": "-7.29944",
    "lng": "-35.47944"
  },
  {
    "country": "BR",
    "name": "Mossoró",
    "lat": "-5.1875",
    "lng": "-37.34417"
  },
  {
    "country": "BR",
    "name": "Mocajuba",
    "lat": "-2.58417",
    "lng": "-49.50722"
  },
  {
    "country": "BR",
    "name": "Missão Velha",
    "lat": "-7.24972",
    "lng": "-39.14306"
  },
  {
    "country": "BR",
    "name": "Mirador",
    "lat": "-6.37083",
    "lng": "-44.36306"
  },
  {
    "country": "BR",
    "name": "Minador do Negrão",
    "lat": "-9.30528",
    "lng": "-36.86472"
  },
  {
    "country": "BR",
    "name": "Milagres",
    "lat": "-7.31333",
    "lng": "-38.94556"
  },
  {
    "country": "BR",
    "name": "Miguel Alves",
    "lat": "-4.16556",
    "lng": "-42.89528"
  },
  {
    "country": "BR",
    "name": "Messias",
    "lat": "-9.38333",
    "lng": "-35.84167"
  },
  {
    "country": "BR",
    "name": "Mazagão",
    "lat": "-0.115",
    "lng": "-51.28944"
  },
  {
    "country": "BR",
    "name": "Maués",
    "lat": "-3.38361",
    "lng": "-57.71861"
  },
  {
    "country": "BR",
    "name": "Matriz de Camaragibe",
    "lat": "-9.15167",
    "lng": "-35.53333"
  },
  {
    "country": "BR",
    "name": "Matinha",
    "lat": "-3.10056",
    "lng": "-45.03361"
  },
  {
    "country": "BR",
    "name": "Matias Olímpio",
    "lat": "-3.71583",
    "lng": "-42.55556"
  },
  {
    "country": "BR",
    "name": "Mata Grande",
    "lat": "-9.1175",
    "lng": "-37.73222"
  },
  {
    "country": "BR",
    "name": "Massaranduba",
    "lat": "-7.20028",
    "lng": "-35.78917"
  },
  {
    "country": "BR",
    "name": "Maribondo",
    "lat": "-9.57722",
    "lng": "-36.30528"
  },
  {
    "country": "BR",
    "name": "Mari",
    "lat": "-7.06",
    "lng": "-35.31944"
  },
  {
    "country": "BR",
    "name": "Marechal Deodoro",
    "lat": "-9.71028",
    "lng": "-35.895"
  },
  {
    "country": "BR",
    "name": "Marco",
    "lat": "-3.12389",
    "lng": "-40.14667"
  },
  {
    "country": "BR",
    "name": "Marapanim",
    "lat": "-0.7175",
    "lng": "-47.69972"
  },
  {
    "country": "BR",
    "name": "Maraial",
    "lat": "-8.7825",
    "lng": "-35.80889"
  },
  {
    "country": "BR",
    "name": "Maragogi",
    "lat": "-9.01222",
    "lng": "-35.2225"
  },
  {
    "country": "BR",
    "name": "Maracanaú",
    "lat": "-3.87667",
    "lng": "-38.62556"
  },
  {
    "country": "BR",
    "name": "Maracanã",
    "lat": "-0.76614",
    "lng": "-47.45371"
  },
  {
    "country": "BR",
    "name": "Maracaçumé",
    "lat": "-2.04278",
    "lng": "-45.95917"
  },
  {
    "country": "BR",
    "name": "Marabá",
    "lat": "-5.38146",
    "lng": "-49.13232"
  },
  {
    "country": "BR",
    "name": "Manaíra",
    "lat": "-7.70611",
    "lng": "-38.15444"
  },
  {
    "country": "BR",
    "name": "Mamanguape",
    "lat": "-6.83861",
    "lng": "-35.12611"
  },
  {
    "country": "BR",
    "name": "Major Isidoro",
    "lat": "-9.53222",
    "lng": "-36.985"
  },
  {
    "country": "BR",
    "name": "Maceió",
    "lat": "-9.66583",
    "lng": "-35.73528"
  },
  {
    "country": "BR",
    "name": "Macau",
    "lat": "-5.115",
    "lng": "-36.63444"
  },
  {
    "country": "BR",
    "name": "Macaparana",
    "lat": "-7.55472",
    "lng": "-35.45306"
  },
  {
    "country": "BR",
    "name": "Macapá",
    "lat": "0.03889",
    "lng": "-51.06639"
  },
  {
    "country": "BR",
    "name": "Macaíba",
    "lat": "-5.85833",
    "lng": "-35.35389"
  },
  {
    "country": "BR",
    "name": "Luzilândia",
    "lat": "-3.45778",
    "lng": "-42.37028"
  },
  {
    "country": "BR",
    "name": "Luís Correia",
    "lat": "-2.87917",
    "lng": "-41.66694"
  },
  {
    "country": "BR",
    "name": "Limoeiro do Norte",
    "lat": "-5.14556",
    "lng": "-38.09806"
  },
  {
    "country": "BR",
    "name": "Limoeiro do Ajuru",
    "lat": "-1.89528",
    "lng": "-49.38056"
  },
  {
    "country": "BR",
    "name": "Limoeiro de Anadia",
    "lat": "-9.74056",
    "lng": "-36.50278"
  },
  {
    "country": "BR",
    "name": "Limoeiro",
    "lat": "-7.87472",
    "lng": "-35.45028"
  },
  {
    "country": "BR",
    "name": "Lavras da Mangabeira",
    "lat": "-6.75333",
    "lng": "-38.96444"
  },
  {
    "country": "BR",
    "name": "Lajedo",
    "lat": "-8.66361",
    "lng": "-36.32"
  },
  {
    "country": "BR",
    "name": "Lago da Pedra",
    "lat": "-4.28674",
    "lng": "-45.23824"
  },
  {
    "country": "BR",
    "name": "Lagoa Seca",
    "lat": "-7.17083",
    "lng": "-35.85361"
  },
  {
    "country": "BR",
    "name": "Lagoa Nova",
    "lat": "-6.1",
    "lng": "-36.48333"
  },
  {
    "country": "BR",
    "name": "Lagoa do Itaenga",
    "lat": "-7.93611",
    "lng": "-35.29028"
  },
  {
    "country": "BR",
    "name": "Lagoa da Canoa",
    "lat": "-9.82972",
    "lng": "-36.73778"
  },
  {
    "country": "BR",
    "name": "Juruti",
    "lat": "-2.15222",
    "lng": "-56.09222"
  },
  {
    "country": "BR",
    "name": "Juru",
    "lat": "-7.53694",
    "lng": "-37.81861"
  },
  {
    "country": "BR",
    "name": "Juripiranga",
    "lat": "-7.37333",
    "lng": "-35.23806"
  },
  {
    "country": "BR",
    "name": "Junqueiro",
    "lat": "-9.92528",
    "lng": "-36.47583"
  },
  {
    "country": "BR",
    "name": "Jundiá",
    "lat": "-8.93472",
    "lng": "-35.57361"
  },
  {
    "country": "BR",
    "name": "Jucurutu",
    "lat": "-6.03389",
    "lng": "-37.02028"
  },
  {
    "country": "BR",
    "name": "Jucás",
    "lat": "-6.52528",
    "lng": "-39.5275"
  },
  {
    "country": "BR",
    "name": "Juazeiro do Norte",
    "lat": "-7.21306",
    "lng": "-39.31528"
  },
  {
    "country": "BR",
    "name": "Juàzeirinho",
    "lat": "-6.81667",
    "lng": "-38.05"
  },
  {
    "country": "BR",
    "name": "José de Freitas",
    "lat": "-4.75639",
    "lng": "-42.57556"
  },
  {
    "country": "BR",
    "name": "Joaquim Nabuco",
    "lat": "-8.62444",
    "lng": "-35.53333"
  },
  {
    "country": "BR",
    "name": "João Pessoa",
    "lat": "-7.115",
    "lng": "-34.86306"
  },
  {
    "country": "BR",
    "name": "João Câmara",
    "lat": "-5.5375",
    "lng": "-35.81972"
  },
  {
    "country": "BR",
    "name": "João Alfredo",
    "lat": "-7.85583",
    "lng": "-35.58833"
  },
  {
    "country": "BR",
    "name": "Girau do Ponciano",
    "lat": "-9.88417",
    "lng": "-36.82889"
  },
  {
    "country": "BR",
    "name": "Jardim do Seridó",
    "lat": "-6.58444",
    "lng": "-36.77444"
  },
  {
    "country": "BR",
    "name": "Jardim de Piranhas",
    "lat": "-6.37861",
    "lng": "-37.35194"
  },
  {
    "country": "BR",
    "name": "Jardim",
    "lat": "-3.46444",
    "lng": "-39.05667"
  },
  {
    "country": "BR",
    "name": "Jaicós",
    "lat": "-7.35917",
    "lng": "-41.13778"
  },
  {
    "country": "BR",
    "name": "Jaguaruana",
    "lat": "-4.83389",
    "lng": "-37.78111"
  },
  {
    "country": "BR",
    "name": "Jaguaribe",
    "lat": "-5.89056",
    "lng": "-38.62194"
  },
  {
    "country": "BR",
    "name": "Jacareacanga",
    "lat": "-6.22222",
    "lng": "-57.75278"
  },
  {
    "country": "BR",
    "name": "Jacaraú",
    "lat": "-6.61222",
    "lng": "-35.29278"
  },
  {
    "country": "BR",
    "name": "Jaboatão",
    "lat": "-8.18028",
    "lng": "-35.00139"
  },
  {
    "country": "BR",
    "name": "Itupiranga",
    "lat": "-5.13472",
    "lng": "-49.32667"
  },
  {
    "country": "BR",
    "name": "Itaueira",
    "lat": "-7.60333",
    "lng": "-43.02556"
  },
  {
    "country": "BR",
    "name": "Itatuba",
    "lat": "-7.375",
    "lng": "-35.62833"
  },
  {
    "country": "BR",
    "name": "Itaquitinga",
    "lat": "-7.66778",
    "lng": "-35.10167"
  },
  {
    "country": "BR",
    "name": "Itacoatiara",
    "lat": "-3.14306",
    "lng": "-58.44417"
  },
  {
    "country": "BR",
    "name": "Itaporanga",
    "lat": "-7.30444",
    "lng": "-38.15028"
  },
  {
    "country": "BR",
    "name": "Itapissuma",
    "lat": "-7.77639",
    "lng": "-34.89222"
  },
  {
    "country": "BR",
    "name": "Itapipoca",
    "lat": "-3.49444",
    "lng": "-39.57861"
  },
  {
    "country": "BR",
    "name": "Itapecuru Mirim",
    "lat": "-3.3925",
    "lng": "-44.35861"
  },
  {
    "country": "BR",
    "name": "Itapagé",
    "lat": "-3.68667",
    "lng": "-39.58611"
  },
  {
    "country": "BR",
    "name": "Itamaracá",
    "lat": "-7.74778",
    "lng": "-34.82556"
  },
  {
    "country": "BR",
    "name": "Itaituba",
    "lat": "-4.27611",
    "lng": "-55.98361"
  },
  {
    "country": "BR",
    "name": "Itaitinga",
    "lat": "-3.96944",
    "lng": "-38.52806"
  },
  {
    "country": "BR",
    "name": "Itainópolis",
    "lat": "-7.44694",
    "lng": "-41.47833"
  },
  {
    "country": "BR",
    "name": "Itaíba",
    "lat": "-8.9475",
    "lng": "-37.42278"
  },
  {
    "country": "BR",
    "name": "Itabaiana",
    "lat": "-7.32861",
    "lng": "-35.3325"
  },
  {
    "country": "BR",
    "name": "Irituia",
    "lat": "-1.77111",
    "lng": "-47.43806"
  },
  {
    "country": "BR",
    "name": "Irauçuba",
    "lat": "-3.74611",
    "lng": "-39.78333"
  },
  {
    "country": "BR",
    "name": "Ipueiras",
    "lat": "-7.03333",
    "lng": "-40.45"
  },
  {
    "country": "BR",
    "name": "Ipubi",
    "lat": "-7.65194",
    "lng": "-40.14889"
  },
  {
    "country": "BR",
    "name": "Ipu",
    "lat": "-4.32222",
    "lng": "-40.71083"
  },
  {
    "country": "BR",
    "name": "Ipojuca",
    "lat": "-8.39889",
    "lng": "-35.06389"
  },
  {
    "country": "BR",
    "name": "Ipanguaçu",
    "lat": "-5.49833",
    "lng": "-36.855"
  },
  {
    "country": "BR",
    "name": "Inhuma",
    "lat": "-6.66833",
    "lng": "-41.70778"
  },
  {
    "country": "BR",
    "name": "Inhapi",
    "lat": "-9.22139",
    "lng": "-37.74861"
  },
  {
    "country": "BR",
    "name": "Ingá",
    "lat": "-7.28083",
    "lng": "-35.60444"
  },
  {
    "country": "BR",
    "name": "Independência",
    "lat": "-5.39639",
    "lng": "-40.30861"
  },
  {
    "country": "BR",
    "name": "Imperatriz",
    "lat": "-5.52639",
    "lng": "-47.49167"
  },
  {
    "country": "BR",
    "name": "Imaculada",
    "lat": "-7.38972",
    "lng": "-37.50917"
  },
  {
    "country": "BR",
    "name": "Iguatu",
    "lat": "-6.35944",
    "lng": "-39.29861"
  },
  {
    "country": "BR",
    "name": "Igarapé Miri",
    "lat": "-1.975",
    "lng": "-48.95972"
  },
  {
    "country": "BR",
    "name": "Igarapé Açu",
    "lat": "-1.12889",
    "lng": "-47.62"
  },
  {
    "country": "BR",
    "name": "Igarassu",
    "lat": "-7.83417",
    "lng": "-34.90639"
  },
  {
    "country": "BR",
    "name": "Igaci",
    "lat": "-9.53694",
    "lng": "-36.63361"
  },
  {
    "country": "BR",
    "name": "Icó",
    "lat": "-6.40111",
    "lng": "-38.86222"
  },
  {
    "country": "BR",
    "name": "Icatu",
    "lat": "-2.77583",
    "lng": "-44.06583"
  },
  {
    "country": "BR",
    "name": "Ibimirim",
    "lat": "-8.54056",
    "lng": "-37.69028"
  },
  {
    "country": "BR",
    "name": "Ibiapina",
    "lat": "-3.92333",
    "lng": "-40.88944"
  },
  {
    "country": "BR",
    "name": "Ibateguara",
    "lat": "-8.9725",
    "lng": "-35.93944"
  },
  {
    "country": "BR",
    "name": "Humberto de Campos",
    "lat": "-2.59833",
    "lng": "-43.46111"
  },
  {
    "country": "BR",
    "name": "Horizonte",
    "lat": "-4.1",
    "lng": "-38.48333"
  },
  {
    "country": "BR",
    "name": "Hidrolândia",
    "lat": "-4.40806",
    "lng": "-40.43778"
  },
  {
    "country": "BR",
    "name": "Gurupá",
    "lat": "-1.405",
    "lng": "-51.64"
  },
  {
    "country": "BR",
    "name": "Gurinhém",
    "lat": "-7.12389",
    "lng": "-35.42444"
  },
  {
    "country": "BR",
    "name": "Guaraciaba do Norte",
    "lat": "-4.16694",
    "lng": "-40.7475"
  },
  {
    "country": "BR",
    "name": "Guarabira",
    "lat": "-6.85472",
    "lng": "-35.49"
  },
  {
    "country": "BR",
    "name": "Guajará",
    "lat": "-2.96667",
    "lng": "-57.66667"
  },
  {
    "country": "BR",
    "name": "Guaiúba",
    "lat": "-4.03972",
    "lng": "-38.63722"
  },
  {
    "country": "BR",
    "name": "Guabiraba",
    "lat": "-8.41667",
    "lng": "-35.66667"
  },
  {
    "country": "BR",
    "name": "Gravatá",
    "lat": "-8.20111",
    "lng": "-35.56472"
  },
  {
    "country": "BR",
    "name": "Granja",
    "lat": "-3.12028",
    "lng": "-40.82611"
  },
  {
    "country": "BR",
    "name": "Grajaú",
    "lat": "-5.81944",
    "lng": "-46.13861"
  },
  {
    "country": "BR",
    "name": "Governador Dix Sept Rosado",
    "lat": "-5.45889",
    "lng": "-37.52083"
  },
  {
    "country": "BR",
    "name": "Goianinha",
    "lat": "-6.26472",
    "lng": "-35.2125"
  },
  {
    "country": "BR",
    "name": "Goiana",
    "lat": "-7.56056",
    "lng": "-35.0025"
  },
  {
    "country": "BR",
    "name": "Glória do Goitá",
    "lat": "-8.00167",
    "lng": "-35.29278"
  },
  {
    "country": "BR",
    "name": "Gilbués",
    "lat": "-9.83167",
    "lng": "-45.34389"
  },
  {
    "country": "BR",
    "name": "Gararu",
    "lat": "-9.9675",
    "lng": "-37.08333"
  },
  {
    "country": "BR",
    "name": "Garanhuns",
    "lat": "-8.88202",
    "lng": "-36.50216"
  },
  {
    "country": "BR",
    "name": "Gameleira",
    "lat": "-8.58444",
    "lng": "-35.38667"
  },
  {
    "country": "BR",
    "name": "Fortuna",
    "lat": "-5.73333",
    "lng": "-44.15833"
  },
  {
    "country": "BR",
    "name": "Fortaleza",
    "lat": "-3.71722",
    "lng": "-38.54306"
  },
  {
    "country": "BR",
    "name": "Forquilha",
    "lat": "-3.79833",
    "lng": "-40.26056"
  },
  {
    "country": "BR",
    "name": "Floriano",
    "lat": "-6.76694",
    "lng": "-43.0225"
  },
  {
    "country": "BR",
    "name": "Floresta",
    "lat": "-8.60111",
    "lng": "-38.56861"
  },
  {
    "country": "BR",
    "name": "Flores",
    "lat": "-7.86806",
    "lng": "-37.97472"
  },
  {
    "country": "BR",
    "name": "Flexeiras",
    "lat": "-9.1975",
    "lng": "-35.78083"
  },
  {
    "country": "BR",
    "name": "Feira Nova",
    "lat": "-7.95083",
    "lng": "-35.38917"
  },
  {
    "country": "BR",
    "name": "Farias Brito",
    "lat": "-6.93056",
    "lng": "-39.56556"
  },
  {
    "country": "BR",
    "name": "Fagundes",
    "lat": "-7.355",
    "lng": "-35.775"
  },
  {
    "country": "BR",
    "name": "Exu",
    "lat": "-7.51194",
    "lng": "-39.72417"
  },
  {
    "country": "BR",
    "name": "Eusébio",
    "lat": "-3.89",
    "lng": "-38.45056"
  },
  {
    "country": "BR",
    "name": "Extremoz",
    "lat": "-5.70556",
    "lng": "-35.30722"
  },
  {
    "country": "BR",
    "name": "Estreito",
    "lat": "-5.78333",
    "lng": "-43.25"
  },
  {
    "country": "BR",
    "name": "Esperantinópolis",
    "lat": "-4.86667",
    "lng": "-44.70833"
  },
  {
    "country": "BR",
    "name": "Esperantina",
    "lat": "-3.90167",
    "lng": "-42.23361"
  },
  {
    "country": "BR",
    "name": "Esperança",
    "lat": "-7.03306",
    "lng": "-35.85722"
  },
  {
    "country": "BR",
    "name": "Escada",
    "lat": "-8.35917",
    "lng": "-35.22361"
  },
  {
    "country": "BR",
    "name": "Elesbão Veloso",
    "lat": "-6.20194",
    "lng": "-42.14028"
  },
  {
    "country": "BR",
    "name": "Dona Inês",
    "lat": "-6.61354",
    "lng": "-35.62654"
  },
  {
    "country": "BR",
    "name": "Dom Pedro",
    "lat": "-5.03749",
    "lng": "-44.43857"
  },
  {
    "country": "BR",
    "name": "Dois Riachos",
    "lat": "-9.3925",
    "lng": "-37.10056"
  },
  {
    "country": "BR",
    "name": "Desterro",
    "lat": "-7.29056",
    "lng": "-37.09389"
  },
  {
    "country": "BR",
    "name": "Demerval Lobão",
    "lat": "-5.35833",
    "lng": "-42.67639"
  },
  {
    "country": "BR",
    "name": "Delmiro Gouveia",
    "lat": "-9.38861",
    "lng": "-37.99917"
  },
  {
    "country": "BR",
    "name": "Custódia",
    "lat": "-8.0875",
    "lng": "-37.64306"
  },
  {
    "country": "BR",
    "name": "Cururupu",
    "lat": "-1.82833",
    "lng": "-44.86833"
  },
  {
    "country": "BR",
    "name": "Curuçá",
    "lat": "-0.72889",
    "lng": "-47.84806"
  },
  {
    "country": "BR",
    "name": "Currais Novos",
    "lat": "-6.26083",
    "lng": "-36.51778"
  },
  {
    "country": "BR",
    "name": "Curaçá",
    "lat": "-8.99028",
    "lng": "-39.90944"
  },
  {
    "country": "BR",
    "name": "Cupira",
    "lat": "-8.61667",
    "lng": "-35.95"
  },
  {
    "country": "BR",
    "name": "Cumaru",
    "lat": "-8.00611",
    "lng": "-35.69722"
  },
  {
    "country": "BR",
    "name": "Cuité",
    "lat": "-6.48361",
    "lng": "-36.15361"
  },
  {
    "country": "BR",
    "name": "Cruz do Espírito Santo",
    "lat": "-7.14",
    "lng": "-35.08639"
  },
  {
    "country": "BR",
    "name": "Cruz",
    "lat": "-2.9211",
    "lng": "-40.17589"
  },
  {
    "country": "BR",
    "name": "Crato",
    "lat": "-7.23417",
    "lng": "-39.40944"
  },
  {
    "country": "BR",
    "name": "Crateús",
    "lat": "-5.17833",
    "lng": "-40.6775"
  },
  {
    "country": "BR",
    "name": "Coroatá",
    "lat": "-4.13",
    "lng": "-44.12417"
  },
  {
    "country": "BR",
    "name": "Coremas",
    "lat": "-7.01444",
    "lng": "-37.94583"
  },
  {
    "country": "BR",
    "name": "Coreaú",
    "lat": "-3.53333",
    "lng": "-40.65667"
  },
  {
    "country": "BR",
    "name": "Condado",
    "lat": "-7.58583",
    "lng": "-35.10583"
  },
  {
    "country": "BR",
    "name": "Conceição do Araguaia",
    "lat": "-8.26441",
    "lng": "-49.26982"
  },
  {
    "country": "BR",
    "name": "Colônia Leopoldina",
    "lat": "-8.90889",
    "lng": "-35.725"
  },
  {
    "country": "BR",
    "name": "Colinas",
    "lat": "-6.02583",
    "lng": "-44.24917"
  },
  {
    "country": "BR",
    "name": "Coité do Nóia",
    "lat": "-9.63222",
    "lng": "-36.57861"
  },
  {
    "country": "BR",
    "name": "Coelho Neto",
    "lat": "-4.25667",
    "lng": "-43.01278"
  },
  {
    "country": "BR",
    "name": "Codó",
    "lat": "-4.45528",
    "lng": "-43.88556"
  },
  {
    "country": "BR",
    "name": "Cocal",
    "lat": "-3.47194",
    "lng": "-41.5575"
  },
  {
    "country": "BR",
    "name": "Chorozinho",
    "lat": "-4.30028",
    "lng": "-38.49778"
  },
  {
    "country": "BR",
    "name": "Chapadinha",
    "lat": "-3.74167",
    "lng": "-43.36028"
  },
  {
    "country": "BR",
    "name": "Chã Grande",
    "lat": "-8.23833",
    "lng": "-35.46167"
  },
  {
    "country": "BR",
    "name": "Cerro Corá",
    "lat": "-6.04556",
    "lng": "-36.34583"
  },
  {
    "country": "BR",
    "name": "Cedro",
    "lat": "-6.60667",
    "lng": "-39.06222"
  },
  {
    "country": "BR",
    "name": "Ceará Mirim",
    "lat": "-5.63444",
    "lng": "-35.42556"
  },
  {
    "country": "BR",
    "name": "Caxias",
    "lat": "-4.85889",
    "lng": "-43.35611"
  },
  {
    "country": "BR",
    "name": "Caucaia",
    "lat": "-3.73611",
    "lng": "-38.65306"
  },
  {
    "country": "BR",
    "name": "Catolé do Rocha",
    "lat": "-6.34389",
    "lng": "-37.74667"
  },
  {
    "country": "BR",
    "name": "Catende",
    "lat": "-8.66667",
    "lng": "-35.71667"
  },
  {
    "country": "BR",
    "name": "Castelo do Piauí",
    "lat": "-5.32222",
    "lng": "-41.5525"
  },
  {
    "country": "BR",
    "name": "Castanhal",
    "lat": "-1.29389",
    "lng": "-47.92639"
  },
  {
    "country": "BR",
    "name": "Cascavel",
    "lat": "-4.13306",
    "lng": "-38.24194"
  },
  {
    "country": "BR",
    "name": "Carutapera",
    "lat": "-1.195",
    "lng": "-46.02"
  },
  {
    "country": "BR",
    "name": "Caruaru",
    "lat": "-8.28333",
    "lng": "-35.97611"
  },
  {
    "country": "BR",
    "name": "Carpina",
    "lat": "-7.85083",
    "lng": "-35.25472"
  },
  {
    "country": "BR",
    "name": "Carolina",
    "lat": "-7.33561",
    "lng": "-47.46218"
  },
  {
    "country": "BR",
    "name": "Carnaíba",
    "lat": "-8.7",
    "lng": "-37.66667"
  },
  {
    "country": "BR",
    "name": "Caririaçu",
    "lat": "-7.04222",
    "lng": "-39.28361"
  },
  {
    "country": "BR",
    "name": "Cariré",
    "lat": "-3.95056",
    "lng": "-40.47333"
  },
  {
    "country": "BR",
    "name": "Careiro da Várzea",
    "lat": "-3.19695",
    "lng": "-59.82674"
  },
  {
    "country": "BR",
    "name": "Caraúbas",
    "lat": "-5.7925",
    "lng": "-37.55667"
  },
  {
    "country": "BR",
    "name": "Capoeiras",
    "lat": "-8.73472",
    "lng": "-36.62667"
  },
  {
    "country": "BR",
    "name": "Capitão Poço",
    "lat": "-1.74639",
    "lng": "-47.05944"
  },
  {
    "country": "BR",
    "name": "Capela",
    "lat": "-9.4075",
    "lng": "-36.07361"
  },
  {
    "country": "BR",
    "name": "Capanema",
    "lat": "-1.19583",
    "lng": "-47.18083"
  },
  {
    "country": "BR",
    "name": "Canto do Buriti",
    "lat": "-8.11",
    "lng": "-42.94444"
  },
  {
    "country": "BR",
    "name": "Cantanhede",
    "lat": "-3.63333",
    "lng": "-44.37667"
  },
  {
    "country": "BR",
    "name": "Canindé de São Francisco",
    "lat": "-9.66",
    "lng": "-37.78944"
  },
  {
    "country": "BR",
    "name": "Canindé",
    "lat": "-4.35889",
    "lng": "-39.31167"
  },
  {
    "country": "BR",
    "name": "Canhotinho",
    "lat": "-8.88222",
    "lng": "-36.19111"
  },
  {
    "country": "BR",
    "name": "Canguaretama",
    "lat": "-6.38",
    "lng": "-35.12889"
  },
  {
    "country": "BR",
    "name": "Cândido Mendes",
    "lat": "-1.44667",
    "lng": "-45.71667"
  },
  {
    "country": "BR",
    "name": "Campos Sales",
    "lat": "-7.07444",
    "lng": "-40.37611"
  },
  {
    "country": "BR",
    "name": "Campo Maior",
    "lat": "-4.82778",
    "lng": "-42.16861"
  },
  {
    "country": "BR",
    "name": "Campo Alegre",
    "lat": "-9.78194",
    "lng": "-36.35083"
  },
  {
    "country": "BR",
    "name": "Campina Grande",
    "lat": "-7.23056",
    "lng": "-35.88111"
  },
  {
    "country": "BR",
    "name": "Camocim de São Félix",
    "lat": "-8.35861",
    "lng": "-35.76194"
  },
  {
    "country": "BR",
    "name": "Camocim",
    "lat": "-2.90222",
    "lng": "-40.84111"
  },
  {
    "country": "BR",
    "name": "Cametá",
    "lat": "-2.24444",
    "lng": "-49.49583"
  },
  {
    "country": "BR",
    "name": "Cajueiro",
    "lat": "-9.71667",
    "lng": "-36.45"
  },
  {
    "country": "BR",
    "name": "Cajazeiras",
    "lat": "-6.89028",
    "lng": "-38.55528"
  },
  {
    "country": "BR",
    "name": "Caicó",
    "lat": "-6.45833",
    "lng": "-37.09778"
  },
  {
    "country": "BR",
    "name": "Caetés",
    "lat": "-8.77306",
    "lng": "-36.6225"
  },
  {
    "country": "BR",
    "name": "Cacimbinhas",
    "lat": "-9.40028",
    "lng": "-36.99028"
  },
  {
    "country": "BR",
    "name": "Cacimba de Dentro",
    "lat": "-6.64167",
    "lng": "-35.79"
  },
  {
    "country": "BR",
    "name": "Cachoeirinha",
    "lat": "-8.48639",
    "lng": "-36.23306"
  },
  {
    "country": "BR",
    "name": "Cabrobó",
    "lat": "-8.51417",
    "lng": "-39.31"
  },
  {
    "country": "BR",
    "name": "Cabo",
    "lat": "-8.28333",
    "lng": "-35.03333"
  },
  {
    "country": "BR",
    "name": "Cabedelo",
    "lat": "-6.98111",
    "lng": "-34.83389"
  },
  {
    "country": "BR",
    "name": "Caaporã",
    "lat": "-7.51556",
    "lng": "-34.90833"
  },
  {
    "country": "BR",
    "name": "Buriti dos Lopes",
    "lat": "-3.175",
    "lng": "-41.86694"
  },
  {
    "country": "BR",
    "name": "Buriti Bravo",
    "lat": "-5.83722",
    "lng": "-43.83361"
  },
  {
    "country": "BR",
    "name": "Bujaru",
    "lat": "-1.515",
    "lng": "-48.04472"
  },
  {
    "country": "BR",
    "name": "Buíque",
    "lat": "-8.62306",
    "lng": "-37.15583"
  },
  {
    "country": "BR",
    "name": "Breves",
    "lat": "-1.68222",
    "lng": "-50.48028"
  },
  {
    "country": "BR",
    "name": "Brejo Santo",
    "lat": "-7.49333",
    "lng": "-38.98722"
  },
  {
    "country": "BR",
    "name": "Brejo da Madre de Deus",
    "lat": "-8.14583",
    "lng": "-36.37111"
  },
  {
    "country": "BR",
    "name": "Brejo",
    "lat": "-3.68444",
    "lng": "-42.75028"
  },
  {
    "country": "BR",
    "name": "Brejinho",
    "lat": "-6.19083",
    "lng": "-35.35667"
  },
  {
    "country": "BR",
    "name": "Bragança",
    "lat": "-1.05361",
    "lng": "-46.76556"
  },
  {
    "country": "BR",
    "name": "Borba",
    "lat": "-4.39143",
    "lng": "-59.58864"
  },
  {
    "country": "BR",
    "name": "Boqueirão",
    "lat": "-7.48237",
    "lng": "-36.13422"
  },
  {
    "country": "BR",
    "name": "Bonito",
    "lat": "-8.47028",
    "lng": "-35.72861"
  },
  {
    "country": "BR",
    "name": "Bom Jesus",
    "lat": "-9.07444",
    "lng": "-44.35861"
  },
  {
    "country": "BR",
    "name": "Bom Jardim",
    "lat": "-7.79583",
    "lng": "-35.58722"
  },
  {
    "country": "BR",
    "name": "Bom Jardim",
    "lat": "-7.01667",
    "lng": "-46.48333"
  },
  {
    "country": "BR",
    "name": "Bom Conselho",
    "lat": "-9.16972",
    "lng": "-36.67972"
  },
  {
    "country": "BR",
    "name": "Boa Viagem",
    "lat": "-5.1275",
    "lng": "-39.73222"
  },
  {
    "country": "BR",
    "name": "Bezerros",
    "lat": "-8.23333",
    "lng": "-35.79694"
  },
  {
    "country": "BR",
    "name": "Bequimão",
    "lat": "-2.44889",
    "lng": "-44.7825"
  },
  {
    "country": "BR",
    "name": "Benevides",
    "lat": "-1.36139",
    "lng": "-48.24472"
  },
  {
    "country": "BR",
    "name": "Beneditinos",
    "lat": "-5.45",
    "lng": "-42.36667"
  },
  {
    "country": "BR",
    "name": "Belo Jardim",
    "lat": "-8.33556",
    "lng": "-36.42417"
  },
  {
    "country": "BR",
    "name": "Belém do Brejo do Cruz",
    "lat": "-6.18861",
    "lng": "-37.53583"
  },
  {
    "country": "BR",
    "name": "Belém de São Francisco",
    "lat": "-8.75389",
    "lng": "-38.96583"
  },
  {
    "country": "BR",
    "name": "Belém",
    "lat": "-6.69167",
    "lng": "-35.53333"
  },
  {
    "country": "BR",
    "name": "Belém",
    "lat": "-1.45583",
    "lng": "-48.50444"
  },
  {
    "country": "BR",
    "name": "Bela Cruz",
    "lat": "-3.05056",
    "lng": "-40.16778"
  },
  {
    "country": "BR",
    "name": "Beberibe",
    "lat": "-4.17972",
    "lng": "-38.13056"
  },
  {
    "country": "BR",
    "name": "Bayeux",
    "lat": "-7.125",
    "lng": "-34.93222"
  },
  {
    "country": "BR",
    "name": "Baturité",
    "lat": "-4.32861",
    "lng": "-38.88472"
  },
  {
    "country": "BR",
    "name": "Batalha",
    "lat": "-9.67778",
    "lng": "-37.12472"
  },
  {
    "country": "BR",
    "name": "Batalha",
    "lat": "-4.025",
    "lng": "-42.075"
  },
  {
    "country": "BR",
    "name": "Barroquinha",
    "lat": "-3.01889",
    "lng": "-41.13611"
  },
  {
    "country": "BR",
    "name": "Barro",
    "lat": "-6.71667",
    "lng": "-38.86667"
  },
  {
    "country": "BR",
    "name": "Barreiros",
    "lat": "-8.81833",
    "lng": "-35.18639"
  },
  {
    "country": "BR",
    "name": "Barreirinhas",
    "lat": "-2.75556",
    "lng": "-42.82591"
  },
  {
    "country": "BR",
    "name": "Barreirinha",
    "lat": "-2.79333",
    "lng": "-57.07"
  },
  {
    "country": "BR",
    "name": "Barras",
    "lat": "-4.24444",
    "lng": "-42.29444"
  },
  {
    "country": "BR",
    "name": "Barra do Corda",
    "lat": "-5.50556",
    "lng": "-45.24333"
  },
  {
    "country": "BR",
    "name": "Barra de Santo Antônio",
    "lat": "-9.40472",
    "lng": "-35.50722"
  },
  {
    "country": "BR",
    "name": "Barcarena",
    "lat": "-1.50583",
    "lng": "-48.62583"
  },
  {
    "country": "BR",
    "name": "Barbalha",
    "lat": "-7.31111",
    "lng": "-39.30417"
  },
  {
    "country": "BR",
    "name": "Baraúna",
    "lat": "-5.08",
    "lng": "-37.61667"
  },
  {
    "country": "BR",
    "name": "Bananeiras",
    "lat": "-6.75",
    "lng": "-35.63333"
  },
  {
    "country": "BR",
    "name": "Balsas",
    "lat": "-7.5325",
    "lng": "-46.03556"
  },
  {
    "country": "BR",
    "name": "Baião",
    "lat": "-2.79056",
    "lng": "-49.67167"
  },
  {
    "country": "BR",
    "name": "Bacabal",
    "lat": "-4.29167",
    "lng": "-44.79167"
  },
  {
    "country": "BR",
    "name": "Autazes",
    "lat": "-3.57972",
    "lng": "-59.13056"
  },
  {
    "country": "BR",
    "name": "Aurora",
    "lat": "-6.9425",
    "lng": "-38.9675"
  },
  {
    "country": "BR",
    "name": "Augusto Corrêa",
    "lat": "-1.02167",
    "lng": "-46.635"
  },
  {
    "country": "BR",
    "name": "Atalaia",
    "lat": "-9.50194",
    "lng": "-36.02278"
  },
  {
    "country": "BR",
    "name": "Assaré",
    "lat": "-6.87444",
    "lng": "-39.875"
  },
  {
    "country": "BR",
    "name": "Aroeiras",
    "lat": "-7.54528",
    "lng": "-35.7075"
  },
  {
    "country": "BR",
    "name": "Arês",
    "lat": "-6.19444",
    "lng": "-35.16028"
  },
  {
    "country": "BR",
    "name": "Areia Branca",
    "lat": "-4.95611",
    "lng": "-37.13694"
  },
  {
    "country": "BR",
    "name": "Areia",
    "lat": "-6.96333",
    "lng": "-35.69167"
  },
  {
    "country": "BR",
    "name": "Arcoverde",
    "lat": "-8.41889",
    "lng": "-37.05389"
  },
  {
    "country": "BR",
    "name": "Araruna",
    "lat": "-6.55833",
    "lng": "-35.74167"
  },
  {
    "country": "BR",
    "name": "Araripina",
    "lat": "-7.57611",
    "lng": "-40.49833"
  },
  {
    "country": "BR",
    "name": "Araripe",
    "lat": "-7.2125",
    "lng": "-40.04611"
  },
  {
    "country": "BR",
    "name": "Arari",
    "lat": "-3.45361",
    "lng": "-44.78"
  },
  {
    "country": "BR",
    "name": "Arara",
    "lat": "-6.82833",
    "lng": "-35.75833"
  },
  {
    "country": "BR",
    "name": "Arapiraca",
    "lat": "-9.7525",
    "lng": "-36.66111"
  },
  {
    "country": "BR",
    "name": "Araioses",
    "lat": "-2.89",
    "lng": "-41.90306"
  },
  {
    "country": "BR",
    "name": "Araguaína",
    "lat": "-7.19111",
    "lng": "-48.20722"
  },
  {
    "country": "BR",
    "name": "Araçoiaba",
    "lat": "-7.79028",
    "lng": "-35.09083"
  },
  {
    "country": "BR",
    "name": "Aracoiaba",
    "lat": "-4.37111",
    "lng": "-38.81417"
  },
  {
    "country": "BR",
    "name": "Aracati",
    "lat": "-4.56167",
    "lng": "-37.76972"
  },
  {
    "country": "BR",
    "name": "Aquiraz",
    "lat": "-3.90139",
    "lng": "-38.39111"
  },
  {
    "country": "BR",
    "name": "Apodi",
    "lat": "-5.66417",
    "lng": "-37.79889"
  },
  {
    "country": "BR",
    "name": "Angicos",
    "lat": "-5.66556",
    "lng": "-36.60111"
  },
  {
    "country": "BR",
    "name": "Ananindeua",
    "lat": "-1.36556",
    "lng": "-48.37222"
  },
  {
    "country": "BR",
    "name": "Anajatuba",
    "lat": "-3.26444",
    "lng": "-44.61972"
  },
  {
    "country": "BR",
    "name": "Anadia",
    "lat": "-9.68444",
    "lng": "-36.30417"
  },
  {
    "country": "BR",
    "name": "Amontada",
    "lat": "-3.36167",
    "lng": "-39.83167"
  },
  {
    "country": "BR",
    "name": "Amarante do Maranhão",
    "lat": "-5.56667",
    "lng": "-46.74222"
  },
  {
    "country": "BR",
    "name": "Amarante",
    "lat": "-6.24316",
    "lng": "-42.84544"
  },
  {
    "country": "BR",
    "name": "Amaraji",
    "lat": "-8.38306",
    "lng": "-35.4525"
  },
  {
    "country": "BR",
    "name": "Altos",
    "lat": "-5.03806",
    "lng": "-42.46"
  },
  {
    "country": "BR",
    "name": "Alto Longá",
    "lat": "-5.25111",
    "lng": "-42.21028"
  },
  {
    "country": "BR",
    "name": "Altinho",
    "lat": "-8.48972",
    "lng": "-36.05944"
  },
  {
    "country": "BR",
    "name": "Altamira",
    "lat": "-3.20333",
    "lng": "-52.20639"
  },
  {
    "country": "BR",
    "name": "Almeirim",
    "lat": "-1.52333",
    "lng": "-52.58167"
  },
  {
    "country": "BR",
    "name": "Alhandra",
    "lat": "-7.43861",
    "lng": "-34.91444"
  },
  {
    "country": "BR",
    "name": "Alexandria",
    "lat": "-6.4125",
    "lng": "-38.01583"
  },
  {
    "country": "BR",
    "name": "Alenquer",
    "lat": "-1.94167",
    "lng": "-54.73833"
  },
  {
    "country": "BR",
    "name": "Alcântara",
    "lat": "-2.4041",
    "lng": "-44.41669"
  },
  {
    "country": "BR",
    "name": "Alagoinha",
    "lat": "-6.95",
    "lng": "-35.545"
  },
  {
    "country": "BR",
    "name": "Alagoa Nova",
    "lat": "-7.07083",
    "lng": "-35.75833"
  },
  {
    "country": "BR",
    "name": "Alagoa Grande",
    "lat": "-7.15833",
    "lng": "-35.63"
  },
  {
    "country": "BR",
    "name": "Águas Belas",
    "lat": "-9.11139",
    "lng": "-37.12306"
  },
  {
    "country": "BR",
    "name": "Água Preta",
    "lat": "-8.7075",
    "lng": "-35.53056"
  },
  {
    "country": "BR",
    "name": "Água Branca",
    "lat": "-9.26083",
    "lng": "-37.93611"
  },
  {
    "country": "BR",
    "name": "Água Branca",
    "lat": "-5.89222",
    "lng": "-42.63611"
  },
  {
    "country": "BR",
    "name": "Agrestina",
    "lat": "-8.45806",
    "lng": "-35.94472"
  },
  {
    "country": "BR",
    "name": "Afuá",
    "lat": "-0.15667",
    "lng": "-50.38667"
  },
  {
    "country": "BR",
    "name": "Afonso Bezerra",
    "lat": "-5.49833",
    "lng": "-36.50556"
  },
  {
    "country": "BR",
    "name": "Afogados da Ingazeira",
    "lat": "-7.75083",
    "lng": "-37.63917"
  },
  {
    "country": "BR",
    "name": "Açu",
    "lat": "-5.57667",
    "lng": "-36.90861"
  },
  {
    "country": "BR",
    "name": "Acopiara",
    "lat": "-6.09528",
    "lng": "-39.4525"
  },
  {
    "country": "BR",
    "name": "Acaraú",
    "lat": "-2.88556",
    "lng": "-40.12"
  },
  {
    "country": "BR",
    "name": "Acará",
    "lat": "-1.96083",
    "lng": "-48.19667"
  },
  {
    "country": "BR",
    "name": "Abreu e Lima",
    "lat": "-7.91167",
    "lng": "-34.90278"
  },
  {
    "country": "BR",
    "name": "Abaetetuba",
    "lat": "-1.71806",
    "lng": "-48.8825"
  },
  {
    "country": "BR",
    "name": "Xique Xique",
    "lat": "-10.82294",
    "lng": "-42.72815"
  },
  {
    "country": "BR",
    "name": "Chavantes",
    "lat": "-23.03889",
    "lng": "-49.70944"
  },
  {
    "country": "BR",
    "name": "Xanxerê",
    "lat": "-26.87694",
    "lng": "-52.40417"
  },
  {
    "country": "BR",
    "name": "Votuporanga",
    "lat": "-20.42278",
    "lng": "-49.97278"
  },
  {
    "country": "BR",
    "name": "Votorantim",
    "lat": "-23.54667",
    "lng": "-47.43778"
  },
  {
    "country": "BR",
    "name": "Volta Redonda",
    "lat": "-22.52306",
    "lng": "-44.10417"
  },
  {
    "country": "BR",
    "name": "Vitória da Conquista",
    "lat": "-14.86611",
    "lng": "-40.83944"
  },
  {
    "country": "BR",
    "name": "Vitória",
    "lat": "-20.31944",
    "lng": "-40.33778"
  },
  {
    "country": "BR",
    "name": "Visconde do Rio Branco",
    "lat": "-21.01028",
    "lng": "-42.84056"
  },
  {
    "country": "BR",
    "name": "Viradouro",
    "lat": "-20.87306",
    "lng": "-48.29694"
  },
  {
    "country": "BR",
    "name": "Vinhedo",
    "lat": "-23.02972",
    "lng": "-46.97528"
  },
  {
    "country": "BR",
    "name": "Vila Velha",
    "lat": "-20.32972",
    "lng": "-40.2925"
  },
  {
    "country": "BR",
    "name": "Videira",
    "lat": "-27.00833",
    "lng": "-51.15167"
  },
  {
    "country": "BR",
    "name": "Viçosa",
    "lat": "-20.75389",
    "lng": "-42.88194"
  },
  {
    "country": "BR",
    "name": "Vianópolis",
    "lat": "-16.74194",
    "lng": "-48.51639"
  },
  {
    "country": "BR",
    "name": "Viana",
    "lat": "-20.39028",
    "lng": "-40.49611"
  },
  {
    "country": "BR",
    "name": "Viamão",
    "lat": "-30.08111",
    "lng": "-51.02333"
  },
  {
    "country": "BR",
    "name": "Vespasiano",
    "lat": "-19.69194",
    "lng": "-43.92333"
  },
  {
    "country": "BR",
    "name": "Veranópolis",
    "lat": "-28.93611",
    "lng": "-51.54944"
  },
  {
    "country": "BR",
    "name": "Vera Cruz",
    "lat": "-12.63333",
    "lng": "-41.03333"
  },
  {
    "country": "BR",
    "name": "Wenceslau Braz",
    "lat": "-23.87389",
    "lng": "-49.80278"
  },
  {
    "country": "BR",
    "name": "Venâncio Aires",
    "lat": "-29.60639",
    "lng": "-52.19194"
  },
  {
    "country": "BR",
    "name": "Vazante",
    "lat": "-17.98694",
    "lng": "-46.90778"
  },
  {
    "country": "BR",
    "name": "Vassouras",
    "lat": "-22.40389",
    "lng": "-43.6625"
  },
  {
    "country": "BR",
    "name": "Varzelândia",
    "lat": "-15.70139",
    "lng": "-44.0275"
  },
  {
    "country": "BR",
    "name": "Várzea Paulista",
    "lat": "-23.21139",
    "lng": "-46.82833"
  },
  {
    "country": "BR",
    "name": "Várzea Grande",
    "lat": "-15.64667",
    "lng": "-56.1325"
  },
  {
    "country": "BR",
    "name": "Várzea da Palma",
    "lat": "-17.5976",
    "lng": "-44.73367"
  },
  {
    "country": "BR",
    "name": "Varginha",
    "lat": "-21.55139",
    "lng": "-45.43028"
  },
  {
    "country": "BR",
    "name": "Vargem Grande do Sul",
    "lat": "-21.83222",
    "lng": "-46.89361"
  },
  {
    "country": "BR",
    "name": "Vargem Alta",
    "lat": "-20.67139",
    "lng": "-41.00694"
  },
  {
    "country": "BR",
    "name": "Valparaíso",
    "lat": "-21.22778",
    "lng": "-50.86833"
  },
  {
    "country": "BR",
    "name": "Valinhos",
    "lat": "-22.97056",
    "lng": "-46.99583"
  },
  {
    "country": "BR",
    "name": "Valente",
    "lat": "-11.41222",
    "lng": "-39.46194"
  },
  {
    "country": "BR",
    "name": "Valença",
    "lat": "-22.24556",
    "lng": "-43.70028"
  },
  {
    "country": "BR",
    "name": "Valença",
    "lat": "-13.37028",
    "lng": "-39.07306"
  },
  {
    "country": "BR",
    "name": "Vacaria",
    "lat": "-28.51222",
    "lng": "-50.93389"
  },
  {
    "country": "BR",
    "name": "Urussanga",
    "lat": "-28.51778",
    "lng": "-49.32083"
  },
  {
    "country": "BR",
    "name": "Urupês",
    "lat": "-21.20167",
    "lng": "-49.29"
  },
  {
    "country": "BR",
    "name": "Uruguaiana",
    "lat": "-29.75472",
    "lng": "-57.08833"
  },
  {
    "country": "BR",
    "name": "Uruçuca",
    "lat": "-14.59306",
    "lng": "-39.28444"
  },
  {
    "country": "BR",
    "name": "Uruana",
    "lat": "-15.5036",
    "lng": "-49.68266"
  },
  {
    "country": "BR",
    "name": "Uruaçu",
    "lat": "-14.52472",
    "lng": "-49.14083"
  },
  {
    "country": "BR",
    "name": "União da Vitória",
    "lat": "-26.23",
    "lng": "-51.08639"
  },
  {
    "country": "BR",
    "name": "Unaí",
    "lat": "-16.3575",
    "lng": "-46.90611"
  },
  {
    "country": "BR",
    "name": "Una",
    "lat": "-15.29333",
    "lng": "-39.07528"
  },
  {
    "country": "BR",
    "name": "Umuarama",
    "lat": "-23.76639",
    "lng": "-53.325"
  },
  {
    "country": "BR",
    "name": "Umbaúba",
    "lat": "-11.38333",
    "lng": "-37.65778"
  },
  {
    "country": "BR",
    "name": "Uberlândia",
    "lat": "-18.91861",
    "lng": "-48.27722"
  },
  {
    "country": "BR",
    "name": "Uberaba",
    "lat": "-19.74833",
    "lng": "-47.93194"
  },
  {
    "country": "BR",
    "name": "Ubatuba",
    "lat": "-23.43389",
    "lng": "-45.07111"
  },
  {
    "country": "BR",
    "name": "Ubatã",
    "lat": "-14.20906",
    "lng": "-39.52641"
  },
  {
    "country": "BR",
    "name": "Ubaitaba",
    "lat": "-14.3125",
    "lng": "-39.32333"
  },
  {
    "country": "BR",
    "name": "Ubaíra",
    "lat": "-13.26806",
    "lng": "-39.66278"
  },
  {
    "country": "BR",
    "name": "Ubá",
    "lat": "-21.12",
    "lng": "-42.94278"
  },
  {
    "country": "BR",
    "name": "Turmalina",
    "lat": "-17.28556",
    "lng": "-42.73"
  },
  {
    "country": "BR",
    "name": "Tupi Paulista",
    "lat": "-21.38111",
    "lng": "-51.57056"
  },
  {
    "country": "BR",
    "name": "Tupanciretã",
    "lat": "-29.08056",
    "lng": "-53.83583"
  },
  {
    "country": "BR",
    "name": "Tupaciguara",
    "lat": "-18.59222",
    "lng": "-48.705"
  },
  {
    "country": "BR",
    "name": "Tupã",
    "lat": "-21.93472",
    "lng": "-50.51361"
  },
  {
    "country": "BR",
    "name": "Tucano",
    "lat": "-10.95817",
    "lng": "-38.79084"
  },
  {
    "country": "BR",
    "name": "Tubarão",
    "lat": "-28.46667",
    "lng": "-49.00694"
  },
  {
    "country": "BR",
    "name": "Triunfo",
    "lat": "-29.94333",
    "lng": "-51.71806"
  },
  {
    "country": "BR",
    "name": "Trindade",
    "lat": "-16.64944",
    "lng": "-49.48889"
  },
  {
    "country": "BR",
    "name": "Três Rios",
    "lat": "-22.11667",
    "lng": "-43.20917"
  },
  {
    "country": "BR",
    "name": "Três Pontas",
    "lat": "-21.36667",
    "lng": "-45.5125"
  },
  {
    "country": "BR",
    "name": "Três Passos",
    "lat": "-27.45556",
    "lng": "-53.93194"
  },
  {
    "country": "BR",
    "name": "Três Lagoas",
    "lat": "-20.78765",
    "lng": "-51.70338"
  },
  {
    "country": "BR",
    "name": "Três de Maio",
    "lat": "-27.77333",
    "lng": "-54.24"
  },
  {
    "country": "BR",
    "name": "Três Coroas",
    "lat": "-29.51694",
    "lng": "-50.77778"
  },
  {
    "country": "BR",
    "name": "Três Corações",
    "lat": "-21.69694",
    "lng": "-45.25333"
  },
  {
    "country": "BR",
    "name": "Três Barras",
    "lat": "-26.10639",
    "lng": "-50.32222"
  },
  {
    "country": "BR",
    "name": "Tremembé",
    "lat": "-22.95833",
    "lng": "-45.54944"
  },
  {
    "country": "BR",
    "name": "Tremedal",
    "lat": "-14.97583",
    "lng": "-41.41083"
  },
  {
    "country": "BR",
    "name": "Tramandaí",
    "lat": "-29.98472",
    "lng": "-50.13361"
  },
  {
    "country": "BR",
    "name": "Torres",
    "lat": "-29.33528",
    "lng": "-49.72694"
  },
  {
    "country": "BR",
    "name": "Tomar do Geru",
    "lat": "-11.37333",
    "lng": "-37.84056"
  },
  {
    "country": "BR",
    "name": "Toledo",
    "lat": "-24.71361",
    "lng": "-53.74306"
  },
  {
    "country": "BR",
    "name": "Tocantins",
    "lat": "-21.175",
    "lng": "-43.01778"
  },
  {
    "country": "BR",
    "name": "Tobias Barreto",
    "lat": "-11.18389",
    "lng": "-37.99833"
  },
  {
    "country": "BR",
    "name": "Tiradentes",
    "lat": "-21.11028",
    "lng": "-44.17806"
  },
  {
    "country": "BR",
    "name": "Timóteo",
    "lat": "-19.58106",
    "lng": "-42.64953"
  },
  {
    "country": "BR",
    "name": "Timbó",
    "lat": "-26.82333",
    "lng": "-49.27167"
  },
  {
    "country": "BR",
    "name": "Tijucas",
    "lat": "-27.24139",
    "lng": "-48.63361"
  },
  {
    "country": "BR",
    "name": "Tietê",
    "lat": "-23.10194",
    "lng": "-47.71472"
  },
  {
    "country": "BR",
    "name": "Tibagi",
    "lat": "-24.50944",
    "lng": "-50.41361"
  },
  {
    "country": "BR",
    "name": "Teutônia",
    "lat": "-29.44806",
    "lng": "-51.80639"
  },
  {
    "country": "BR",
    "name": "Terra Roxa",
    "lat": "-23.85571",
    "lng": "-50.0314"
  },
  {
    "country": "BR",
    "name": "Terra Rica",
    "lat": "-22.70944",
    "lng": "-52.61694"
  },
  {
    "country": "BR",
    "name": "Terra Nova",
    "lat": "-12.36667",
    "lng": "-40.66667"
  },
  {
    "country": "BR",
    "name": "Terra Boa",
    "lat": "-23.76806",
    "lng": "-52.44417"
  },
  {
    "country": "BR",
    "name": "Teresópolis",
    "lat": "-22.4167",
    "lng": "-42.97822"
  },
  {
    "country": "BR",
    "name": "Terenos",
    "lat": "-20.44222",
    "lng": "-54.86028"
  },
  {
    "country": "BR",
    "name": "Teófilo Otoni",
    "lat": "-17.8575",
    "lng": "-41.50528"
  },
  {
    "country": "BR",
    "name": "Teodoro Sampaio",
    "lat": "-22.5325",
    "lng": "-52.1675"
  },
  {
    "country": "BR",
    "name": "Telêmaco Borba",
    "lat": "-24.32389",
    "lng": "-50.61556"
  },
  {
    "country": "BR",
    "name": "Taubaté",
    "lat": "-23.02639",
    "lng": "-45.55528"
  },
  {
    "country": "BR",
    "name": "Tatuí",
    "lat": "-23.35556",
    "lng": "-47.85694"
  },
  {
    "country": "BR",
    "name": "Tarumã",
    "lat": "-22.74667",
    "lng": "-50.57722"
  },
  {
    "country": "BR",
    "name": "Taquarituba",
    "lat": "-23.53306",
    "lng": "-49.24444"
  },
  {
    "country": "BR",
    "name": "Taquaritinga",
    "lat": "-21.40611",
    "lng": "-48.50472"
  },
  {
    "country": "BR",
    "name": "Taquari",
    "lat": "-29.79972",
    "lng": "-51.86444"
  },
  {
    "country": "BR",
    "name": "Taquara",
    "lat": "-29.65056",
    "lng": "-50.78056"
  },
  {
    "country": "BR",
    "name": "Tapiramutá",
    "lat": "-11.84722",
    "lng": "-40.79139"
  },
  {
    "country": "BR",
    "name": "Tapes",
    "lat": "-30.67333",
    "lng": "-51.39583"
  },
  {
    "country": "BR",
    "name": "Taperoá",
    "lat": "-13.53806",
    "lng": "-39.09861"
  },
  {
    "country": "BR",
    "name": "Tapejara",
    "lat": "-28.06806",
    "lng": "-52.01389"
  },
  {
    "country": "BR",
    "name": "Tapejara",
    "lat": "-23.73306",
    "lng": "-52.87333"
  },
  {
    "country": "BR",
    "name": "Tanhaçu",
    "lat": "-14.02139",
    "lng": "-41.24806"
  },
  {
    "country": "BR",
    "name": "Tanguá",
    "lat": "-22.73028",
    "lng": "-42.71417"
  },
  {
    "country": "BR",
    "name": "Tanabi",
    "lat": "-20.62639",
    "lng": "-49.64917"
  },
  {
    "country": "BR",
    "name": "Tambaú",
    "lat": "-21.705",
    "lng": "-47.27444"
  },
  {
    "country": "BR",
    "name": "Taiobeiras",
    "lat": "-15.80778",
    "lng": "-42.23306"
  },
  {
    "country": "BR",
    "name": "Taguatinga",
    "lat": "-12.40389",
    "lng": "-46.43611"
  },
  {
    "country": "BR",
    "name": "Taboão da Serra",
    "lat": "-23.62611",
    "lng": "-46.79167"
  },
  {
    "country": "BR",
    "name": "Tabatinga",
    "lat": "-21.71667",
    "lng": "-48.6875"
  },
  {
    "country": "BR",
    "name": "Suzano",
    "lat": "-23.5425",
    "lng": "-46.31083"
  },
  {
    "country": "BR",
    "name": "Sumaré",
    "lat": "-22.82194",
    "lng": "-47.26694"
  },
  {
    "country": "BR",
    "name": "Sorocaba",
    "lat": "-23.50167",
    "lng": "-47.45806"
  },
  {
    "country": "BR",
    "name": "Sombrio",
    "lat": "-29.11389",
    "lng": "-49.61667"
  },
  {
    "country": "BR",
    "name": "Soledade",
    "lat": "-28.81833",
    "lng": "-52.51028"
  },
  {
    "country": "BR",
    "name": "Socorro",
    "lat": "-22.59139",
    "lng": "-46.52889"
  },
  {
    "country": "BR",
    "name": "Sobradinho",
    "lat": "-12.83333",
    "lng": "-39.1"
  },
  {
    "country": "BR",
    "name": "Siqueira Campos",
    "lat": "-23.68889",
    "lng": "-49.83389"
  },
  {
    "country": "BR",
    "name": "Simão Dias",
    "lat": "-10.73833",
    "lng": "-37.81111"
  },
  {
    "country": "BR",
    "name": "Silvânia",
    "lat": "-16.65889",
    "lng": "-48.60806"
  },
  {
    "country": "BR",
    "name": "Silva Jardim",
    "lat": "-22.65083",
    "lng": "-42.39167"
  },
  {
    "country": "BR",
    "name": "Sidrolândia",
    "lat": "-20.93194",
    "lng": "-54.96139"
  },
  {
    "country": "BR",
    "name": "Siderópolis",
    "lat": "-28.59778",
    "lng": "-49.42444"
  },
  {
    "country": "BR",
    "name": "Severínia",
    "lat": "-20.80944",
    "lng": "-48.80278"
  },
  {
    "country": "BR",
    "name": "Sete Lagoas",
    "lat": "-19.46583",
    "lng": "-44.24667"
  },
  {
    "country": "BR",
    "name": "Sertãozinho",
    "lat": "-21.13778",
    "lng": "-47.99028"
  },
  {
    "country": "BR",
    "name": "Sertanópolis",
    "lat": "-23.05861",
    "lng": "-51.03639"
  },
  {
    "country": "BR",
    "name": "Serro",
    "lat": "-18.60472",
    "lng": "-43.37944"
  },
  {
    "country": "BR",
    "name": "Serrinha",
    "lat": "-11.66417",
    "lng": "-39.0075"
  },
  {
    "country": "BR",
    "name": "Serra Negra",
    "lat": "-22.61222",
    "lng": "-46.70056"
  },
  {
    "country": "BR",
    "name": "Serrana",
    "lat": "-21.21139",
    "lng": "-47.59556"
  },
  {
    "country": "BR",
    "name": "Serra",
    "lat": "-20.12861",
    "lng": "-40.30778"
  },
  {
    "country": "BR",
    "name": "Seropédica",
    "lat": "-22.74389",
    "lng": "-43.7075"
  },
  {
    "country": "BR",
    "name": "Senhor do Bonfim",
    "lat": "-10.46139",
    "lng": "-40.18944"
  },
  {
    "country": "BR",
    "name": "Sengés",
    "lat": "-24.11335",
    "lng": "-49.46315"
  },
  {
    "country": "BR",
    "name": "Senador Canedo",
    "lat": "-16.70806",
    "lng": "-49.09306"
  },
  {
    "country": "BR",
    "name": "Seabra",
    "lat": "-12.41713",
    "lng": "-41.77049"
  },
  {
    "country": "BR",
    "name": "Schroeder",
    "lat": "-26.4125",
    "lng": "-49.07306"
  },
  {
    "country": "BR",
    "name": "Saubara",
    "lat": "-12.7375",
    "lng": "-38.76861"
  },
  {
    "country": "BR",
    "name": "Sarzedo",
    "lat": "-20.03528",
    "lng": "-44.14472"
  },
  {
    "country": "BR",
    "name": "Sarandi",
    "lat": "-27.94389",
    "lng": "-52.92306"
  },
  {
    "country": "BR",
    "name": "Sarandi",
    "lat": "-23.44361",
    "lng": "-51.87389"
  },
  {
    "country": "BR",
    "name": "Saquarema",
    "lat": "-22.92",
    "lng": "-42.51028"
  },
  {
    "country": "BR",
    "name": "Sapucaia",
    "lat": "-29.83333",
    "lng": "-51.15"
  },
  {
    "country": "BR",
    "name": "Sapucaia",
    "lat": "-21.995",
    "lng": "-42.91444"
  },
  {
    "country": "BR",
    "name": "Sapiranga",
    "lat": "-29.63806",
    "lng": "-51.00694"
  },
  {
    "country": "BR",
    "name": "São Vicente",
    "lat": "-23.96306",
    "lng": "-46.39194"
  },
  {
    "country": "BR",
    "name": "São Simão",
    "lat": "-21.47917",
    "lng": "-47.55083"
  },
  {
    "country": "BR",
    "name": "São Sepé",
    "lat": "-30.16056",
    "lng": "-53.56528"
  },
  {
    "country": "BR",
    "name": "São Sebastião do Passé",
    "lat": "-12.5125",
    "lng": "-38.49528"
  },
  {
    "country": "BR",
    "name": "São Sebastião do Paraíso",
    "lat": "-20.91694",
    "lng": "-46.99139"
  },
  {
    "country": "BR",
    "name": "São Sebastião do Caí",
    "lat": "-29.58667",
    "lng": "-51.37556"
  },
  {
    "country": "BR",
    "name": "São Sebastião",
    "lat": "-23.76",
    "lng": "-45.40972"
  },
  {
    "country": "BR",
    "name": "São Roque",
    "lat": "-23.52917",
    "lng": "-47.13528"
  },
  {
    "country": "BR",
    "name": "São Pedro do Sul",
    "lat": "-29.62056",
    "lng": "-54.17889"
  },
  {
    "country": "BR",
    "name": "São Pedro da Aldeia",
    "lat": "-22.83917",
    "lng": "-42.10278"
  },
  {
    "country": "BR",
    "name": "São Pedro",
    "lat": "-22.54861",
    "lng": "-47.91389"
  },
  {
    "country": "BR",
    "name": "São Paulo",
    "lat": "-23.5475",
    "lng": "-46.63611"
  },
  {
    "country": "BR",
    "name": "São Miguel do Iguaçu",
    "lat": "-25.34806",
    "lng": "-54.23778"
  },
  {
    "country": "BR",
    "name": "São Miguel do Araguaia",
    "lat": "-13.275",
    "lng": "-50.16278"
  },
  {
    "country": "BR",
    "name": "São Mateus do Sul",
    "lat": "-25.87417",
    "lng": "-50.38278"
  },
  {
    "country": "BR",
    "name": "São Mateus",
    "lat": "-18.72011",
    "lng": "-39.85891"
  },
  {
    "country": "BR",
    "name": "São Marcos",
    "lat": "-28.97111",
    "lng": "-51.06806"
  },
  {
    "country": "BR",
    "name": "São Manuel",
    "lat": "-22.73111",
    "lng": "-48.57056"
  },
  {
    "country": "BR",
    "name": "São Luiz Gonzaga",
    "lat": "-28.40833",
    "lng": "-54.96083"
  },
  {
    "country": "BR",
    "name": "São Luís de Montes Belos",
    "lat": "-16.525",
    "lng": "-50.37222"
  },
  {
    "country": "BR",
    "name": "São Lourenço do Sul",
    "lat": "-31.36528",
    "lng": "-51.97833"
  },
  {
    "country": "BR",
    "name": "São Lourenço do Oeste",
    "lat": "-26.35917",
    "lng": "-52.85111"
  },
  {
    "country": "BR",
    "name": "São Lourenço da Serra",
    "lat": "-23.8525",
    "lng": "-46.9425"
  },
  {
    "country": "BR",
    "name": "São Lourenço",
    "lat": "-22.11639",
    "lng": "-45.05444"
  },
  {
    "country": "BR",
    "name": "São Leopoldo",
    "lat": "-29.76028",
    "lng": "-51.14722"
  },
  {
    "country": "BR",
    "name": "São José dos Pinhais",
    "lat": "-25.5302",
    "lng": "-49.20836"
  },
  {
    "country": "BR",
    "name": "São José dos Campos",
    "lat": "-23.17944",
    "lng": "-45.88694"
  },
  {
    "country": "BR",
    "name": "São José do Rio Preto",
    "lat": "-20.81972",
    "lng": "-49.37944"
  },
  {
    "country": "BR",
    "name": "São José do Rio Pardo",
    "lat": "-21.59556",
    "lng": "-46.88861"
  },
  {
    "country": "BR",
    "name": "São José do Calçado",
    "lat": "-21.02528",
    "lng": "-41.65444"
  },
  {
    "country": "BR",
    "name": "São José",
    "lat": "-28.21171",
    "lng": "-49.1632"
  },
  {
    "country": "BR",
    "name": "São Joaquim de Bicas",
    "lat": "-20.04917",
    "lng": "-44.27389"
  },
  {
    "country": "BR",
    "name": "São Joaquim da Barra",
    "lat": "-20.58139",
    "lng": "-47.85472"
  },
  {
    "country": "BR",
    "name": "São Joaquim",
    "lat": "-28.29389",
    "lng": "-49.93167"
  },
  {
    "country": "BR",
    "name": "São João Nepomuceno",
    "lat": "-21.54",
    "lng": "-43.01056"
  },
  {
    "country": "BR",
    "name": "São João Evangelista",
    "lat": "-18.54778",
    "lng": "-42.76333"
  },
  {
    "country": "BR",
    "name": "São João do Paraíso",
    "lat": "-15.31361",
    "lng": "-42.01444"
  },
  {
    "country": "BR",
    "name": "São João de Meriti",
    "lat": "-22.80389",
    "lng": "-43.37222"
  },
  {
    "country": "BR",
    "name": "São João del Rei",
    "lat": "-21.13556",
    "lng": "-44.26167"
  },
  {
    "country": "BR",
    "name": "São João da Ponte",
    "lat": "-15.92917",
    "lng": "-44.00778"
  },
  {
    "country": "BR",
    "name": "São João da Boa Vista",
    "lat": "-21.96917",
    "lng": "-46.79806"
  },
  {
    "country": "BR",
    "name": "São João da Barra",
    "lat": "-21.64028",
    "lng": "-41.05111"
  },
  {
    "country": "BR",
    "name": "São João Batista",
    "lat": "-27.27611",
    "lng": "-48.84944"
  },
  {
    "country": "BR",
    "name": "São Jerônimo",
    "lat": "-29.95917",
    "lng": "-51.72222"
  },
  {
    "country": "BR",
    "name": "São Gotardo",
    "lat": "-19.31111",
    "lng": "-46.04889"
  },
  {
    "country": "BR",
    "name": "São Gonçalo dos Campos",
    "lat": "-12.43333",
    "lng": "-38.96667"
  },
  {
    "country": "BR",
    "name": "São Gonçalo do Sapucaí",
    "lat": "-21.89222",
    "lng": "-45.59528"
  },
  {
    "country": "BR",
    "name": "São Gonçalo",
    "lat": "-22.82694",
    "lng": "-43.05389"
  },
  {
    "country": "BR",
    "name": "São Gabriel",
    "lat": "-30.33639",
    "lng": "-54.32"
  },
  {
    "country": "BR",
    "name": "São Francisco do Sul",
    "lat": "-26.24333",
    "lng": "-48.63806"
  },
  {
    "country": "BR",
    "name": "São Francisco do Conde",
    "lat": "-12.6275",
    "lng": "-38.68"
  },
  {
    "country": "BR",
    "name": "São Francisco de Paula",
    "lat": "-29.44806",
    "lng": "-50.58361"
  },
  {
    "country": "BR",
    "name": "São Francisco de Assis",
    "lat": "-29.55028",
    "lng": "-55.13111"
  },
  {
    "country": "BR",
    "name": "São Francisco",
    "lat": "-15.94861",
    "lng": "-44.86444"
  },
  {
    "country": "BR",
    "name": "São Fidélis",
    "lat": "-21.64611",
    "lng": "-41.74694"
  },
  {
    "country": "BR",
    "name": "São Felipe",
    "lat": "-14.8386",
    "lng": "-41.39174"
  },
  {
    "country": "BR",
    "name": "São Domingos do Prata",
    "lat": "-19.865",
    "lng": "-42.96833"
  },
  {
    "country": "BR",
    "name": "São Domingos",
    "lat": "-13.39833",
    "lng": "-46.31833"
  },
  {
    "country": "BR",
    "name": "São Desidério",
    "lat": "-12.36333",
    "lng": "-44.97333"
  },
  {
    "country": "BR",
    "name": "São Cristóvão",
    "lat": "-11.01472",
    "lng": "-37.20639"
  },
  {
    "country": "BR",
    "name": "São Carlos",
    "lat": "-22.0175",
    "lng": "-47.89083"
  },
  {
    "country": "BR",
    "name": "São Caetano do Sul",
    "lat": "-23.62306",
    "lng": "-46.55111"
  },
  {
    "country": "BR",
    "name": "São Borja",
    "lat": "-28.66056",
    "lng": "-56.00444"
  },
  {
    "country": "BR",
    "name": "São Bernardo do Campo",
    "lat": "-23.69389",
    "lng": "-46.565"
  },
  {
    "country": "BR",
    "name": "São Bento do Sul",
    "lat": "-26.25028",
    "lng": "-49.37861"
  },
  {
    "country": "BR",
    "name": "Santos Dumont",
    "lat": "-21.45667",
    "lng": "-43.5525"
  },
  {
    "country": "BR",
    "name": "Santos",
    "lat": "-23.96083",
    "lng": "-46.33361"
  },
  {
    "country": "BR",
    "name": "Santo Estêvão",
    "lat": "-12.43028",
    "lng": "-39.25139"
  },
  {
    "country": "BR",
    "name": "Santo Augusto",
    "lat": "-27.85083",
    "lng": "-53.77722"
  },
  {
    "country": "BR",
    "name": "Santo Antônio do Sudoeste",
    "lat": "-26.07361",
    "lng": "-53.72528"
  },
  {
    "country": "BR",
    "name": "Santo Antônio do Monte",
    "lat": "-20.08722",
    "lng": "-45.29361"
  },
  {
    "country": "BR",
    "name": "Santo Antônio do Leverger",
    "lat": "-15.86556",
    "lng": "-56.07667"
  },
  {
    "country": "BR",
    "name": "Santo Antônio do Amparo",
    "lat": "-20.94639",
    "lng": "-44.91889"
  },
  {
    "country": "BR",
    "name": "Santo Antônio de Posse",
    "lat": "-22.60611",
    "lng": "-46.91944"
  },
  {
    "country": "BR",
    "name": "Santo Antônio de Pádua",
    "lat": "-21.53944",
    "lng": "-42.18028"
  },
  {
    "country": "BR",
    "name": "Santo Antônio de Jesus",
    "lat": "-12.96889",
    "lng": "-39.26139"
  },
  {
    "country": "BR",
    "name": "Santo Antônio da Platina",
    "lat": "-23.295",
    "lng": "-50.07722"
  },
  {
    "country": "BR",
    "name": "Santo Ângelo",
    "lat": "-28.29917",
    "lng": "-54.26306"
  },
  {
    "country": "BR",
    "name": "Santo André",
    "lat": "-23.66389",
    "lng": "-46.53833"
  },
  {
    "country": "BR",
    "name": "Santo Anastácio",
    "lat": "-21.83833",
    "lng": "-51.61028"
  },
  {
    "country": "BR",
    "name": "Santo Amaro das Brotas",
    "lat": "-10.78889",
    "lng": "-37.05444"
  },
  {
    "country": "BR",
    "name": "Santo Amaro da Imperatriz",
    "lat": "-27.68806",
    "lng": "-48.77861"
  },
  {
    "country": "BR",
    "name": "Santo Amaro",
    "lat": "-12.54667",
    "lng": "-38.71194"
  },
  {
    "country": "BR",
    "name": "Santiago",
    "lat": "-29.19167",
    "lng": "-54.86722"
  },
  {
    "country": "BR",
    "name": "Santa Vitória do Palmar",
    "lat": "-33.51889",
    "lng": "-53.36806"
  },
  {
    "country": "BR",
    "name": "Santa Vitória",
    "lat": "-18.83861",
    "lng": "-50.12139"
  },
  {
    "country": "BR",
    "name": "Santa Teresa",
    "lat": "-19.93556",
    "lng": "-40.60028"
  },
  {
    "country": "BR",
    "name": "Santa Rosa de Viterbo",
    "lat": "-21.47278",
    "lng": "-47.36306"
  },
  {
    "country": "BR",
    "name": "Santa Rosa",
    "lat": "-27.87083",
    "lng": "-54.48139"
  },
  {
    "country": "BR",
    "name": "Santa Rita do Sapucaí",
    "lat": "-22.25222",
    "lng": "-45.70333"
  },
  {
    "country": "BR",
    "name": "Santa Rita do Passa Quatro",
    "lat": "-21.71028",
    "lng": "-47.47806"
  },
  {
    "country": "BR",
    "name": "Santana do Paraíso",
    "lat": "-19.36361",
    "lng": "-42.56861"
  },
  {
    "country": "BR",
    "name": "Santana do Livramento",
    "lat": "-30.89083",
    "lng": "-55.53278"
  },
  {
    "country": "BR",
    "name": "Santana de Parnaíba",
    "lat": "-23.44417",
    "lng": "-46.91778"
  },
  {
    "country": "BR",
    "name": "Santana",
    "lat": "-14.46667",
    "lng": "-41.8"
  },
  {
    "country": "BR",
    "name": "Santa Maria do Suaçuí",
    "lat": "-18.19028",
    "lng": "-42.41417"
  },
  {
    "country": "BR",
    "name": "Santa Maria da Vitória",
    "lat": "-13.38814",
    "lng": "-44.19868"
  },
  {
    "country": "BR",
    "name": "Santa Maria",
    "lat": "-29.68417",
    "lng": "-53.80694"
  },
  {
    "country": "BR",
    "name": "Santa Luzia",
    "lat": "-19.76972",
    "lng": "-43.85139"
  },
  {
    "country": "BR",
    "name": "Santaluz",
    "lat": "-11.25583",
    "lng": "-39.37472"
  },
  {
    "country": "BR",
    "name": "Santa Leopoldina",
    "lat": "-20.10056",
    "lng": "-40.52972"
  },
  {
    "country": "BR",
    "name": "Santa Isabel",
    "lat": "-23.31556",
    "lng": "-46.22139"
  },
  {
    "country": "BR",
    "name": "Santa Inês",
    "lat": "-13.29222",
    "lng": "-39.81889"
  },
  {
    "country": "BR",
    "name": "Santa Helena de Goiás",
    "lat": "-17.81361",
    "lng": "-50.59694"
  },
  {
    "country": "BR",
    "name": "Santa Gertrudes",
    "lat": "-22.45667",
    "lng": "-47.53028"
  },
  {
    "country": "BR",
    "name": "Santa Fé do Sul",
    "lat": "-20.21111",
    "lng": "-50.92583"
  },
  {
    "country": "BR",
    "name": "Santa Cruz do Sul",
    "lat": "-29.7175",
    "lng": "-52.42583"
  },
  {
    "country": "BR",
    "name": "Santa Cruz do Rio Pardo",
    "lat": "-22.89889",
    "lng": "-49.6325"
  },
  {
    "country": "BR",
    "name": "Santa Cruz das Palmeiras",
    "lat": "-21.82694",
    "lng": "-47.24861"
  },
  {
    "country": "BR",
    "name": "Santa Cruz Cabrália",
    "lat": "-16.27806",
    "lng": "-39.02472"
  },
  {
    "country": "BR",
    "name": "Santa Cecília",
    "lat": "-26.96083",
    "lng": "-50.42694"
  },
  {
    "country": "BR",
    "name": "Santa Branca",
    "lat": "-23.39667",
    "lng": "-45.88389"
  },
  {
    "country": "BR",
    "name": "Santa Bárbara d'Oeste",
    "lat": "-22.75361",
    "lng": "-47.41361"
  },
  {
    "country": "BR",
    "name": "Santa Adélia",
    "lat": "-21.24278",
    "lng": "-48.80417"
  },
  {
    "country": "BR",
    "name": "Sananduva",
    "lat": "-27.94972",
    "lng": "-51.80667"
  },
  {
    "country": "BR",
    "name": "Salvador",
    "lat": "-12.97111",
    "lng": "-38.51083"
  },
  {
    "country": "BR",
    "name": "Salto de Pirapora",
    "lat": "-23.64889",
    "lng": "-47.57333"
  },
  {
    "country": "BR",
    "name": "Salto",
    "lat": "-23.20083",
    "lng": "-47.28694"
  },
  {
    "country": "BR",
    "name": "Salinas",
    "lat": "-16.17028",
    "lng": "-42.29028"
  },
  {
    "country": "BR",
    "name": "Salgado",
    "lat": "-11.03194",
    "lng": "-37.475"
  },
  {
    "country": "BR",
    "name": "Sacramento",
    "lat": "-19.86528",
    "lng": "-47.44"
  },
  {
    "country": "BR",
    "name": "Sabinópolis",
    "lat": "-18.66611",
    "lng": "-43.08389"
  },
  {
    "country": "BR",
    "name": "Ruy Barbosa",
    "lat": "-12.28389",
    "lng": "-40.49389"
  },
  {
    "country": "BR",
    "name": "Rubiataba",
    "lat": "-15.16444",
    "lng": "-49.80333"
  },
  {
    "country": "BR",
    "name": "Rosário Oeste",
    "lat": "-14.83611",
    "lng": "-56.4275"
  },
  {
    "country": "BR",
    "name": "Rosário do Sul",
    "lat": "-30.25833",
    "lng": "-54.91417"
  },
  {
    "country": "BR",
    "name": "Rondonópolis",
    "lat": "-16.47083",
    "lng": "-54.63556"
  },
  {
    "country": "BR",
    "name": "Rolante",
    "lat": "-29.65056",
    "lng": "-50.57583"
  },
  {
    "country": "BR",
    "name": "Rolândia",
    "lat": "-23.30972",
    "lng": "-51.36917"
  },
  {
    "country": "BR",
    "name": "Rodeio",
    "lat": "-26.92278",
    "lng": "-49.36639"
  },
  {
    "country": "BR",
    "name": "Rio Verde de Mato Grosso",
    "lat": "-18.91806",
    "lng": "-54.84417"
  },
  {
    "country": "BR",
    "name": "Rio Tavares",
    "lat": "-27.64529",
    "lng": "-48.47486"
  },
  {
    "country": "BR",
    "name": "Rio Real",
    "lat": "-11.48472",
    "lng": "-37.93278"
  },
  {
    "country": "BR",
    "name": "Rio Pomba",
    "lat": "-21.27472",
    "lng": "-43.17917"
  },
  {
    "country": "BR",
    "name": "Rio Piracicaba",
    "lat": "-19.92917",
    "lng": "-43.17417"
  },
  {
    "country": "BR",
    "name": "Rio Pardo de Minas",
    "lat": "-15.60972",
    "lng": "-42.53972"
  },
  {
    "country": "BR",
    "name": "Rio Pardo",
    "lat": "-29.98972",
    "lng": "-52.37806"
  },
  {
    "country": "BR",
    "name": "Rio Novo do Sul",
    "lat": "-20.8625",
    "lng": "-40.93639"
  },
  {
    "country": "BR",
    "name": "Rio Novo",
    "lat": "-21.47703",
    "lng": "-43.12589"
  },
  {
    "country": "BR",
    "name": "Rio Negro",
    "lat": "-26.10583",
    "lng": "-49.7975"
  },
  {
    "country": "BR",
    "name": "Rio Negrinho",
    "lat": "-26.25444",
    "lng": "-49.51833"
  },
  {
    "country": "BR",
    "name": "Riolândia",
    "lat": "-19.98083",
    "lng": "-49.68194"
  },
  {
    "country": "BR",
    "name": "Rio Grande da Serra",
    "lat": "-23.74417",
    "lng": "-46.39833"
  },
  {
    "country": "BR",
    "name": "Rio Grande",
    "lat": "-32.035",
    "lng": "-52.09861"
  },
  {
    "country": "BR",
    "name": "Rio do Sul",
    "lat": "-27.21417",
    "lng": "-49.64306"
  },
  {
    "country": "BR",
    "name": "Rio de Janeiro",
    "lat": "-22.90278",
    "lng": "-43.2075"
  },
  {
    "country": "BR",
    "name": "Rio das Pedras",
    "lat": "-22.84333",
    "lng": "-47.60611"
  },
  {
    "country": "BR",
    "name": "Rio das Ostras",
    "lat": "-22.52694",
    "lng": "-41.945"
  },
  {
    "country": "BR",
    "name": "Rio Claro",
    "lat": "-22.72306",
    "lng": "-44.13556"
  },
  {
    "country": "BR",
    "name": "Rio Claro",
    "lat": "-22.41139",
    "lng": "-47.56139"
  },
  {
    "country": "BR",
    "name": "Rio Casca",
    "lat": "-20.22611",
    "lng": "-42.65083"
  },
  {
    "country": "BR",
    "name": "Rio Brilhante",
    "lat": "-21.80194",
    "lng": "-54.54639"
  },
  {
    "country": "BR",
    "name": "Rio Branco do Sul",
    "lat": "-25.19",
    "lng": "-49.31417"
  },
  {
    "country": "BR",
    "name": "Rio Bonito",
    "lat": "-22.70861",
    "lng": "-42.60972"
  },
  {
    "country": "BR",
    "name": "Rio Bananal",
    "lat": "-19.265",
    "lng": "-40.33333"
  },
  {
    "country": "BR",
    "name": "Ribeirópolis",
    "lat": "-10.53944",
    "lng": "-37.41667"
  },
  {
    "country": "BR",
    "name": "Ribeirão Preto",
    "lat": "-21.1775",
    "lng": "-47.81028"
  },
  {
    "country": "BR",
    "name": "Ribeirão Pires",
    "lat": "-23.71056",
    "lng": "-46.41333"
  },
  {
    "country": "BR",
    "name": "Ribeirão das Neves",
    "lat": "-19.76694",
    "lng": "-44.08667"
  },
  {
    "country": "BR",
    "name": "Ribeirão da Ilha",
    "lat": "-27.69934",
    "lng": "-48.53219"
  },
  {
    "country": "BR",
    "name": "Ribeirão Branco",
    "lat": "-24.22083",
    "lng": "-48.76556"
  },
  {
    "country": "BR",
    "name": "Ribeirão Bonito",
    "lat": "-22.06667",
    "lng": "-48.17611"
  },
  {
    "country": "BR",
    "name": "Ribeira do Pombal",
    "lat": "-10.83444",
    "lng": "-38.53583"
  },
  {
    "country": "BR",
    "name": "Ribas do Rio Pardo",
    "lat": "-20.44306",
    "lng": "-53.75917"
  },
  {
    "country": "BR",
    "name": "Rialma",
    "lat": "-15.315",
    "lng": "-49.58444"
  },
  {
    "country": "BR",
    "name": "Riacho de Santana",
    "lat": "-13.60917",
    "lng": "-42.93889"
  },
  {
    "country": "BR",
    "name": "Riachão do Jacuípe",
    "lat": "-11.80694",
    "lng": "-39.38556"
  },
  {
    "country": "BR",
    "name": "Riachão do Dantas",
    "lat": "-11.06889",
    "lng": "-37.725"
  },
  {
    "country": "BR",
    "name": "Riachão das Neves",
    "lat": "-11.74611",
    "lng": "-44.91"
  },
  {
    "country": "BR",
    "name": "Resplendor",
    "lat": "-19.32556",
    "lng": "-41.25528"
  },
  {
    "country": "BR",
    "name": "Reserva",
    "lat": "-24.65028",
    "lng": "-50.85056"
  },
  {
    "country": "BR",
    "name": "Resende",
    "lat": "-22.46889",
    "lng": "-44.44667"
  },
  {
    "country": "BR",
    "name": "Registro",
    "lat": "-24.4875",
    "lng": "-47.84361"
  },
  {
    "country": "BR",
    "name": "Regente Feijó",
    "lat": "-22.22139",
    "lng": "-51.30278"
  },
  {
    "country": "BR",
    "name": "Recreio",
    "lat": "-21.525",
    "lng": "-42.46917"
  },
  {
    "country": "BR",
    "name": "Realeza",
    "lat": "-25.76889",
    "lng": "-53.5325"
  },
  {
    "country": "BR",
    "name": "Raposos",
    "lat": "-19.96722",
    "lng": "-43.80417"
  },
  {
    "country": "BR",
    "name": "Rancharia",
    "lat": "-22.22917",
    "lng": "-50.89306"
  },
  {
    "country": "BR",
    "name": "Quirinópolis",
    "lat": "-18.44833",
    "lng": "-50.45167"
  },
  {
    "country": "BR",
    "name": "Quijingue",
    "lat": "-10.7525",
    "lng": "-39.20917"
  },
  {
    "country": "BR",
    "name": "Queimados",
    "lat": "-22.71611",
    "lng": "-43.55528"
  },
  {
    "country": "BR",
    "name": "Queimadas",
    "lat": "-10.97833",
    "lng": "-39.62639"
  },
  {
    "country": "BR",
    "name": "Quatro Barras",
    "lat": "-25.36556",
    "lng": "-49.07694"
  },
  {
    "country": "BR",
    "name": "Quatis",
    "lat": "-22.40722",
    "lng": "-44.25806"
  },
  {
    "country": "BR",
    "name": "Quatá",
    "lat": "-22.2475",
    "lng": "-50.69833"
  },
  {
    "country": "BR",
    "name": "Quaraí",
    "lat": "-30.3875",
    "lng": "-56.45139"
  },
  {
    "country": "BR",
    "name": "Prudentópolis",
    "lat": "-25.21306",
    "lng": "-50.97778"
  },
  {
    "country": "BR",
    "name": "Propriá",
    "lat": "-10.21111",
    "lng": "-36.84028"
  },
  {
    "country": "BR",
    "name": "Promissão",
    "lat": "-21.53667",
    "lng": "-49.85806"
  },
  {
    "country": "BR",
    "name": "Presidente Venceslau",
    "lat": "-21.87611",
    "lng": "-51.84389"
  },
  {
    "country": "BR",
    "name": "Presidente Prudente",
    "lat": "-22.12556",
    "lng": "-51.38889"
  },
  {
    "country": "BR",
    "name": "Presidente Olegário",
    "lat": "-18.41778",
    "lng": "-46.41806"
  },
  {
    "country": "BR",
    "name": "Presidente Epitácio",
    "lat": "-21.76333",
    "lng": "-52.11556"
  },
  {
    "country": "BR",
    "name": "Presidente Bernardes",
    "lat": "-22.00611",
    "lng": "-51.55306"
  },
  {
    "country": "BR",
    "name": "Prata",
    "lat": "-19.30722",
    "lng": "-48.92417"
  },
  {
    "country": "BR",
    "name": "Praia Grande",
    "lat": "-24.00583",
    "lng": "-46.40278"
  },
  {
    "country": "BR",
    "name": "Pradópolis",
    "lat": "-21.35944",
    "lng": "-48.06556"
  },
  {
    "country": "BR",
    "name": "Prado",
    "lat": "-17.34111",
    "lng": "-39.22083"
  },
  {
    "country": "BR",
    "name": "Poxoréo",
    "lat": "-15.83722",
    "lng": "-54.38917"
  },
  {
    "country": "BR",
    "name": "Pouso Alegre",
    "lat": "-22.23",
    "lng": "-45.93639"
  },
  {
    "country": "BR",
    "name": "Posse",
    "lat": "-14.09306",
    "lng": "-46.36944"
  },
  {
    "country": "BR",
    "name": "Porto União",
    "lat": "-26.23806",
    "lng": "-51.07833"
  },
  {
    "country": "BR",
    "name": "Porto Seguro",
    "lat": "-16.44972",
    "lng": "-39.06472"
  },
  {
    "country": "BR",
    "name": "Porto Real do Colégio",
    "lat": "-10.18583",
    "lng": "-36.84"
  },
  {
    "country": "BR",
    "name": "Porto Real",
    "lat": "-22.41972",
    "lng": "-44.29028"
  },
  {
    "country": "BR",
    "name": "Porto Murtinho",
    "lat": "-21.69889",
    "lng": "-57.8825"
  },
  {
    "country": "BR",
    "name": "Porto Ferreira",
    "lat": "-21.85389",
    "lng": "-47.47917"
  },
  {
    "country": "BR",
    "name": "Porto Feliz",
    "lat": "-23.21472",
    "lng": "-47.52389"
  },
  {
    "country": "BR",
    "name": "Porto Belo",
    "lat": "-27.15778",
    "lng": "-48.55306"
  },
  {
    "country": "BR",
    "name": "Pôrto Barra do Ivinheima",
    "lat": "-22.96667",
    "lng": "-53.66667"
  },
  {
    "country": "BR",
    "name": "Porto Alegre",
    "lat": "-30.03306",
    "lng": "-51.23"
  },
  {
    "country": "BR",
    "name": "Porteirinha",
    "lat": "-15.74333",
    "lng": "-43.02833"
  },
  {
    "country": "BR",
    "name": "Portão",
    "lat": "-29.70167",
    "lng": "-51.24194"
  },
  {
    "country": "BR",
    "name": "Porecatu",
    "lat": "-22.75583",
    "lng": "-51.37917"
  },
  {
    "country": "BR",
    "name": "Porciúncula",
    "lat": "-20.96278",
    "lng": "-42.04083"
  },
  {
    "country": "BR",
    "name": "Porangatu",
    "lat": "-13.44083",
    "lng": "-49.14861"
  },
  {
    "country": "BR",
    "name": "Porangaba",
    "lat": "-23.17583",
    "lng": "-48.125"
  },
  {
    "country": "BR",
    "name": "Ponto Novo",
    "lat": "-10.86278",
    "lng": "-40.13361"
  },
  {
    "country": "BR",
    "name": "Pontes e Lacerda",
    "lat": "-15.22611",
    "lng": "-59.33528"
  },
  {
    "country": "BR",
    "name": "Ponte Nova",
    "lat": "-20.41639",
    "lng": "-42.90861"
  },
  {
    "country": "BR",
    "name": "Ponta Porã",
    "lat": "-22.53611",
    "lng": "-55.72556"
  },
  {
    "country": "BR",
    "name": "Pontalina",
    "lat": "-17.525",
    "lng": "-49.44722"
  },
  {
    "country": "BR",
    "name": "Pontal",
    "lat": "-21.0225",
    "lng": "-48.03722"
  },
  {
    "country": "BR",
    "name": "Ponta Grossa",
    "lat": "-25.095",
    "lng": "-50.16194"
  },
  {
    "country": "BR",
    "name": "Pompéu",
    "lat": "-19.22444",
    "lng": "-44.93528"
  },
  {
    "country": "BR",
    "name": "Pompéia",
    "lat": "-22.10861",
    "lng": "-50.17167"
  },
  {
    "country": "BR",
    "name": "Pomerode",
    "lat": "-26.74056",
    "lng": "-49.17694"
  },
  {
    "country": "BR",
    "name": "Poço Verde",
    "lat": "-10.70833",
    "lng": "-38.18333"
  },
  {
    "country": "BR",
    "name": "Poços de Caldas",
    "lat": "-21.78778",
    "lng": "-46.56139"
  },
  {
    "country": "BR",
    "name": "Poconé",
    "lat": "-16.25667",
    "lng": "-56.62278"
  },
  {
    "country": "BR",
    "name": "Poções",
    "lat": "-14.52972",
    "lng": "-40.36528"
  },
  {
    "country": "BR",
    "name": "Poá",
    "lat": "-23.52806",
    "lng": "-46.34472"
  },
  {
    "country": "BR",
    "name": "Planaltina",
    "lat": "-15.45278",
    "lng": "-47.61417"
  },
  {
    "country": "BR",
    "name": "Piúma",
    "lat": "-20.83778",
    "lng": "-40.72194"
  },
  {
    "country": "BR",
    "name": "Piuí",
    "lat": "-20.46528",
    "lng": "-45.95806"
  },
  {
    "country": "BR",
    "name": "Pitangui",
    "lat": "-19.68278",
    "lng": "-44.89028"
  },
  {
    "country": "BR",
    "name": "Pitangueiras",
    "lat": "-21.00944",
    "lng": "-48.22167"
  },
  {
    "country": "BR",
    "name": "Pitanga",
    "lat": "-24.75722",
    "lng": "-51.76139"
  },
  {
    "country": "BR",
    "name": "Piritiba",
    "lat": "-11.73028",
    "lng": "-40.55528"
  },
  {
    "country": "BR",
    "name": "Pires do Rio",
    "lat": "-17.29972",
    "lng": "-48.27944"
  },
  {
    "country": "BR",
    "name": "Pirenópolis",
    "lat": "-15.85072",
    "lng": "-48.96087"
  },
  {
    "country": "BR",
    "name": "Piraquara",
    "lat": "-25.44227",
    "lng": "-49.06795"
  },
  {
    "country": "BR",
    "name": "Pirapozinho",
    "lat": "-22.27528",
    "lng": "-51.5"
  },
  {
    "country": "BR",
    "name": "Pirapora do Bom Jesus",
    "lat": "-23.39694",
    "lng": "-47.00222"
  },
  {
    "country": "BR",
    "name": "Pirapora",
    "lat": "-17.345",
    "lng": "-44.94194"
  },
  {
    "country": "BR",
    "name": "Piranhas",
    "lat": "-16.42694",
    "lng": "-51.82222"
  },
  {
    "country": "BR",
    "name": "Pirajuí",
    "lat": "-21.99861",
    "lng": "-49.45722"
  },
  {
    "country": "BR",
    "name": "Piraju",
    "lat": "-23.19361",
    "lng": "-49.38389"
  },
  {
    "country": "BR",
    "name": "Piraí do Sul",
    "lat": "-24.52611",
    "lng": "-49.94861"
  },
  {
    "country": "BR",
    "name": "Piraí",
    "lat": "-22.62917",
    "lng": "-43.89806"
  },
  {
    "country": "BR",
    "name": "Pirassununga",
    "lat": "-21.99611",
    "lng": "-47.42583"
  },
  {
    "country": "BR",
    "name": "Piracicaba",
    "lat": "-22.72528",
    "lng": "-47.64917"
  },
  {
    "country": "BR",
    "name": "Piracanjuba",
    "lat": "-17.30278",
    "lng": "-49.01667"
  },
  {
    "country": "BR",
    "name": "Piracaia",
    "lat": "-23.05389",
    "lng": "-46.35806"
  },
  {
    "country": "BR",
    "name": "Piquete",
    "lat": "-22.61361",
    "lng": "-45.17611"
  },
  {
    "country": "BR",
    "name": "Pinheiros",
    "lat": "-29.78333",
    "lng": "-52.73333"
  },
  {
    "country": "BR",
    "name": "Pinheiro Machado",
    "lat": "-31.57833",
    "lng": "-53.38111"
  },
  {
    "country": "BR",
    "name": "Pinheiral",
    "lat": "-22.51278",
    "lng": "-44.00056"
  },
  {
    "country": "BR",
    "name": "Pinhão",
    "lat": "-25.69556",
    "lng": "-51.65972"
  },
  {
    "country": "BR",
    "name": "Espírito Santo do Pinhal",
    "lat": "-22.11583",
    "lng": "-46.68278"
  },
  {
    "country": "BR",
    "name": "Pindorama",
    "lat": "-21.18583",
    "lng": "-48.90722"
  },
  {
    "country": "BR",
    "name": "Pindobaçu",
    "lat": "-10.74167",
    "lng": "-40.36083"
  },
  {
    "country": "BR",
    "name": "Pindamonhangaba",
    "lat": "-22.92389",
    "lng": "-45.46167"
  },
  {
    "country": "BR",
    "name": "Pilar do Sul",
    "lat": "-23.81306",
    "lng": "-47.71639"
  },
  {
    "country": "BR",
    "name": "Piedade",
    "lat": "-23.71194",
    "lng": "-47.42778"
  },
  {
    "country": "BR",
    "name": "Piaçabuçu",
    "lat": "-10.40556",
    "lng": "-36.43444"
  },
  {
    "country": "BR",
    "name": "Petrópolis",
    "lat": "-22.505",
    "lng": "-43.17861"
  },
  {
    "country": "BR",
    "name": "Petrolina de Goiás",
    "lat": "-16.095",
    "lng": "-49.33806"
  },
  {
    "country": "BR",
    "name": "Peruíbe",
    "lat": "-24.32",
    "lng": "-46.99833"
  },
  {
    "country": "BR",
    "name": "Pereira Barreto",
    "lat": "-20.63833",
    "lng": "-51.10917"
  },
  {
    "country": "BR",
    "name": "Perdões",
    "lat": "-21.09083",
    "lng": "-45.09139"
  },
  {
    "country": "BR",
    "name": "Penha",
    "lat": "-26.76944",
    "lng": "-48.64583"
  },
  {
    "country": "BR",
    "name": "Penedo",
    "lat": "-10.29028",
    "lng": "-36.58639"
  },
  {
    "country": "BR",
    "name": "Penápolis",
    "lat": "-21.41972",
    "lng": "-50.0775"
  },
  {
    "country": "BR",
    "name": "Pelotas",
    "lat": "-31.77194",
    "lng": "-52.3425"
  },
  {
    "country": "BR",
    "name": "Pedro Leopoldo",
    "lat": "-19.61806",
    "lng": "-44.04306"
  },
  {
    "country": "BR",
    "name": "Pedreira",
    "lat": "-22.74194",
    "lng": "-46.90139"
  },
  {
    "country": "BR",
    "name": "Pedregulho",
    "lat": "-20.25694",
    "lng": "-47.47667"
  },
  {
    "country": "BR",
    "name": "Pedra Azul",
    "lat": "-16.00528",
    "lng": "-41.29722"
  },
  {
    "country": "BR",
    "name": "Pederneiras",
    "lat": "-22.35167",
    "lng": "-48.775"
  },
  {
    "country": "BR",
    "name": "Peçanha",
    "lat": "-18.54861",
    "lng": "-42.55694"
  },
  {
    "country": "BR",
    "name": "Peabiru",
    "lat": "-23.91278",
    "lng": "-52.34306"
  },
  {
    "country": "BR",
    "name": "Paulínia",
    "lat": "-22.76111",
    "lng": "-47.15417"
  },
  {
    "country": "BR",
    "name": "Pau Brasil",
    "lat": "-15.46417",
    "lng": "-39.65111"
  },
  {
    "country": "BR",
    "name": "Patrocínio",
    "lat": "-18.94389",
    "lng": "-46.9925"
  },
  {
    "country": "BR",
    "name": "Patos de Minas",
    "lat": "-18.57889",
    "lng": "-46.51806"
  },
  {
    "country": "BR",
    "name": "Pato Branco",
    "lat": "-26.22861",
    "lng": "-52.67056"
  },
  {
    "country": "BR",
    "name": "Paty do Alferes",
    "lat": "-22.42861",
    "lng": "-43.41861"
  },
  {
    "country": "BR",
    "name": "Passos",
    "lat": "-20.71889",
    "lng": "-46.60972"
  },
  {
    "country": "BR",
    "name": "Passo Fundo",
    "lat": "-28.26278",
    "lng": "-52.40667"
  },
  {
    "country": "BR",
    "name": "Passa Quatro",
    "lat": "-22.39028",
    "lng": "-44.96667"
  },
  {
    "country": "BR",
    "name": "Parobé",
    "lat": "-29.62861",
    "lng": "-50.83472"
  },
  {
    "country": "BR",
    "name": "Pariquera Açu",
    "lat": "-24.715",
    "lng": "-47.88111"
  },
  {
    "country": "BR",
    "name": "Paripiranga",
    "lat": "-10.6875",
    "lng": "-37.86167"
  },
  {
    "country": "BR",
    "name": "Paraúna",
    "lat": "-16.94778",
    "lng": "-50.44861"
  },
  {
    "country": "BR",
    "name": "Paratinga",
    "lat": "-12.69056",
    "lng": "-43.18417"
  },
  {
    "country": "BR",
    "name": "Paraty",
    "lat": "-23.21778",
    "lng": "-44.71306"
  },
  {
    "country": "BR",
    "name": "Paranhos",
    "lat": "-23.89278",
    "lng": "-55.43111"
  },
  {
    "country": "BR",
    "name": "Paranavaí",
    "lat": "-23.07306",
    "lng": "-52.46528"
  },
  {
    "country": "BR",
    "name": "Paranapanema",
    "lat": "-23.3863",
    "lng": "-48.72441"
  },
  {
    "country": "BR",
    "name": "Paranaíba",
    "lat": "-19.67722",
    "lng": "-51.19083"
  },
  {
    "country": "BR",
    "name": "Paranaguá",
    "lat": "-25.51626",
    "lng": "-48.52537"
  },
  {
    "country": "BR",
    "name": "Paramirim",
    "lat": "-13.4425",
    "lng": "-42.23889"
  },
  {
    "country": "BR",
    "name": "Paraisópolis",
    "lat": "-22.55417",
    "lng": "-45.78"
  },
  {
    "country": "BR",
    "name": "Paraíso",
    "lat": "-21.01639",
    "lng": "-48.77361"
  },
  {
    "country": "BR",
    "name": "Paraíso das Águas",
    "lat": "-19.0175",
    "lng": "-53.01222"
  },
  {
    "country": "BR",
    "name": "Paraíba do Sul",
    "lat": "-22.15847",
    "lng": "-43.29321"
  },
  {
    "country": "BR",
    "name": "Paraguaçu Paulista",
    "lat": "-22.41278",
    "lng": "-50.57583"
  },
  {
    "country": "BR",
    "name": "Paraguaçu",
    "lat": "-21.54722",
    "lng": "-45.7375"
  },
  {
    "country": "BR",
    "name": "Pará de Minas",
    "lat": "-19.86028",
    "lng": "-44.60833"
  },
  {
    "country": "BR",
    "name": "Paracatu",
    "lat": "-17.22222",
    "lng": "-46.87472"
  },
  {
    "country": "BR",
    "name": "Paracambi",
    "lat": "-22.60829",
    "lng": "-43.7084"
  },
  {
    "country": "BR",
    "name": "Papagaios",
    "lat": "-19.44917",
    "lng": "-44.74778"
  },
  {
    "country": "BR",
    "name": "Pantano do Sul",
    "lat": "-27.77972",
    "lng": "-48.50861"
  },
  {
    "country": "BR",
    "name": "Panorama",
    "lat": "-21.35639",
    "lng": "-51.85972"
  },
  {
    "country": "BR",
    "name": "Pancas",
    "lat": "-19.225",
    "lng": "-40.85139"
  },
  {
    "country": "BR",
    "name": "Panambi",
    "lat": "-28.2925",
    "lng": "-53.50167"
  },
  {
    "country": "BR",
    "name": "Palotina",
    "lat": "-24.28389",
    "lng": "-53.84"
  },
  {
    "country": "BR",
    "name": "Palmital",
    "lat": "-22.78889",
    "lng": "-50.2175"
  },
  {
    "country": "BR",
    "name": "Palmeiras de Goiás",
    "lat": "-16.805",
    "lng": "-49.92583"
  },
  {
    "country": "BR",
    "name": "Palmeira das Missões",
    "lat": "-27.89944",
    "lng": "-53.31361"
  },
  {
    "country": "BR",
    "name": "Palmeira",
    "lat": "-25.42944",
    "lng": "-50.00639"
  },
  {
    "country": "BR",
    "name": "Palmas de Monte Alto",
    "lat": "-14.26722",
    "lng": "-43.16194"
  },
  {
    "country": "BR",
    "name": "Palmas",
    "lat": "-26.48417",
    "lng": "-51.99056"
  },
  {
    "country": "BR",
    "name": "Palmares do Sul",
    "lat": "-30.25778",
    "lng": "-50.50972"
  },
  {
    "country": "BR",
    "name": "Palhoça",
    "lat": "-27.64528",
    "lng": "-48.66778"
  },
  {
    "country": "BR",
    "name": "Paiçandu",
    "lat": "-23.4575",
    "lng": "-52.04861"
  },
  {
    "country": "BR",
    "name": "Padre Paraíso",
    "lat": "-17.07417",
    "lng": "-41.48444"
  },
  {
    "country": "BR",
    "name": "Padre Bernardo",
    "lat": "-15.16595",
    "lng": "-48.28281"
  },
  {
    "country": "BR",
    "name": "Pacatuba",
    "lat": "-10.45333",
    "lng": "-36.65139"
  },
  {
    "country": "BR",
    "name": "Pacaembu",
    "lat": "-21.56222",
    "lng": "-51.26056"
  },
  {
    "country": "BR",
    "name": "Ouro Preto",
    "lat": "-20.39484",
    "lng": "-43.50517"
  },
  {
    "country": "BR",
    "name": "Ouro Branco",
    "lat": "-20.52334",
    "lng": "-43.69486"
  },
  {
    "country": "BR",
    "name": "Ourinhos",
    "lat": "-22.97889",
    "lng": "-49.87056"
  },
  {
    "country": "BR",
    "name": "Otacílio Costa",
    "lat": "-27.48306",
    "lng": "-50.12194"
  },
  {
    "country": "BR",
    "name": "Osvaldo Cruz",
    "lat": "-21.79667",
    "lng": "-50.87861"
  },
  {
    "country": "BR",
    "name": "Osório",
    "lat": "-29.88667",
    "lng": "-50.26972"
  },
  {
    "country": "BR",
    "name": "Osasco",
    "lat": "-23.5325",
    "lng": "-46.79167"
  },
  {
    "country": "BR",
    "name": "Ortigueira",
    "lat": "-24.20833",
    "lng": "-50.94944"
  },
  {
    "country": "BR",
    "name": "Orleans",
    "lat": "-28.35889",
    "lng": "-49.29139"
  },
  {
    "country": "BR",
    "name": "Orlândia",
    "lat": "-20.72028",
    "lng": "-47.88667"
  },
  {
    "country": "BR",
    "name": "Orizona",
    "lat": "-17.03139",
    "lng": "-48.29583"
  },
  {
    "country": "BR",
    "name": "Oliveira dos Brejinhos",
    "lat": "-12.31694",
    "lng": "-42.89611"
  },
  {
    "country": "BR",
    "name": "Oliveira",
    "lat": "-20.69639",
    "lng": "-44.82722"
  },
  {
    "country": "BR",
    "name": "Olindina",
    "lat": "-11.36667",
    "lng": "-38.33333"
  },
  {
    "country": "BR",
    "name": "Olímpia",
    "lat": "-20.73722",
    "lng": "-48.91472"
  },
  {
    "country": "BR",
    "name": "Nuporanga",
    "lat": "-20.73095",
    "lng": "-47.75177"
  },
  {
    "country": "BR",
    "name": "Novo Horizonte",
    "lat": "-21.46806",
    "lng": "-49.22083"
  },
  {
    "country": "BR",
    "name": "Novo Hamburgo",
    "lat": "-29.67833",
    "lng": "-51.13056"
  },
  {
    "country": "BR",
    "name": "Novo Cruzeiro",
    "lat": "-17.46806",
    "lng": "-41.87528"
  },
  {
    "country": "BR",
    "name": "Nova Viçosa",
    "lat": "-17.89194",
    "lng": "-39.37194"
  },
  {
    "country": "BR",
    "name": "Nova Venécia",
    "lat": "-18.71056",
    "lng": "-40.40056"
  },
  {
    "country": "BR",
    "name": "Nova Soure",
    "lat": "-11.23333",
    "lng": "-38.48333"
  },
  {
    "country": "BR",
    "name": "Nova Prata",
    "lat": "-28.78389",
    "lng": "-51.61"
  },
  {
    "country": "BR",
    "name": "Nova Petrópolis",
    "lat": "-29.37639",
    "lng": "-51.11444"
  },
  {
    "country": "BR",
    "name": "Nova Olímpia",
    "lat": "-14.79722",
    "lng": "-57.28806"
  },
  {
    "country": "BR",
    "name": "Nova Odessa",
    "lat": "-22.7775",
    "lng": "-47.29583"
  },
  {
    "country": "BR",
    "name": "Nova Londrina",
    "lat": "-22.76583",
    "lng": "-52.985"
  },
  {
    "country": "BR",
    "name": "Nova Lima",
    "lat": "-19.98556",
    "lng": "-43.84667"
  },
  {
    "country": "BR",
    "name": "Nova Iguaçu",
    "lat": "-22.75917",
    "lng": "-43.45111"
  },
  {
    "country": "BR",
    "name": "Nova Granada",
    "lat": "-20.53389",
    "lng": "-49.31417"
  },
  {
    "country": "BR",
    "name": "Nova Friburgo",
    "lat": "-22.28194",
    "lng": "-42.53111"
  },
  {
    "country": "BR",
    "name": "Nova Era",
    "lat": "-19.75",
    "lng": "-43.0375"
  },
  {
    "country": "BR",
    "name": "Nova Aurora",
    "lat": "-22.86667",
    "lng": "-52.56667"
  },
  {
    "country": "BR",
    "name": "Nossa Senhora do Socorro",
    "lat": "-10.855",
    "lng": "-37.12611"
  },
  {
    "country": "BR",
    "name": "Nossa Senhora das Dores",
    "lat": "-10.49167",
    "lng": "-37.19333"
  },
  {
    "country": "BR",
    "name": "Nossa Senhora da Glória",
    "lat": "-10.21833",
    "lng": "-37.42028"
  },
  {
    "country": "BR",
    "name": "Nortelândia",
    "lat": "-14.45472",
    "lng": "-56.80278"
  },
  {
    "country": "BR",
    "name": "Nobres",
    "lat": "-14.72028",
    "lng": "-56.3275"
  },
  {
    "country": "BR",
    "name": "Niterói",
    "lat": "-22.88333",
    "lng": "-43.10361"
  },
  {
    "country": "BR",
    "name": "Niquelândia",
    "lat": "-14.47389",
    "lng": "-48.45972"
  },
  {
    "country": "BR",
    "name": "Nilópolis",
    "lat": "-22.8075",
    "lng": "-43.41389"
  },
  {
    "country": "BR",
    "name": "Nhandeara",
    "lat": "-20.6897",
    "lng": "-50.0407"
  },
  {
    "country": "BR",
    "name": "Nerópolis",
    "lat": "-16.40639",
    "lng": "-49.21861"
  },
  {
    "country": "BR",
    "name": "Nepomuceno",
    "lat": "-21.23342",
    "lng": "-45.23488"
  },
  {
    "country": "BR",
    "name": "Neópolis",
    "lat": "-10.32",
    "lng": "-36.57944"
  },
  {
    "country": "BR",
    "name": "Nazaré",
    "lat": "-13.035",
    "lng": "-39.01444"
  },
  {
    "country": "BR",
    "name": "Naviraí",
    "lat": "-23.065",
    "lng": "-54.19056"
  },
  {
    "country": "BR",
    "name": "Navegantes",
    "lat": "-26.89889",
    "lng": "-48.65417"
  },
  {
    "country": "BR",
    "name": "Natividade",
    "lat": "-21.04222",
    "lng": "-41.97333"
  },
  {
    "country": "BR",
    "name": "Não Me Toque",
    "lat": "-28.45917",
    "lng": "-52.82083"
  },
  {
    "country": "BR",
    "name": "Nanuque",
    "lat": "-17.83917",
    "lng": "-40.35389"
  },
  {
    "country": "BR",
    "name": "Muzambinho",
    "lat": "-21.37583",
    "lng": "-46.52556"
  },
  {
    "country": "BR",
    "name": "Mutum",
    "lat": "-19.8",
    "lng": "-41.43833"
  },
  {
    "country": "BR",
    "name": "Mutuípe",
    "lat": "-13.22861",
    "lng": "-39.50472"
  },
  {
    "country": "BR",
    "name": "Muritiba",
    "lat": "-12.91667",
    "lng": "-39.25"
  },
  {
    "country": "BR",
    "name": "Muriaé",
    "lat": "-21.13056",
    "lng": "-42.36639"
  },
  {
    "country": "BR",
    "name": "Muniz Freire",
    "lat": "-20.46417",
    "lng": "-41.41306"
  },
  {
    "country": "BR",
    "name": "Mundo Novo",
    "lat": "-11.85889",
    "lng": "-40.4725"
  },
  {
    "country": "BR",
    "name": "Mucurici",
    "lat": "-18.09333",
    "lng": "-40.51583"
  },
  {
    "country": "BR",
    "name": "Mucuri",
    "lat": "-18.08639",
    "lng": "-39.55083"
  },
  {
    "country": "BR",
    "name": "Mozarlândia",
    "lat": "-14.74472",
    "lng": "-50.57056"
  },
  {
    "country": "BR",
    "name": "Morro do Chapéu",
    "lat": "-11.54852",
    "lng": "-41.15804"
  },
  {
    "country": "BR",
    "name": "Morro da Fumaça",
    "lat": "-28.65083",
    "lng": "-49.21"
  },
  {
    "country": "BR",
    "name": "Morro Agudo",
    "lat": "-20.73139",
    "lng": "-48.05778"
  },
  {
    "country": "BR",
    "name": "Morrinhos",
    "lat": "-17.73111",
    "lng": "-49.09944"
  },
  {
    "country": "BR",
    "name": "Moreira Sales",
    "lat": "-24.06222",
    "lng": "-53.00694"
  },
  {
    "country": "BR",
    "name": "Monte Sião",
    "lat": "-22.4325",
    "lng": "-46.5725"
  },
  {
    "country": "BR",
    "name": "Montes Claros",
    "lat": "-16.735",
    "lng": "-43.86167"
  },
  {
    "country": "BR",
    "name": "Monte Santo de Minas",
    "lat": "-21.18972",
    "lng": "-46.98028"
  },
  {
    "country": "BR",
    "name": "Monte Santo",
    "lat": "-10.43778",
    "lng": "-39.33278"
  },
  {
    "country": "BR",
    "name": "Montenegro",
    "lat": "-29.68861",
    "lng": "-51.46111"
  },
  {
    "country": "BR",
    "name": "Monte Mor",
    "lat": "-22.94667",
    "lng": "-47.31583"
  },
  {
    "country": "BR",
    "name": "Monte Carmelo",
    "lat": "-18.72472",
    "lng": "-47.49861"
  },
  {
    "country": "BR",
    "name": "Monte Azul Paulista",
    "lat": "-20.90722",
    "lng": "-48.64139"
  },
  {
    "country": "BR",
    "name": "Monte Azul",
    "lat": "-15.155",
    "lng": "-42.87472"
  },
  {
    "country": "BR",
    "name": "Monte Aprazível",
    "lat": "-20.7725",
    "lng": "-49.71417"
  },
  {
    "country": "BR",
    "name": "Monte Alto",
    "lat": "-21.26111",
    "lng": "-48.49639"
  },
  {
    "country": "BR",
    "name": "Monte Alegre de Sergipe",
    "lat": "-10.02722",
    "lng": "-37.56222"
  },
  {
    "country": "BR",
    "name": "Monte Alegre de Minas",
    "lat": "-18.87056",
    "lng": "-48.88083"
  },
  {
    "country": "BR",
    "name": "Montanha",
    "lat": "-18.12694",
    "lng": "-40.36333"
  },
  {
    "country": "BR",
    "name": "Mongaguá",
    "lat": "-24.09306",
    "lng": "-46.62083"
  },
  {
    "country": "BR",
    "name": "Moita Bonita",
    "lat": "-10.5775",
    "lng": "-37.34278"
  },
  {
    "country": "BR",
    "name": "Mogi Mirim",
    "lat": "-22.43194",
    "lng": "-46.95778"
  },
  {
    "country": "BR",
    "name": "Mogi Guaçu",
    "lat": "-22.3677",
    "lng": "-46.94552"
  },
  {
    "country": "BR",
    "name": "Mogi das Cruzes",
    "lat": "-23.52278",
    "lng": "-46.18833"
  },
  {
    "country": "BR",
    "name": "Mococa",
    "lat": "-21.46778",
    "lng": "-47.00472"
  },
  {
    "country": "BR",
    "name": "Mirante do Paranapanema",
    "lat": "-22.29194",
    "lng": "-51.90639"
  },
  {
    "country": "BR",
    "name": "Mirandopólis",
    "lat": "-21.13361",
    "lng": "-51.10167"
  },
  {
    "country": "BR",
    "name": "Miranda",
    "lat": "-20.24056",
    "lng": "-56.37833"
  },
  {
    "country": "BR",
    "name": "Miraí",
    "lat": "-21.19528",
    "lng": "-42.61417"
  },
  {
    "country": "BR",
    "name": "Miracema",
    "lat": "-21.41222",
    "lng": "-42.19667"
  },
  {
    "country": "BR",
    "name": "Miracatu",
    "lat": "-24.28139",
    "lng": "-47.45972"
  },
  {
    "country": "BR",
    "name": "Mirabela",
    "lat": "-16.26278",
    "lng": "-44.16444"
  },
  {
    "country": "BR",
    "name": "Mineiros",
    "lat": "-17.56944",
    "lng": "-52.55111"
  },
  {
    "country": "BR",
    "name": "Minas Novas",
    "lat": "-17.21861",
    "lng": "-42.59028"
  },
  {
    "country": "BR",
    "name": "Mimoso do Sul",
    "lat": "-21.06417",
    "lng": "-41.36639"
  },
  {
    "country": "BR",
    "name": "Miguel Pereira",
    "lat": "-22.45389",
    "lng": "-43.46889"
  },
  {
    "country": "BR",
    "name": "Miguelópolis",
    "lat": "-20.17944",
    "lng": "-48.03194"
  },
  {
    "country": "BR",
    "name": "Miguel Calmon",
    "lat": "-11.42889",
    "lng": "-40.595"
  },
  {
    "country": "BR",
    "name": "Mendes",
    "lat": "-22.52667",
    "lng": "-43.73278"
  },
  {
    "country": "BR",
    "name": "Medina",
    "lat": "-16.2225",
    "lng": "-41.47694"
  },
  {
    "country": "BR",
    "name": "Medianeira",
    "lat": "-25.29528",
    "lng": "-54.09389"
  },
  {
    "country": "BR",
    "name": "Medeiros Neto",
    "lat": "-17.37389",
    "lng": "-40.22056"
  },
  {
    "country": "BR",
    "name": "Mauá",
    "lat": "-23.66778",
    "lng": "-46.46139"
  },
  {
    "country": "BR",
    "name": "Matozinhos",
    "lat": "-19.55778",
    "lng": "-44.08139"
  },
  {
    "country": "BR",
    "name": "Mato Verde",
    "lat": "-15.39722",
    "lng": "-42.86639"
  },
  {
    "country": "BR",
    "name": "Matipó",
    "lat": "-20.28389",
    "lng": "-42.34111"
  },
  {
    "country": "BR",
    "name": "Matias Barbosa",
    "lat": "-21.86917",
    "lng": "-43.31944"
  },
  {
    "country": "BR",
    "name": "Mateus Leme",
    "lat": "-19.98639",
    "lng": "-44.42778"
  },
  {
    "country": "BR",
    "name": "Matelândia",
    "lat": "-25.24083",
    "lng": "-53.99639"
  },
  {
    "country": "BR",
    "name": "Matão",
    "lat": "-21.60333",
    "lng": "-48.36583"
  },
  {
    "country": "BR",
    "name": "Mata de São João",
    "lat": "-12.53028",
    "lng": "-38.29917"
  },
  {
    "country": "BR",
    "name": "Mascote",
    "lat": "-15.56306",
    "lng": "-39.3025"
  },
  {
    "country": "BR",
    "name": "Maruim",
    "lat": "-10.7375",
    "lng": "-37.08167"
  },
  {
    "country": "BR",
    "name": "Martinópolis",
    "lat": "-22.14583",
    "lng": "-51.17083"
  },
  {
    "country": "BR",
    "name": "Martinho Campos",
    "lat": "-19.33167",
    "lng": "-45.23694"
  },
  {
    "country": "BR",
    "name": "Maringá",
    "lat": "-23.42528",
    "lng": "-51.93861"
  },
  {
    "country": "BR",
    "name": "Marília",
    "lat": "-22.21389",
    "lng": "-49.94583"
  },
  {
    "country": "BR",
    "name": "Marilândia",
    "lat": "-19.41278",
    "lng": "-40.54167"
  },
  {
    "country": "BR",
    "name": "Maricá",
    "lat": "-22.91944",
    "lng": "-42.81861"
  },
  {
    "country": "BR",
    "name": "Mariana",
    "lat": "-20.37778",
    "lng": "-43.41611"
  },
  {
    "country": "BR",
    "name": "Marialva",
    "lat": "-23.485",
    "lng": "-51.79167"
  },
  {
    "country": "BR",
    "name": "Marechal Floriano",
    "lat": "-20.41278",
    "lng": "-40.68306"
  },
  {
    "country": "BR",
    "name": "Marechal Cândido Rondon",
    "lat": "-24.55611",
    "lng": "-54.05667"
  },
  {
    "country": "BR",
    "name": "Mar de Espanha",
    "lat": "-21.86722",
    "lng": "-43.00972"
  },
  {
    "country": "BR",
    "name": "Marau",
    "lat": "-28.44917",
    "lng": "-52.2"
  },
  {
    "country": "BR",
    "name": "Maraú",
    "lat": "-14.10395",
    "lng": "-39.0149"
  },
  {
    "country": "BR",
    "name": "Marataizes",
    "lat": "-21.04333",
    "lng": "-40.82444"
  },
  {
    "country": "BR",
    "name": "Maragogipe",
    "lat": "-12.77778",
    "lng": "-38.91944"
  },
  {
    "country": "BR",
    "name": "Maracás",
    "lat": "-13.44111",
    "lng": "-40.43083"
  },
  {
    "country": "BR",
    "name": "Maracaju",
    "lat": "-21.61444",
    "lng": "-55.16833"
  },
  {
    "country": "BR",
    "name": "Maracaí",
    "lat": "-22.61056",
    "lng": "-50.66722"
  },
  {
    "country": "BR",
    "name": "Mantenópolis",
    "lat": "-18.8625",
    "lng": "-41.12278"
  },
  {
    "country": "BR",
    "name": "Manhumirim",
    "lat": "-20.35778",
    "lng": "-41.95806"
  },
  {
    "country": "BR",
    "name": "Manhuaçu",
    "lat": "-20.25806",
    "lng": "-42.03361"
  },
  {
    "country": "BR",
    "name": "Mangaratiba",
    "lat": "-22.95972",
    "lng": "-44.04056"
  },
  {
    "country": "BR",
    "name": "Manga",
    "lat": "-14.75583",
    "lng": "-43.93222"
  },
  {
    "country": "BR",
    "name": "Mandaguari",
    "lat": "-23.5475",
    "lng": "-51.67083"
  },
  {
    "country": "BR",
    "name": "Mandaguaçu",
    "lat": "-23.34722",
    "lng": "-52.09528"
  },
  {
    "country": "BR",
    "name": "Malhador",
    "lat": "-10.65778",
    "lng": "-37.30472"
  },
  {
    "country": "BR",
    "name": "Malacacheta",
    "lat": "-17.84222",
    "lng": "-42.07667"
  },
  {
    "country": "BR",
    "name": "Mairiporã",
    "lat": "-23.31861",
    "lng": "-46.58667"
  },
  {
    "country": "BR",
    "name": "Mairinque",
    "lat": "-23.54583",
    "lng": "-47.18333"
  },
  {
    "country": "BR",
    "name": "Mairi",
    "lat": "-11.71139",
    "lng": "-40.14889"
  },
  {
    "country": "BR",
    "name": "Mafra",
    "lat": "-26.11139",
    "lng": "-49.80528"
  },
  {
    "country": "BR",
    "name": "Madre de Deus",
    "lat": "-12.74083",
    "lng": "-38.62083"
  },
  {
    "country": "BR",
    "name": "Machado",
    "lat": "-21.67472",
    "lng": "-45.91972"
  },
  {
    "country": "BR",
    "name": "Macaúbas",
    "lat": "-13.01944",
    "lng": "-42.69861"
  },
  {
    "country": "BR",
    "name": "Macatuba",
    "lat": "-22.50222",
    "lng": "-48.71139"
  },
  {
    "country": "BR",
    "name": "Macaé",
    "lat": "-22.38484",
    "lng": "-41.78324"
  },
  {
    "country": "BR",
    "name": "Luziânia",
    "lat": "-16.2525",
    "lng": "-47.95028"
  },
  {
    "country": "BR",
    "name": "Luz",
    "lat": "-19.80139",
    "lng": "-45.68556"
  },
  {
    "country": "BR",
    "name": "Lucélia",
    "lat": "-21.72028",
    "lng": "-51.01889"
  },
  {
    "country": "BR",
    "name": "Lucas",
    "lat": "-16.33333",
    "lng": "-55.93333"
  },
  {
    "country": "BR",
    "name": "Louveira",
    "lat": "-23.08639",
    "lng": "-46.95056"
  },
  {
    "country": "BR",
    "name": "Lorena",
    "lat": "-22.73083",
    "lng": "-45.12472"
  },
  {
    "country": "BR",
    "name": "Londrina",
    "lat": "-23.31028",
    "lng": "-51.16278"
  },
  {
    "country": "BR",
    "name": "Loanda",
    "lat": "-22.92306",
    "lng": "-53.13722"
  },
  {
    "country": "BR",
    "name": "Livramento do Brumado",
    "lat": "-13.65145",
    "lng": "-41.84564"
  },
  {
    "country": "BR",
    "name": "Lins",
    "lat": "-21.67861",
    "lng": "-49.7425"
  },
  {
    "country": "BR",
    "name": "Linhares",
    "lat": "-19.39111",
    "lng": "-40.07222"
  },
  {
    "country": "BR",
    "name": "Limeira",
    "lat": "-22.56472",
    "lng": "-47.40167"
  },
  {
    "country": "BR",
    "name": "Lima Duarte",
    "lat": "-21.8425",
    "lng": "-43.79306"
  },
  {
    "country": "BR",
    "name": "Leopoldina",
    "lat": "-21.53194",
    "lng": "-42.64306"
  },
  {
    "country": "BR",
    "name": "Lençóis Paulista",
    "lat": "-22.59861",
    "lng": "-48.80028"
  },
  {
    "country": "BR",
    "name": "Leme",
    "lat": "-22.18556",
    "lng": "-47.39028"
  },
  {
    "country": "BR",
    "name": "Lavras",
    "lat": "-21.24528",
    "lng": "-44.99972"
  },
  {
    "country": "BR",
    "name": "Lauro Muller",
    "lat": "-28.39278",
    "lng": "-49.39667"
  },
  {
    "country": "BR",
    "name": "Laranjeiras do Sul",
    "lat": "-25.40778",
    "lng": "-52.41611"
  },
  {
    "country": "BR",
    "name": "Laranjeiras",
    "lat": "-10.80639",
    "lng": "-37.17"
  },
  {
    "country": "BR",
    "name": "Laranjal Paulista",
    "lat": "-23.04972",
    "lng": "-47.83667"
  },
  {
    "country": "BR",
    "name": "Laranja da Terra",
    "lat": "-19.89889",
    "lng": "-41.05667"
  },
  {
    "country": "BR",
    "name": "Lapão",
    "lat": "-11.38333",
    "lng": "-41.83194"
  },
  {
    "country": "BR",
    "name": "Lapa",
    "lat": "-25.76972",
    "lng": "-49.71583"
  },
  {
    "country": "BR",
    "name": "Lambari",
    "lat": "-21.97556",
    "lng": "-45.35028"
  },
  {
    "country": "BR",
    "name": "Lajinha",
    "lat": "-20.15139",
    "lng": "-41.62278"
  },
  {
    "country": "BR",
    "name": "Lages",
    "lat": "-27.81611",
    "lng": "-50.32611"
  },
  {
    "country": "BR",
    "name": "Lajeado",
    "lat": "-29.46694",
    "lng": "-51.96139"
  },
  {
    "country": "BR",
    "name": "Laje",
    "lat": "-10.18708",
    "lng": "-40.97076"
  },
  {
    "country": "BR",
    "name": "Laguna",
    "lat": "-28.4825",
    "lng": "-48.78083"
  },
  {
    "country": "BR",
    "name": "Lagoa Vermelha",
    "lat": "-28.20861",
    "lng": "-51.52583"
  },
  {
    "country": "BR",
    "name": "Lagoa Santa",
    "lat": "-19.63006",
    "lng": "-43.9009"
  },
  {
    "country": "BR",
    "name": "Lagoa Formosa",
    "lat": "-18.77861",
    "lng": "-46.4075"
  },
  {
    "country": "BR",
    "name": "Lagoa da Prata",
    "lat": "-20.0225",
    "lng": "-45.54361"
  },
  {
    "country": "BR",
    "name": "Lagoa",
    "lat": "-27.60491",
    "lng": "-48.46713"
  },
  {
    "country": "BR",
    "name": "Lagarto",
    "lat": "-10.91722",
    "lng": "-37.65"
  },
  {
    "country": "BR",
    "name": "Ladário",
    "lat": "-19.00472",
    "lng": "-57.60167"
  },
  {
    "country": "BR",
    "name": "Juquitiba",
    "lat": "-23.93167",
    "lng": "-47.06833"
  },
  {
    "country": "BR",
    "name": "Juquiá",
    "lat": "-24.32083",
    "lng": "-47.63472"
  },
  {
    "country": "BR",
    "name": "Junqueirópolis",
    "lat": "-21.51472",
    "lng": "-51.43361"
  },
  {
    "country": "BR",
    "name": "Jundiaí",
    "lat": "-23.18639",
    "lng": "-46.88417"
  },
  {
    "country": "BR",
    "name": "Júlio de Castilhos",
    "lat": "-29.22694",
    "lng": "-53.68167"
  },
  {
    "country": "BR",
    "name": "Juiz de Fora",
    "lat": "-21.76417",
    "lng": "-43.35028"
  },
  {
    "country": "BR",
    "name": "Juatuba",
    "lat": "-19.95194",
    "lng": "-44.34278"
  },
  {
    "country": "BR",
    "name": "José Bonifácio",
    "lat": "-21.05278",
    "lng": "-49.68833"
  },
  {
    "country": "BR",
    "name": "Joinville",
    "lat": "-26.30444",
    "lng": "-48.84556"
  },
  {
    "country": "BR",
    "name": "João Pinheiro",
    "lat": "-17.7425",
    "lng": "-46.1725"
  },
  {
    "country": "BR",
    "name": "João Neiva",
    "lat": "-19.7575",
    "lng": "-40.38556"
  },
  {
    "country": "BR",
    "name": "João Monlevade",
    "lat": "-19.81",
    "lng": "-43.17361"
  },
  {
    "country": "BR",
    "name": "Joanópolis",
    "lat": "-22.93028",
    "lng": "-46.27556"
  },
  {
    "country": "BR",
    "name": "Joaíma",
    "lat": "-16.65417",
    "lng": "-41.03056"
  },
  {
    "country": "BR",
    "name": "Joaçaba",
    "lat": "-27.17806",
    "lng": "-51.50472"
  },
  {
    "country": "BR",
    "name": "Jitaúna",
    "lat": "-14.01274",
    "lng": "-39.89833"
  },
  {
    "country": "BR",
    "name": "Jetibá",
    "lat": "-20.02069",
    "lng": "-40.68145"
  },
  {
    "country": "BR",
    "name": "Jerônimo Monteiro",
    "lat": "-20.78944",
    "lng": "-41.395"
  },
  {
    "country": "BR",
    "name": "Jeremoabo",
    "lat": "-10.075",
    "lng": "-38.48083"
  },
  {
    "country": "BR",
    "name": "Jequitinhonha",
    "lat": "-16.43389",
    "lng": "-41.00333"
  },
  {
    "country": "BR",
    "name": "Jequié",
    "lat": "-13.85875",
    "lng": "-40.08512"
  },
  {
    "country": "BR",
    "name": "Jaú",
    "lat": "-22.29639",
    "lng": "-48.55778"
  },
  {
    "country": "BR",
    "name": "Jataizinho",
    "lat": "-23.25417",
    "lng": "-50.98"
  },
  {
    "country": "BR",
    "name": "Jataí",
    "lat": "-17.87939",
    "lng": "-51.72166"
  },
  {
    "country": "BR",
    "name": "Jarinu",
    "lat": "-23.10139",
    "lng": "-46.72833"
  },
  {
    "country": "BR",
    "name": "Jardinópolis",
    "lat": "-21.01778",
    "lng": "-47.76389"
  },
  {
    "country": "BR",
    "name": "Jardim",
    "lat": "-21.48028",
    "lng": "-56.13806"
  },
  {
    "country": "BR",
    "name": "Jaraguá do Sul",
    "lat": "-26.48611",
    "lng": "-49.06667"
  },
  {
    "country": "BR",
    "name": "Jaraguá",
    "lat": "-15.75694",
    "lng": "-49.33444"
  },
  {
    "country": "BR",
    "name": "Japoatã",
    "lat": "-10.34667",
    "lng": "-36.80111"
  },
  {
    "country": "BR",
    "name": "Japeri",
    "lat": "-22.64306",
    "lng": "-43.65333"
  },
  {
    "country": "BR",
    "name": "Japaratuba",
    "lat": "-10.59333",
    "lng": "-36.94028"
  },
  {
    "country": "BR",
    "name": "Januária",
    "lat": "-15.48866",
    "lng": "-44.35988"
  },
  {
    "country": "BR",
    "name": "Jandira",
    "lat": "-23.5275",
    "lng": "-46.9025"
  },
  {
    "country": "BR",
    "name": "Jandaia do Sul",
    "lat": "-23.60306",
    "lng": "-51.64333"
  },
  {
    "country": "BR",
    "name": "Janaúba",
    "lat": "-15.8025",
    "lng": "-43.30889"
  },
  {
    "country": "BR",
    "name": "Jales",
    "lat": "-20.26889",
    "lng": "-50.54583"
  },
  {
    "country": "BR",
    "name": "Jaguaruna",
    "lat": "-28.62145",
    "lng": "-49.02529"
  },
  {
    "country": "BR",
    "name": "Jaguariúna",
    "lat": "-22.70556",
    "lng": "-46.98583"
  },
  {
    "country": "BR",
    "name": "Jaguariaíva",
    "lat": "-24.24423",
    "lng": "-49.70932"
  },
  {
    "country": "BR",
    "name": "Jaguarari",
    "lat": "-10.26389",
    "lng": "-40.19583"
  },
  {
    "country": "BR",
    "name": "Jaguarão",
    "lat": "-32.56611",
    "lng": "-53.37583"
  },
  {
    "country": "BR",
    "name": "Jaguaquara",
    "lat": "-13.53056",
    "lng": "-39.97083"
  },
  {
    "country": "BR",
    "name": "Jacutinga",
    "lat": "-22.28556",
    "lng": "-46.61222"
  },
  {
    "country": "BR",
    "name": "Jacupiranga",
    "lat": "-24.6925",
    "lng": "-48.00222"
  },
  {
    "country": "BR",
    "name": "Jacobina",
    "lat": "-11.18143",
    "lng": "-40.51372"
  },
  {
    "country": "BR",
    "name": "Jaciara",
    "lat": "-15.96528",
    "lng": "-54.96833"
  },
  {
    "country": "BR",
    "name": "Jacarezinho",
    "lat": "-23.16056",
    "lng": "-49.96944"
  },
  {
    "country": "BR",
    "name": "Jacareí",
    "lat": "-23.30528",
    "lng": "-45.96583"
  },
  {
    "country": "BR",
    "name": "Jaboticabal",
    "lat": "-21.25472",
    "lng": "-48.32222"
  },
  {
    "country": "BR",
    "name": "Ivoti",
    "lat": "-29.59111",
    "lng": "-51.16056"
  },
  {
    "country": "BR",
    "name": "Iúna",
    "lat": "-20.34583",
    "lng": "-41.53583"
  },
  {
    "country": "BR",
    "name": "Ituverava",
    "lat": "-20.33944",
    "lng": "-47.78056"
  },
  {
    "country": "BR",
    "name": "Iturama",
    "lat": "-19.72806",
    "lng": "-50.19556"
  },
  {
    "country": "BR",
    "name": "Itupeva",
    "lat": "-23.15306",
    "lng": "-47.05778"
  },
  {
    "country": "BR",
    "name": "Itumbiara",
    "lat": "-18.41917",
    "lng": "-49.21528"
  },
  {
    "country": "BR",
    "name": "Ituiutaba",
    "lat": "-18.97428",
    "lng": "-49.46212"
  },
  {
    "country": "BR",
    "name": "Ituberá",
    "lat": "-13.73538",
    "lng": "-39.14785"
  },
  {
    "country": "BR",
    "name": "Ituaçu",
    "lat": "-13.81333",
    "lng": "-41.29667"
  },
  {
    "country": "BR",
    "name": "Itu",
    "lat": "-23.26417",
    "lng": "-47.29917"
  },
  {
    "country": "BR",
    "name": "Itororó",
    "lat": "-15.11694",
    "lng": "-40.07028"
  },
  {
    "country": "BR",
    "name": "Itiruçu",
    "lat": "-13.53167",
    "lng": "-40.15028"
  },
  {
    "country": "BR",
    "name": "Itirapina",
    "lat": "-22.25278",
    "lng": "-47.82278"
  },
  {
    "country": "BR",
    "name": "Itinga",
    "lat": "-16.61306",
    "lng": "-41.76528"
  },
  {
    "country": "BR",
    "name": "Itaúna",
    "lat": "-20.07528",
    "lng": "-44.57639"
  },
  {
    "country": "BR",
    "name": "Itaú de Minas",
    "lat": "-20.73944",
    "lng": "-46.75222"
  },
  {
    "country": "BR",
    "name": "Itatinga",
    "lat": "-23.10167",
    "lng": "-48.61583"
  },
  {
    "country": "BR",
    "name": "Itatiba",
    "lat": "-23.00583",
    "lng": "-46.83889"
  },
  {
    "country": "BR",
    "name": "Itatiaia",
    "lat": "-22.49611",
    "lng": "-44.56333"
  },
  {
    "country": "BR",
    "name": "Itararé",
    "lat": "-24.1125",
    "lng": "-49.33167"
  },
  {
    "country": "BR",
    "name": "Itarantim",
    "lat": "-15.65972",
    "lng": "-40.06556"
  },
  {
    "country": "BR",
    "name": "Itarana",
    "lat": "-19.87389",
    "lng": "-40.87528"
  },
  {
    "country": "BR",
    "name": "Itaqui",
    "lat": "-29.12528",
    "lng": "-56.55306"
  },
  {
    "country": "BR",
    "name": "Itaquaquecetuba",
    "lat": "-23.48611",
    "lng": "-46.34833"
  },
  {
    "country": "BR",
    "name": "Itapuranga",
    "lat": "-15.56222",
    "lng": "-49.94861"
  },
  {
    "country": "BR",
    "name": "Itapuí",
    "lat": "-22.23333",
    "lng": "-48.71917"
  },
  {
    "country": "BR",
    "name": "Itaporanga",
    "lat": "-23.70778",
    "lng": "-49.48972"
  },
  {
    "country": "BR",
    "name": "Itápolis",
    "lat": "-21.59556",
    "lng": "-48.81278"
  },
  {
    "country": "BR",
    "name": "Itapirapuã",
    "lat": "-15.82333",
    "lng": "-50.61333"
  },
  {
    "country": "BR",
    "name": "Itapira",
    "lat": "-22.43611",
    "lng": "-46.82167"
  },
  {
    "country": "BR",
    "name": "Itapicuru",
    "lat": "-11.31667",
    "lng": "-38.23333"
  },
  {
    "country": "BR",
    "name": "Itapevi",
    "lat": "-23.54889",
    "lng": "-46.93417"
  },
  {
    "country": "BR",
    "name": "Itapeva",
    "lat": "-23.98222",
    "lng": "-48.87556"
  },
  {
    "country": "BR",
    "name": "Itapetininga",
    "lat": "-23.59167",
    "lng": "-48.05306"
  },
  {
    "country": "BR",
    "name": "Itapetinga",
    "lat": "-15.24889",
    "lng": "-40.24778"
  },
  {
    "country": "BR",
    "name": "Itaperuna",
    "lat": "-21.205",
    "lng": "-41.88778"
  },
  {
    "country": "BR",
    "name": "Itaperuçu",
    "lat": "-25.22",
    "lng": "-49.34778"
  },
  {
    "country": "BR",
    "name": "Itapemirim",
    "lat": "-21.01111",
    "lng": "-40.83389"
  },
  {
    "country": "BR",
    "name": "Itapema",
    "lat": "-27.09028",
    "lng": "-48.61139"
  },
  {
    "country": "BR",
    "name": "Itapecerica da Serra",
    "lat": "-23.71694",
    "lng": "-46.84917"
  },
  {
    "country": "BR",
    "name": "Itapecerica",
    "lat": "-20.4725",
    "lng": "-45.12556"
  },
  {
    "country": "BR",
    "name": "Itaparica",
    "lat": "-12.88833",
    "lng": "-38.67861"
  },
  {
    "country": "BR",
    "name": "Itapaci",
    "lat": "-14.95083",
    "lng": "-49.54944"
  },
  {
    "country": "BR",
    "name": "Itaocara",
    "lat": "-21.66917",
    "lng": "-42.07611"
  },
  {
    "country": "BR",
    "name": "Itanhém",
    "lat": "-17.16639",
    "lng": "-40.33"
  },
  {
    "country": "BR",
    "name": "Itanhandu",
    "lat": "-22.29583",
    "lng": "-44.93472"
  },
  {
    "country": "BR",
    "name": "Itanhaém",
    "lat": "-24.18306",
    "lng": "-46.78889"
  },
  {
    "country": "BR",
    "name": "Itambé",
    "lat": "-15.245",
    "lng": "-40.62444"
  },
  {
    "country": "BR",
    "name": "Itambacuri",
    "lat": "-18.03111",
    "lng": "-41.685"
  },
  {
    "country": "BR",
    "name": "Itamarandiba",
    "lat": "-17.85722",
    "lng": "-42.85889"
  },
  {
    "country": "BR",
    "name": "Itamaraju",
    "lat": "-17.03917",
    "lng": "-39.53111"
  },
  {
    "country": "BR",
    "name": "Itajuípe",
    "lat": "-14.67806",
    "lng": "-39.375"
  },
  {
    "country": "BR",
    "name": "Itajubá",
    "lat": "-22.42556",
    "lng": "-45.45278"
  },
  {
    "country": "BR",
    "name": "Itajobi",
    "lat": "-21.31806",
    "lng": "-49.05444"
  },
  {
    "country": "BR",
    "name": "Itagibá",
    "lat": "-14.28361",
    "lng": "-39.84278"
  },
  {
    "country": "BR",
    "name": "Itajaí",
    "lat": "-26.90778",
    "lng": "-48.66194"
  },
  {
    "country": "BR",
    "name": "Itaí",
    "lat": "-23.41778",
    "lng": "-49.09056"
  },
  {
    "country": "BR",
    "name": "Itaguaí",
    "lat": "-22.85222",
    "lng": "-43.77528"
  },
  {
    "country": "BR",
    "name": "Itaguaçu",
    "lat": "-19.80194",
    "lng": "-40.85556"
  },
  {
    "country": "BR",
    "name": "Itagi",
    "lat": "-14.16278",
    "lng": "-40.00611"
  },
  {
    "country": "BR",
    "name": "Itacaré",
    "lat": "-14.2789",
    "lng": "-38.99584"
  },
  {
    "country": "BR",
    "name": "Itacarambi",
    "lat": "-15.10222",
    "lng": "-44.09194"
  },
  {
    "country": "BR",
    "name": "Itabuna",
    "lat": "-14.78556",
    "lng": "-39.28028"
  },
  {
    "country": "BR",
    "name": "Itaboraí",
    "lat": "-22.74444",
    "lng": "-42.85944"
  },
  {
    "country": "BR",
    "name": "Itabirito",
    "lat": "-20.25333",
    "lng": "-43.80139"
  },
  {
    "country": "BR",
    "name": "Itabira",
    "lat": "-19.61917",
    "lng": "-43.22694"
  },
  {
    "country": "BR",
    "name": "Itaberaí",
    "lat": "-16.02028",
    "lng": "-49.81028"
  },
  {
    "country": "BR",
    "name": "Itaberaba",
    "lat": "-12.5275",
    "lng": "-40.30694"
  },
  {
    "country": "BR",
    "name": "Itaberá",
    "lat": "-23.86194",
    "lng": "-49.13722"
  },
  {
    "country": "BR",
    "name": "Itabaianinha",
    "lat": "-11.27389",
    "lng": "-37.79"
  },
  {
    "country": "BR",
    "name": "Itabaiana",
    "lat": "-10.685",
    "lng": "-37.42528"
  },
  {
    "country": "BR",
    "name": "Irupi",
    "lat": "-20.34528",
    "lng": "-41.64111"
  },
  {
    "country": "BR",
    "name": "Irecê",
    "lat": "-11.30417",
    "lng": "-41.85583"
  },
  {
    "country": "BR",
    "name": "Irati",
    "lat": "-25.46722",
    "lng": "-50.65111"
  },
  {
    "country": "BR",
    "name": "Irará",
    "lat": "-12.05",
    "lng": "-38.76667"
  },
  {
    "country": "BR",
    "name": "Iraquara",
    "lat": "-12.24861",
    "lng": "-41.61944"
  },
  {
    "country": "BR",
    "name": "Iracemápolis",
    "lat": "-22.58056",
    "lng": "-47.51861"
  },
  {
    "country": "BR",
    "name": "Ipuã",
    "lat": "-20.43806",
    "lng": "-48.01222"
  },
  {
    "country": "BR",
    "name": "Iporã",
    "lat": "-24.00306",
    "lng": "-53.70417"
  },
  {
    "country": "BR",
    "name": "Iporá",
    "lat": "-16.44194",
    "lng": "-51.11778"
  },
  {
    "country": "BR",
    "name": "Ipirá",
    "lat": "-12.15833",
    "lng": "-39.73722"
  },
  {
    "country": "BR",
    "name": "Ipiaú",
    "lat": "-14.13449",
    "lng": "-39.73948"
  },
  {
    "country": "BR",
    "name": "Iperó",
    "lat": "-23.35028",
    "lng": "-47.68861"
  },
  {
    "country": "BR",
    "name": "Ipauçu",
    "lat": "-23.05667",
    "lng": "-49.62639"
  },
  {
    "country": "BR",
    "name": "Ipatinga",
    "lat": "-19.46833",
    "lng": "-42.53667"
  },
  {
    "country": "BR",
    "name": "Ipameri",
    "lat": "-17.72194",
    "lng": "-48.15972"
  },
  {
    "country": "BR",
    "name": "Ipaba",
    "lat": "-19.41361",
    "lng": "-42.41944"
  },
  {
    "country": "BR",
    "name": "Inhumas",
    "lat": "-16.35778",
    "lng": "-49.49611"
  },
  {
    "country": "BR",
    "name": "Inhapim",
    "lat": "-19.54917",
    "lng": "-42.12"
  },
  {
    "country": "BR",
    "name": "Inhambupe",
    "lat": "-11.78444",
    "lng": "-38.35306"
  },
  {
    "country": "BR",
    "name": "Indiaroba",
    "lat": "-11.51917",
    "lng": "-37.51167"
  },
  {
    "country": "BR",
    "name": "Indaiatuba",
    "lat": "-23.08842",
    "lng": "-47.2119"
  },
  {
    "country": "BR",
    "name": "Indaial",
    "lat": "-26.89778",
    "lng": "-49.23167"
  },
  {
    "country": "BR",
    "name": "Imbituva",
    "lat": "-25.23",
    "lng": "-50.60444"
  },
  {
    "country": "BR",
    "name": "Imbituba",
    "lat": "-28.24",
    "lng": "-48.67028"
  },
  {
    "country": "BR",
    "name": "Ilhéus",
    "lat": "-14.79364",
    "lng": "-39.03949"
  },
  {
    "country": "BR",
    "name": "Ilha Solteira",
    "lat": "-20.43278",
    "lng": "-51.3425"
  },
  {
    "country": "BR",
    "name": "Ilhabela",
    "lat": "-23.77806",
    "lng": "-45.35806"
  },
  {
    "country": "BR",
    "name": "Ijuí",
    "lat": "-28.38778",
    "lng": "-53.91472"
  },
  {
    "country": "BR",
    "name": "Iguatemi",
    "lat": "-23.68028",
    "lng": "-54.56111"
  },
  {
    "country": "BR",
    "name": "Iguape",
    "lat": "-24.70806",
    "lng": "-47.55528"
  },
  {
    "country": "BR",
    "name": "Iguaí",
    "lat": "-14.75639",
    "lng": "-40.08917"
  },
  {
    "country": "BR",
    "name": "Iguaba Grande",
    "lat": "-22.83917",
    "lng": "-42.22889"
  },
  {
    "country": "BR",
    "name": "Igrejinha",
    "lat": "-29.57444",
    "lng": "-50.79028"
  },
  {
    "country": "BR",
    "name": "Igreja Nova",
    "lat": "-10.12528",
    "lng": "-36.66194"
  },
  {
    "country": "BR",
    "name": "Igarapé",
    "lat": "-20.07028",
    "lng": "-44.30167"
  },
  {
    "country": "BR",
    "name": "Igarapava",
    "lat": "-20.03833",
    "lng": "-47.74694"
  },
  {
    "country": "BR",
    "name": "Igaraçu do Tietê",
    "lat": "-22.50917",
    "lng": "-48.55778"
  },
  {
    "country": "BR",
    "name": "Iconha",
    "lat": "-20.79306",
    "lng": "-40.81111"
  },
  {
    "country": "BR",
    "name": "Içara",
    "lat": "-28.71333",
    "lng": "-49.3"
  },
  {
    "country": "BR",
    "name": "Ibotirama",
    "lat": "-12.18528",
    "lng": "-43.22056"
  },
  {
    "country": "BR",
    "name": "Ibiúna",
    "lat": "-23.65639",
    "lng": "-47.2225"
  },
  {
    "country": "BR",
    "name": "Ibitinga",
    "lat": "-21.75778",
    "lng": "-48.82889"
  },
  {
    "country": "BR",
    "name": "Ibirubá",
    "lat": "-28.6275",
    "lng": "-53.08972"
  },
  {
    "country": "BR",
    "name": "Ibirité",
    "lat": "-20.02194",
    "lng": "-44.05889"
  },
  {
    "country": "BR",
    "name": "Ibirataia",
    "lat": "-14.06694",
    "lng": "-39.64056"
  },
  {
    "country": "BR",
    "name": "Ibirapitanga",
    "lat": "-14.16417",
    "lng": "-39.37361"
  },
  {
    "country": "BR",
    "name": "Ibirama",
    "lat": "-27.05694",
    "lng": "-49.51778"
  },
  {
    "country": "BR",
    "name": "Ibiraçu",
    "lat": "-19.83194",
    "lng": "-40.36972"
  },
  {
    "country": "BR",
    "name": "Ibiporã",
    "lat": "-23.26917",
    "lng": "-51.04806"
  },
  {
    "country": "BR",
    "name": "Ibipeba",
    "lat": "-11.64083",
    "lng": "-42.01111"
  },
  {
    "country": "BR",
    "name": "Ibicuí",
    "lat": "-14.84167",
    "lng": "-39.98667"
  },
  {
    "country": "BR",
    "name": "Ibicaraí",
    "lat": "-14.865",
    "lng": "-39.5875"
  },
  {
    "country": "BR",
    "name": "Ibiá",
    "lat": "-19.47833",
    "lng": "-46.53889"
  },
  {
    "country": "BR",
    "name": "Ibatiba",
    "lat": "-20.23389",
    "lng": "-41.51056"
  },
  {
    "country": "BR",
    "name": "Ibaté",
    "lat": "-21.95472",
    "lng": "-47.99667"
  },
  {
    "country": "BR",
    "name": "Ibaiti",
    "lat": "-23.84861",
    "lng": "-50.18778"
  },
  {
    "country": "BR",
    "name": "Iaçu",
    "lat": "-12.76722",
    "lng": "-40.21167"
  },
  {
    "country": "BR",
    "name": "Iaciara",
    "lat": "-14.09583",
    "lng": "-46.63167"
  },
  {
    "country": "BR",
    "name": "Hortolândia",
    "lat": "-22.85833",
    "lng": "-47.22"
  },
  {
    "country": "BR",
    "name": "Horizontina",
    "lat": "-27.62583",
    "lng": "-54.30778"
  },
  {
    "country": "BR",
    "name": "Hidrolândia",
    "lat": "-16.96222",
    "lng": "-49.22806"
  },
  {
    "country": "BR",
    "name": "Herval",
    "lat": "-32.02361",
    "lng": "-53.39556"
  },
  {
    "country": "BR",
    "name": "Gurupi",
    "lat": "-11.72917",
    "lng": "-49.06861"
  },
  {
    "country": "BR",
    "name": "Guiratinga",
    "lat": "-16.34534",
    "lng": "-53.76177"
  },
  {
    "country": "BR",
    "name": "Guia Lopes da Laguna",
    "lat": "-21.45778",
    "lng": "-56.11417"
  },
  {
    "country": "BR",
    "name": "Guaxupé",
    "lat": "-21.30528",
    "lng": "-46.71278"
  },
  {
    "country": "BR",
    "name": "Guarulhos",
    "lat": "-23.46278",
    "lng": "-46.53333"
  },
  {
    "country": "BR",
    "name": "Guarujá",
    "lat": "-23.99306",
    "lng": "-46.25639"
  },
  {
    "country": "BR",
    "name": "Guariba",
    "lat": "-21.36",
    "lng": "-48.22833"
  },
  {
    "country": "BR",
    "name": "Guaratuba",
    "lat": "-25.88278",
    "lng": "-48.57472"
  },
  {
    "country": "BR",
    "name": "Guaratinguetá",
    "lat": "-22.81639",
    "lng": "-45.1925"
  },
  {
    "country": "BR",
    "name": "Guaratinga",
    "lat": "-16.58564",
    "lng": "-39.78189"
  },
  {
    "country": "BR",
    "name": "Guararema",
    "lat": "-23.415",
    "lng": "-46.035"
  },
  {
    "country": "BR",
    "name": "Guararapes",
    "lat": "-21.26083",
    "lng": "-50.64278"
  },
  {
    "country": "BR",
    "name": "Guarapuava",
    "lat": "-25.39048",
    "lng": "-51.46541"
  },
  {
    "country": "BR",
    "name": "Guarapari",
    "lat": "-20.67182",
    "lng": "-40.50196"
  },
  {
    "country": "BR",
    "name": "Guaraniaçu",
    "lat": "-25.10083",
    "lng": "-52.87806"
  },
  {
    "country": "BR",
    "name": "Guaranésia",
    "lat": "-21.29917",
    "lng": "-46.8025"
  },
  {
    "country": "BR",
    "name": "Guaramirim",
    "lat": "-26.47306",
    "lng": "-49.00278"
  },
  {
    "country": "BR",
    "name": "Guará",
    "lat": "-20.42833",
    "lng": "-47.82417"
  },
  {
    "country": "BR",
    "name": "Guaporé",
    "lat": "-28.84556",
    "lng": "-51.89028"
  },
  {
    "country": "BR",
    "name": "Guapó",
    "lat": "-16.83056",
    "lng": "-49.53194"
  },
  {
    "country": "BR",
    "name": "Guapimirim",
    "lat": "-22.53722",
    "lng": "-42.98194"
  },
  {
    "country": "BR",
    "name": "Guapiaçu",
    "lat": "-20.795",
    "lng": "-49.22028"
  },
  {
    "country": "BR",
    "name": "Guanhães",
    "lat": "-18.775",
    "lng": "-42.9325"
  },
  {
    "country": "BR",
    "name": "Guanambi",
    "lat": "-14.22333",
    "lng": "-42.78139"
  },
  {
    "country": "BR",
    "name": "Guaíra",
    "lat": "-20.31833",
    "lng": "-48.31056"
  },
  {
    "country": "BR",
    "name": "Guaçuí",
    "lat": "-20.77556",
    "lng": "-41.67944"
  },
  {
    "country": "BR",
    "name": "Gravataí",
    "lat": "-29.94218",
    "lng": "-50.99278"
  },
  {
    "country": "BR",
    "name": "Governador Valadares",
    "lat": "-18.85111",
    "lng": "-41.94944"
  },
  {
    "country": "BR",
    "name": "Goiatuba",
    "lat": "-18.0125",
    "lng": "-49.35472"
  },
  {
    "country": "BR",
    "name": "Goiás",
    "lat": "-15.93444",
    "lng": "-50.14028"
  },
  {
    "country": "BR",
    "name": "Goianira",
    "lat": "-16.49611",
    "lng": "-49.42639"
  },
  {
    "country": "BR",
    "name": "Goiânia",
    "lat": "-16.67861",
    "lng": "-49.25389"
  },
  {
    "country": "BR",
    "name": "Goianésia",
    "lat": "-15.3175",
    "lng": "-49.1175"
  },
  {
    "country": "BR",
    "name": "Goianápolis",
    "lat": "-16.51056",
    "lng": "-49.02389"
  },
  {
    "country": "BR",
    "name": "Giruá",
    "lat": "-28.02833",
    "lng": "-54.34972"
  },
  {
    "country": "BR",
    "name": "General Salgado",
    "lat": "-20.64833",
    "lng": "-50.36056"
  },
  {
    "country": "BR",
    "name": "Gaspar",
    "lat": "-26.93139",
    "lng": "-48.95889"
  },
  {
    "country": "BR",
    "name": "Garibaldi",
    "lat": "-29.25611",
    "lng": "-51.53361"
  },
  {
    "country": "BR",
    "name": "Garça",
    "lat": "-22.21056",
    "lng": "-49.65611"
  },
  {
    "country": "BR",
    "name": "Gandu",
    "lat": "-13.74389",
    "lng": "-39.48667"
  },
  {
    "country": "BR",
    "name": "Fundão",
    "lat": "-19.93408",
    "lng": "-40.40473"
  },
  {
    "country": "BR",
    "name": "Frutal",
    "lat": "-20.02472",
    "lng": "-48.94056"
  },
  {
    "country": "BR",
    "name": "Frei Paulo",
    "lat": "-10.54944",
    "lng": "-37.53444"
  },
  {
    "country": "BR",
    "name": "Frederico Westphalen",
    "lat": "-27.35917",
    "lng": "-53.39444"
  },
  {
    "country": "BR",
    "name": "Franco da Rocha",
    "lat": "-23.32167",
    "lng": "-46.72694"
  },
  {
    "country": "BR",
    "name": "Francisco Sá",
    "lat": "-16.47583",
    "lng": "-43.48833"
  },
  {
    "country": "BR",
    "name": "Francisco Morato",
    "lat": "-23.28167",
    "lng": "-46.74528"
  },
  {
    "country": "BR",
    "name": "Francisco Beltrão",
    "lat": "-26.08111",
    "lng": "-53.055"
  },
  {
    "country": "BR",
    "name": "Franca",
    "lat": "-20.53861",
    "lng": "-47.40083"
  },
  {
    "country": "BR",
    "name": "Foz do Iguaçu",
    "lat": "-25.54778",
    "lng": "-54.58806"
  },
  {
    "country": "BR",
    "name": "Forquilhinha",
    "lat": "-28.7475",
    "lng": "-49.47222"
  },
  {
    "country": "BR",
    "name": "Formosa do Rio Preto",
    "lat": "-11.04833",
    "lng": "-45.19306"
  },
  {
    "country": "BR",
    "name": "Formosa",
    "lat": "-15.53722",
    "lng": "-47.33444"
  },
  {
    "country": "BR",
    "name": "Formiga",
    "lat": "-20.46444",
    "lng": "-45.42639"
  },
  {
    "country": "BR",
    "name": "Paulista Flórida",
    "lat": "-21.6",
    "lng": "-51.2"
  },
  {
    "country": "BR",
    "name": "Florianópolis",
    "lat": "-27.59667",
    "lng": "-48.54917"
  },
  {
    "country": "BR",
    "name": "Florestópolis",
    "lat": "-22.86333",
    "lng": "-51.38722"
  },
  {
    "country": "BR",
    "name": "Flores da Cunha",
    "lat": "-29.02889",
    "lng": "-51.18167"
  },
  {
    "country": "BR",
    "name": "Firminópolis",
    "lat": "-16.58194",
    "lng": "-50.305"
  },
  {
    "country": "BR",
    "name": "Ferraz de Vasconcelos",
    "lat": "-23.54083",
    "lng": "-46.36861"
  },
  {
    "country": "BR",
    "name": "Fernandópolis",
    "lat": "-20.28389",
    "lng": "-50.24639"
  },
  {
    "country": "BR",
    "name": "Feira de Santana",
    "lat": "-12.26667",
    "lng": "-38.96667"
  },
  {
    "country": "BR",
    "name": "Faxinal",
    "lat": "-24.00028",
    "lng": "-51.31944"
  },
  {
    "country": "BR",
    "name": "Fartura",
    "lat": "-23.38833",
    "lng": "-49.51"
  },
  {
    "country": "BR",
    "name": "Farroupilha",
    "lat": "-29.225",
    "lng": "-51.34778"
  },
  {
    "country": "BR",
    "name": "Extrema",
    "lat": "-22.85472",
    "lng": "-46.31833"
  },
  {
    "country": "BR",
    "name": "Eunápolis",
    "lat": "-16.3775",
    "lng": "-39.58028"
  },
  {
    "country": "BR",
    "name": "Euclides da Cunha",
    "lat": "-10.5075",
    "lng": "-39.01583"
  },
  {
    "country": "BR",
    "name": "Estrela",
    "lat": "-28.06111",
    "lng": "-50.93833"
  },
  {
    "country": "BR",
    "name": "Esteio",
    "lat": "-29.86139",
    "lng": "-51.17917"
  },
  {
    "country": "BR",
    "name": "Estância Velha",
    "lat": "-29.64833",
    "lng": "-51.17389"
  },
  {
    "country": "BR",
    "name": "Estância",
    "lat": "-11.26833",
    "lng": "-37.43833"
  },
  {
    "country": "BR",
    "name": "Espumoso",
    "lat": "-28.72472",
    "lng": "-52.84972"
  },
  {
    "country": "BR",
    "name": "Esplanada",
    "lat": "-11.79611",
    "lng": "-37.945"
  },
  {
    "country": "BR",
    "name": "Espinosa",
    "lat": "-14.92611",
    "lng": "-42.81917"
  },
  {
    "country": "BR",
    "name": "Espera Feliz",
    "lat": "-20.65028",
    "lng": "-41.90722"
  },
  {
    "country": "BR",
    "name": "Esmeraldas",
    "lat": "-19.7625",
    "lng": "-44.31389"
  },
  {
    "country": "BR",
    "name": "Erechim",
    "lat": "-27.63461",
    "lng": "-52.2754"
  },
  {
    "country": "BR",
    "name": "Entre Rios",
    "lat": "-11.94194",
    "lng": "-38.08444"
  },
  {
    "country": "BR",
    "name": "Engenheiro Beltrão",
    "lat": "-23.79722",
    "lng": "-52.26917"
  },
  {
    "country": "BR",
    "name": "Encruzilhada do Sul",
    "lat": "-30.54389",
    "lng": "-52.52194"
  },
  {
    "country": "BR",
    "name": "Encruzilhada",
    "lat": "-15.53139",
    "lng": "-40.90944"
  },
  {
    "country": "BR",
    "name": "Encantado",
    "lat": "-29.23611",
    "lng": "-51.86972"
  },
  {
    "country": "BR",
    "name": "Embu Guaçu",
    "lat": "-23.83222",
    "lng": "-46.81139"
  },
  {
    "country": "BR",
    "name": "Embu",
    "lat": "-23.64889",
    "lng": "-46.85222"
  },
  {
    "country": "BR",
    "name": "Elói Mendes",
    "lat": "-21.61",
    "lng": "-45.56528"
  },
  {
    "country": "BR",
    "name": "Elias Fausto",
    "lat": "-23.04278",
    "lng": "-47.37389"
  },
  {
    "country": "BR",
    "name": "Eldorado",
    "lat": "-23.78694",
    "lng": "-54.28361"
  },
  {
    "country": "BR",
    "name": "Edéia",
    "lat": "-17.33833",
    "lng": "-49.93139"
  },
  {
    "country": "BR",
    "name": "Ecoporanga",
    "lat": "-18.37333",
    "lng": "-40.83056"
  },
  {
    "country": "BR",
    "name": "Duque de Caxias",
    "lat": "-22.78556",
    "lng": "-43.31167"
  },
  {
    "country": "BR",
    "name": "Duartina",
    "lat": "-22.41444",
    "lng": "-49.40389"
  },
  {
    "country": "BR",
    "name": "Dourados",
    "lat": "-22.22111",
    "lng": "-54.80556"
  },
  {
    "country": "BR",
    "name": "Dores do Indaiá",
    "lat": "-19.46333",
    "lng": "-45.60167"
  },
  {
    "country": "BR",
    "name": "Dom Pedrito",
    "lat": "-30.98278",
    "lng": "-54.67306"
  },
  {
    "country": "BR",
    "name": "Domingos Martins",
    "lat": "-20.36333",
    "lng": "-40.65917"
  },
  {
    "country": "BR",
    "name": "Dois Vizinhos",
    "lat": "-25.73361",
    "lng": "-53.05722"
  },
  {
    "country": "BR",
    "name": "Dois Córregos",
    "lat": "-22.36611",
    "lng": "-48.38028"
  },
  {
    "country": "BR",
    "name": "Divinópolis",
    "lat": "-20.14355",
    "lng": "-44.89065"
  },
  {
    "country": "BR",
    "name": "Divino das Laranjeiras",
    "lat": "-18.77778",
    "lng": "-41.47972"
  },
  {
    "country": "BR",
    "name": "Diamantino",
    "lat": "-14.40861",
    "lng": "-56.44611"
  },
  {
    "country": "BR",
    "name": "Diamantina",
    "lat": "-18.24692",
    "lng": "-43.60345"
  },
  {
    "country": "BR",
    "name": "Diadema",
    "lat": "-23.68611",
    "lng": "-46.62278"
  },
  {
    "country": "BR",
    "name": "Descalvado",
    "lat": "-21.90389",
    "lng": "-47.61944"
  },
  {
    "country": "BR",
    "name": "Curvelo",
    "lat": "-18.75639",
    "lng": "-44.43083"
  },
  {
    "country": "BR",
    "name": "Curitibanos",
    "lat": "-27.28278",
    "lng": "-50.58444"
  },
  {
    "country": "BR",
    "name": "Curitiba",
    "lat": "-25.42778",
    "lng": "-49.27306"
  },
  {
    "country": "BR",
    "name": "Cunha",
    "lat": "-23.07444",
    "lng": "-44.95972"
  },
  {
    "country": "BR",
    "name": "Cuiabá",
    "lat": "-15.59611",
    "lng": "-56.09667"
  },
  {
    "country": "BR",
    "name": "Cubatão",
    "lat": "-23.895",
    "lng": "-46.42528"
  },
  {
    "country": "BR",
    "name": "Cruzília",
    "lat": "-21.83861",
    "lng": "-44.80833"
  },
  {
    "country": "BR",
    "name": "Cruzeiro do Oeste",
    "lat": "-23.785",
    "lng": "-53.07333"
  },
  {
    "country": "BR",
    "name": "Cruzeiro",
    "lat": "-22.57316",
    "lng": "-44.97108"
  },
  {
    "country": "BR",
    "name": "Cruz das Almas",
    "lat": "-12.67",
    "lng": "-39.10194"
  },
  {
    "country": "BR",
    "name": "Cruz Alta",
    "lat": "-28.64397",
    "lng": "-53.60633"
  },
  {
    "country": "BR",
    "name": "Crixás",
    "lat": "-14.54889",
    "lng": "-49.96917"
  },
  {
    "country": "BR",
    "name": "Cristinápolis",
    "lat": "-11.47556",
    "lng": "-37.75528"
  },
  {
    "country": "BR",
    "name": "Cristalina",
    "lat": "-16.76769",
    "lng": "-47.6153"
  },
  {
    "country": "BR",
    "name": "Criciúma",
    "lat": "-28.6775",
    "lng": "-49.36972"
  },
  {
    "country": "BR",
    "name": "Cravinhos",
    "lat": "-21.34028",
    "lng": "-47.72944"
  },
  {
    "country": "BR",
    "name": "Coxim",
    "lat": "-18.50667",
    "lng": "-54.76"
  },
  {
    "country": "BR",
    "name": "Cotia",
    "lat": "-23.60389",
    "lng": "-46.91917"
  },
  {
    "country": "BR",
    "name": "Costa Rica",
    "lat": "-23.41667",
    "lng": "-54.65"
  },
  {
    "country": "BR",
    "name": "Cosmópolis",
    "lat": "-22.64583",
    "lng": "-47.19611"
  },
  {
    "country": "BR",
    "name": "Coruripe",
    "lat": "-10.12556",
    "lng": "-36.17556"
  },
  {
    "country": "BR",
    "name": "Corupá",
    "lat": "-26.42528",
    "lng": "-49.24306"
  },
  {
    "country": "BR",
    "name": "Corumbá",
    "lat": "-19.00917",
    "lng": "-57.65333"
  },
  {
    "country": "BR",
    "name": "Correntina",
    "lat": "-13.34333",
    "lng": "-44.63667"
  },
  {
    "country": "BR",
    "name": "Correia Pinto",
    "lat": "-27.58472",
    "lng": "-50.36111"
  },
  {
    "country": "BR",
    "name": "Coronel Vivida",
    "lat": "-25.97972",
    "lng": "-52.56778"
  },
  {
    "country": "BR",
    "name": "Coronel Fabriciano",
    "lat": "-19.51861",
    "lng": "-42.62889"
  },
  {
    "country": "BR",
    "name": "Coromandel",
    "lat": "-18.47333",
    "lng": "-47.20028"
  },
  {
    "country": "BR",
    "name": "Cornélio Procópio",
    "lat": "-23.18111",
    "lng": "-50.64667"
  },
  {
    "country": "BR",
    "name": "Corinto",
    "lat": "-18.38083",
    "lng": "-44.45639"
  },
  {
    "country": "BR",
    "name": "Cordeirópolis",
    "lat": "-22.48194",
    "lng": "-47.45667"
  },
  {
    "country": "BR",
    "name": "Cordeiro",
    "lat": "-22.02861",
    "lng": "-42.36083"
  },
  {
    "country": "BR",
    "name": "Corbélia",
    "lat": "-24.79889",
    "lng": "-53.30667"
  },
  {
    "country": "BR",
    "name": "Coração de Maria",
    "lat": "-12.23333",
    "lng": "-38.75"
  },
  {
    "country": "BR",
    "name": "Coração de Jesus",
    "lat": "-16.68528",
    "lng": "-44.365"
  },
  {
    "country": "BR",
    "name": "Contagem",
    "lat": "-19.93167",
    "lng": "-44.05361"
  },
  {
    "country": "BR",
    "name": "Conselheiro Pena",
    "lat": "-19.17222",
    "lng": "-41.47222"
  },
  {
    "country": "BR",
    "name": "Conselheiro Lafaiete",
    "lat": "-20.66028",
    "lng": "-43.78611"
  },
  {
    "country": "BR",
    "name": "Congonhas",
    "lat": "-20.50525",
    "lng": "-43.8588"
  },
  {
    "country": "BR",
    "name": "Conde",
    "lat": "-11.81361",
    "lng": "-37.61056"
  },
  {
    "country": "BR",
    "name": "Concórdia",
    "lat": "-27.23417",
    "lng": "-52.02778"
  },
  {
    "country": "BR",
    "name": "Conchas",
    "lat": "-23.01528",
    "lng": "-48.01056"
  },
  {
    "country": "BR",
    "name": "Conchal",
    "lat": "-22.33028",
    "lng": "-47.1725"
  },
  {
    "country": "BR",
    "name": "Conceição do Rio Verde",
    "lat": "-21.88083",
    "lng": "-45.08528"
  },
  {
    "country": "BR",
    "name": "Conceição do Mato Dentro",
    "lat": "-19.03722",
    "lng": "-43.425"
  },
  {
    "country": "BR",
    "name": "Conceição do Coité",
    "lat": "-11.56389",
    "lng": "-39.28278"
  },
  {
    "country": "BR",
    "name": "Conceição do Castelo",
    "lat": "-20.36833",
    "lng": "-41.24389"
  },
  {
    "country": "BR",
    "name": "Conceição do Almeida",
    "lat": "-12.77944",
    "lng": "-39.17"
  },
  {
    "country": "BR",
    "name": "Conceição do Jacuípe",
    "lat": "-12.31667",
    "lng": "-38.76667"
  },
  {
    "country": "BR",
    "name": "Conceição das Alagoas",
    "lat": "-19.91472",
    "lng": "-48.38833"
  },
  {
    "country": "BR",
    "name": "Conceição da Feira",
    "lat": "-12.50583",
    "lng": "-38.99861"
  },
  {
    "country": "BR",
    "name": "Conceição da Barra",
    "lat": "-18.59333",
    "lng": "-39.73222"
  },
  {
    "country": "BR",
    "name": "Colorado",
    "lat": "-22.8375",
    "lng": "-51.97306"
  },
  {
    "country": "BR",
    "name": "Colombo",
    "lat": "-25.29167",
    "lng": "-49.22417"
  },
  {
    "country": "BR",
    "name": "Colatina",
    "lat": "-19.53944",
    "lng": "-40.63056"
  },
  {
    "country": "BR",
    "name": "Cocal",
    "lat": "-28.60321",
    "lng": "-49.32767"
  },
  {
    "country": "BR",
    "name": "Coaraci",
    "lat": "-14.64083",
    "lng": "-39.55111"
  },
  {
    "country": "BR",
    "name": "Clevelândia",
    "lat": "-26.39583",
    "lng": "-52.47083"
  },
  {
    "country": "BR",
    "name": "Cláudio",
    "lat": "-20.44333",
    "lng": "-44.76583"
  },
  {
    "country": "BR",
    "name": "Cipó",
    "lat": "-11.09972",
    "lng": "-38.51361"
  },
  {
    "country": "BR",
    "name": "Cidreira",
    "lat": "-30.18111",
    "lng": "-50.20556"
  },
  {
    "country": "BR",
    "name": "Cícero Dantas",
    "lat": "-10.6",
    "lng": "-38.38333"
  },
  {
    "country": "BR",
    "name": "Cianorte",
    "lat": "-23.66333",
    "lng": "-52.605"
  },
  {
    "country": "BR",
    "name": "Chuí",
    "lat": "-33.69111",
    "lng": "-53.45667"
  },
  {
    "country": "BR",
    "name": "Chopinzinho",
    "lat": "-25.85583",
    "lng": "-52.52333"
  },
  {
    "country": "BR",
    "name": "Charqueadas",
    "lat": "-29.95472",
    "lng": "-51.62528"
  },
  {
    "country": "BR",
    "name": "Charqueada",
    "lat": "-22.50972",
    "lng": "-47.77806"
  },
  {
    "country": "BR",
    "name": "Chapecó",
    "lat": "-27.09639",
    "lng": "-52.61833"
  },
  {
    "country": "BR",
    "name": "Chapada dos Guimarães",
    "lat": "-15.46056",
    "lng": "-55.74972"
  },
  {
    "country": "BR",
    "name": "Cerro Largo",
    "lat": "-28.14861",
    "lng": "-54.73806"
  },
  {
    "country": "BR",
    "name": "Cerquilho",
    "lat": "-23.165",
    "lng": "-47.74361"
  },
  {
    "country": "BR",
    "name": "Cerqueira César",
    "lat": "-23.03556",
    "lng": "-49.16611"
  },
  {
    "country": "BR",
    "name": "Ceres",
    "lat": "-15.30833",
    "lng": "-49.59833"
  },
  {
    "country": "BR",
    "name": "Centralina",
    "lat": "-18.58389",
    "lng": "-49.19944"
  },
  {
    "country": "BR",
    "name": "Centenário do Sul",
    "lat": "-22.82111",
    "lng": "-51.59528"
  },
  {
    "country": "BR",
    "name": "Celso Ramos",
    "lat": "-27.63444",
    "lng": "-51.33639"
  },
  {
    "country": "BR",
    "name": "Caxias do Sul",
    "lat": "-29.16806",
    "lng": "-51.17944"
  },
  {
    "country": "BR",
    "name": "Caxambu",
    "lat": "-21.97722",
    "lng": "-44.9325"
  },
  {
    "country": "BR",
    "name": "Cavalcante",
    "lat": "-13.7975",
    "lng": "-47.45833"
  },
  {
    "country": "BR",
    "name": "Catu",
    "lat": "-12.35306",
    "lng": "-38.37889"
  },
  {
    "country": "BR",
    "name": "Catanduva",
    "lat": "-21.13778",
    "lng": "-48.97278"
  },
  {
    "country": "BR",
    "name": "Catalão",
    "lat": "-18.16583",
    "lng": "-47.94639"
  },
  {
    "country": "BR",
    "name": "Cataguases",
    "lat": "-21.38917",
    "lng": "-42.69667"
  },
  {
    "country": "BR",
    "name": "Castro Alves",
    "lat": "-12.76556",
    "lng": "-39.42833"
  },
  {
    "country": "BR",
    "name": "Castro",
    "lat": "-24.78927",
    "lng": "-50.01225"
  },
  {
    "country": "BR",
    "name": "Castilho",
    "lat": "-20.87222",
    "lng": "-51.4875"
  },
  {
    "country": "BR",
    "name": "Castelo",
    "lat": "-20.60361",
    "lng": "-41.18472"
  },
  {
    "country": "BR",
    "name": "Cassilândia",
    "lat": "-19.11333",
    "lng": "-51.73417"
  },
  {
    "country": "BR",
    "name": "Cássia",
    "lat": "-20.58306",
    "lng": "-46.92194"
  },
  {
    "country": "BR",
    "name": "Casimiro de Abreu",
    "lat": "-22.48056",
    "lng": "-42.20417"
  },
  {
    "country": "BR",
    "name": "Cascavel",
    "lat": "-24.95583",
    "lng": "-53.45528"
  },
  {
    "country": "BR",
    "name": "Casa Branca",
    "lat": "-21.77389",
    "lng": "-47.08639"
  },
  {
    "country": "BR",
    "name": "Carmo do Rio Verde",
    "lat": "-15.35361",
    "lng": "-49.7075"
  },
  {
    "country": "BR",
    "name": "Carmo do Rio Claro",
    "lat": "-20.97194",
    "lng": "-46.11889"
  },
  {
    "country": "BR",
    "name": "Carmo do Paranaíba",
    "lat": "-19.00083",
    "lng": "-46.31611"
  },
  {
    "country": "BR",
    "name": "Carmo do Cajuru",
    "lat": "-20.18417",
    "lng": "-44.77111"
  },
  {
    "country": "BR",
    "name": "Carmo",
    "lat": "-21.93361",
    "lng": "-42.60861"
  },
  {
    "country": "BR",
    "name": "Carlos Chagas",
    "lat": "-17.70306",
    "lng": "-40.76639"
  },
  {
    "country": "BR",
    "name": "Carlos Barbosa",
    "lat": "-29.2975",
    "lng": "-51.50361"
  },
  {
    "country": "BR",
    "name": "Carira",
    "lat": "-10.36083",
    "lng": "-37.70111"
  },
  {
    "country": "BR",
    "name": "Carinhanha",
    "lat": "-14.30472",
    "lng": "-43.765"
  },
  {
    "country": "BR",
    "name": "Cardoso",
    "lat": "-20.08194",
    "lng": "-49.91417"
  },
  {
    "country": "BR",
    "name": "Carazinho",
    "lat": "-28.28389",
    "lng": "-52.78639"
  },
  {
    "country": "BR",
    "name": "Caratinga",
    "lat": "-19.78972",
    "lng": "-42.13917"
  },
  {
    "country": "BR",
    "name": "Caarapó",
    "lat": "-22.63417",
    "lng": "-54.82222"
  },
  {
    "country": "BR",
    "name": "Carapicuíba",
    "lat": "-23.52272",
    "lng": "-46.835"
  },
  {
    "country": "BR",
    "name": "Carangola",
    "lat": "-20.73306",
    "lng": "-42.02944"
  },
  {
    "country": "BR",
    "name": "Carandaí",
    "lat": "-20.95361",
    "lng": "-43.80639"
  },
  {
    "country": "BR",
    "name": "Carambeí",
    "lat": "-24.9526",
    "lng": "-50.1159"
  },
  {
    "country": "BR",
    "name": "Caraí",
    "lat": "-17.18889",
    "lng": "-41.69472"
  },
  {
    "country": "BR",
    "name": "Caraguatatuba",
    "lat": "-23.62028",
    "lng": "-45.41306"
  },
  {
    "country": "BR",
    "name": "Capivari",
    "lat": "-22.995",
    "lng": "-47.50778"
  },
  {
    "country": "BR",
    "name": "Capitólio",
    "lat": "-20.61528",
    "lng": "-46.05"
  },
  {
    "country": "BR",
    "name": "Capinzal",
    "lat": "-27.34361",
    "lng": "-51.61194"
  },
  {
    "country": "BR",
    "name": "Capinópolis",
    "lat": "-18.68194",
    "lng": "-49.56972"
  },
  {
    "country": "BR",
    "name": "Capim Grosso",
    "lat": "-11.38111",
    "lng": "-40.01278"
  },
  {
    "country": "BR",
    "name": "Capelinha",
    "lat": "-17.69139",
    "lng": "-42.51583"
  },
  {
    "country": "BR",
    "name": "Capela do Alto",
    "lat": "-23.47056",
    "lng": "-47.73472"
  },
  {
    "country": "BR",
    "name": "Capela",
    "lat": "-10.50333",
    "lng": "-37.05278"
  },
  {
    "country": "BR",
    "name": "Capão da Canoa",
    "lat": "-29.74556",
    "lng": "-50.00972"
  },
  {
    "country": "BR",
    "name": "Capâo Bonito",
    "lat": "-24.00583",
    "lng": "-48.34944"
  },
  {
    "country": "BR",
    "name": "Cantagalo",
    "lat": "-21.98111",
    "lng": "-42.36806"
  },
  {
    "country": "BR",
    "name": "Canoinhas",
    "lat": "-26.17722",
    "lng": "-50.39"
  },
  {
    "country": "BR",
    "name": "Canoas",
    "lat": "-29.91778",
    "lng": "-51.18361"
  },
  {
    "country": "BR",
    "name": "Canguçu",
    "lat": "-31.395",
    "lng": "-52.67556"
  },
  {
    "country": "BR",
    "name": "Canela",
    "lat": "-29.35622",
    "lng": "-50.81357"
  },
  {
    "country": "BR",
    "name": "Cândido Mota",
    "lat": "-22.74639",
    "lng": "-50.38694"
  },
  {
    "country": "BR",
    "name": "Cândido de Abreu",
    "lat": "-24.56694",
    "lng": "-51.33333"
  },
  {
    "country": "BR",
    "name": "Candelária",
    "lat": "-29.66917",
    "lng": "-52.78889"
  },
  {
    "country": "BR",
    "name": "Canavieiras",
    "lat": "-15.675",
    "lng": "-38.94722"
  },
  {
    "country": "BR",
    "name": "Canarana",
    "lat": "-11.68472",
    "lng": "-41.76889"
  },
  {
    "country": "BR",
    "name": "Cananéia",
    "lat": "-25.01472",
    "lng": "-47.92667"
  },
  {
    "country": "BR",
    "name": "Campo Verde",
    "lat": "-20.41667",
    "lng": "-54.06667"
  },
  {
    "country": "BR",
    "name": "Campos Novos",
    "lat": "-27.40167",
    "lng": "-51.225"
  },
  {
    "country": "BR",
    "name": "Campos Gerais",
    "lat": "-21.235",
    "lng": "-45.75861"
  },
  {
    "country": "BR",
    "name": "Campos do Jordão",
    "lat": "-22.73944",
    "lng": "-45.59139"
  },
  {
    "country": "BR",
    "name": "Campos Belos",
    "lat": "-13.03667",
    "lng": "-46.77167"
  },
  {
    "country": "BR",
    "name": "Campos Altos",
    "lat": "-19.69611",
    "lng": "-46.17139"
  },
  {
    "country": "BR",
    "name": "Campos dos Goytacazes",
    "lat": "-21.75227",
    "lng": "-41.33044"
  },
  {
    "country": "BR",
    "name": "Campo Mourão",
    "lat": "-24.04309",
    "lng": "-52.37929"
  },
  {
    "country": "BR",
    "name": "Campo Largo",
    "lat": "-25.45955",
    "lng": "-49.53014"
  },
  {
    "country": "BR",
    "name": "Campo Grande",
    "lat": "-20.44278",
    "lng": "-54.64639"
  },
  {
    "country": "BR",
    "name": "Campo Grande",
    "lat": "-10.23333",
    "lng": "-36.5"
  },
  {
    "country": "BR",
    "name": "Campo Formoso",
    "lat": "-10.5075",
    "lng": "-40.32139"
  },
  {
    "country": "BR",
    "name": "Campo do Brito",
    "lat": "-10.73333",
    "lng": "-37.49333"
  },
  {
    "country": "BR",
    "name": "Campo Belo",
    "lat": "-20.89722",
    "lng": "-45.27722"
  },
  {
    "country": "BR",
    "name": "Campina Verde",
    "lat": "-19.53791",
    "lng": "-49.48813"
  },
  {
    "country": "BR",
    "name": "Campinas",
    "lat": "-22.90556",
    "lng": "-47.06083"
  },
  {
    "country": "BR",
    "name": "Campina Grande do Sul",
    "lat": "-25.30556",
    "lng": "-49.05528"
  },
  {
    "country": "BR",
    "name": "Campestre",
    "lat": "-21.71111",
    "lng": "-46.24639"
  },
  {
    "country": "BR",
    "name": "Campanha",
    "lat": "-21.83611",
    "lng": "-45.40056"
  },
  {
    "country": "BR",
    "name": "Cambuquira",
    "lat": "-21.85222",
    "lng": "-45.29583"
  },
  {
    "country": "BR",
    "name": "Cambuí",
    "lat": "-22.61222",
    "lng": "-46.0575"
  },
  {
    "country": "BR",
    "name": "Cambuci",
    "lat": "-21.57528",
    "lng": "-41.91111"
  },
  {
    "country": "BR",
    "name": "Cambé",
    "lat": "-23.27583",
    "lng": "-51.27833"
  },
  {
    "country": "BR",
    "name": "Cambará",
    "lat": "-23.04639",
    "lng": "-50.07361"
  },
  {
    "country": "BR",
    "name": "Camaquã",
    "lat": "-30.85111",
    "lng": "-51.81222"
  },
  {
    "country": "BR",
    "name": "Camapuã",
    "lat": "-19.53139",
    "lng": "-54.04389"
  },
  {
    "country": "BR",
    "name": "Camanducaia",
    "lat": "-22.75528",
    "lng": "-46.14472"
  },
  {
    "country": "BR",
    "name": "Camamu",
    "lat": "-13.94472",
    "lng": "-39.10389"
  },
  {
    "country": "BR",
    "name": "Camaçari",
    "lat": "-12.6975",
    "lng": "-38.32417"
  },
  {
    "country": "BR",
    "name": "Caldas Novas",
    "lat": "-17.74431",
    "lng": "-48.62789"
  },
  {
    "country": "BR",
    "name": "Cajuru",
    "lat": "-21.27528",
    "lng": "-47.30417"
  },
  {
    "country": "BR",
    "name": "Cajati",
    "lat": "-24.73611",
    "lng": "-48.12278"
  },
  {
    "country": "BR",
    "name": "Cajamar",
    "lat": "-23.35611",
    "lng": "-46.87694"
  },
  {
    "country": "BR",
    "name": "Caieiras",
    "lat": "-23.36417",
    "lng": "-46.74056"
  },
  {
    "country": "BR",
    "name": "Caiapônia",
    "lat": "-16.95667",
    "lng": "-51.81028"
  },
  {
    "country": "BR",
    "name": "Cafelândia",
    "lat": "-21.8025",
    "lng": "-49.61"
  },
  {
    "country": "BR",
    "name": "Cafarnaum",
    "lat": "-11.69361",
    "lng": "-41.46833"
  },
  {
    "country": "BR",
    "name": "Caetité",
    "lat": "-14.06944",
    "lng": "-42.475"
  },
  {
    "country": "BR",
    "name": "Caeté",
    "lat": "-19.88",
    "lng": "-43.66972"
  },
  {
    "country": "BR",
    "name": "Caculé",
    "lat": "-14.50333",
    "lng": "-42.22222"
  },
  {
    "country": "BR",
    "name": "Caçu",
    "lat": "-18.55667",
    "lng": "-51.13083"
  },
  {
    "country": "BR",
    "name": "Caconde",
    "lat": "-21.52944",
    "lng": "-46.64389"
  },
  {
    "country": "BR",
    "name": "Cachoeiro de Itapemirim",
    "lat": "-20.84889",
    "lng": "-41.11278"
  },
  {
    "country": "BR",
    "name": "Cachoeirinha",
    "lat": "-29.95111",
    "lng": "-51.09389"
  },
  {
    "country": "BR",
    "name": "Cachoeiras de Macacu",
    "lat": "-22.4625",
    "lng": "-42.65306"
  },
  {
    "country": "BR",
    "name": "Cachoeira do Sul",
    "lat": "-30.03917",
    "lng": "-52.89389"
  },
  {
    "country": "BR",
    "name": "Cachoeira",
    "lat": "-12.60139",
    "lng": "-38.96576"
  },
  {
    "country": "BR",
    "name": "Cacequi",
    "lat": "-29.88361",
    "lng": "-54.825"
  },
  {
    "country": "BR",
    "name": "Caçapava do Sul",
    "lat": "-30.51436",
    "lng": "-53.48496"
  },
  {
    "country": "BR",
    "name": "Caçapava",
    "lat": "-23.10083",
    "lng": "-45.70694"
  },
  {
    "country": "BR",
    "name": "Caçador",
    "lat": "-26.77528",
    "lng": "-51.015"
  },
  {
    "country": "BR",
    "name": "Cabreúva",
    "lat": "-23.3075",
    "lng": "-47.13278"
  },
  {
    "country": "BR",
    "name": "Cabo Frio",
    "lat": "-22.88717",
    "lng": "-42.02622"
  },
  {
    "country": "BR",
    "name": "Butiá",
    "lat": "-30.11972",
    "lng": "-51.96222"
  },
  {
    "country": "BR",
    "name": "Buritizeiro",
    "lat": "-17.35111",
    "lng": "-44.96222"
  },
  {
    "country": "BR",
    "name": "Buritis",
    "lat": "-15.61778",
    "lng": "-46.42333"
  },
  {
    "country": "BR",
    "name": "Buriti Alegre",
    "lat": "-18.14",
    "lng": "-49.04028"
  },
  {
    "country": "BR",
    "name": "Buritama",
    "lat": "-21.06611",
    "lng": "-50.14722"
  },
  {
    "country": "BR",
    "name": "Buri",
    "lat": "-23.7975",
    "lng": "-48.59278"
  },
  {
    "country": "BR",
    "name": "Boquim",
    "lat": "-11.14694",
    "lng": "-37.62056"
  },
  {
    "country": "BR",
    "name": "Buerarema",
    "lat": "-14.95944",
    "lng": "-39.29972"
  },
  {
    "country": "BR",
    "name": "Bueno Brandão",
    "lat": "-22.44083",
    "lng": "-46.35083"
  },
  {
    "country": "BR",
    "name": "Brusque",
    "lat": "-27.09795",
    "lng": "-48.91281"
  },
  {
    "country": "BR",
    "name": "Brumado",
    "lat": "-14.20361",
    "lng": "-41.66528"
  },
  {
    "country": "BR",
    "name": "Brumadinho",
    "lat": "-20.14333",
    "lng": "-44.19972"
  },
  {
    "country": "BR",
    "name": "Brotas",
    "lat": "-22.28417",
    "lng": "-48.12667"
  },
  {
    "country": "BR",
    "name": "Brodósqui",
    "lat": "-20.99139",
    "lng": "-47.65861"
  },
  {
    "country": "BR",
    "name": "Brasília de Minas",
    "lat": "-16.20639",
    "lng": "-44.43333"
  },
  {
    "country": "BR",
    "name": "Brasília",
    "lat": "-15.77972",
    "lng": "-47.92972"
  },
  {
    "country": "BR",
    "name": "Bragança Paulista",
    "lat": "-22.9527",
    "lng": "-46.54418"
  },
  {
    "country": "BR",
    "name": "Braço do Norte",
    "lat": "-28.275",
    "lng": "-49.16556"
  },
  {
    "country": "BR",
    "name": "Botucatu",
    "lat": "-22.88583",
    "lng": "-48.445"
  },
  {
    "country": "BR",
    "name": "Botelhos",
    "lat": "-21.63333",
    "lng": "-46.395"
  },
  {
    "country": "BR",
    "name": "Borda da Mata",
    "lat": "-22.27417",
    "lng": "-46.16528"
  },
  {
    "country": "BR",
    "name": "Borborema",
    "lat": "-21.61972",
    "lng": "-49.07361"
  },
  {
    "country": "BR",
    "name": "Boracéia",
    "lat": "-22.19306",
    "lng": "-48.77889"
  },
  {
    "country": "BR",
    "name": "Boquira",
    "lat": "-12.82306",
    "lng": "-42.73056"
  },
  {
    "country": "BR",
    "name": "Bonito",
    "lat": "-21.12111",
    "lng": "-56.48194"
  },
  {
    "country": "BR",
    "name": "Bom Sucesso",
    "lat": "-21.03306",
    "lng": "-44.75806"
  },
  {
    "country": "BR",
    "name": "Bom Jesus dos Perdões",
    "lat": "-23.135",
    "lng": "-46.46528"
  },
  {
    "country": "BR",
    "name": "Bom Jesus do Itabapoana",
    "lat": "-21.13389",
    "lng": "-41.67972"
  },
  {
    "country": "BR",
    "name": "Bom Jesus do Galho",
    "lat": "-19.82889",
    "lng": "-42.31611"
  },
  {
    "country": "BR",
    "name": "Bom Jesus da Lapa",
    "lat": "-13.255",
    "lng": "-43.41806"
  },
  {
    "country": "BR",
    "name": "Bom Despacho",
    "lat": "-19.73639",
    "lng": "-45.25222"
  },
  {
    "country": "BR",
    "name": "Boituva",
    "lat": "-23.28333",
    "lng": "-47.67222"
  },
  {
    "country": "BR",
    "name": "Bocaiúva",
    "lat": "-17.10778",
    "lng": "-43.815"
  },
  {
    "country": "BR",
    "name": "Boa Esperança do Sul",
    "lat": "-21.9925",
    "lng": "-48.39083"
  },
  {
    "country": "BR",
    "name": "Boa Esperança",
    "lat": "-21.09",
    "lng": "-45.56583"
  },
  {
    "country": "BR",
    "name": "Boa Esperança",
    "lat": "-18.54",
    "lng": "-40.29583"
  },
  {
    "country": "BR",
    "name": "Blumenau",
    "lat": "-26.91944",
    "lng": "-49.06611"
  },
  {
    "country": "BR",
    "name": "Biritiba Mirim",
    "lat": "-23.5725",
    "lng": "-46.03861"
  },
  {
    "country": "BR",
    "name": "Birigui",
    "lat": "-21.28861",
    "lng": "-50.34"
  },
  {
    "country": "BR",
    "name": "Biguaçu",
    "lat": "-27.49417",
    "lng": "-48.65556"
  },
  {
    "country": "BR",
    "name": "Bicas",
    "lat": "-21.72528",
    "lng": "-43.05944"
  },
  {
    "country": "BR",
    "name": "Betim",
    "lat": "-19.96778",
    "lng": "-44.19833"
  },
  {
    "country": "BR",
    "name": "Bertioga",
    "lat": "-23.85444",
    "lng": "-46.13861"
  },
  {
    "country": "BR",
    "name": "Bernardino de Campos",
    "lat": "-23.01306",
    "lng": "-49.47417"
  },
  {
    "country": "BR",
    "name": "Bento Gonçalves",
    "lat": "-29.17139",
    "lng": "-51.51917"
  },
  {
    "country": "BR",
    "name": "Belo Oriente",
    "lat": "-19.22",
    "lng": "-42.48361"
  },
  {
    "country": "BR",
    "name": "Belo Horizonte",
    "lat": "-19.92083",
    "lng": "-43.93778"
  },
  {
    "country": "BR",
    "name": "Belmonte",
    "lat": "-15.86104",
    "lng": "-38.88143"
  },
  {
    "country": "BR",
    "name": "Belford Roxo",
    "lat": "-22.76417",
    "lng": "-43.39944"
  },
  {
    "country": "BR",
    "name": "Bela Vista do Paraíso",
    "lat": "-22.99667",
    "lng": "-51.19056"
  },
  {
    "country": "BR",
    "name": "Bela Vista de Goiás",
    "lat": "-16.97278",
    "lng": "-48.95333"
  },
  {
    "country": "BR",
    "name": "Bela Vista",
    "lat": "-22.10889",
    "lng": "-56.52111"
  },
  {
    "country": "BR",
    "name": "Bebedouro",
    "lat": "-20.94944",
    "lng": "-48.47917"
  },
  {
    "country": "BR",
    "name": "Bauru",
    "lat": "-22.31472",
    "lng": "-49.06056"
  },
  {
    "country": "BR",
    "name": "Batatais",
    "lat": "-20.89111",
    "lng": "-47.585"
  },
  {
    "country": "BR",
    "name": "Bataiporã",
    "lat": "-22.29528",
    "lng": "-53.27111"
  },
  {
    "country": "BR",
    "name": "Bastos",
    "lat": "-21.92194",
    "lng": "-50.73389"
  },
  {
    "country": "BR",
    "name": "Barueri",
    "lat": "-23.51056",
    "lng": "-46.87611"
  },
  {
    "country": "BR",
    "name": "Barroso",
    "lat": "-21.18694",
    "lng": "-43.97583"
  },
  {
    "country": "BR",
    "name": "Barro Alto",
    "lat": "-14.97083",
    "lng": "-48.91583"
  },
  {
    "country": "BR",
    "name": "Barro Alto",
    "lat": "-11.76083",
    "lng": "-41.91167"
  },
  {
    "country": "BR",
    "name": "Barrinha",
    "lat": "-21.19361",
    "lng": "-48.16389"
  },
  {
    "country": "BR",
    "name": "Barretos",
    "lat": "-20.55722",
    "lng": "-48.56778"
  },
  {
    "country": "BR",
    "name": "Barreiro do Jaíba",
    "lat": "-15.61532",
    "lng": "-43.59187"
  },
  {
    "country": "BR",
    "name": "Barreiras",
    "lat": "-12.15278",
    "lng": "-44.99"
  },
  {
    "country": "BR",
    "name": "Barra Velha",
    "lat": "-26.63222",
    "lng": "-48.68472"
  },
  {
    "country": "BR",
    "name": "Barra Mansa",
    "lat": "-22.54417",
    "lng": "-44.17139"
  },
  {
    "country": "BR",
    "name": "Barra dos Coqueiros",
    "lat": "-10.90889",
    "lng": "-37.03861"
  },
  {
    "country": "BR",
    "name": "Barra do Piraí",
    "lat": "-22.47",
    "lng": "-43.82556"
  },
  {
    "country": "BR",
    "name": "Barra do Garças",
    "lat": "-15.89",
    "lng": "-52.25667"
  },
  {
    "country": "BR",
    "name": "Barra do Bugres",
    "lat": "-15.0725",
    "lng": "-57.18111"
  },
  {
    "country": "BR",
    "name": "Barra de São Francisco",
    "lat": "-18.755",
    "lng": "-40.89083"
  },
  {
    "country": "BR",
    "name": "Barra da Estiva",
    "lat": "-13.62611",
    "lng": "-41.32694"
  },
  {
    "country": "BR",
    "name": "Barra Bonita",
    "lat": "-22.49472",
    "lng": "-48.55806"
  },
  {
    "country": "BR",
    "name": "Barra",
    "lat": "-11.08944",
    "lng": "-43.14167"
  },
  {
    "country": "BR",
    "name": "Bariri",
    "lat": "-22.07444",
    "lng": "-48.74028"
  },
  {
    "country": "BR",
    "name": "Barbacena",
    "lat": "-21.22583",
    "lng": "-43.77361"
  },
  {
    "country": "BR",
    "name": "Barão de Melgaço",
    "lat": "-16.19444",
    "lng": "-55.9675"
  },
  {
    "country": "BR",
    "name": "Barão de Cocais",
    "lat": "-19.94583",
    "lng": "-43.48722"
  },
  {
    "country": "BR",
    "name": "Bandeirantes",
    "lat": "-23.11",
    "lng": "-50.3675"
  },
  {
    "country": "BR",
    "name": "Bambuí",
    "lat": "-20.00639",
    "lng": "-45.97694"
  },
  {
    "country": "BR",
    "name": "Balneário Camboriú",
    "lat": "-26.99056",
    "lng": "-48.63472"
  },
  {
    "country": "BR",
    "name": "Baixo Guandu",
    "lat": "-19.51889",
    "lng": "-41.01583"
  },
  {
    "country": "BR",
    "name": "Baixa Grande",
    "lat": "-11.95972",
    "lng": "-40.16806"
  },
  {
    "country": "BR",
    "name": "Bagé",
    "lat": "-31.33139",
    "lng": "-54.10694"
  },
  {
    "country": "BR",
    "name": "Baependi",
    "lat": "-21.95889",
    "lng": "-44.89"
  },
  {
    "country": "BR",
    "name": "Bady Bassitt",
    "lat": "-20.91806",
    "lng": "-49.44528"
  },
  {
    "country": "BR",
    "name": "Avaré",
    "lat": "-23.09861",
    "lng": "-48.92583"
  },
  {
    "country": "BR",
    "name": "Auriflama",
    "lat": "-20.68556",
    "lng": "-50.55472"
  },
  {
    "country": "BR",
    "name": "Atibaia",
    "lat": "-23.11694",
    "lng": "-46.55028"
  },
  {
    "country": "BR",
    "name": "Astorga",
    "lat": "-23.2325",
    "lng": "-51.66556"
  },
  {
    "country": "BR",
    "name": "Astolfo Dutra",
    "lat": "-21.31528",
    "lng": "-42.86222"
  },
  {
    "country": "BR",
    "name": "Assis",
    "lat": "-22.66167",
    "lng": "-50.41222"
  },
  {
    "country": "BR",
    "name": "Assaí",
    "lat": "-23.37333",
    "lng": "-50.84139"
  },
  {
    "country": "BR",
    "name": "Arujá",
    "lat": "-23.39611",
    "lng": "-46.32083"
  },
  {
    "country": "BR",
    "name": "Artur Nogueira",
    "lat": "-22.57306",
    "lng": "-47.1725"
  },
  {
    "country": "BR",
    "name": "Arroio Grande",
    "lat": "-32.2375",
    "lng": "-53.08694"
  },
  {
    "country": "BR",
    "name": "Arroio dos Ratos",
    "lat": "-30.07722",
    "lng": "-51.72917"
  },
  {
    "country": "BR",
    "name": "Arroio do Meio",
    "lat": "-29.40111",
    "lng": "-51.945"
  },
  {
    "country": "BR",
    "name": "Arraial do Cabo",
    "lat": "-22.96611",
    "lng": "-42.02778"
  },
  {
    "country": "BR",
    "name": "Armação de Búzios",
    "lat": "-22.74694",
    "lng": "-41.88167"
  },
  {
    "country": "BR",
    "name": "Armação",
    "lat": "-27.74963",
    "lng": "-48.50713"
  },
  {
    "country": "BR",
    "name": "Arinos",
    "lat": "-15.91694",
    "lng": "-46.10556"
  },
  {
    "country": "BR",
    "name": "Arenápolis",
    "lat": "-14.45028",
    "lng": "-56.84611"
  },
  {
    "country": "BR",
    "name": "Areia Branca",
    "lat": "-10.75778",
    "lng": "-37.31528"
  },
  {
    "country": "BR",
    "name": "Areal",
    "lat": "-22.23056",
    "lng": "-43.10556"
  },
  {
    "country": "BR",
    "name": "Areado",
    "lat": "-21.35861",
    "lng": "-46.14556"
  },
  {
    "country": "BR",
    "name": "Arcos",
    "lat": "-20.28194",
    "lng": "-45.53944"
  },
  {
    "country": "BR",
    "name": "Araxá",
    "lat": "-19.59333",
    "lng": "-46.94056"
  },
  {
    "country": "BR",
    "name": "Araucária",
    "lat": "-25.59306",
    "lng": "-49.41028"
  },
  {
    "country": "BR",
    "name": "Arauá",
    "lat": "-11.26222",
    "lng": "-37.61972"
  },
  {
    "country": "BR",
    "name": "Araruama",
    "lat": "-22.87278",
    "lng": "-42.34306"
  },
  {
    "country": "BR",
    "name": "Araras",
    "lat": "-22.35694",
    "lng": "-47.38417"
  },
  {
    "country": "BR",
    "name": "Araraquara",
    "lat": "-21.79444",
    "lng": "-48.17556"
  },
  {
    "country": "BR",
    "name": "Araranguá",
    "lat": "-28.93575",
    "lng": "-49.49538"
  },
  {
    "country": "BR",
    "name": "Arapongas",
    "lat": "-23.41944",
    "lng": "-51.42444"
  },
  {
    "country": "BR",
    "name": "Araguari",
    "lat": "-18.64722",
    "lng": "-48.18722"
  },
  {
    "country": "BR",
    "name": "Araguaiana",
    "lat": "-15.73389",
    "lng": "-51.83139"
  },
  {
    "country": "BR",
    "name": "Aragarças",
    "lat": "-15.8975",
    "lng": "-52.25083"
  },
  {
    "country": "BR",
    "name": "Araçuaí",
    "lat": "-16.84972",
    "lng": "-42.07028"
  },
  {
    "country": "BR",
    "name": "Aracruz",
    "lat": "-19.82028",
    "lng": "-40.27333"
  },
  {
    "country": "BR",
    "name": "Araçoiaba da Serra",
    "lat": "-23.50528",
    "lng": "-47.61417"
  },
  {
    "country": "BR",
    "name": "Araci",
    "lat": "-11.33333",
    "lng": "-38.96667"
  },
  {
    "country": "BR",
    "name": "Araçatuba",
    "lat": "-21.20889",
    "lng": "-50.43278"
  },
  {
    "country": "BR",
    "name": "Aracaju",
    "lat": "-10.91111",
    "lng": "-37.07167"
  },
  {
    "country": "BR",
    "name": "Aquidauana",
    "lat": "-20.47111",
    "lng": "-55.78722"
  },
  {
    "country": "BR",
    "name": "Aquidabã",
    "lat": "-10.28139",
    "lng": "-37.01861"
  },
  {
    "country": "BR",
    "name": "Apucarana",
    "lat": "-23.55083",
    "lng": "-51.46083"
  },
  {
    "country": "BR",
    "name": "Apiaí",
    "lat": "-24.50944",
    "lng": "-48.8425"
  },
  {
    "country": "BR",
    "name": "Aparecida do Taboado",
    "lat": "-20.08667",
    "lng": "-51.09361"
  },
  {
    "country": "BR",
    "name": "Aparecida",
    "lat": "-22.84694",
    "lng": "-45.22972"
  },
  {
    "country": "BR",
    "name": "Antonina",
    "lat": "-25.42861",
    "lng": "-48.71194"
  },
  {
    "country": "BR",
    "name": "Anitápolis",
    "lat": "-27.90194",
    "lng": "-49.12861"
  },
  {
    "country": "BR",
    "name": "Anicuns",
    "lat": "-16.46111",
    "lng": "-49.96167"
  },
  {
    "country": "BR",
    "name": "Anguera",
    "lat": "-12.15111",
    "lng": "-39.24639"
  },
  {
    "country": "BR",
    "name": "Angra dos Reis",
    "lat": "-23.00667",
    "lng": "-44.31806"
  },
  {
    "country": "BR",
    "name": "Angatuba",
    "lat": "-23.48972",
    "lng": "-48.41278"
  },
  {
    "country": "BR",
    "name": "Andrelândia",
    "lat": "-21.73972",
    "lng": "-44.30917"
  },
  {
    "country": "BR",
    "name": "Andradina",
    "lat": "-20.89611",
    "lng": "-51.37944"
  },
  {
    "country": "BR",
    "name": "Andradas",
    "lat": "-22.06806",
    "lng": "-46.56917"
  },
  {
    "country": "BR",
    "name": "Anastácio",
    "lat": "-20.48361",
    "lng": "-55.80694"
  },
  {
    "country": "BR",
    "name": "Anápolis",
    "lat": "-16.32667",
    "lng": "-48.95278"
  },
  {
    "country": "BR",
    "name": "Anagé",
    "lat": "-14.61222",
    "lng": "-41.13556"
  },
  {
    "country": "BR",
    "name": "Ampére",
    "lat": "-25.915",
    "lng": "-53.47278"
  },
  {
    "country": "BR",
    "name": "Amparo",
    "lat": "-22.70111",
    "lng": "-46.76444"
  },
  {
    "country": "BR",
    "name": "Américo Brasiliense",
    "lat": "-21.72444",
    "lng": "-48.10167"
  },
  {
    "country": "BR",
    "name": "Americana",
    "lat": "-22.73917",
    "lng": "-47.33139"
  },
  {
    "country": "BR",
    "name": "América Dourada",
    "lat": "-11.45528",
    "lng": "-41.43611"
  },
  {
    "country": "BR",
    "name": "Amargosa",
    "lat": "-13.03028",
    "lng": "-39.60472"
  },
  {
    "country": "BR",
    "name": "Alvorada",
    "lat": "-12.48",
    "lng": "-49.12472"
  },
  {
    "country": "BR",
    "name": "Alvinópolis",
    "lat": "-20.10667",
    "lng": "-43.04889"
  },
  {
    "country": "BR",
    "name": "Álvares Machado",
    "lat": "-22.07944",
    "lng": "-51.47194"
  },
  {
    "country": "BR",
    "name": "Alto Piquiri",
    "lat": "-24.02806",
    "lng": "-53.44056"
  },
  {
    "country": "BR",
    "name": "Alto Paraná",
    "lat": "-23.12889",
    "lng": "-52.31889"
  },
  {
    "country": "BR",
    "name": "Altãnia",
    "lat": "-23.87444",
    "lng": "-53.90167"
  },
  {
    "country": "BR",
    "name": "Alto Araguaia",
    "lat": "-17.31472",
    "lng": "-53.21528"
  },
  {
    "country": "BR",
    "name": "Altinópolis",
    "lat": "-21.02556",
    "lng": "-47.37389"
  },
  {
    "country": "BR",
    "name": "Alterosa",
    "lat": "-21.24917",
    "lng": "-46.14306"
  },
  {
    "country": "BR",
    "name": "Alpinópolis",
    "lat": "-20.86361",
    "lng": "-46.38806"
  },
  {
    "country": "BR",
    "name": "Almirante Tamandaré",
    "lat": "-25.32472",
    "lng": "-49.31"
  },
  {
    "country": "BR",
    "name": "Almenara",
    "lat": "-16.18361",
    "lng": "-40.69444"
  },
  {
    "country": "BR",
    "name": "Alfredo Chaves",
    "lat": "-20.635",
    "lng": "-40.74972"
  },
  {
    "country": "BR",
    "name": "Alfenas",
    "lat": "-21.42917",
    "lng": "-45.94722"
  },
  {
    "country": "BR",
    "name": "Além Paraíba",
    "lat": "-21.88778",
    "lng": "-42.70444"
  },
  {
    "country": "BR",
    "name": "Alegrete",
    "lat": "-29.78306",
    "lng": "-55.79194"
  },
  {
    "country": "BR",
    "name": "Alegre",
    "lat": "-20.76361",
    "lng": "-41.53306"
  },
  {
    "country": "BR",
    "name": "Alagoinhas",
    "lat": "-12.13556",
    "lng": "-38.41917"
  },
  {
    "country": "BR",
    "name": "Aimorés",
    "lat": "-19.49583",
    "lng": "-41.06389"
  },
  {
    "country": "BR",
    "name": "Águia Branca",
    "lat": "-18.98306",
    "lng": "-40.74028"
  },
  {
    "country": "BR",
    "name": "Agudos",
    "lat": "-22.46917",
    "lng": "-48.9875"
  },
  {
    "country": "BR",
    "name": "Águas Vermelhas",
    "lat": "-15.74722",
    "lng": "-41.46"
  },
  {
    "country": "BR",
    "name": "Águas Formosas",
    "lat": "-17.08222",
    "lng": "-40.93583"
  },
  {
    "country": "BR",
    "name": "Águas de Lindóia",
    "lat": "-22.47639",
    "lng": "-46.63278"
  },
  {
    "country": "BR",
    "name": "Aguaí",
    "lat": "-22.05944",
    "lng": "-46.97861"
  },
  {
    "country": "BR",
    "name": "Afonso Cláudio",
    "lat": "-20.07417",
    "lng": "-41.12389"
  },
  {
    "country": "BR",
    "name": "Adamantina",
    "lat": "-21.68528",
    "lng": "-51.0725"
  },
  {
    "country": "BR",
    "name": "Açucena",
    "lat": "-19.07306",
    "lng": "-42.54639"
  },
  {
    "country": "BR",
    "name": "Acajutiba",
    "lat": "-11.66222",
    "lng": "-38.01722"
  },
  {
    "country": "BR",
    "name": "Abaeté",
    "lat": "-19.16",
    "lng": "-45.44583"
  },
  {
    "country": "BR",
    "name": "Abadiânia",
    "lat": "-16.20417",
    "lng": "-48.70694"
  },
  {
    "country": "BR",
    "name": "Guaíba",
    "lat": "-30.11389",
    "lng": "-51.325"
  },
  {
    "country": "BR",
    "name": "Palmas",
    "lat": "-10.16745",
    "lng": "-48.32766"
  },
  {
    "country": "BR",
    "name": "Pontal do Paraná",
    "lat": "-25.67361",
    "lng": "-48.51111"
  },
  {
    "country": "BR",
    "name": "Uarini",
    "lat": "-2.99",
    "lng": "-65.10833"
  },
  {
    "country": "BR",
    "name": "Tonantins",
    "lat": "-2.87306",
    "lng": "-67.80222"
  },
  {
    "country": "BR",
    "name": "Tefé",
    "lat": "-3.36841",
    "lng": "-64.72054"
  },
  {
    "country": "BR",
    "name": "Marechal Thaumaturgo",
    "lat": "-8.94111",
    "lng": "-72.79167"
  },
  {
    "country": "BR",
    "name": "Tarauacá",
    "lat": "-8.16139",
    "lng": "-70.76556"
  },
  {
    "country": "BR",
    "name": "Tabatinga",
    "lat": "-4.23116",
    "lng": "-69.93858"
  },
  {
    "country": "BR",
    "name": "Sena Madureira",
    "lat": "-9.06341",
    "lng": "-68.67245"
  },
  {
    "country": "BR",
    "name": "São Paulo de Olivença",
    "lat": "-3.37833",
    "lng": "-68.8725"
  },
  {
    "country": "BR",
    "name": "São Gabriel da Cachoeira",
    "lat": "-0.1181",
    "lng": "-67.08527"
  },
  {
    "country": "BR",
    "name": "Santo Antônio do Içá",
    "lat": "-3.10222",
    "lng": "-67.93972"
  },
  {
    "country": "BR",
    "name": "Santa Isabel do Rio Negro",
    "lat": "-0.41389",
    "lng": "-65.01917"
  },
  {
    "country": "BR",
    "name": "Rio Branco",
    "lat": "-9.97472",
    "lng": "-67.81"
  },
  {
    "country": "BR",
    "name": "Porto Walter",
    "lat": "-8.26861",
    "lng": "-72.74389"
  },
  {
    "country": "BR",
    "name": "Porto Velho",
    "lat": "-8.76194",
    "lng": "-63.90389"
  },
  {
    "country": "BR",
    "name": "Pauini",
    "lat": "-7.71361",
    "lng": "-66.97639"
  },
  {
    "country": "BR",
    "name": "Novo Aripuanã",
    "lat": "-5.12056",
    "lng": "-60.37972"
  },
  {
    "country": "BR",
    "name": "Maraã",
    "lat": "-1.82403",
    "lng": "-65.35883"
  },
  {
    "country": "BR",
    "name": "Manoel Urbano",
    "lat": "-8.83889",
    "lng": "-69.25972"
  },
  {
    "country": "BR",
    "name": "Manicoré",
    "lat": "-5.80917",
    "lng": "-61.30028"
  },
  {
    "country": "BR",
    "name": "Mâncio Lima",
    "lat": "-7.61417",
    "lng": "-72.89583"
  },
  {
    "country": "BR",
    "name": "Manaus",
    "lat": "-3.10194",
    "lng": "-60.025"
  },
  {
    "country": "BR",
    "name": "Manaquiri",
    "lat": "-3.31667",
    "lng": "-60.35"
  },
  {
    "country": "BR",
    "name": "Manacapuru",
    "lat": "-3.29972",
    "lng": "-60.62056"
  },
  {
    "country": "BR",
    "name": "Jutaí",
    "lat": "-5.18333",
    "lng": "-68.9"
  },
  {
    "country": "BR",
    "name": "Humaitá",
    "lat": "-7.51651",
    "lng": "-63.03105"
  },
  {
    "country": "BR",
    "name": "Fonte Boa",
    "lat": "-2.51389",
    "lng": "-66.09167"
  },
  {
    "country": "BR",
    "name": "Feijó",
    "lat": "-8.1654",
    "lng": "-70.35486"
  },
  {
    "country": "BR",
    "name": "Envira",
    "lat": "-7.3",
    "lng": "-70.21667"
  },
  {
    "country": "BR",
    "name": "Eirunepé",
    "lat": "-6.66028",
    "lng": "-69.87361"
  },
  {
    "country": "BR",
    "name": "Cruzeiro do Sul",
    "lat": "-7.62759",
    "lng": "-72.67756"
  },
  {
    "country": "BR",
    "name": "Codajás",
    "lat": "-3.83667",
    "lng": "-62.05694"
  },
  {
    "country": "BR",
    "name": "Coari",
    "lat": "-4.085",
    "lng": "-63.14139"
  },
  {
    "country": "BR",
    "name": "Carauari",
    "lat": "-4.88278",
    "lng": "-66.89583"
  },
  {
    "country": "BR",
    "name": "Canutama",
    "lat": "-6.53389",
    "lng": "-64.38306"
  },
  {
    "country": "BR",
    "name": "Boca do Acre",
    "lat": "-8.75222",
    "lng": "-67.39778"
  },
  {
    "country": "BR",
    "name": "Boa Vista",
    "lat": "2.81972",
    "lng": "-60.67333"
  },
  {
    "country": "BR",
    "name": "Benjamin Constant",
    "lat": "-4.37555",
    "lng": "-70.03179"
  },
  {
    "country": "BR",
    "name": "Barcelos",
    "lat": "-0.97357",
    "lng": "-62.9269"
  },
  {
    "country": "BR",
    "name": "Ariquemes",
    "lat": "-9.91333",
    "lng": "-63.04083"
  },
  {
    "country": "BR",
    "name": "Aripuanã",
    "lat": "-9.16667",
    "lng": "-60.63333"
  },
  {
    "country": "BR",
    "name": "Anori",
    "lat": "-3.77278",
    "lng": "-61.64417"
  },
  {
    "country": "BR",
    "name": "Alvarães",
    "lat": "-3.22083",
    "lng": "-64.80417"
  },
  {
    "country": "BR",
    "name": "Iranduba",
    "lat": "-3.28472",
    "lng": "-60.18611"
  },
  {
    "country": "BR",
    "name": "Xapuri",
    "lat": "-10.65167",
    "lng": "-68.50444"
  },
  {
    "country": "BR",
    "name": "Vilhena",
    "lat": "-12.74056",
    "lng": "-60.14583"
  },
  {
    "country": "BR",
    "name": "Senador Guiomard",
    "lat": "-10.1497",
    "lng": "-67.73741"
  },
  {
    "country": "BR",
    "name": "Presidente Médici",
    "lat": "-11.17528",
    "lng": "-61.90139"
  },
  {
    "country": "BR",
    "name": "Pôsto Fiscal Rolim de Moura",
    "lat": "-13.08271",
    "lng": "-62.27726"
  },
  {
    "country": "BR",
    "name": "Plácido de Castro",
    "lat": "-10.33528",
    "lng": "-67.18556"
  },
  {
    "country": "BR",
    "name": "Pimenta Bueno",
    "lat": "-11.6725",
    "lng": "-61.19361"
  },
  {
    "country": "BR",
    "name": "Ouro Preto do Oeste",
    "lat": "-10.74806",
    "lng": "-62.21583"
  },
  {
    "country": "BR",
    "name": "Ji Paraná",
    "lat": "-10.88528",
    "lng": "-61.95167"
  },
  {
    "country": "BR",
    "name": "Jaru",
    "lat": "-10.43889",
    "lng": "-62.46639"
  },
  {
    "country": "BR",
    "name": "Guajará Mirim",
    "lat": "-10.78278",
    "lng": "-65.33944"
  },
  {
    "country": "BR",
    "name": "Cacoal",
    "lat": "-11.43861",
    "lng": "-61.44722"
  },
  {
    "country": "BR",
    "name": "Brasiléia",
    "lat": "-11.01611",
    "lng": "-68.74806"
  },
  {
    "country": "BR",
    "name": "Alta Floresta",
    "lat": "-9.87556",
    "lng": "-56.08611"
  },
  {
    "country": "BR",
    "name": "Aparecida de Goiânia",
    "lat": "-16.82333",
    "lng": "-49.24389"
  },
  {
    "country": "BR",
    "name": "Araguanã",
    "lat": "-2.94639",
    "lng": "-45.66098"
  },
  {
    "country": "BR",
    "name": "Campinas",
    "lat": "-27.59444",
    "lng": "-48.60694"
  },
  {
    "country": "BR",
    "name": "Campo Limpo Paulista",
    "lat": "-23.20639",
    "lng": "-46.78444"
  },
  {
    "country": "BR",
    "name": "Fernando de Noronha (Distrito Estadual)",
    "lat": "-3.84028",
    "lng": "-32.41083"
  },
  {
    "country": "BR",
    "name": "Jaboatão dos Guararapes",
    "lat": "-8.11278",
    "lng": "-35.01472"
  },
  {
    "country": "BR",
    "name": "Lago dos Rodrigues",
    "lat": "-4.61304",
    "lng": "-44.98009"
  },
  {
    "country": "BR",
    "name": "Lauro de Freitas",
    "lat": "-12.89444",
    "lng": "-38.32722"
  },
  {
    "country": "BR",
    "name": "Paulo Ramos",
    "lat": "-4.44389",
    "lng": "-45.24056"
  },
  {
    "country": "BR",
    "name": "Pinhais",
    "lat": "-25.44472",
    "lng": "-49.1925"
  },
  {
    "country": "BR",
    "name": "Portelândia",
    "lat": "-17.35361",
    "lng": "-52.67861"
  },
  {
    "country": "BR",
    "name": "Rio Preto da Eva",
    "lat": "-2.69795",
    "lng": "-59.70172"
  },
  {
    "country": "BR",
    "name": "Simões Filho",
    "lat": "-12.78444",
    "lng": "-38.40389"
  },
  {
    "country": "BR",
    "name": "Sinop",
    "lat": "-11.86417",
    "lng": "-55.5025"
  },
  {
    "country": "BR",
    "name": "Teixeira de Freitas",
    "lat": "-17.535",
    "lng": "-39.74194"
  },
  {
    "country": "BR",
    "name": "Vargem Grande Paulista",
    "lat": "-23.60333",
    "lng": "-47.02639"
  },
  {
    "country": "BR",
    "name": "Cambebba",
    "lat": "-3.62092",
    "lng": "-38.82913"
  },
  {
    "country": "BR",
    "name": "Itacorubi",
    "lat": "-27.58315",
    "lng": "-48.49503"
  },
  {
    "country": "BR",
    "name": "Corrego Grande",
    "lat": "-27.60141",
    "lng": "-48.50593"
  },
  {
    "country": "BR",
    "name": "Santa Monica",
    "lat": "-27.59137",
    "lng": "-48.50756"
  },
  {
    "country": "BR",
    "name": "Carvoeira",
    "lat": "-27.59898",
    "lng": "-48.52618"
  },
  {
    "country": "BR",
    "name": "Trindade",
    "lat": "-27.58612",
    "lng": "-48.52335"
  },
  {
    "country": "BR",
    "name": "Morro da Cruz",
    "lat": "-27.5849",
    "lng": "-48.53562"
  },
  {
    "country": "BR",
    "name": "Saco dos Limoes",
    "lat": "-27.60864",
    "lng": "-48.53605"
  },
  {
    "country": "BR",
    "name": "Pantanal",
    "lat": "-27.60985",
    "lng": "-48.51648"
  },
  {
    "country": "BR",
    "name": "Costeira do Pirajubae",
    "lat": "-27.63586",
    "lng": "-48.5212"
  },
  {
    "country": "BR",
    "name": "Carianos",
    "lat": "-27.66088",
    "lng": "-48.54318"
  },
  {
    "country": "BR",
    "name": "Tapera",
    "lat": "-27.68528",
    "lng": "-48.55124"
  },
  {
    "country": "BR",
    "name": "Freguesia do Ribeirao da Ilha",
    "lat": "-27.71773",
    "lng": "-48.56266"
  },
  {
    "country": "BR",
    "name": "Atins",
    "lat": "-2.57017",
    "lng": "-42.74229"
  },
  {
    "country": "BR",
    "name": "Residencia Moacir PU5BHV",
    "lat": "-26.90967",
    "lng": "-49.36547"
  },
  {
    "country": "BR",
    "name": "Beira Rio",
    "lat": "-12.25438",
    "lng": "-42.75529"
  },
  {
    "country": "BR",
    "name": "Butia Inferior",
    "lat": "-28.07115",
    "lng": "-54.88533"
  },
  {
    "country": "BR",
    "name": "Nova Olina do Marnhao",
    "lat": "-2.84206",
    "lng": "-45.69789"
  },
  {
    "country": "BR",
    "name": "Planaltina",
    "lat": "-15.61791",
    "lng": "-47.64874"
  },
  {
    "country": "BR",
    "name": "Câmara dos Deputados",
    "lat": "-15.80012",
    "lng": "-47.86432"
  },
  {
    "country": "BS",
    "name": "West End",
    "lat": "26.68711",
    "lng": "-78.97702"
  },
  {
    "country": "BS",
    "name": "Spanish Wells",
    "lat": "25.54717",
    "lng": "-76.76405"
  },
  {
    "country": "BS",
    "name": "San Andros",
    "lat": "25.06667",
    "lng": "-78.05"
  },
  {
    "country": "BS",
    "name": "Port Nelson",
    "lat": "23.64967",
    "lng": "-74.84157"
  },
  {
    "country": "BS",
    "name": "Nassau",
    "lat": "25.05823",
    "lng": "-77.34306"
  },
  {
    "country": "BS",
    "name": "Matthew Town",
    "lat": "20.94982",
    "lng": "-73.67346"
  },
  {
    "country": "BS",
    "name": "Masons Bay",
    "lat": "22.54352",
    "lng": "-73.8778"
  },
  {
    "country": "BS",
    "name": "Marsh Harbour",
    "lat": "26.54124",
    "lng": "-77.0636"
  },
  {
    "country": "BS",
    "name": "Lucaya",
    "lat": "26.53333",
    "lng": "-78.66667"
  },
  {
    "country": "BS",
    "name": "High Rock",
    "lat": "26.60999",
    "lng": "-78.27863"
  },
  {
    "country": "BS",
    "name": "Hard Bargain",
    "lat": "26.31667",
    "lng": "-77.56667"
  },
  {
    "country": "BS",
    "name": "Governor’s Harbour",
    "lat": "25.16667",
    "lng": "-76.23333"
  },
  {
    "country": "BS",
    "name": "George Town",
    "lat": "23.51616",
    "lng": "-75.78665"
  },
  {
    "country": "BS",
    "name": "Freeport",
    "lat": "26.53333",
    "lng": "-78.7"
  },
  {
    "country": "BS",
    "name": "Dunmore Town",
    "lat": "25.50216",
    "lng": "-76.63633"
  },
  {
    "country": "BS",
    "name": "Duncan Town",
    "lat": "22.19083",
    "lng": "-75.72583"
  },
  {
    "country": "BS",
    "name": "Cooper’s Town",
    "lat": "26.87137",
    "lng": "-77.51131"
  },
  {
    "country": "BS",
    "name": "Colonel Hill",
    "lat": "22.7545",
    "lng": "-74.20415"
  },
  {
    "country": "BS",
    "name": "Cockburn Town",
    "lat": "24.05179",
    "lng": "-74.53138"
  },
  {
    "country": "BS",
    "name": "Clarence Town",
    "lat": "23.1",
    "lng": "-74.98333"
  },
  {
    "country": "BS",
    "name": "Black Point",
    "lat": "24.1",
    "lng": "-76.38333"
  },
  {
    "country": "BS",
    "name": "Arthur’s Town",
    "lat": "24.6224",
    "lng": "-75.67151"
  },
  {
    "country": "BS",
    "name": "Andros Town",
    "lat": "24.70502",
    "lng": "-77.76912"
  },
  {
    "country": "BS",
    "name": "Alice Town",
    "lat": "25.728",
    "lng": "-79.29721"
  },
  {
    "country": "BS",
    "name": "Abraham’s Bay",
    "lat": "22.36667",
    "lng": "-72.96667"
  },
  {
    "country": "BT",
    "name": "Wangdue Phodrang",
    "lat": "27.48615",
    "lng": "89.89915"
  },
  {
    "country": "BT",
    "name": "Trongsa",
    "lat": "27.5026",
    "lng": "90.50716"
  },
  {
    "country": "BT",
    "name": "Thimphu",
    "lat": "27.46609",
    "lng": "89.64191"
  },
  {
    "country": "BT",
    "name": "Trashi Yangtse",
    "lat": "27.6116",
    "lng": "91.498"
  },
  {
    "country": "BT",
    "name": "Trashigang",
    "lat": "27.3331",
    "lng": "91.55424"
  },
  {
    "country": "BT",
    "name": "Daga",
    "lat": "27.07529",
    "lng": "89.87688"
  },
  {
    "country": "BT",
    "name": "Shemgang",
    "lat": "27.21689",
    "lng": "90.65793"
  },
  {
    "country": "BT",
    "name": "Sarpang",
    "lat": "26.86395",
    "lng": "90.26745"
  },
  {
    "country": "BT",
    "name": "Punākha",
    "lat": "27.59137",
    "lng": "89.87743"
  },
  {
    "country": "BT",
    "name": "Phuntsholing",
    "lat": "26.85164",
    "lng": "89.38837"
  },
  {
    "country": "BT",
    "name": "Paro",
    "lat": "27.4305",
    "lng": "89.41334"
  },
  {
    "country": "BT",
    "name": "Pajo",
    "lat": "27.53333",
    "lng": "89.88333"
  },
  {
    "country": "BT",
    "name": "Mongar",
    "lat": "27.27471",
    "lng": "91.23963"
  },
  {
    "country": "BT",
    "name": "Lhuentse",
    "lat": "27.66787",
    "lng": "91.18393"
  },
  {
    "country": "BT",
    "name": "Ha",
    "lat": "27.38747",
    "lng": "89.28074"
  },
  {
    "country": "BT",
    "name": "Gasa",
    "lat": "27.90372",
    "lng": "89.72689"
  },
  {
    "country": "BT",
    "name": "Daphu",
    "lat": "26.96667",
    "lng": "89.38333"
  },
  {
    "country": "BT",
    "name": "Tsirang",
    "lat": "27.0219",
    "lng": "90.12291"
  },
  {
    "country": "BT",
    "name": "Tsimasham",
    "lat": "27.0989",
    "lng": "89.53604"
  },
  {
    "country": "BT",
    "name": "Jakar",
    "lat": "27.54918",
    "lng": "90.7525"
  },
  {
    "country": "BT",
    "name": "Panbang",
    "lat": "26.86667",
    "lng": "90.98333"
  },
  {
    "country": "BT",
    "name": "Samtse",
    "lat": "26.89903",
    "lng": "89.09951"
  },
  {
    "country": "BT",
    "name": "Pemagatshel",
    "lat": "27.03795",
    "lng": "91.40305"
  },
  {
    "country": "BT",
    "name": "Samdrup Jongkhar",
    "lat": "26.80069",
    "lng": "91.50519"
  },
  {
    "country": "BT",
    "name": "Lungtenzampa",
    "lat": "27.46821",
    "lng": "89.64441"
  },
  {
    "country": "BW",
    "name": "Werda",
    "lat": "-25.26667",
    "lng": "23.28333"
  },
  {
    "country": "BW",
    "name": "Tshabong",
    "lat": "-26.05",
    "lng": "22.45"
  },
  {
    "country": "BW",
    "name": "Tsau",
    "lat": "-20.15",
    "lng": "22.45"
  },
  {
    "country": "BW",
    "name": "Tonota",
    "lat": "-21.44236",
    "lng": "27.46153"
  },
  {
    "country": "BW",
    "name": "Tobane",
    "lat": "-21.95",
    "lng": "27.9"
  },
  {
    "country": "BW",
    "name": "Thamaga",
    "lat": "-24.67014",
    "lng": "25.53975"
  },
  {
    "country": "BW",
    "name": "Tamasane",
    "lat": "-22.4184",
    "lng": "27.40127"
  },
  {
    "country": "BW",
    "name": "Sua",
    "lat": "-20.05",
    "lng": "26.2"
  },
  {
    "country": "BW",
    "name": "Shakawe",
    "lat": "-18.36536",
    "lng": "21.84219"
  },
  {
    "country": "BW",
    "name": "Serowe",
    "lat": "-22.38754",
    "lng": "26.71077"
  },
  {
    "country": "BW",
    "name": "Selebi-Phikwe",
    "lat": "-21.97895",
    "lng": "27.84296"
  },
  {
    "country": "BW",
    "name": "Sekoma",
    "lat": "-24.4",
    "lng": "23.88333"
  },
  {
    "country": "BW",
    "name": "Sehithwa",
    "lat": "-20.46667",
    "lng": "22.71667"
  },
  {
    "country": "BW",
    "name": "Sefophe",
    "lat": "-22.18333",
    "lng": "27.96667"
  },
  {
    "country": "BW",
    "name": "Sebina",
    "lat": "-20.86667",
    "lng": "27.25"
  },
  {
    "country": "BW",
    "name": "Ratholo",
    "lat": "-22.72454",
    "lng": "27.57199"
  },
  {
    "country": "BW",
    "name": "Ramotswa",
    "lat": "-24.87158",
    "lng": "25.86989"
  },
  {
    "country": "BW",
    "name": "Ramokgonami",
    "lat": "-22.8645",
    "lng": "27.42391"
  },
  {
    "country": "BW",
    "name": "Rakops",
    "lat": "-21.02257",
    "lng": "24.36052"
  },
  {
    "country": "BW",
    "name": "Pilikwe",
    "lat": "-22.79904",
    "lng": "27.19376"
  },
  {
    "country": "BW",
    "name": "Pilane",
    "lat": "-24.45",
    "lng": "26.13333"
  },
  {
    "country": "BW",
    "name": "Pandamatenga",
    "lat": "-18.52779",
    "lng": "25.62698"
  },
  {
    "country": "BW",
    "name": "Palapye",
    "lat": "-22.54605",
    "lng": "27.12507"
  },
  {
    "country": "BW",
    "name": "Otse",
    "lat": "-25.01667",
    "lng": "25.73333"
  },
  {
    "country": "BW",
    "name": "Orapa",
    "lat": "-21.3115",
    "lng": "25.37642"
  },
  {
    "country": "BW",
    "name": "Nokaneng",
    "lat": "-19.66667",
    "lng": "22.26667"
  },
  {
    "country": "BW",
    "name": "Nata",
    "lat": "-20.21667",
    "lng": "26.18333"
  },
  {
    "country": "BW",
    "name": "Mosopa",
    "lat": "-24.7718",
    "lng": "25.42156"
  },
  {
    "country": "BW",
    "name": "Mosetse",
    "lat": "-20.75",
    "lng": "26.65"
  },
  {
    "country": "BW",
    "name": "Mopipi",
    "lat": "-21.18333",
    "lng": "24.88333"
  },
  {
    "country": "BW",
    "name": "Mookane",
    "lat": "-23.68805",
    "lng": "26.65948"
  },
  {
    "country": "BW",
    "name": "Maunatlala",
    "lat": "-22.59701",
    "lng": "27.63006"
  },
  {
    "country": "BW",
    "name": "Molepolole",
    "lat": "-24.40659",
    "lng": "25.49508"
  },
  {
    "country": "BW",
    "name": "Makobeng",
    "lat": "-22.99637",
    "lng": "27.66766"
  },
  {
    "country": "BW",
    "name": "Moijabana",
    "lat": "-22.43333",
    "lng": "26.41667"
  },
  {
    "country": "BW",
    "name": "Mogoditshane",
    "lat": "-24.62694",
    "lng": "25.86556"
  },
  {
    "country": "BW",
    "name": "Mogapinyana",
    "lat": "-22.36667",
    "lng": "27.6"
  },
  {
    "country": "BW",
    "name": "Mogapi",
    "lat": "-22.32301",
    "lng": "27.83492"
  },
  {
    "country": "BW",
    "name": "Mochudi",
    "lat": "-24.41667",
    "lng": "26.15"
  },
  {
    "country": "BW",
    "name": "Mmathubudukwane",
    "lat": "-24.6",
    "lng": "26.43333"
  },
  {
    "country": "BW",
    "name": "Maun",
    "lat": "-19.98333",
    "lng": "23.41667"
  },
  {
    "country": "BW",
    "name": "Mathakola",
    "lat": "-22.72125",
    "lng": "27.31057"
  },
  {
    "country": "BW",
    "name": "Mathathane",
    "lat": "-22.26875",
    "lng": "28.74946"
  },
  {
    "country": "BW",
    "name": "Mathambgwane",
    "lat": "-20.99075",
    "lng": "27.33158"
  },
  {
    "country": "BW",
    "name": "Masunga",
    "lat": "-20.62455",
    "lng": "27.44875"
  },
  {
    "country": "BW",
    "name": "Manyana",
    "lat": "-23.4",
    "lng": "21.71667"
  },
  {
    "country": "BW",
    "name": "Makwata",
    "lat": "-23.28333",
    "lng": "27.3"
  },
  {
    "country": "BW",
    "name": "Makoba",
    "lat": "-23.48333",
    "lng": "27.11667"
  },
  {
    "country": "BW",
    "name": "Makaleng",
    "lat": "-20.9",
    "lng": "27.28333"
  },
  {
    "country": "BW",
    "name": "Mahalapye",
    "lat": "-23.10407",
    "lng": "26.81421"
  },
  {
    "country": "BW",
    "name": "Magothla",
    "lat": "-23.56667",
    "lng": "27"
  },
  {
    "country": "BW",
    "name": "Machaneng",
    "lat": "-23.18621",
    "lng": "27.48856"
  },
  {
    "country": "BW",
    "name": "Mabuli",
    "lat": "-25.78333",
    "lng": "24.6"
  },
  {
    "country": "BW",
    "name": "Maapi",
    "lat": "-22.75785",
    "lng": "27.35001"
  },
  {
    "country": "BW",
    "name": "Lokwabe",
    "lat": "-24.16667",
    "lng": "21.83333"
  },
  {
    "country": "BW",
    "name": "Lobatse",
    "lat": "-25.22435",
    "lng": "25.67728"
  },
  {
    "country": "BW",
    "name": "Letlhakeng",
    "lat": "-24.09442",
    "lng": "25.02977"
  },
  {
    "country": "BW",
    "name": "Letlhakane",
    "lat": "-21.41494",
    "lng": "25.59263"
  },
  {
    "country": "BW",
    "name": "Lenchwe Le Tau",
    "lat": "-24.38333",
    "lng": "25.85"
  },
  {
    "country": "BW",
    "name": "Lehututu",
    "lat": "-23.96667",
    "lng": "21.86667"
  },
  {
    "country": "BW",
    "name": "Letsheng",
    "lat": "-22.66384",
    "lng": "27.2239"
  },
  {
    "country": "BW",
    "name": "Kurametsi",
    "lat": "-23.4",
    "lng": "27.06667"
  },
  {
    "country": "BW",
    "name": "Kopong",
    "lat": "-24.48333",
    "lng": "25.88333"
  },
  {
    "country": "BW",
    "name": "Khudumelapye",
    "lat": "-23.88333",
    "lng": "24.75"
  },
  {
    "country": "BW",
    "name": "Khakhea",
    "lat": "-24.68954",
    "lng": "23.49403"
  },
  {
    "country": "BW",
    "name": "Kasane",
    "lat": "-17.81667",
    "lng": "25.15"
  },
  {
    "country": "BW",
    "name": "Kanye",
    "lat": "-24.96675",
    "lng": "25.33273"
  },
  {
    "country": "BW",
    "name": "Kang",
    "lat": "-23.67518",
    "lng": "22.78762"
  },
  {
    "country": "BW",
    "name": "Kalamare",
    "lat": "-22.93369",
    "lng": "26.57032"
  },
  {
    "country": "BW",
    "name": "Janeng",
    "lat": "-25.41667",
    "lng": "25.55"
  },
  {
    "country": "BW",
    "name": "Hukuntsi",
    "lat": "-23.9988",
    "lng": "21.77962"
  },
  {
    "country": "BW",
    "name": "Gweta",
    "lat": "-20.18333",
    "lng": "25.23333"
  },
  {
    "country": "BW",
    "name": "Gobojango",
    "lat": "-21.8327",
    "lng": "28.72882"
  },
  {
    "country": "BW",
    "name": "Ghanzi",
    "lat": "-21.69785",
    "lng": "21.64581"
  },
  {
    "country": "BW",
    "name": "Gaborone",
    "lat": "-24.65451",
    "lng": "25.90859"
  },
  {
    "country": "BW",
    "name": "Gabane",
    "lat": "-24.66667",
    "lng": "25.78222"
  },
  {
    "country": "BW",
    "name": "Francistown",
    "lat": "-21.16995",
    "lng": "27.50787"
  },
  {
    "country": "BW",
    "name": "Dutlwe",
    "lat": "-23.98333",
    "lng": "23.9"
  },
  {
    "country": "BW",
    "name": "Dukwe",
    "lat": "-20.58333",
    "lng": "26.41667"
  },
  {
    "country": "BW",
    "name": "Dekar",
    "lat": "-21.53333",
    "lng": "21.93333"
  },
  {
    "country": "BW",
    "name": "Botlhapatlou",
    "lat": "-24.02591",
    "lng": "25.48976"
  },
  {
    "country": "BW",
    "name": "Bokaa",
    "lat": "-24.45",
    "lng": "26.01667"
  },
  {
    "country": "BW",
    "name": "Gaphatshwe",
    "lat": "-24.57389",
    "lng": "25.83417"
  },
  {
    "country": "BW",
    "name": "Metsemotlhaba",
    "lat": "-24.55139",
    "lng": "25.80306"
  },
  {
    "country": "BW",
    "name": "Mmopone",
    "lat": "-24.56694",
    "lng": "25.87417"
  },
  {
    "country": "BW",
    "name": "Nkoyaphiri",
    "lat": "-24.63222",
    "lng": "25.83139"
  },
  {
    "country": "BY",
    "name": "Indura",
    "lat": "53.4605",
    "lng": "23.8823"
  },
  {
    "country": "BY",
    "name": "Skidal’",
    "lat": "53.5904",
    "lng": "24.2478"
  },
  {
    "country": "BY",
    "name": "Znamenka",
    "lat": "51.88168",
    "lng": "23.65545"
  },
  {
    "country": "BY",
    "name": "Horad Zhodzina",
    "lat": "54.0985",
    "lng": "28.3331"
  },
  {
    "country": "BY",
    "name": "Zhlobin",
    "lat": "52.8926",
    "lng": "30.024"
  },
  {
    "country": "BY",
    "name": "Zhytkavichy",
    "lat": "52.2168",
    "lng": "27.8561"
  },
  {
    "country": "BY",
    "name": "Zhyrovichy",
    "lat": "53.0131",
    "lng": "25.3443"
  },
  {
    "country": "BY",
    "name": "Zhaludok",
    "lat": "53.5974",
    "lng": "24.9828"
  },
  {
    "country": "BY",
    "name": "Zhdanovichy",
    "lat": "53.9432",
    "lng": "27.425"
  },
  {
    "country": "BY",
    "name": "Zhabinka",
    "lat": "52.1984",
    "lng": "24.0115"
  },
  {
    "country": "BY",
    "name": "Zyembin",
    "lat": "54.3579",
    "lng": "28.2207"
  },
  {
    "country": "BY",
    "name": "Zel’va",
    "lat": "53.1504",
    "lng": "24.8153"
  },
  {
    "country": "BY",
    "name": "Zaslawye",
    "lat": "54.0114",
    "lng": "27.2695"
  },
  {
    "country": "BY",
    "name": "Zamostochcha",
    "lat": "53.8198",
    "lng": "27.8685"
  },
  {
    "country": "BY",
    "name": "Yel’sk",
    "lat": "51.8141",
    "lng": "29.1522"
  },
  {
    "country": "BY",
    "name": "Yalizava",
    "lat": "53.3994",
    "lng": "29.0048"
  },
  {
    "country": "BY",
    "name": "Vysokaye",
    "lat": "52.37091",
    "lng": "23.37083"
  },
  {
    "country": "BY",
    "name": "Voranava",
    "lat": "54.1492",
    "lng": "25.3112"
  },
  {
    "country": "BY",
    "name": "Vitebsk",
    "lat": "55.1904",
    "lng": "30.2049"
  },
  {
    "country": "BY",
    "name": "Vishow",
    "lat": "53.9805",
    "lng": "29.9925"
  },
  {
    "country": "BY",
    "name": "Vishnyeva",
    "lat": "54.7102",
    "lng": "26.5228"
  },
  {
    "country": "BY",
    "name": "Vilyeyka",
    "lat": "54.4914",
    "lng": "26.9111"
  },
  {
    "country": "BY",
    "name": "Vidzy",
    "lat": "55.3945",
    "lng": "26.6305"
  },
  {
    "country": "BY",
    "name": "Veyno",
    "lat": "53.83333",
    "lng": "30.38333"
  },
  {
    "country": "BY",
    "name": "Vyetka",
    "lat": "52.5591",
    "lng": "31.1794"
  },
  {
    "country": "BY",
    "name": "Vyerkhnyadzvinsk",
    "lat": "55.7777",
    "lng": "27.9389"
  },
  {
    "country": "BY",
    "name": "Vawkavysk",
    "lat": "53.1561",
    "lng": "24.4513"
  },
  {
    "country": "BY",
    "name": "Vasilyevichy",
    "lat": "52.2512",
    "lng": "29.8288"
  },
  {
    "country": "BY",
    "name": "Valozhyn",
    "lat": "54.0892",
    "lng": "26.5266"
  },
  {
    "country": "BY",
    "name": "Uzda",
    "lat": "53.4627",
    "lng": "27.2137"
  },
  {
    "country": "BY",
    "name": "Ushachy",
    "lat": "55.179",
    "lng": "28.6158"
  },
  {
    "country": "BY",
    "name": "Urechcha",
    "lat": "52.9479",
    "lng": "27.893"
  },
  {
    "country": "BY",
    "name": "Turaw",
    "lat": "52.0683",
    "lng": "27.735"
  },
  {
    "country": "BY",
    "name": "Talachyn",
    "lat": "54.4087",
    "lng": "29.6955"
  },
  {
    "country": "BY",
    "name": "Tsimkavichy",
    "lat": "53.0672",
    "lng": "26.9902"
  },
  {
    "country": "BY",
    "name": "Tsyelyakhany",
    "lat": "52.5175",
    "lng": "25.8429"
  },
  {
    "country": "BY",
    "name": "Svislach",
    "lat": "53.0368",
    "lng": "24.0957"
  },
  {
    "country": "BY",
    "name": "Svir",
    "lat": "54.8517",
    "lng": "26.395"
  },
  {
    "country": "BY",
    "name": "Svyetlahorsk",
    "lat": "52.6329",
    "lng": "29.7389"
  },
  {
    "country": "BY",
    "name": "Stowbtsy",
    "lat": "53.4785",
    "lng": "26.7434"
  },
  {
    "country": "BY",
    "name": "Stolin",
    "lat": "51.89115",
    "lng": "26.84597"
  },
  {
    "country": "BY",
    "name": "Staryya Darohi",
    "lat": "53.0402",
    "lng": "28.267"
  },
  {
    "country": "BY",
    "name": "Starobin",
    "lat": "52.7267",
    "lng": "27.4606"
  },
  {
    "country": "BY",
    "name": "Stan’kava",
    "lat": "53.6292",
    "lng": "27.229"
  },
  {
    "country": "BY",
    "name": "Sasnovy Bor",
    "lat": "52.5194",
    "lng": "29.5988"
  },
  {
    "country": "BY",
    "name": "Sapotskin",
    "lat": "53.8329",
    "lng": "23.6598"
  },
  {
    "country": "BY",
    "name": "Soly",
    "lat": "54.51301",
    "lng": "26.19381"
  },
  {
    "country": "BY",
    "name": "Snow",
    "lat": "53.2201",
    "lng": "26.401"
  },
  {
    "country": "BY",
    "name": "Smarhon’",
    "lat": "54.4798",
    "lng": "26.3957"
  },
  {
    "country": "BY",
    "name": "Horad Smalyavichy",
    "lat": "54.0249",
    "lng": "28.0894"
  },
  {
    "country": "BY",
    "name": "Smilavichy",
    "lat": "53.7496",
    "lng": "28.0115"
  },
  {
    "country": "BY",
    "name": "Slutsk",
    "lat": "53.0274",
    "lng": "27.5597"
  },
  {
    "country": "BY",
    "name": "Slonim",
    "lat": "53.0869",
    "lng": "25.3163"
  },
  {
    "country": "BY",
    "name": "Slabada",
    "lat": "54.0087",
    "lng": "27.8866"
  },
  {
    "country": "BY",
    "name": "Slawharad",
    "lat": "53.4429",
    "lng": "31.0014"
  },
  {
    "country": "BY",
    "name": "Shklow",
    "lat": "54.2131",
    "lng": "30.2877"
  },
  {
    "country": "BY",
    "name": "Shchuchyn",
    "lat": "53.6014",
    "lng": "24.7465"
  },
  {
    "country": "BY",
    "name": "Sharkawshchyna",
    "lat": "55.3689",
    "lng": "27.4686"
  },
  {
    "country": "BY",
    "name": "Syanno",
    "lat": "54.8108",
    "lng": "29.7086"
  },
  {
    "country": "BY",
    "name": "Syenitsa",
    "lat": "53.8313",
    "lng": "27.5343"
  },
  {
    "country": "BY",
    "name": "Syomkava",
    "lat": "54.0101",
    "lng": "27.441"
  },
  {
    "country": "BY",
    "name": "Sarachy",
    "lat": "52.7867",
    "lng": "28.0186"
  },
  {
    "country": "BY",
    "name": "Samakhvalavichy",
    "lat": "53.7396",
    "lng": "27.5037"
  },
  {
    "country": "BY",
    "name": "Salihorsk",
    "lat": "52.7876",
    "lng": "27.5415"
  },
  {
    "country": "BY",
    "name": "Ruzhany",
    "lat": "52.86322",
    "lng": "24.89357"
  },
  {
    "country": "BY",
    "name": "Rudzyensk",
    "lat": "53.5983",
    "lng": "27.8621"
  },
  {
    "country": "BY",
    "name": "Rasony",
    "lat": "55.9058",
    "lng": "28.8135"
  },
  {
    "country": "BY",
    "name": "Ros’",
    "lat": "53.2858",
    "lng": "24.4128"
  },
  {
    "country": "BY",
    "name": "Rahachow",
    "lat": "53.0934",
    "lng": "30.0495"
  },
  {
    "country": "BY",
    "name": "Rechytsa",
    "lat": "52.3617",
    "lng": "30.3916"
  },
  {
    "country": "BY",
    "name": "Rakaw",
    "lat": "53.9674",
    "lng": "27.0562"
  },
  {
    "country": "BY",
    "name": "Radashkovichy",
    "lat": "54.1554",
    "lng": "27.2412"
  },
  {
    "country": "BY",
    "name": "Pukhavichy",
    "lat": "53.5297",
    "lng": "28.2467"
  },
  {
    "country": "BY",
    "name": "Pruzhany",
    "lat": "52.556",
    "lng": "24.4573"
  },
  {
    "country": "BY",
    "name": "Prawdzinski",
    "lat": "53.5248",
    "lng": "27.8303"
  },
  {
    "country": "BY",
    "name": "Polatsk",
    "lat": "55.4879",
    "lng": "28.7856"
  },
  {
    "country": "BY",
    "name": "Plyeshchanitsy",
    "lat": "54.4235",
    "lng": "27.8301"
  },
  {
    "country": "BY",
    "name": "Pinsk",
    "lat": "52.1229",
    "lng": "26.0951"
  },
  {
    "country": "BY",
    "name": "Pyatryshki",
    "lat": "54.0686",
    "lng": "27.2179"
  },
  {
    "country": "BY",
    "name": "Pyetrykaw",
    "lat": "52.1289",
    "lng": "28.4921"
  },
  {
    "country": "BY",
    "name": "Pastavy",
    "lat": "55.11676",
    "lng": "26.83263"
  },
  {
    "country": "BY",
    "name": "Parychy",
    "lat": "52.8042",
    "lng": "29.4176"
  },
  {
    "country": "BY",
    "name": "Azyartso",
    "lat": "53.8397",
    "lng": "27.3917"
  },
  {
    "country": "BY",
    "name": "Osveya",
    "lat": "56.0147",
    "lng": "28.11049"
  },
  {
    "country": "BY",
    "name": "Astravyets",
    "lat": "54.61378",
    "lng": "25.95537"
  },
  {
    "country": "BY",
    "name": "Astrashytski Haradok",
    "lat": "54.0651",
    "lng": "27.695"
  },
  {
    "country": "BY",
    "name": "Asnyezhytsy",
    "lat": "52.1891",
    "lng": "26.1299"
  },
  {
    "country": "BY",
    "name": "Asipovichy",
    "lat": "53.3011",
    "lng": "28.6386"
  },
  {
    "country": "BY",
    "name": "Orsha",
    "lat": "54.5081",
    "lng": "30.4172"
  },
  {
    "country": "BY",
    "name": "Aktsyabrski",
    "lat": "52.644",
    "lng": "28.8801"
  },
  {
    "country": "BY",
    "name": "Novy Svyerzhan’",
    "lat": "53.4542",
    "lng": "26.7301"
  },
  {
    "country": "BY",
    "name": "Kadino",
    "lat": "53.88389",
    "lng": "30.52028"
  },
  {
    "country": "BY",
    "name": "Novoye Medvezhino",
    "lat": "53.88333",
    "lng": "27.45"
  },
  {
    "country": "BY",
    "name": "Novosel’ye",
    "lat": "53.9162",
    "lng": "27.2009"
  },
  {
    "country": "BY",
    "name": "Novolukoml’",
    "lat": "54.66192",
    "lng": "29.15016"
  },
  {
    "country": "BY",
    "name": "Novaya Huta",
    "lat": "52.1032",
    "lng": "30.9837"
  },
  {
    "country": "BY",
    "name": "Nasilava",
    "lat": "54.30441",
    "lng": "26.78209"
  },
  {
    "country": "BY",
    "name": "Nyasvizh",
    "lat": "53.2189",
    "lng": "26.6779"
  },
  {
    "country": "BY",
    "name": "Nyakhachava",
    "lat": "52.644",
    "lng": "25.2027"
  },
  {
    "country": "BY",
    "name": "Navapolatsk",
    "lat": "55.5318",
    "lng": "28.5987"
  },
  {
    "country": "BY",
    "name": "Navahrudak",
    "lat": "53.5942",
    "lng": "25.8191"
  },
  {
    "country": "BY",
    "name": "Narowlya",
    "lat": "51.7961",
    "lng": "29.5004"
  },
  {
    "country": "BY",
    "name": "Narach",
    "lat": "54.9102",
    "lng": "26.708"
  },
  {
    "country": "BY",
    "name": "Narach",
    "lat": "54.5652",
    "lng": "26.7314"
  },
  {
    "country": "BY",
    "name": "Myshkavichy",
    "lat": "53.2172",
    "lng": "29.512"
  },
  {
    "country": "BY",
    "name": "Myadzyel",
    "lat": "54.8789",
    "lng": "26.9371"
  },
  {
    "country": "BY",
    "name": "Mstsislaw",
    "lat": "54.0185",
    "lng": "31.7217"
  },
  {
    "country": "BY",
    "name": "Motal’",
    "lat": "52.3138",
    "lng": "25.6072"
  },
  {
    "country": "BY",
    "name": "Mosar",
    "lat": "55.2232",
    "lng": "27.4609"
  },
  {
    "country": "BY",
    "name": "Mir",
    "lat": "53.4544",
    "lng": "26.467"
  },
  {
    "country": "BY",
    "name": "Myory",
    "lat": "55.6222",
    "lng": "27.6281"
  },
  {
    "country": "BY",
    "name": "Minsk",
    "lat": "53.9",
    "lng": "27.56667"
  },
  {
    "country": "BY",
    "name": "Mikashevichy",
    "lat": "52.2173",
    "lng": "27.476"
  },
  {
    "country": "BY",
    "name": "Myazhysyatki",
    "lat": "53.7776",
    "lng": "30.1765"
  },
  {
    "country": "BY",
    "name": "Mazyr",
    "lat": "52.0495",
    "lng": "29.2456"
  },
  {
    "country": "BY",
    "name": "Mosty",
    "lat": "53.4122",
    "lng": "24.5387"
  },
  {
    "country": "BY",
    "name": "Mar’’ina Horka",
    "lat": "53.509",
    "lng": "28.147"
  },
  {
    "country": "BY",
    "name": "Malaryta",
    "lat": "51.7905",
    "lng": "24.074"
  },
  {
    "country": "BY",
    "name": "Maladzyechna",
    "lat": "54.3167",
    "lng": "26.854"
  },
  {
    "country": "BY",
    "name": "Mahilyow",
    "lat": "53.9168",
    "lng": "30.3449"
  },
  {
    "country": "BY",
    "name": "Machulishchy",
    "lat": "53.7788",
    "lng": "27.5948"
  },
  {
    "country": "BY",
    "name": "Lyubcha",
    "lat": "53.7522",
    "lng": "26.0603"
  },
  {
    "country": "BY",
    "name": "Lyuban’",
    "lat": "52.7985",
    "lng": "28.0048"
  },
  {
    "country": "BY",
    "name": "Lyntupy",
    "lat": "55.0516",
    "lng": "26.3103"
  },
  {
    "country": "BY",
    "name": "Lyepyel’",
    "lat": "54.8814",
    "lng": "28.699"
  },
  {
    "country": "BY",
    "name": "Lyakhavichy",
    "lat": "53.0388",
    "lng": "26.2656"
  },
  {
    "country": "BY",
    "name": "Luninyets",
    "lat": "52.2472",
    "lng": "26.8047"
  },
  {
    "country": "BY",
    "name": "Luhavaya Slabada",
    "lat": "53.7823",
    "lng": "27.8434"
  },
  {
    "country": "BY",
    "name": "Loyew",
    "lat": "51.9458",
    "lng": "30.7953"
  },
  {
    "country": "BY",
    "name": "Loshnitsa",
    "lat": "54.2796",
    "lng": "28.7649"
  },
  {
    "country": "BY",
    "name": "Lahoysk",
    "lat": "54.2064",
    "lng": "27.8512"
  },
  {
    "country": "BY",
    "name": "Lyozna",
    "lat": "55.0247",
    "lng": "30.797"
  },
  {
    "country": "BY",
    "name": "Lida",
    "lat": "53.88333",
    "lng": "25.29972"
  },
  {
    "country": "BY",
    "name": "Lyel’chytsy",
    "lat": "51.7862",
    "lng": "28.3288"
  },
  {
    "country": "BY",
    "name": "Lahishyn",
    "lat": "52.339",
    "lng": "25.9867"
  },
  {
    "country": "BY",
    "name": "Krychaw",
    "lat": "53.7125",
    "lng": "31.717"
  },
  {
    "country": "BY",
    "name": "Krupki",
    "lat": "54.3178",
    "lng": "29.1374"
  },
  {
    "country": "BY",
    "name": "Kruhlaye",
    "lat": "54.2497",
    "lng": "29.7968"
  },
  {
    "country": "BY",
    "name": "Kryvichy",
    "lat": "54.7132",
    "lng": "27.2886"
  },
  {
    "country": "BY",
    "name": "Kreva",
    "lat": "54.3118",
    "lng": "26.2916"
  },
  {
    "country": "BY",
    "name": "Krasnyy Bereg",
    "lat": "53.3291",
    "lng": "30.1929"
  },
  {
    "country": "BY",
    "name": "Krasnaye",
    "lat": "54.2438",
    "lng": "27.0758"
  },
  {
    "country": "BY",
    "name": "Krasnasyel’ski",
    "lat": "53.2645",
    "lng": "24.4301"
  },
  {
    "country": "BY",
    "name": "Krasnapollye",
    "lat": "53.3353",
    "lng": "31.3999"
  },
  {
    "country": "BY",
    "name": "Chyrvonaya Slabada",
    "lat": "52.8522",
    "lng": "27.1698"
  },
  {
    "country": "BY",
    "name": "Kastsyukowka",
    "lat": "52.5387",
    "lng": "30.9173"
  },
  {
    "country": "BY",
    "name": "Kastsyukovichy",
    "lat": "53.3525",
    "lng": "32.0514"
  },
  {
    "country": "BY",
    "name": "Kosava",
    "lat": "52.7583",
    "lng": "25.1554"
  },
  {
    "country": "BY",
    "name": "Korolëv Stan",
    "lat": "53.9865",
    "lng": "27.7982"
  },
  {
    "country": "BY",
    "name": "Karma",
    "lat": "53.1301",
    "lng": "30.8016"
  },
  {
    "country": "BY",
    "name": "Karanyowka",
    "lat": "52.3506",
    "lng": "31.1121"
  },
  {
    "country": "BY",
    "name": "Karelichy",
    "lat": "53.5648",
    "lng": "26.1406"
  },
  {
    "country": "BY",
    "name": "Kapyl’",
    "lat": "53.1516",
    "lng": "27.0913"
  },
  {
    "country": "BY",
    "name": "Konstantinovo",
    "lat": "54.6593",
    "lng": "29.2684"
  },
  {
    "country": "BY",
    "name": "Kalodzishchy",
    "lat": "53.944",
    "lng": "27.7823"
  },
  {
    "country": "BY",
    "name": "Kokhanava",
    "lat": "54.4611",
    "lng": "30.0018"
  },
  {
    "country": "BY",
    "name": "Kobryn",
    "lat": "52.2138",
    "lng": "24.3564"
  },
  {
    "country": "BY",
    "name": "Klimavichy",
    "lat": "53.6079",
    "lng": "31.9586"
  },
  {
    "country": "BY",
    "name": "Klichaw",
    "lat": "53.4923",
    "lng": "29.3356"
  },
  {
    "country": "BY",
    "name": "Klyetsk",
    "lat": "53.0635",
    "lng": "26.6321"
  },
  {
    "country": "BY",
    "name": "Kirawsk",
    "lat": "53.2693",
    "lng": "29.4752"
  },
  {
    "country": "BY",
    "name": "Khoyniki",
    "lat": "51.8911",
    "lng": "29.9552"
  },
  {
    "country": "BY",
    "name": "Khotsimsk",
    "lat": "53.4086",
    "lng": "32.578"
  },
  {
    "country": "BY",
    "name": "Kholopenichi",
    "lat": "54.51746",
    "lng": "28.95645"
  },
  {
    "country": "BY",
    "name": "Khodasy",
    "lat": "53.9266",
    "lng": "31.4779"
  },
  {
    "country": "BY",
    "name": "Khal’ch",
    "lat": "52.5643",
    "lng": "31.1364"
  },
  {
    "country": "BY",
    "name": "Kamyanyuki",
    "lat": "52.55757",
    "lng": "23.80525"
  },
  {
    "country": "BY",
    "name": "Kamyennyya Lavy",
    "lat": "54.0898",
    "lng": "30.2962"
  },
  {
    "country": "BY",
    "name": "Kamyanyets",
    "lat": "52.40013",
    "lng": "23.81"
  },
  {
    "country": "BY",
    "name": "Kalinkavichy",
    "lat": "52.1323",
    "lng": "29.3257"
  },
  {
    "country": "BY",
    "name": "Iwye",
    "lat": "53.9299",
    "lng": "25.7727"
  },
  {
    "country": "BY",
    "name": "Ivyanyets",
    "lat": "53.8864",
    "lng": "26.7432"
  },
  {
    "country": "BY",
    "name": "Ivatsevichy",
    "lat": "52.709",
    "lng": "25.3401"
  },
  {
    "country": "BY",
    "name": "Ivanava",
    "lat": "52.1451",
    "lng": "25.5365"
  },
  {
    "country": "BY",
    "name": "Il’ya",
    "lat": "54.4167",
    "lng": "27.2958"
  },
  {
    "country": "BY",
    "name": "Hrodna",
    "lat": "53.6884",
    "lng": "23.8258"
  },
  {
    "country": "BY",
    "name": "Horki",
    "lat": "54.2862",
    "lng": "30.9863"
  },
  {
    "country": "BY",
    "name": "Gomel",
    "lat": "52.4345",
    "lng": "30.9754"
  },
  {
    "country": "BY",
    "name": "Hlybokaye",
    "lat": "55.1384",
    "lng": "27.6905"
  },
  {
    "country": "BY",
    "name": "Hantsavichy",
    "lat": "52.758",
    "lng": "26.43"
  },
  {
    "country": "BY",
    "name": "Hotsk",
    "lat": "52.5215",
    "lng": "27.1385"
  },
  {
    "country": "BY",
    "name": "Haradok",
    "lat": "55.4624",
    "lng": "29.9845"
  },
  {
    "country": "BY",
    "name": "Haradzishcha",
    "lat": "53.3247",
    "lng": "26.0107"
  },
  {
    "country": "BY",
    "name": "Haradzyeya",
    "lat": "53.3121",
    "lng": "26.538"
  },
  {
    "country": "BY",
    "name": "Hal’shany",
    "lat": "54.2585",
    "lng": "26.0144"
  },
  {
    "country": "BY",
    "name": "Hlusk",
    "lat": "52.903",
    "lng": "28.6845"
  },
  {
    "country": "BY",
    "name": "Hlusha",
    "lat": "53.0868",
    "lng": "28.8567"
  },
  {
    "country": "BY",
    "name": "Hyeranyony",
    "lat": "54.1159",
    "lng": "25.5773"
  },
  {
    "country": "BY",
    "name": "Hatava",
    "lat": "53.7829",
    "lng": "27.6407"
  },
  {
    "country": "BY",
    "name": "Dzyarzhynsk",
    "lat": "53.6832",
    "lng": "27.138"
  },
  {
    "country": "BY",
    "name": "Dzyatlava",
    "lat": "53.4631",
    "lng": "25.4068"
  },
  {
    "country": "BY",
    "name": "Dukora",
    "lat": "53.6786",
    "lng": "27.94"
  },
  {
    "country": "BY",
    "name": "Dubrowna",
    "lat": "54.5716",
    "lng": "30.691"
  },
  {
    "country": "BY",
    "name": "Drybin",
    "lat": "54.1192",
    "lng": "31.0939"
  },
  {
    "country": "BY",
    "name": "Druya",
    "lat": "55.7906",
    "lng": "27.4505"
  },
  {
    "country": "BY",
    "name": "Drahichyn",
    "lat": "52.1874",
    "lng": "25.1597"
  },
  {
    "country": "BY",
    "name": "Dowsk",
    "lat": "53.1571",
    "lng": "30.4601"
  },
  {
    "country": "BY",
    "name": "Damachava",
    "lat": "51.75",
    "lng": "23.6"
  },
  {
    "country": "BY",
    "name": "Dokshytsy",
    "lat": "54.8918",
    "lng": "27.7667"
  },
  {
    "country": "BY",
    "name": "Dobrush",
    "lat": "52.4089",
    "lng": "31.3237"
  },
  {
    "country": "BY",
    "name": "Dzisna",
    "lat": "55.5676",
    "lng": "28.2076"
  },
  {
    "country": "BY",
    "name": "Davyd-Haradok",
    "lat": "52.0566",
    "lng": "27.2161"
  },
  {
    "country": "BY",
    "name": "Dashkawka",
    "lat": "53.7352",
    "lng": "30.2625"
  },
  {
    "country": "BY",
    "name": "Chervyen’",
    "lat": "53.7059",
    "lng": "28.4313"
  },
  {
    "country": "BY",
    "name": "Charnawchytsy",
    "lat": "52.21948",
    "lng": "23.74043"
  },
  {
    "country": "BY",
    "name": "Cherykaw",
    "lat": "53.5689",
    "lng": "31.3831"
  },
  {
    "country": "BY",
    "name": "Chachersk",
    "lat": "52.9164",
    "lng": "30.9179"
  },
  {
    "country": "BY",
    "name": "Chavusy",
    "lat": "53.8098",
    "lng": "30.9717"
  },
  {
    "country": "BY",
    "name": "Chashniki",
    "lat": "54.8584",
    "lng": "29.1608"
  },
  {
    "country": "BY",
    "name": "Bykhaw",
    "lat": "53.521",
    "lng": "30.2454"
  },
  {
    "country": "BY",
    "name": "Byaroza",
    "lat": "52.5314",
    "lng": "24.9786"
  },
  {
    "country": "BY",
    "name": "Buynichy",
    "lat": "53.8536",
    "lng": "30.2671"
  },
  {
    "country": "BY",
    "name": "Buda-Kashalyova",
    "lat": "52.7179",
    "lng": "30.5701"
  },
  {
    "country": "BY",
    "name": "Brest",
    "lat": "52.09755",
    "lng": "23.68775"
  },
  {
    "country": "BY",
    "name": "Braslaw",
    "lat": "55.6413",
    "lng": "27.0418"
  },
  {
    "country": "BY",
    "name": "Brahin",
    "lat": "51.787",
    "lng": "30.2677"
  },
  {
    "country": "BY",
    "name": "Turets-Bayary",
    "lat": "54.3785",
    "lng": "26.6581"
  },
  {
    "country": "BY",
    "name": "Baruny",
    "lat": "54.3171",
    "lng": "26.1376"
  },
  {
    "country": "BY",
    "name": "Vyaliki Trastsyanets",
    "lat": "53.851",
    "lng": "27.7139"
  },
  {
    "country": "BY",
    "name": "Vyalikaya Byerastavitsa",
    "lat": "53.196",
    "lng": "24.0166"
  },
  {
    "country": "BY",
    "name": "Bobr",
    "lat": "54.342",
    "lng": "29.2736"
  },
  {
    "country": "BY",
    "name": "Blon’",
    "lat": "53.5269",
    "lng": "28.1732"
  },
  {
    "country": "BY",
    "name": "Berëzovka",
    "lat": "53.72143",
    "lng": "25.49927"
  },
  {
    "country": "BY",
    "name": "Byerazino",
    "lat": "53.8391",
    "lng": "28.9879"
  },
  {
    "country": "BY",
    "name": "Byalynichy",
    "lat": "53.9994",
    "lng": "29.7141"
  },
  {
    "country": "BY",
    "name": "Byelaazyorsk",
    "lat": "52.4731",
    "lng": "25.1784"
  },
  {
    "country": "BY",
    "name": "Byahoml’",
    "lat": "54.7316",
    "lng": "28.0577"
  },
  {
    "country": "BY",
    "name": "Horad Barysaw",
    "lat": "54.2279",
    "lng": "28.505"
  },
  {
    "country": "BY",
    "name": "Baranovichi",
    "lat": "53.1327",
    "lng": "26.0139"
  },
  {
    "country": "BY",
    "name": "Baran’",
    "lat": "54.4784",
    "lng": "30.3159"
  },
  {
    "country": "BY",
    "name": "Babruysk",
    "lat": "53.1384",
    "lng": "29.2214"
  },
  {
    "country": "BY",
    "name": "Ashmyany",
    "lat": "54.421",
    "lng": "25.936"
  },
  {
    "country": "BY",
    "name": "Antopal’",
    "lat": "52.2038",
    "lng": "24.7863"
  },
  {
    "country": "BY",
    "name": "Balbasava",
    "lat": "54.4207",
    "lng": "30.2909"
  },
  {
    "country": "BY",
    "name": "Ramanavichy",
    "lat": "53.8653",
    "lng": "30.5597"
  },
  {
    "country": "BY",
    "name": "Palykavichy Pyershyya",
    "lat": "53.9854",
    "lng": "30.36"
  },
  {
    "country": "BY",
    "name": "Horad Kobryn",
    "lat": "52.21611",
    "lng": "24.36639"
  },
  {
    "country": "BY",
    "name": "Horad Luninyets",
    "lat": "52.25028",
    "lng": "26.79944"
  },
  {
    "country": "BY",
    "name": "Horad Pinsk",
    "lat": "52.12139",
    "lng": "26.07278"
  },
  {
    "country": "BY",
    "name": "Horad Orsha",
    "lat": "54.51528",
    "lng": "30.40528"
  },
  {
    "country": "BY",
    "name": "Horad Rechytsa",
    "lat": "52.36389",
    "lng": "30.39472"
  },
  {
    "country": "BY",
    "name": "Horad Krychaw",
    "lat": "53.69889",
    "lng": "31.71417"
  },
  {
    "country": "BY",
    "name": "Fanipol",
    "lat": "53.74998",
    "lng": "27.33338"
  },
  {
    "country": "BY",
    "name": "Khatsyezhyna",
    "lat": "53.9094",
    "lng": "27.3069"
  },
  {
    "country": "BY",
    "name": "Schomyslitsa",
    "lat": "53.8211",
    "lng": "27.4522"
  },
  {
    "country": "BY",
    "name": "Yubilyeyny",
    "lat": "53.8191",
    "lng": "27.5215"
  },
  {
    "country": "BY",
    "name": "Atolina",
    "lat": "53.7817",
    "lng": "27.4346"
  },
  {
    "country": "BY",
    "name": "Pryvol’ny",
    "lat": "53.7969",
    "lng": "27.7967"
  },
  {
    "country": "BY",
    "name": "Enyerhyetykaw",
    "lat": "53.5871",
    "lng": "27.0535"
  },
  {
    "country": "BY",
    "name": "Svislach",
    "lat": "53.6404",
    "lng": "27.9199"
  },
  {
    "country": "BY",
    "name": "Druzhny",
    "lat": "53.6238",
    "lng": "27.8977"
  },
  {
    "country": "BY",
    "name": "Malinovka",
    "lat": "53.8579",
    "lng": "27.4374"
  },
  {
    "country": "BY",
    "name": "Peramoga",
    "lat": "52.3973",
    "lng": "31.071"
  },
  {
    "country": "BY",
    "name": "Borovlyany",
    "lat": "54.0022",
    "lng": "27.6754"
  },
  {
    "country": "BY",
    "name": "Chyst’",
    "lat": "54.2698",
    "lng": "27.1067"
  },
  {
    "country": "BY",
    "name": "Lyeskawka",
    "lat": "54.0024",
    "lng": "27.7108"
  },
  {
    "country": "BY",
    "name": "Lyasny",
    "lat": "54.0072",
    "lng": "27.6963"
  },
  {
    "country": "BY",
    "name": "Bal’shavik",
    "lat": "54.0036",
    "lng": "27.5669"
  },
  {
    "country": "BY",
    "name": "Усяж",
    "lat": "54.07598",
    "lng": "28.00698"
  },
  {
    "country": "BY",
    "name": "Октябрьский",
    "lat": "54.04059",
    "lng": "28.19813"
  },
  {
    "country": "BY",
    "name": "Michanovichi",
    "lat": "53.73937",
    "lng": "27.69276"
  },
  {
    "country": "BY",
    "name": "Posëlok Voskhod",
    "lat": "53.7766",
    "lng": "30.3497"
  },
  {
    "country": "BZ",
    "name": "Shipyard",
    "lat": "17.89382",
    "lng": "-88.65452"
  },
  {
    "country": "BZ",
    "name": "San Pedro",
    "lat": "17.91598",
    "lng": "-87.9659"
  },
  {
    "country": "BZ",
    "name": "San Ignacio",
    "lat": "17.1588",
    "lng": "-89.0696"
  },
  {
    "country": "BZ",
    "name": "Punta Gorda",
    "lat": "16.09835",
    "lng": "-88.8097"
  },
  {
    "country": "BZ",
    "name": "Placencia",
    "lat": "16.51419",
    "lng": "-88.36647"
  },
  {
    "country": "BZ",
    "name": "Orange Walk",
    "lat": "18.08124",
    "lng": "-88.56328"
  },
  {
    "country": "BZ",
    "name": "Dangriga",
    "lat": "16.9697",
    "lng": "-88.23313"
  },
  {
    "country": "BZ",
    "name": "Corozal",
    "lat": "18.39375",
    "lng": "-88.38849"
  },
  {
    "country": "BZ",
    "name": "Benque Viejo el Carmen",
    "lat": "17.075",
    "lng": "-89.13917"
  },
  {
    "country": "BZ",
    "name": "Belmopan",
    "lat": "17.25",
    "lng": "-88.76667"
  },
  {
    "country": "BZ",
    "name": "Belize City",
    "lat": "17.49952",
    "lng": "-88.19756"
  },
  {
    "country": "BZ",
    "name": "Valley of Peace",
    "lat": "17.33472",
    "lng": "-88.83472"
  },
  {
    "country": "CA",
    "name": "Abbotsford",
    "lat": "49.05798",
    "lng": "-122.25257"
  },
  {
    "country": "CA",
    "name": "Acton Vale",
    "lat": "45.65007",
    "lng": "-72.56582"
  },
  {
    "country": "CA",
    "name": "Adstock",
    "lat": "46.05007",
    "lng": "-71.08235"
  },
  {
    "country": "CA",
    "name": "Agassiz",
    "lat": "49.23298",
    "lng": "-121.76926"
  },
  {
    "country": "CA",
    "name": "Airdrie",
    "lat": "51.30011",
    "lng": "-114.03528"
  },
  {
    "country": "CA",
    "name": "Ajax",
    "lat": "43.85012",
    "lng": "-79.03288"
  },
  {
    "country": "CA",
    "name": "Albanel",
    "lat": "48.88324",
    "lng": "-72.44867"
  },
  {
    "country": "CA",
    "name": "Alberton",
    "lat": "46.81685",
    "lng": "-64.06542"
  },
  {
    "country": "CA",
    "name": "Alma",
    "lat": "48.55009",
    "lng": "-71.6491"
  },
  {
    "country": "CA",
    "name": "Altona",
    "lat": "49.10469",
    "lng": "-97.55961"
  },
  {
    "country": "CA",
    "name": "Amherst",
    "lat": "45.83345",
    "lng": "-64.19874"
  },
  {
    "country": "CA",
    "name": "Amherstburg",
    "lat": "42.11679",
    "lng": "-83.04985"
  },
  {
    "country": "CA",
    "name": "Amos",
    "lat": "48.56688",
    "lng": "-78.11624"
  },
  {
    "country": "CA",
    "name": "Ange-Gardien",
    "lat": "45.35008",
    "lng": "-72.93244"
  },
  {
    "country": "CA",
    "name": "Angus",
    "lat": "44.31681",
    "lng": "-79.88295"
  },
  {
    "country": "CA",
    "name": "Anmore",
    "lat": "49.31637",
    "lng": "-122.85263"
  },
  {
    "country": "CA",
    "name": "Antigonish",
    "lat": "45.61685",
    "lng": "-61.99858"
  },
  {
    "country": "CA",
    "name": "Armstrong",
    "lat": "50.44979",
    "lng": "-119.20235"
  },
  {
    "country": "CA",
    "name": "Arnprior",
    "lat": "45.43341",
    "lng": "-76.34939"
  },
  {
    "country": "CA",
    "name": "Asbestos",
    "lat": "45.76678",
    "lng": "-71.9324"
  },
  {
    "country": "CA",
    "name": "Ashcroft",
    "lat": "50.72372",
    "lng": "-121.28207"
  },
  {
    "country": "CA",
    "name": "Assiniboia",
    "lat": "49.63336",
    "lng": "-105.98446"
  },
  {
    "country": "CA",
    "name": "Athabasca",
    "lat": "54.71687",
    "lng": "-113.28537"
  },
  {
    "country": "CA",
    "name": "Atikokan",
    "lat": "48.75667",
    "lng": "-91.62409"
  },
  {
    "country": "CA",
    "name": "Aylmer",
    "lat": "42.76679",
    "lng": "-80.98302"
  },
  {
    "country": "CA",
    "name": "Baie-Comeau",
    "lat": "49.21679",
    "lng": "-68.14894"
  },
  {
    "country": "CA",
    "name": "Baie-D'Urfé",
    "lat": "45.41397",
    "lng": "-73.91586"
  },
  {
    "country": "CA",
    "name": "Bancroft",
    "lat": "45.05752",
    "lng": "-77.85702"
  },
  {
    "country": "CA",
    "name": "Banff",
    "lat": "51.17622",
    "lng": "-115.56982"
  },
  {
    "country": "CA",
    "name": "Barraute",
    "lat": "48.43349",
    "lng": "-77.63279"
  },
  {
    "country": "CA",
    "name": "Barrhead",
    "lat": "54.13345",
    "lng": "-114.40211"
  },
  {
    "country": "CA",
    "name": "Barrie",
    "lat": "44.40011",
    "lng": "-79.66634"
  },
  {
    "country": "CA",
    "name": "Bassano",
    "lat": "50.78342",
    "lng": "-112.46854"
  },
  {
    "country": "CA",
    "name": "Bay Roberts",
    "lat": "47.59989",
    "lng": "-53.26478"
  },
  {
    "country": "CA",
    "name": "Beaconsfield",
    "lat": "45.43341",
    "lng": "-73.86586"
  },
  {
    "country": "CA",
    "name": "Beauharnois",
    "lat": "45.31341",
    "lng": "-73.8725"
  },
  {
    "country": "CA",
    "name": "Beaumont",
    "lat": "53.35013",
    "lng": "-113.41871"
  },
  {
    "country": "CA",
    "name": "Beausejour",
    "lat": "50.0622",
    "lng": "-96.51669"
  },
  {
    "country": "CA",
    "name": "Beaverlodge",
    "lat": "55.21664",
    "lng": "-119.43605"
  },
  {
    "country": "CA",
    "name": "Bécancour",
    "lat": "46.33336",
    "lng": "-72.43241"
  },
  {
    "country": "CA",
    "name": "Bedford",
    "lat": "45.11678",
    "lng": "-72.98244"
  },
  {
    "country": "CA",
    "name": "Belfast",
    "lat": "46.08341",
    "lng": "-62.88197"
  },
  {
    "country": "CA",
    "name": "Belleville",
    "lat": "44.16682",
    "lng": "-77.38277"
  },
  {
    "country": "CA",
    "name": "Bells Corners",
    "lat": "45.31588",
    "lng": "-75.83012"
  },
  {
    "country": "CA",
    "name": "Beloeil",
    "lat": "45.56839",
    "lng": "-73.20568"
  },
  {
    "country": "CA",
    "name": "Berthierville",
    "lat": "46.08336",
    "lng": "-73.18245"
  },
  {
    "country": "CA",
    "name": "Berwick",
    "lat": "45.05015",
    "lng": "-64.73208"
  },
  {
    "country": "CA",
    "name": "Biggar",
    "lat": "52.0668",
    "lng": "-108.00135"
  },
  {
    "country": "CA",
    "name": "Black Diamond",
    "lat": "50.70011",
    "lng": "-114.2353"
  },
  {
    "country": "CA",
    "name": "Blackfalds",
    "lat": "52.38342",
    "lng": "-113.7853"
  },
  {
    "country": "CA",
    "name": "Blainville",
    "lat": "45.66678",
    "lng": "-73.88249"
  },
  {
    "country": "CA",
    "name": "Bluewater",
    "lat": "43.46679",
    "lng": "-81.59977"
  },
  {
    "country": "CA",
    "name": "Boisbriand",
    "lat": "45.61678",
    "lng": "-73.83249"
  },
  {
    "country": "CA",
    "name": "Bois-des-Filion",
    "lat": "45.66678",
    "lng": "-73.74918"
  },
  {
    "country": "CA",
    "name": "Boissevain",
    "lat": "49.23062",
    "lng": "-100.05586"
  },
  {
    "country": "CA",
    "name": "Bon Accord",
    "lat": "53.83345",
    "lng": "-113.41872"
  },
  {
    "country": "CA",
    "name": "Bonavista",
    "lat": "48.64989",
    "lng": "-53.11474"
  },
  {
    "country": "CA",
    "name": "Bonnyville",
    "lat": "54.26684",
    "lng": "-110.73505"
  },
  {
    "country": "CA",
    "name": "Botwood",
    "lat": "49.14994",
    "lng": "-55.34819"
  },
  {
    "country": "CA",
    "name": "Boucherville",
    "lat": "45.59104",
    "lng": "-73.43605"
  },
  {
    "country": "CA",
    "name": "Bouctouche",
    "lat": "46.46844",
    "lng": "-64.73905"
  },
  {
    "country": "CA",
    "name": "Bourget",
    "lat": "45.4334",
    "lng": "-75.1493"
  },
  {
    "country": "CA",
    "name": "Bowen Island",
    "lat": "49.3847",
    "lng": "-123.33622"
  },
  {
    "country": "CA",
    "name": "Bow Island",
    "lat": "49.86676",
    "lng": "-111.36843"
  },
  {
    "country": "CA",
    "name": "Bracebridge",
    "lat": "45.03341",
    "lng": "-79.31633"
  },
  {
    "country": "CA",
    "name": "Brampton",
    "lat": "43.68341",
    "lng": "-79.76633"
  },
  {
    "country": "CA",
    "name": "Brandon",
    "lat": "49.84692",
    "lng": "-99.95306"
  },
  {
    "country": "CA",
    "name": "Brant",
    "lat": "43.1334",
    "lng": "-80.34967"
  },
  {
    "country": "CA",
    "name": "Brantford",
    "lat": "43.1334",
    "lng": "-80.26636"
  },
  {
    "country": "CA",
    "name": "Bridgewater",
    "lat": "44.37856",
    "lng": "-64.51882"
  },
  {
    "country": "CA",
    "name": "Brockville",
    "lat": "44.59132",
    "lng": "-75.68705"
  },
  {
    "country": "CA",
    "name": "Bromont",
    "lat": "45.31678",
    "lng": "-72.64912"
  },
  {
    "country": "CA",
    "name": "Brooks",
    "lat": "50.58341",
    "lng": "-111.88509"
  },
  {
    "country": "CA",
    "name": "Brossard",
    "lat": "45.45008",
    "lng": "-73.46583"
  },
  {
    "country": "CA",
    "name": "Brownsburg-Chatham",
    "lat": "45.68342",
    "lng": "-74.4159"
  },
  {
    "country": "CA",
    "name": "Burgeo",
    "lat": "47.61668",
    "lng": "-57.61516"
  },
  {
    "country": "CA",
    "name": "Burlington",
    "lat": "43.38621",
    "lng": "-79.83713"
  },
  {
    "country": "CA",
    "name": "Burnaby",
    "lat": "49.26636",
    "lng": "-122.95263"
  },
  {
    "country": "CA",
    "name": "Burns Lake",
    "lat": "54.22972",
    "lng": "-125.76084"
  },
  {
    "country": "CA",
    "name": "Cache Creek",
    "lat": "50.81011",
    "lng": "-121.3246"
  },
  {
    "country": "CA",
    "name": "Calgary",
    "lat": "51.05011",
    "lng": "-114.08529"
  },
  {
    "country": "CA",
    "name": "Calmar",
    "lat": "53.26683",
    "lng": "-113.81874"
  },
  {
    "country": "CA",
    "name": "Cambridge",
    "lat": "43.3601",
    "lng": "-80.31269"
  },
  {
    "country": "CA",
    "name": "Camlachie",
    "lat": "43.03596",
    "lng": "-82.1616"
  },
  {
    "country": "CA",
    "name": "Campbell River",
    "lat": "50.01634",
    "lng": "-125.24459"
  },
  {
    "country": "CA",
    "name": "Camrose",
    "lat": "53.01684",
    "lng": "-112.83525"
  },
  {
    "country": "CA",
    "name": "Candiac",
    "lat": "45.38338",
    "lng": "-73.51587"
  },
  {
    "country": "CA",
    "name": "Canmore",
    "lat": "51.08335",
    "lng": "-115.35206"
  },
  {
    "country": "CA",
    "name": "Canora",
    "lat": "51.63328",
    "lng": "-102.43425"
  },
  {
    "country": "CA",
    "name": "Cap-Chat",
    "lat": "49.10009",
    "lng": "-66.68212"
  },
  {
    "country": "CA",
    "name": "Carberry",
    "lat": "49.86893",
    "lng": "-99.36021"
  },
  {
    "country": "CA",
    "name": "Carbonear",
    "lat": "47.73319",
    "lng": "-53.21478"
  },
  {
    "country": "CA",
    "name": "Cardston",
    "lat": "49.19998",
    "lng": "-113.3019"
  },
  {
    "country": "CA",
    "name": "Carignan",
    "lat": "45.45008",
    "lng": "-73.29916"
  },
  {
    "country": "CA",
    "name": "Carleton Place",
    "lat": "45.13341",
    "lng": "-76.14938"
  },
  {
    "country": "CA",
    "name": "Carlyle",
    "lat": "49.63334",
    "lng": "-102.26765"
  },
  {
    "country": "CA",
    "name": "Carman",
    "lat": "49.4992",
    "lng": "-98.00156"
  },
  {
    "country": "CA",
    "name": "Carstairs",
    "lat": "51.56681",
    "lng": "-114.102"
  },
  {
    "country": "CA",
    "name": "Casselman",
    "lat": "45.3168",
    "lng": "-75.0826"
  },
  {
    "country": "CA",
    "name": "Castlegar",
    "lat": "49.29984",
    "lng": "-117.66894"
  },
  {
    "country": "CA",
    "name": "Catalina",
    "lat": "48.51659",
    "lng": "-53.08135"
  },
  {
    "country": "CA",
    "name": "Chambly",
    "lat": "45.45008",
    "lng": "-73.28246"
  },
  {
    "country": "CA",
    "name": "Chambord",
    "lat": "48.43339",
    "lng": "-72.06583"
  },
  {
    "country": "CA",
    "name": "Channel-Port aux Basques",
    "lat": "47.57021",
    "lng": "-59.13674"
  },
  {
    "country": "CA",
    "name": "Chapais",
    "lat": "49.78344",
    "lng": "-74.84919"
  },
  {
    "country": "CA",
    "name": "Charlemagne",
    "lat": "45.71678",
    "lng": "-73.48247"
  },
  {
    "country": "CA",
    "name": "Charlottetown",
    "lat": "46.23899",
    "lng": "-63.13414"
  },
  {
    "country": "CA",
    "name": "Chase",
    "lat": "50.8165",
    "lng": "-119.68571"
  },
  {
    "country": "CA",
    "name": "Châteauguay",
    "lat": "45.38338",
    "lng": "-73.74919"
  },
  {
    "country": "CA",
    "name": "Chatham",
    "lat": "42.41224",
    "lng": "-82.18494"
  },
  {
    "country": "CA",
    "name": "Chertsey",
    "lat": "46.07109",
    "lng": "-73.89095"
  },
  {
    "country": "CA",
    "name": "Chester",
    "lat": "44.54225",
    "lng": "-64.23891"
  },
  {
    "country": "CA",
    "name": "Chestermere",
    "lat": "51.03341",
    "lng": "-113.81867"
  },
  {
    "country": "CA",
    "name": "Chetwynd",
    "lat": "55.69988",
    "lng": "-121.63627"
  },
  {
    "country": "CA",
    "name": "Chibougamau",
    "lat": "49.91684",
    "lng": "-74.36586"
  },
  {
    "country": "CA",
    "name": "Chilliwack",
    "lat": "49.16638",
    "lng": "-121.95257"
  },
  {
    "country": "CA",
    "name": "Chute-aux-Outardes",
    "lat": "49.11679",
    "lng": "-68.39896"
  },
  {
    "country": "CA",
    "name": "Clarence-Rockland",
    "lat": "45.5501",
    "lng": "-75.29101"
  },
  {
    "country": "CA",
    "name": "Clarenville-Shoal Harbour",
    "lat": "48.1805",
    "lng": "-53.96982"
  },
  {
    "country": "CA",
    "name": "Claresholm",
    "lat": "50.03332",
    "lng": "-113.58524"
  },
  {
    "country": "CA",
    "name": "Clyde River",
    "lat": "70.46916",
    "lng": "-68.59143"
  },
  {
    "country": "CA",
    "name": "Coaldale",
    "lat": "49.7167",
    "lng": "-112.61854"
  },
  {
    "country": "CA",
    "name": "Coalhurst",
    "lat": "49.7464",
    "lng": "-112.93246"
  },
  {
    "country": "CA",
    "name": "Coaticook",
    "lat": "45.13339",
    "lng": "-71.79907"
  },
  {
    "country": "CA",
    "name": "Cobourg",
    "lat": "43.95977",
    "lng": "-78.16515"
  },
  {
    "country": "CA",
    "name": "Cochrane",
    "lat": "51.18341",
    "lng": "-114.46871"
  },
  {
    "country": "CA",
    "name": "Cold Lake",
    "lat": "54.46525",
    "lng": "-110.18154"
  },
  {
    "country": "CA",
    "name": "Collingwood",
    "lat": "44.4834",
    "lng": "-80.21638"
  },
  {
    "country": "CA",
    "name": "Colwood",
    "lat": "48.43293",
    "lng": "-123.48591"
  },
  {
    "country": "CA",
    "name": "Conception Bay South",
    "lat": "47.49989",
    "lng": "-52.99806"
  },
  {
    "country": "CA",
    "name": "Concord",
    "lat": "43.80011",
    "lng": "-79.48291"
  },
  {
    "country": "CA",
    "name": "Contrecoeur",
    "lat": "45.85008",
    "lng": "-73.23245"
  },
  {
    "country": "CA",
    "name": "Cookshire-Eaton",
    "lat": "45.41675",
    "lng": "-71.6324"
  },
  {
    "country": "CA",
    "name": "Coquitlam",
    "lat": "49.28297",
    "lng": "-122.75262"
  },
  {
    "country": "CA",
    "name": "Corner Brook",
    "lat": "48.95001",
    "lng": "-57.95202"
  },
  {
    "country": "CA",
    "name": "Cornwall",
    "lat": "46.22652",
    "lng": "-63.21809"
  },
  {
    "country": "CA",
    "name": "Cornwall",
    "lat": "45.01809",
    "lng": "-74.72815"
  },
  {
    "country": "CA",
    "name": "Côte-Saint-Luc",
    "lat": "45.46536",
    "lng": "-73.66585"
  },
  {
    "country": "CA",
    "name": "Courtenay",
    "lat": "49.68657",
    "lng": "-124.9936"
  },
  {
    "country": "CA",
    "name": "Cowansville",
    "lat": "45.20008",
    "lng": "-72.74913"
  },
  {
    "country": "CA",
    "name": "Crabtree",
    "lat": "45.96677",
    "lng": "-73.46586"
  },
  {
    "country": "CA",
    "name": "Cranbrook",
    "lat": "49.49991",
    "lng": "-115.76879"
  },
  {
    "country": "CA",
    "name": "Creston",
    "lat": "49.09987",
    "lng": "-116.50211"
  },
  {
    "country": "CA",
    "name": "Crossfield",
    "lat": "51.43341",
    "lng": "-114.03528"
  },
  {
    "country": "CA",
    "name": "Cumberland",
    "lat": "49.61634",
    "lng": "-125.03613"
  },
  {
    "country": "CA",
    "name": "Dalmeny",
    "lat": "52.33339",
    "lng": "-106.76792"
  },
  {
    "country": "CA",
    "name": "Danville",
    "lat": "45.78337",
    "lng": "-72.0158"
  },
  {
    "country": "CA",
    "name": "Dartmouth",
    "lat": "44.67134",
    "lng": "-63.57719"
  },
  {
    "country": "CA",
    "name": "Dauphin",
    "lat": "51.14941",
    "lng": "-100.05023"
  },
  {
    "country": "CA",
    "name": "Daveluyville",
    "lat": "46.20006",
    "lng": "-72.13239"
  },
  {
    "country": "CA",
    "name": "Dawson Creek",
    "lat": "55.75984",
    "lng": "-120.2403"
  },
  {
    "country": "CA",
    "name": "Deep River",
    "lat": "46.10012",
    "lng": "-77.49949"
  },
  {
    "country": "CA",
    "name": "Deer Lake",
    "lat": "49.16671",
    "lng": "-57.43163"
  },
  {
    "country": "CA",
    "name": "Delaware",
    "lat": "42.91679",
    "lng": "-81.41646"
  },
  {
    "country": "CA",
    "name": "Deloraine",
    "lat": "49.19082",
    "lng": "-100.49477"
  },
  {
    "country": "CA",
    "name": "Delson",
    "lat": "45.36678",
    "lng": "-73.54917"
  },
  {
    "country": "CA",
    "name": "Delta",
    "lat": "49.14399",
    "lng": "-122.9068"
  },
  {
    "country": "CA",
    "name": "Deseronto",
    "lat": "44.20012",
    "lng": "-77.04944"
  },
  {
    "country": "CA",
    "name": "Deux-Montagnes",
  {