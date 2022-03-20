import 'package:weather_app/model/cities_model.dart';
import 'package:weather_app/model/continent_model.dart';
import 'package:weather_app/model/country_model.dart';
import 'package:weather_app/model/landing_model.dart';


List<LandingModel> landingItemsList = [
  LandingModel(
      title: "Know the air temperature",
      description:"Weather Now should be your constant friend,Complete the four seasons with us",
      buttonName: "Next",
      image: "assets/images/landing1.png"),
  LandingModel(
      title: "Plan Your Day By Weather Now",
      description:
      "It helps you to prepare your plan every day according to the weather effectively",
      buttonName: "Next",
      image: "assets/images/landing2.png"),
  LandingModel(
      title: "Follow Weather Now and Get Started",
      description: "Through us, you will know the air temperature, whether it is sunny or cold",
      buttonName: "Get Started",
      image: "assets/images/landing3.png"),
];
final List<ContinentModel> continentsList = [
  //Asia continent
  ContinentModel(
      name: 'Asia',
      flag: 'https://img.icons8.com/plasticine/2x/asian-hat.png',
      countryList: [
        CountryModel(
            name: "China",
            flag: 'https://www.kidlink.org/icons/f0-cn.gif',
            cities: [
              CitiesModel(
                  name: 'Hong Kong',
                  flag: 'https://www.kidlink.org/icons/f0-cn.gif'),
              CitiesModel(name: 'Beijing', flag: 'https://www.kidlink.org/icons/f0-cn.gif'),
              CitiesModel(
                  name: 'Tianjin',
                  flag: 'https://www.kidlink.org/icons/f0-cn.gif'),
              CitiesModel(
                  name: 'Shenzhen',
                  flag: 'https://www.kidlink.org/icons/f0-cn.gif')
            ]),
        CountryModel(
            name: "Bangladesh",
            flag: 'https://www.kidlink.org/icons/f0-bd.gif',
            cities: [
              CitiesModel(name:'Dhaka',flag:'' ),
              CitiesModel(name:'Chattogram',flag: ''),
              CitiesModel(name:'Khulna',flag:'' ),
              CitiesModel(name:'Sylhet',flag: ''),
              CitiesModel(name:'Comilla',flag: ''),
            ]
        ),
        CountryModel(
            name: "India",
            flag: 'https://www.kidlink.org/icons/f0-in.gif',cities: [
          CitiesModel(name: 'Mumbai',flag: ''),
          CitiesModel(name: 'Delhi	',flag: ''),
          CitiesModel(name: 'Bangalore	',flag: ''),
          CitiesModel(name: 'Hyderabad	',flag: ''),

        ]
        ),
        CountryModel(
            name: "Indonesia",
            flag: 'https://www.kidlink.org/icons/f0-id.gif',
            cities: [
              CitiesModel(name: 'Surabaya	',flag: ''),
              CitiesModel(name: 'Bandung	',flag: ''),
              CitiesModel(name: 'Jakarta	',flag: ''),
              CitiesModel(name: 'Depok	',flag: ''),

            ]
        ),
        CountryModel(
            name: "Pakistan",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_pk-flag.gif',
            cities: [
              CitiesModel(name: 'Karachi	',flag: ''),
              CitiesModel(name: 'Lahore	',flag: ''),
              CitiesModel(name: 'Faisalabad	',flag: ''),
              CitiesModel(name: 'Rawalpindi	',flag: ''),
              CitiesModel(name: 'Gujranwala	',flag: ''),
              CitiesModel(name: 'Peshawar	',flag: ''),

            ]
        ),
        CountryModel(
            name: "Philippines",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_rp-flag.gif',
            cities: [
              CitiesModel(name: 'Alaminos	',flag: ''),
              CitiesModel(name: 'Angeles	',flag: ''),
              CitiesModel(name: 'Antipolo	',flag: ''),
              CitiesModel(name: 'Bacolod	',flag: ''),

            ]
        ),
        CountryModel(
            name: "Vietnam",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_vm-flag.gif',
            cities: [
              CitiesModel(name: 'Bac Lieu',flag: ''),
              CitiesModel(name: 'Ben Thuy',flag: ''),
              CitiesModel(name: 'Ben Tre',flag: ''),
              CitiesModel(name: 'Bien Hoa',flag: ''),

            ]
        ),
        CountryModel(
            name: "Turkey",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_tu-flag.gif',
            cities: [
              CitiesModel(name: 'Istanbul',flag: ''),
              CitiesModel(name: 'Ankara',flag: ''),
              CitiesModel(name: 'İzmir',flag: ''),
              CitiesModel(name: '	Bursa',flag: ''),

            ]
        ),
        CountryModel(
            name: "Iran",
            flag: 'https://www.kidlink.org/icons/f0-ir.gif',
            cities: [
              CitiesModel(name: 'Tehran',flag: ''),
              CitiesModel(name: 'Mashhad',flag: ''),
              CitiesModel(name: 'Isfahan',flag: ''),
              CitiesModel(name: 'Karaj	',flag: ''),

            ]
        ),
        CountryModel(
            name: "Thailand",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_th-flag.gif',
            cities: [
              CitiesModel(name:'Bangkok',flag:'' ),
              CitiesModel(name:'Ayutthaya',flag: ''),
              CitiesModel(name:'Chiang Mai',flag:'' ),
              CitiesModel(name:'Hua Hin',flag: ''),
              CitiesModel(name:'Phuket',flag: ''),
            ]
        ),
        CountryModel(
            name: "Myanmar",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_bm-flag.gif',
            cities: [
              CitiesModel(name:'Yangon',flag:'https://www.worldometers.info//img/flags/small/tn_bm-flag.gif' ),
              CitiesModel(name:'Mandalay',flag: 'https://www.worldometers.info//img/flags/small/tn_bm-flag.gif'),
              CitiesModel(name:'Naypyidaw',flag:'https://www.worldometers.info//img/flags/small/tn_bm-flag.gif' ),
              CitiesModel(name:'Mawlamyine',flag: 'https://www.worldometers.info//img/flags/small/tn_bm-flag.gif'),
              CitiesModel(name:'Taunggyi',flag: 'https://www.worldometers.info//img/flags/small/tn_bm-flag.gif'),
            ]
        ),
        CountryModel(
            name: "Korea, Democratic Republic",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_kn-flag.gif',
            cities: [
              CitiesModel(name:'Anju',flag:'' ),
              CitiesModel(name:'Chongjin',flag: ''),
              CitiesModel(name:'Chongju',flag:'' ),
              CitiesModel(name:'Haeju',flag: ''),
              CitiesModel(name:'Hamhung',flag: ''),
            ]
        ),
        CountryModel(
            name: "Korea, Republic Of",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ks-flag.gif',
            cities: [
              CitiesModel(name:'Seoul',flag:'' ),
              CitiesModel(name:'Busan',flag: ''),
              CitiesModel(name:'Incheon',flag:'' ),
              CitiesModel(name:'Daegu',flag: ''),
              CitiesModel(name:'Daejeon',flag: ''),
            ]
        ),
        CountryModel(
            name: "Iraq", flag: 'https://www.kidlink.org/icons/f0-iq.gif',
            cities: [
              CitiesModel(name:'Baghdad',flag:'' ),
              CitiesModel(name:'Al Hillah',flag: ''),
              CitiesModel(name:'Al Qasim',flag:'' ),
              CitiesModel(name:'Amarah',flag: ''),
              CitiesModel(name:'Erbil',flag: ''),
            ]
        ),
        CountryModel(
            name: "Afghanistan",
            flag: 'https://www.worldometers.info/img/flags/af-flag.gif',
            cities: [
              CitiesModel(
                  name: 'Kabul',
                  flag:
                  'https://www.worldometers.info/img/flags/af-flag.gif'),
              CitiesModel(
                  name: 'Kandahar',
                  flag:
                  'https://www.worldometers.info/img/flags/af-flag.gif'),
              CitiesModel(
                  name: 'Herat',
                  flag:
                  'https://www.worldometers.info/img/flags/af-flag.gif'),
              CitiesModel(
                  name: 'Mazar-i-Sharif',
                  flag:
                  'https://www.worldometers.info/img/flags/af-flag.gif'),
            ]),
        CountryModel(
            name: "Saudi Arabia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_sa-flag.gif',
            cities: [
              CitiesModel(name:'Abha',flag:'' ),
              CitiesModel(name:'Dammam',flag: ''),
              CitiesModel(name:'Jeddah',flag:'' ),
              CitiesModel(name:'Jizan',flag: ''),
              CitiesModel(name:'Riyadh',flag: ''),
            ]
        ),
        CountryModel(
            name: "Uzbekistan",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_uz-flag.gif',
            cities: [
              CitiesModel(name:'Abha',flag:'' ),
              CitiesModel(name:'Dammam',flag: ''),
              CitiesModel(name:'Jeddah',flag:'' ),
              CitiesModel(name:'Jizan',flag: ''),
              CitiesModel(name:'Riyadh',flag: ''),
            ]
        ),
        CountryModel(
            name: "Malaysia",
            flag: 'https://www.kidlink.org/icons/f0-my.gif',
            cities: [
              CitiesModel(name:'Kuala Lumpur',flag:'' ),
              CitiesModel(name:'Seberang Perai',flag: ''),
              CitiesModel(name:'George Town',flag:'' ),
              CitiesModel(name:'Malacca',flag: ''),
              CitiesModel(name:'Kuching',flag: ''),
            ],
        ),
        CountryModel(
            name: "Yemen", flag: 'https://www.kidlink.org/icons/f0-ye.gif',
            cities: [
              CitiesModel(name:'Sana\'a',flag:'' ),
              CitiesModel(name:'Ta\'izz',flag: ''),
              CitiesModel(name:'Aden',flag:'' ),
              CitiesModel(name:'Al Hudaydah',flag: ''),
              CitiesModel(name:'Dhamar',flag: ''),
            ],
        ),
        CountryModel(
            name: "Nepal",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_np-flag.gif',
            cities: [
              CitiesModel(name:'Janakpur',flag:'' ),
              CitiesModel(name:'Ghorahi',flag: ''),
              CitiesModel(name:'Hetauda',flag:'' ),
              CitiesModel(name:'Dhangadhi',flag: ''),
              CitiesModel(name:'Tulsipur',flag: ''),
            ],

        ),
        CountryModel(
            name: "Taiwan, Province Of China",
            flag: 'https://www.kidlink.org/icons/f0-tw.gif',
            cities: [
              CitiesModel(name:'Abha',flag:'' ),
              CitiesModel(name:'Dammam',flag: ''),
              CitiesModel(name:'Jeddah',flag:'' ),
              CitiesModel(name:'Jizan',flag: ''),
              CitiesModel(name:'Riyadh',flag: ''),
            ],
        ),
        CountryModel(
            name: "Syria",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_sy-flag.gif',
            cities: [
              CitiesModel(name:'Damascus',flag:'' ),
              CitiesModel(name:'Aleppo',flag: ''),
              CitiesModel(name:'Homs',flag:'' ),
              CitiesModel(name:'Latakia',flag: ''),
              CitiesModel(name:'Daraa',flag: ''),
              CitiesModel(name:'Hama',flag: ''),
            ]
        ),
        CountryModel(
            name: "Sri Lanka",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ce-flag.gif',
            cities: [
              CitiesModel(name:'Anuradhapura',flag:'' ),
              CitiesModel(name:'Galle',flag: ''),
              CitiesModel(name:'Kandy',flag:'' ),
              CitiesModel(name:'Nuwara Eliya',flag: ''),
              CitiesModel(name:'Trincomalee',flag: ''),
            ]
        ),
        CountryModel(
            name: "Kazakhstan",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_kz-flag.gif',
            cities: [
              CitiesModel(name:'Almaty',flag:'' ),
              CitiesModel(name:'Nur-Sultan',flag: ''),
              CitiesModel(name:'Shymkent',flag:'' ),
              CitiesModel(name:'Aktobe',flag: ''),
              CitiesModel(name:'Karaganda',flag: ''),
            ]
        ),
        CountryModel(
            name: "Cambodia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_cb-flag.gif',
            cities: [
              CitiesModel(name:'Phnom Penh',flag:'' ),
              CitiesModel(name:'Siem Reap',flag: ''),
              CitiesModel(name:'Battambang',flag:'' ),
              CitiesModel(name:'Serei Saophoan',flag: ''),
              CitiesModel(name:'Poipet',flag: ''),
            ]
        ),
        CountryModel(
            name: "Jordan",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_jo-flag.gif',
            cities: [
              CitiesModel(name:'Amman',flag:'' ),
              CitiesModel(name:'Zarqa',flag: ''),
              CitiesModel(name:'Irbid',flag:'' ),
              CitiesModel(name:'Russeifa',flag: ''),
              CitiesModel(name:'Al-Quwaysimah',flag: ''),
            ]
        ),
        CountryModel(
            name: "Azerbaijan",
            flag: 'https://www.kidlink.org/icons/f0-az.gif',
            cities: [
              CitiesModel(name:'Baku',flag:'' ),
              CitiesModel(name:'Sumgait',flag: ''),
              CitiesModel(name:'Ganja',flag:'' ),
              CitiesModel(name:'Lankaran',flag: ''),
              CitiesModel(name:'Mingachevir	',flag: ''),
            ]
        ),
        CountryModel(
            name: "United Arab Emirates",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ae-flag.gif',
            cities: [
              CitiesModel(name:'Dubai',flag:'' ),
              CitiesModel(name:'Abu Dhabi',flag: ''),
              CitiesModel(name:'Sharjah',flag:'' ),
              CitiesModel(name:'Al Ain',flag: ''),
              CitiesModel(name:'Ajman',flag: ''),
              CitiesModel(name:'Fujairah',flag: ''),
            ]
        ),
        CountryModel(
            name: "Tajikistan",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ti-flag.gif',
            cities: [
              CitiesModel(name:'Dushanbe',flag:'' ),
              CitiesModel(name:'Khujand',flag: ''),
              CitiesModel(name:'Bokhtar',flag:'' ),
              CitiesModel(name:'Kulob',flag: ''),
              CitiesModel(name:'Istaravshan',flag: ''),
            ]
        ),
        CountryModel(
            name: "Israel",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_is-flag.gif',
            cities: [
              CitiesModel(name:'Haifa',),
              CitiesModel(name:'Netanya',),
              CitiesModel(name:'Ashdod', ),
              CitiesModel(name:'Bnei Brak',),
              CitiesModel(name:'Holon',),
            ]

        ),
        CountryModel(
            name: "Hong Kong",
            flag: 'https://www.kidlink.org/icons/f0-hk.gif',
            cities: [
              CitiesModel(name:'Kowloon',flag:'' ),
              CitiesModel(name:'Tsuen Wan',flag: ''),
              CitiesModel(name:'Shatin',flag:'' ),
              CitiesModel(name:'Tuen Mun',flag: ''),
              CitiesModel(name:'Tai Po',flag: ''),
            ]
        ),
        CountryModel(
            name: "Laos",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_la-flag.gif',
            cities: [
              CitiesModel(name:'Vientiane',flag:'' ),
              CitiesModel(name:'Pakse',flag: ''),
              CitiesModel(name:'Thakhek',flag:'' ),
              CitiesModel(name:'Pakse',flag: ''),
              CitiesModel(name:'Pakxan',flag: ''),
            ]
        ),
        CountryModel(
            name: "Lebanon",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_le-flag.gif',
            cities: [
            CitiesModel(name:'Beirut',flag:'' ),
        CitiesModel(name:'Tripoli',flag: ''),
        CitiesModel(name:'	Sidon',flag:'' ),
        CitiesModel(name:'Tyre',flag: ''),
        CitiesModel(name:'Anjar',flag: ''),
      ]
        ),

        CountryModel(
            name: "Kyrgyzstan",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_kg-flag.gif',
cities: [
CitiesModel(name:'Aidarken' ),
CitiesModel(name:'Balykchy'),
CitiesModel(name:'Batken'),
CitiesModel(name:'Bishkek'),
CitiesModel(name:'Isfana'),]
        ),
        CountryModel(
            name: "Turkmenistan",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_tx-flag.gif'
            ,
            cities: [
              CitiesModel(name:'Ashgabat' ),
              CitiesModel(name:'Dashoguz '),
              CitiesModel(name:'Mary'),
              CitiesModel(name:'Balkanabat'),
              CitiesModel(name:'Bayramaly'),]
        ),
        CountryModel(
            name: "Singapore",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_sn-flag.gif',
            cities: [
              CitiesModel(name:'Serangoon',flag:'' ),
              CitiesModel(name:'Kangkar',flag: ''),
              CitiesModel(name:'Marsiling',flag:'' ),
              CitiesModel(name:'Chia Keng',flag: ''),
              CitiesModel(name:'Saga',flag: ''),]),
        CountryModel(
            name: "Oman",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_mu-flag.gif'
            ,
            cities: [
              CitiesModel(name:'Al Jazer',flag:'' ),
              CitiesModel(name:'Ibra',flag: ''),
              CitiesModel(name:'Jabrin',flag:'' ),
              CitiesModel(name:'Khasab',flag: ''),
              CitiesModel(name:'Bahla',flag: ''),]
        ),
        CountryModel(
            name: "Palestine",
            flag: 'https://www.kidlink.org/icons/f0-ps.gif'
            ,
            cities: [
              CitiesModel(name:'Bethlehem',flag:'' ),
              CitiesModel(name:'Gaza',flag: ''),
              CitiesModel(name:'al-Khalil',flag:'' ),
              CitiesModel(name:'Jenin',flag: ''),
              CitiesModel(name:'Ariha',flag: ''),
              CitiesModel(name:'Nablus',flag: ''),
            ]
        ),
        CountryModel(
            name: "Kuwait",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ku-flag.gif'
            ,
            cities: [
              CitiesModel(name:'Adailiya',flag:'' ),
              CitiesModel(name:'Doha',flag: ''),
              CitiesModel(name:'Dasma',flag:'' ),
              CitiesModel(name:'Kaifan',flag: ''),
              CitiesModel(name:'Khaldiya',flag: ''),
              CitiesModel(name:'Rawda',flag: ''),
              CitiesModel(name:'Qurtuba',flag: ''),
            ]
        ),
        CountryModel(
            name: "Georgia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_gg-flag.gif'
            ,
            cities: [
              CitiesModel(name:'Atlanta',flag:'' ),
              CitiesModel(name:'Columbus',flag: ''),
              CitiesModel(name:'Savannah',flag:'' ),
              CitiesModel(name:'Roswell',flag: ''),
              CitiesModel(name:'Albany',flag: ''),]
        ),
        CountryModel(
            name: "Mongolia",
            flag: 'https://www.kidlink.org/icons/f0-mn.gif'
            ,
            cities: [
              CitiesModel(name:'Khovd',),
              CitiesModel(name:'Darkhan',),
              CitiesModel(name:'Erdenet', ),
              CitiesModel(name:'Uliastai',),
              CitiesModel(name:'Altai'),]
        ),
        CountryModel(
            name: "Armenia", flag: 'https://www.kidlink.org/icons/f0-am.gif'
            ,
            cities: [
              CitiesModel(name:'Yerevan',flag:'' ),
              CitiesModel(name:'Gyumri',flag: ''),
              CitiesModel(name:'Kapan',flag:'' ),
              CitiesModel(name:'Hrazdan',flag: ''),
              CitiesModel(name:'Armavir',flag: ''),]),
        CountryModel(
            name: "Qatar", flag: 'https://www.kidlink.org/icons/f0-qa.gif'
            ,
            cities: [
              CitiesModel(name:'Doha',flag:'' ),
              CitiesModel(name:'Al Ghanim',flag: ''),
              CitiesModel(name:'Al Jasrah',flag:'' ),
              CitiesModel(name:'Al Khor',flag: ''),
              CitiesModel(name:'Al Rayyan',flag: ''),]),
        CountryModel(
            name: "Bahrain", flag: 'https://www.kidlink.org/icons/f0-bh.gif',
            cities: [
            CitiesModel(name:'Manama',flag:'' ),
        CitiesModel(name:'Riffa',flag: ''),
        CitiesModel(name:'Muharraq',flag:'' ),
        CitiesModel(name:'A\'ali',flag: ''),
        CitiesModel(name:'Sitra',flag: ''),]
        ),
        CountryModel(
            name: "Timor-Leste",
            flag:
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.britannica.com%2Ftopic%2Fflag-of-East-Timor&psig=AOvVaw1XUYxH1S7e86sMGA8g5VDl&ust=1626373722632000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCJCv_7GY4_ECFQAAAAAdAAAAABAD'
            ,
            cities: [
              CitiesModel(name:'Dili',flag:'' ),
              CitiesModel(name:'Maliana',flag: ''),
              CitiesModel(name:'Ainaro',flag:'' ),
              CitiesModel(name:'Baucau',flag: ''),
              CitiesModel(name:'Gleno',flag: ''),]
        ),
        CountryModel(
            name: "Cyprus",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_cy-flag.gif'
            ,
            cities: [
              CitiesModel(name:'Achna',flag:'' ),
              CitiesModel(name:'Agros',flag: ''),
              CitiesModel(name:'Akanthou',flag:'' ),
              CitiesModel(name:'Aglandjia',flag: ''),
              CitiesModel(name:'Dali',flag: ''),]
        ),
        CountryModel(
            name: "Bhutan", flag: 'https://www.kidlink.org/icons/f0-bt.gif'
            ,
            cities: [
              CitiesModel(name:'Thimphu',flag:'' ),
              CitiesModel(name:'Paro',flag: ''),
              CitiesModel(name:'Gelephu',flag:'' ),
              CitiesModel(name:'Punakha',flag: ''),
              CitiesModel(name:'Jakar',flag: ''),]
        ),
        CountryModel(
            name: "Macau", flag: 'https://www.kidlink.org/icons/f0-mo.gif'
            ,
            cities: [
              CitiesModel(name:'Aomen',flag:'' ),
              CitiesModel(name:'Aumwnz',flag: ''),
              CitiesModel(name:'Coloane',flag:'' ),
              CitiesModel(name:'Dangzai',flag: ''),
              CitiesModel(name:'Heisha',flag: ''),]
        ),
        CountryModel(
            name: "Maldives",
            flag: 'https://www.kidlink.org/icons/f0-mv.gif'
            ,
            cities: [
              CitiesModel(name:'Addu',flag:'' ),
              CitiesModel(name:'Dhidhdhoo',flag: ''),
              CitiesModel(name:'Felidhoo',flag:'' ),
              CitiesModel(name:'Funadhoo',flag: ''),
              CitiesModel(name:'Eydhafushi',flag: ''),]
        ),
        CountryModel(
            name: "Brunei Darussalam",
            flag: 'https://www.kidlink.org/icons/f0-bn.gif'
            ,
            cities: [
              CitiesModel(name:'Seria'),
              CitiesModel(name:'Tutong'),
              CitiesModel(name:'Kapok' ),
              CitiesModel(name:'Bangar'),
              CitiesModel(name:'Mentiri'),]
        ),
      ]),
//Africa continent
  ContinentModel(
      name: 'Africa',
      flag:
      'https://purepng.com/public/uploads/thumbnail//map-of-africa-xet.png',
      countryList: [
        CountryModel(
            name: "Nigeria",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ni-flag.gif', cities: [
          CitiesModel(name:'Lagos'),
          CitiesModel(name:'Kano'),
          CitiesModel(name:'Ibadan' ),
          CitiesModel(name:'Benin'),
          CitiesModel(name:'Jos'),]),
        CountryModel(
            name: "Ethiopia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_et-flag.gif'
            , cities: [
          CitiesModel(name:'Addis Ababa'),
          CitiesModel(name:'Gondar' ),
          CitiesModel(name:'Adama'),
          CitiesModel(name:'Awassa'),]
        ),
        CountryModel(
            name: "Egypt",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_eg-flag.gif'
            , cities: [
          CitiesModel(name:'Cairo'),
          CitiesModel(name:'Alexandria'),
          CitiesModel(name:'Giza' ),
          CitiesModel(name:'Luxor'),
          CitiesModel(name:'Damietta'),
          CitiesModel(name:'Aswan'),
          CitiesModel(name:'Faiyum'),
          CitiesModel(name:'Tanta'),
          CitiesModel(name:'Mansoura'),
          CitiesModel(name:'Port Said'),
          CitiesModel(name:'Suez'),
          CitiesModel(name:'Asyut'),
          CitiesModel(name:'Hurghada'),
          CitiesModel(name:'Damanhur'),
          CitiesModel(name:'Ismailia'),
          CitiesModel(name:'Zagazig'),
          CitiesModel(name:'Minya'),
          CitiesModel(name:'Qena'),
        ]
        ),
        CountryModel(
            name: "Congo,Democratic Republic",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_congo-flag.gif'
            , cities: [
          CitiesModel(name:'Aba'),
          CitiesModel(name:'Aketi'),
          CitiesModel(name:'Ango' ),
          CitiesModel(name:'Aru'),
          CitiesModel(name:'Bagata'),]
        ),
        CountryModel(
            name: "Tanzania",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_tz-flag.gif'
            , cities: [
          CitiesModel(name:'Dar es Salaam'),
          CitiesModel(name:'Mwanza'),
          CitiesModel(name:'Arusha' ),
          CitiesModel(name:'Dodoma'),
          CitiesModel(name:'Mbeya'),]),
        CountryModel(
            name: "South Africa",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_sf-flag.gif'
            , cities: [
          CitiesModel(name:'Durban'),
          CitiesModel(name:'Bloemfontein'),
          CitiesModel(name:'Polokwane' ),
          CitiesModel(name:'Pretoria'),
         ]
        ),
        CountryModel(
            name: "Kenya",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ke-flag.gif'
            , cities: [
          CitiesModel(name:'Nairobi'),
          CitiesModel(name:'Mombasa'),
          CitiesModel(name:'Kisumu' ),
          CitiesModel(name:'Nakuru'),
          CitiesModel(name:'Eldoret'),]
        ),
        CountryModel(
            name: "Uganda",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ug-flag.gif', cities: [
          CitiesModel(name:'Kampala'),
          CitiesModel(name:'Arua'),
          CitiesModel(name:'Gulu' ),
          CitiesModel(name:'Jinja'),
          CitiesModel(name:'Mbale'),]

        ),
        CountryModel(
            name: "Algeria", flag: 'https://www.kidlink.org/icons/f0-dz.gif'
            , cities: [
          CitiesModel(name:'Algiers'),
          CitiesModel(name:'Oran'),
          CitiesModel(name:'Batna' ),
          CitiesModel(name:'Constantine'),
          CitiesModel(name:'Batna'),]
        ),
        CountryModel(
            name: "Morocco",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_mo-flag.gif'
            , cities: [
          CitiesModel(name:'Casablanca'),
          CitiesModel(name:'Fez'),
          CitiesModel(name:'Tangier' ),
          CitiesModel(name:'Marrakesh'),
          CitiesModel(name:'Meknes'),]
        ),
        CountryModel(
            name: "Angola", flag: 'https://www.kidlink.org/icons/f0-ao.gif'
            , cities: [
          CitiesModel(name:'Luanda'),
          CitiesModel(name:'Lubango'),
          CitiesModel(name:'Huambo' ),
          CitiesModel(name:'Benguela'),
          CitiesModel(name:'Cabinda'),]
        ),
        CountryModel(
            name: "Mozambique",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_mz-flag.gif'
            , cities: [
          CitiesModel(name:'Matola'),
          CitiesModel(name:'Maputo'),
          CitiesModel(name:'Nampula' ),
          CitiesModel(name:'Beira'),
          CitiesModel(name:'Chimoio'),]
        ),
        CountryModel(
            name: "Ghana",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_gh-flag.gif'
            , cities: [
          CitiesModel(name:'Accra'),
          CitiesModel(name:'Kumasi'),
          CitiesModel(name:'Tamale' ),
          CitiesModel(name:'Ashaiman'),
          CitiesModel(name:'Sunyani'),]
        ),
        CountryModel(
            name: "Madagascar",
            flag: 'https://www.kidlink.org/icons/f0-mg.gif'
            , cities: [
          CitiesModel(name:'Antananarivo'),
          CitiesModel(name:'Toamasina'),
          CitiesModel(name:'Antsirabe' ),
          CitiesModel(name:'Mahajanga'),
          CitiesModel(name:'Toliara'),]
        ),
        CountryModel(
            name: "Cameroon",
            flag: 'https://www.kidlink.org/icons/f0-cm.gif'
            , cities: [
          CitiesModel(name:'Douala'),
          CitiesModel(name:'Yaounde'),
          CitiesModel(name:'Garoua' ),
          CitiesModel(name:'Kousseri'),
          CitiesModel(name:'Bamenda'),]
        ),
        CountryModel(
            name: "Cote D'ivoire",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_iv-flag.gif'
            , cities: [
          CitiesModel(name:'Abidjan'),
          CitiesModel(name:'Abobo'),
          CitiesModel(name:'Bouake' ),
          CitiesModel(name:'Daloa'),
          CitiesModel(name:'San-Pedro'),]
        ),
        CountryModel(
            name: "Niger",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ng-flag.gif'
            , cities: [
          CitiesModel(name:'Niamey'),
          CitiesModel(name:'Zinder'),
          CitiesModel(name:'Maradi' ),
          CitiesModel(name:'Agadez'),
          CitiesModel(name:'Alaghsas'),]
        ),
        CountryModel(
            name: "Burkina Faso",
            flag: 'https://www.kidlink.org/icons/f0-bf.gif', cities: [
          CitiesModel(name:'Aribinda'),
          CitiesModel(name:'Banfora'),
          CitiesModel(name:'Boromo' ),
          CitiesModel(name:'Boulsa'),
          CitiesModel(name:'Dano'),]),
        CountryModel(
            name: "Mali",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_mt-flag.gif', cities: [
          CitiesModel(name:'Bamako'),
          CitiesModel(name:'Sikasso'),
          CitiesModel(name:'Kalabancoro' ),
          CitiesModel(name:'Koutiala'),
          CitiesModel(name:'Kayes'),]),
        CountryModel(
            name: "Malawi", flag: 'https://www.kidlink.org/icons/f0-mw.gif', cities: [
          CitiesModel(name:'Lilongwe'),
          CitiesModel(name:'Blantyre'),
          CitiesModel(name:'Mzuzu' ),
          CitiesModel(name:'Zomba'),
          CitiesModel(name:'Kasungu'),]),
        CountryModel(
            name: "Zambia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_za-flag.gif', cities: [
          CitiesModel(name:'Lusaka'),
          CitiesModel(name:'Kitwe'),
          CitiesModel(name:'Ndola' ),
          CitiesModel(name:'Kabwe'),
          CitiesModel(name:'Chingola'),]),
        CountryModel(
            name: "Senegal",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_sg-flag.gif', cities: [
          CitiesModel(name:'Dakar'),
          CitiesModel(name:'Pikine'),
          CitiesModel(name:'Touba' ),
          CitiesModel(name:'Thies'),
          CitiesModel(name:'Kaolack'),]),
        CountryModel(
            name: "Chad",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_cd-flag.gif', cities: [
          CitiesModel(name:'N\'Djamena'),
          CitiesModel(name:'Moundou'),
          CitiesModel(name:'Sarh' ),
          CitiesModel(name:'Kelo'),
          CitiesModel(name:'Koumra'),]),
        CountryModel(
            name: "Somalia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_so-flag.gif', cities: [
          CitiesModel(name:'Mogadishu'),
          CitiesModel(name:'Beledweyne'),
          CitiesModel(name:'Marka' ),
          CitiesModel(name:'Jamaame'),
          CitiesModel(name:'Baidoa'),]),
        CountryModel(
            name: "Zimbabwe",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_zi-flag.gif', cities: [
          CitiesModel(name:'Harare'),
          CitiesModel(name:'Bulawayo'),
          CitiesModel(name:'Mutare' ),
          CitiesModel(name:'Epworth'),
          CitiesModel(name:'Gweru'),]),
        CountryModel(
            name: "Rwanda",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_rw-flag.gif', cities: [
          CitiesModel(name:'Kigali'),
          CitiesModel(name:'Butare'),
          CitiesModel(name:'Gitarama' ),
          CitiesModel(name:'Ruhengeri'),
          CitiesModel(name:'Gisenyi'),]),
        CountryModel(
            name: "Benin",
            flag: 'https://www.worldometers.info/img/flags/bn-flag.gif', cities: [
          CitiesModel(name:'Cotonou'),
          CitiesModel(name:'Parakou'),
          CitiesModel(name:'Godomey' ),
          CitiesModel(name:'Djougou'),
          CitiesModel(name:'Bohicon'),]),
        CountryModel(
            name: "Burundi",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_by-flag.gif', cities: [
          CitiesModel(name:'Bujumbura'),
          CitiesModel(name:'Gitega'),
          CitiesModel(name:'Muyinga' ),
          CitiesModel(name:'Ngozi'),
          CitiesModel(name:'Ruyigi'),]),
        CountryModel(
            name: "Tunisia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ts-flag.gif', cities: [
          CitiesModel(name:'Tunis'),
          CitiesModel(name:'Sfax'),
          CitiesModel(name:'Sousse' ),
          CitiesModel(name:'Kairouan'),
          CitiesModel(name:'Bizerte'),]),
        CountryModel(
            name: "South Sudan",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_od-flag.gif', cities: [
          CitiesModel(name:'Juba'),
          CitiesModel(name:'Winejok'),
          CitiesModel(name:'Malakal' ),
          CitiesModel(name:'Wau'),
          CitiesModel(name:'Pajok'),]),
        CountryModel(
            name: "Togo",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_to-flag.gif', cities: [
          CitiesModel(name:'Lomé'),
          CitiesModel(name:'Sokodé'),
          CitiesModel(name:'Kara' ),
          CitiesModel(name:'Kpalimé'),
          CitiesModel(name:'Atakpamé'),]),
        CountryModel(
            name: "Sierra Leone",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_sl-flag.gif', cities: [
          CitiesModel(name:'Freetown'),
          CitiesModel(name:'Kenema'),
          CitiesModel(name:'Bo' ),
          CitiesModel(name:'Koidu'),
          CitiesModel(name:'Makeni'),]),
        CountryModel(
            name: "Libya", flag: 'https://www.kidlink.org/icons/f0-ly.gif', cities: [
          CitiesModel(name:'Tripoli'),
          CitiesModel(name:'Benghazi'),
          CitiesModel(name:'Misrata' ),
          CitiesModel(name:'Zliten'),
          CitiesModel(name:'Bayda'),]),
        CountryModel(
            name: "Congo",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_cg-flag.gif', cities: [
          CitiesModel(name:'Kinshasa'),
          CitiesModel(name:'Kisangani'),
          CitiesModel(name:'Masina' ),
          CitiesModel(name:'Kananga'),
          CitiesModel(name:'Likasi'),]),
        CountryModel(
            name: "Liberia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_li-flag.gif', cities: [
          CitiesModel(name:'Monrovia'),
          CitiesModel(name:'Gbarnga'),
          CitiesModel(name:'Kakata' ),
          CitiesModel(name:'Harper'),
          CitiesModel(name:'Voinjama'),]),
        CountryModel(
            name: "Central African Republic",
            flag: 'https://www.kidlink.org/icons/f0-cf.gif', cities: [
          CitiesModel(name:'Bangui'),
          CitiesModel(name:'Bimbo'),
          CitiesModel(name:'Carnot' ),
          CitiesModel(name:'Bambari'),
          CitiesModel(name:'Bouar'),]),
        CountryModel(
            name: "Mauritania",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_mr-flag.gif', cities: [
          CitiesModel(name:'Nouakchott'),
          CitiesModel(name:'Nouadhibou'),
          CitiesModel(name:'Nema' ),
          CitiesModel(name:'Kaedi'),
          CitiesModel(name:'Rosso'),]),
        CountryModel(
            name: "Eritrea",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_er-flag.gif', cities: [
          CitiesModel(name:'Asmara'),
          CitiesModel(name:'Keren'),
          CitiesModel(name:'Massawa' ),
          CitiesModel(name:'Assab'),
          CitiesModel(name:'Barentu'),]),
        CountryModel(
            name: "Namibia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_wa-flag.gif', cities: [
          CitiesModel(name:'Windhoek'),
          CitiesModel(name:'Rundu'),
          CitiesModel(name:'Oshakati' ),
          CitiesModel(name:'Rehoboth'),
          ]),
        CountryModel(
            name: "Botswana",
            flag: 'https://www.kidlink.org/icons/f0-bw.gif', cities: [
          CitiesModel(name:'Gaborone'),
          CitiesModel(name:'Molepolole'),
          CitiesModel(name:'Serowe' ),
          CitiesModel(name:'Maun'),
          CitiesModel(name:'Kanye'),]),
        CountryModel(
            name: "Gabon",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_gb-flag.gif', cities: [
          CitiesModel(name:'Libreville'),
          CitiesModel(name:'Oyem'),
          CitiesModel(name:'Moanda' ),
          CitiesModel(name:'Mouila'),
          CitiesModel(name:'Makokou'),]),
        CountryModel(
            name: "Lesotho",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_lt-flag.gif', cities: [
          CitiesModel(name:'Maseru'),
          CitiesModel(name:'Mafeteng'),
          CitiesModel(name:'Hlotse' ),
          CitiesModel(name:'Quthing'),
          CitiesModel(name:'Peka'),]),
        CountryModel(
            name: "Guinea-bissau",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_pu-flag.gif', cities: [
          CitiesModel(name:'Bissau'),
          CitiesModel(name:'Bafatá'),
          CitiesModel(name:'Gabú' ),
          CitiesModel(name:'Bissorã'),
          CitiesModel(name:'Bolama'),]),
        CountryModel(
            name: "Equatorial Guinea",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ek-flag.gif', cities: [
          CitiesModel(name:'Bata'),
          CitiesModel(name:'Malabo'),
          CitiesModel(name:'Ebebiyin' ),
          CitiesModel(name:'Aconibe'),
          CitiesModel(name:'Anisoc'),]),
        CountryModel(
            name: "Mauritius",
            flag: 'https://www.kidlink.org/icons/f0-mu.gif', cities: [
          CitiesModel(name:'Vacoas'),
          CitiesModel(name:'Curepipe'),
          CitiesModel(name:'Port Louis' ),
          CitiesModel(name:'Triolet'),
         ]),
        CountryModel(
            name: "Djibouti",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_dj-flag.gif', cities: [
          CitiesModel(name:'Djibouti'),
          CitiesModel(name:'Ali Sabih'),
          CitiesModel(name:'Tadjoura' ),
          CitiesModel(name:'Obock'),
          CitiesModel(name:'Dikhil'),]),
        CountryModel(
            name: "Reunion", flag: 'https://www.kidlink.org/icons/f0-re.gif', cities: [
          CitiesModel(name:'Saint-Paul'),
          CitiesModel(name:'Saint-Pierre'),
          CitiesModel(name:'Le Tampon' ),
          CitiesModel(name:'Le Port'),
          ]),
        CountryModel(
            name: "Comoros", flag: 'https://www.kidlink.org/icons/f0-km.gif', cities: [
          CitiesModel(name:'Moroni'),
          CitiesModel(name:'Fomboni'),
          CitiesModel(name:'Domoni' ),
          CitiesModel(name:'Sima'),
          CitiesModel(name:'Ouani'),]),
        CountryModel(
            name: "Cape Verde",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_cv-flag.gif', cities: [
          CitiesModel(name:'Praia'),
          CitiesModel(name:'Mindelo'),
          CitiesModel(name:'Assomada'),
          CitiesModel(name:'Tarrafal'),]),
        CountryModel(
            name: "Mayotte", flag: 'https://www.kidlink.org/icons/f0-al.gif', cities: [
          CitiesModel(name:'Koungou'),
          CitiesModel(name:'Mamoudzou'),
          CitiesModel(name:'Dzaoudzi' ),
          CitiesModel(name:'Pamandzi'),
          ]),
        CountryModel(
            name: "Sao Tome And Principe",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_tp-flag.gif', cities: [
          CitiesModel(name:'São Tomé'),
          CitiesModel(name:'Santo António'),
         ]),
        CountryModel(
            name: "Seychelles",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_se-flag.gif', cities: [
          CitiesModel(name:'Bel Ombre'),
          CitiesModel(name:'Anse Royale'),
         ]),
        // CountryModel(
        //     name: "Saint Helena",
        //     flag: 'https://www.kidlink.org/icons/f0-al.gif', cities: [
        //   CitiesModel(name:'Seria'),
        //   CitiesModel(name:'Tutong'),
        //   CitiesModel(name:'Kapok' ),
        //   CitiesModel(name:'Bangar'),
        //   CitiesModel(name:'Mentiri'),]),
      ]),
//Europe continent
  ContinentModel(
      name: 'Europe',
      flag:
      'https://lh3.googleusercontent.com/proxy/mzMtoMtYJsdk5nwHrFiYbm5r0zizx5eKtk9eheKwNI-AJQWIGIekYeCIIo_734EY_uBaTMG8SAynMqexLbhn2EfrJSFwUXJB7MKz9thrwKwAZB9EROc',
      countryList: [
        CountryModel(
            name: "Russian Federation",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_rs-flag.gif',
            cities: [
            CitiesModel(name:'Moscow'),
            CitiesModel(name:'Novosibirsk'),
            CitiesModel(name:'Samara' ),
            CitiesModel(name:'Omsk'),
            CitiesModel(name:'Kazan'),]
        ),
        CountryModel(
            name: "Germany",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_gm-flag.gif',
            cities: [
              CitiesModel(name:'Berlin'),
              CitiesModel(name:'Hamburg'),
              CitiesModel(name:'Munich' ),
              CitiesModel(name:'Cologne'),
              CitiesModel(name:'Stuttgart'),]
        ),
        CountryModel(
            name: "United Kingdom",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_uk-flag.gif',
            cities: [
              CitiesModel(name:'London'),
              CitiesModel(name:'Liverpool'),
              CitiesModel(name:'Nottingham' ),
              CitiesModel(name:'Sheffield'),
              CitiesModel(name:'Glasgow'),]
        ),
        CountryModel(
            name: "France",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_fr-flag.gif',
            cities: [
              CitiesModel(name:'Paris'),
              CitiesModel(name:'Marseille'),
              CitiesModel(name:'Lyon' ),
              CitiesModel(name:'Toulouse'),
              CitiesModel(name:'Nice'),]
        ),
        CountryModel(
            name: "Spain",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_sp-flag.gif',
            cities: [
              CitiesModel(name:'Madrid'),
              CitiesModel(name:'Valencia'),
              CitiesModel(name:'Barcelona' ),
              CitiesModel(name:'Sevilla'),
              CitiesModel(name:'Zaragoza'),]
        ),
        CountryModel(name: "Italy", flag: '',
            cities: [
              CitiesModel(name:'Rome'),
              CitiesModel(name:'Milan'),
              CitiesModel(name:'Naples' ),
              CitiesModel(name:'Turin'),
              CitiesModel(name:'Palermo'),]
        ),
        CountryModel(
            name: "Ukraine",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_up-flag.gif',
            cities: [
              CitiesModel(name:'Kyiv'),
              CitiesModel(name:'Kharkiv'),
              CitiesModel(name:'Odessa' ),
              CitiesModel(name:'Dnipro'),
              CitiesModel(name:'Donetsk'),]
        ),
        CountryModel(
            name: "Poland", flag: 'https://www.kidlink.org/icons/f0-pl.gif',
            cities: [
              CitiesModel(name:'Warsaw'),
              CitiesModel(name:'Kraków'),
              CitiesModel(name:'Łódź' ),
              CitiesModel(name:'Wrocław'),
              CitiesModel(name:'Poznań'),]
        ),
        CountryModel(
            name: "Romania", flag: 'https://www.kidlink.org/icons/f0-ro.gif',
            cities: [
              CitiesModel(name:'Bucharest'),
              CitiesModel(name:'Cluj-Napoca'),
              CitiesModel(name:'Timișoara' ),
              CitiesModel(name:'Iași'),
              CitiesModel(name:'Constanța'),]
        ),
        CountryModel(
            name: "Netherlands",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_nl-flag.gif',
            cities: [
              CitiesModel(name:'Amsterdam'),
              CitiesModel(name:'Rotterdam'),
              CitiesModel(name:'The Hague' ),
              CitiesModel(name:'Utrecht'),
              CitiesModel(name:'Eindhoven'),]
        ),
        CountryModel(
            name: "Belgium", flag: 'https://www.kidlink.org/icons/f0-be.gif',
            cities: [
              CitiesModel(name:'Antwerp'),
              CitiesModel(name:'Ghent'),
              CitiesModel(name:'Charleroi' ),
              CitiesModel(name:'Liège'),
              CitiesModel(name:'Bruges'),]
        ),
        CountryModel(
            name: "Czech Republic",
            flag: 'https://www.kidlink.org/icons/f0-cz.gif',
            cities: [
              CitiesModel(name:'Prague'),
              CitiesModel(name:'Brno'),
              CitiesModel(name:'Ostrava' ),
              CitiesModel(name:'Plzeň'),
              CitiesModel(name:'Liberec'),]
        ),
        CountryModel(
            name: "Greece",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_gr-flag.gif',
            cities: [
              CitiesModel(name:'Athens'),
              CitiesModel(name:'Thessaloniki'),
              CitiesModel(name:'Patras' ),
              CitiesModel(name:'Larissa'),
              CitiesModel(name:'Heraklion'),]
        ),
        CountryModel(
            name: "Portugal",
            flag: 'https://www.kidlink.org/icons/f0-pt.gif',
            cities: [
              CitiesModel(name:'Lisbon'),
              CitiesModel(name:'Porto'),
              CitiesModel(name:'Amadora' ),
              CitiesModel(name:'Braga'),
              CitiesModel(name:'Setúbal'),]
        ),
        CountryModel(
            name: "Sweden",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_sw-flag.gif',
            cities: [
              CitiesModel(name:'Stockholm'),
              CitiesModel(name:'Gothenburg'),
              CitiesModel(name:'Malmö' ),
              CitiesModel(name:'Uppsala'),
              CitiesModel(name:'Västerås'),]
        ),
        CountryModel(
            name: "Hungary", flag: 'https://www.kidlink.org/icons/f0-hu.gif',
            cities: [
              CitiesModel(name:'Budapest'),
              CitiesModel(name:'Debrecen'),
              CitiesModel(name:'Szeged' ),
              CitiesModel(name:'Miskolc'),
              CitiesModel(name:'Pécs'),]
        ),
        CountryModel(
            name: "Austria", flag: 'https://www.kidlink.org/icons/f0-at.gif',
            cities: [
              CitiesModel(name:'Vienna'),
              CitiesModel(name:'Graz'),
              CitiesModel(name:'Linz' ),
              CitiesModel(name:'Salzburg'),
              CitiesModel(name:'Innsbruck'),]
        ),
        CountryModel(
            name: "Belarus", flag: 'https://www.kidlink.org/icons/f0-by.gif',
            cities: [
              CitiesModel(name:'Minsk'),
              CitiesModel(name:'Homyel'),
              CitiesModel(name:'Mahilyow' ),
              CitiesModel(name:'Vitsyebsk'),
              CitiesModel(name:'Hrodna'),]
        ),
        CountryModel(
            name: "Serbia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ri-flag.gif',
            cities: [
              CitiesModel(name:'Belgrade'),
              CitiesModel(name:'Novi Sad'),
              CitiesModel(name:'Niš' ),
              CitiesModel(name:'Kragujevac'),
              CitiesModel(name:'Kraljevo'),]
        ),
        CountryModel(
            name: "Switzerland",
            flag: 'https://www.kidlink.org/icons/f0-ch.gif', cities: [
          CitiesModel(name:'Zürich'),
          CitiesModel(name:'Geneva'),
          CitiesModel(name:'Basel' ),
          CitiesModel(name:'Lausanne'),
          CitiesModel(name:'Bern'),]),
        CountryModel(
            name: "Bulgaria",
            flag: 'https://www.kidlink.org/icons/f0-bg.gif',
            cities: [
              CitiesModel(name:'Sofia'),
              CitiesModel(name:'Plovdiv'),
              CitiesModel(name:'Varna' ),
              CitiesModel(name:'Burgas'),
              CitiesModel(name:'Ruse'),]
        ),
        CountryModel(
            name: "Denmark",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_da-flag.gif',
            cities: [
              CitiesModel(name:'Copenhagen'),
              CitiesModel(name:'Aarhus'),
              CitiesModel(name:'Odense' ),
              CitiesModel(name:'Aalborg'),
              CitiesModel(name:'Esbjerg'
                  ''),]
        ),
        CountryModel(
            name: "Finland",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_fj-flag.gif',
            cities: [
              CitiesModel(name:'Helsinki'),
              CitiesModel(name:'Espoo'),
              CitiesModel(name:'Tampere' ),
              CitiesModel(name:'Vantaa'),
              CitiesModel(name:'Turku'),]
        ),
        CountryModel(
            name: "Slovakia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_lo-flag.gif',
            cities: [
              CitiesModel(name:'Bratislava'),
              CitiesModel(name:'Košice'),
              CitiesModel(name:'Prešov' ),
              CitiesModel(name:'Žilina'),
              CitiesModel(name:'Nitra'),]
        ),
        CountryModel(
            name: "Norway",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_no-flag.gif',
            cities: [
              CitiesModel(name:'Oslo'),
              CitiesModel(name:'Bergen'),
              CitiesModel(name:'Trondheim' ),
              CitiesModel(name:'Stavanger'),
              CitiesModel(name:'Drammen'),]
        ),
        CountryModel(
            name: "Ireland", flag: 'https://www.kidlink.org/icons/f0-ie.gif',
            cities: [
              CitiesModel(name:'Galway'),
              CitiesModel(name:'Cork' ),
              CitiesModel(name:'Limerick'),
              ]
        ),
        CountryModel(
            name: "Croatia", flag: 'https://www.kidlink.org/icons/f0-hr.gif',
            cities: [
              CitiesModel(name:'Zagreb'),
              CitiesModel(name:'Split'),
              CitiesModel(name:'Rijeka' ),
              CitiesModel(name:'Osijek'),
              CitiesModel(name:'Zadar'),]
        ),
        CountryModel(
            name: "Republic of Moldova",
            flag: 'https://www.kidlink.org/icons/f0-md.gif',
            cities: [
              CitiesModel(name:'Chișinău'),
              CitiesModel(name:'Tiraspol'),
              CitiesModel(name:'Bălți' ),
              CitiesModel(name:'Bender'),
              CitiesModel(name:'Ungheni'),]
        ),
        CountryModel(
            name: "Bosnia And Herzegovina",
            flag: 'https://www.kidlink.org/icons/f0-ba.gif',
            cities: [
              CitiesModel(name:'Sarajevo'),
              CitiesModel(name:'Banja Luka'),
              CitiesModel(name:'Zenica' ),
              CitiesModel(name:'Tuzla'),
              CitiesModel(name:'Mostar'),]
        ),
        CountryModel(
            name: "Albania", flag: 'https://www.kidlink.org/icons/f0-al.gif',
            cities: [
              CitiesModel(name:'Tirana'),
              CitiesModel(name:'Durrës'),
              CitiesModel(name:'Vlorë' ),
              CitiesModel(name:'Elbasan'),
              CitiesModel(name:'Shkodër'),]
        ),
        CountryModel(
            name: "Lithuania",
            flag: 'https://www.kidlink.org/icons/f0-lt.gif',
            cities: [
              CitiesModel(name:'Vilnius'),
              CitiesModel(name:'Kaunas'),
              CitiesModel(name:'Klaipėda' ),
              CitiesModel(name:'Šiauliai'),
              CitiesModel(name:'Panevėžys'),]
        ),
        CountryModel(
            name: "Macedonia",
            flag: 'https://www.kidlink.org/icons/f0-mk.gif',
            cities: [
              CitiesModel(name:'Skopje'),
              CitiesModel(name:'Bitola'),
              CitiesModel(name:'Kumanovo' ),
              CitiesModel(name:'Prilep'),
              CitiesModel(name:'Tetovo'),]
        ),
        CountryModel(
            name: "Slovenia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_si-flag.gif',
            cities: [
              CitiesModel(name:'Ljubljana'),
              CitiesModel(name:'Maribor'),
              CitiesModel(name:'Celje' ),
              CitiesModel(name:'Kranj'),
              CitiesModel(name:'Velenje'),]
        ),
        CountryModel(
            name: "Latvia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_lg-flag.gif',
            cities: [
              CitiesModel(name:'Riga'),
              CitiesModel(name:'Daugavpils'),
              CitiesModel(name:'Liepāja' ),
              CitiesModel(name:'Jelgava'),
              CitiesModel(name:'Jūrmala'),]
        ),
        CountryModel(
            name: "Estonia",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_en-flag.gif',
            cities: [
              CitiesModel(name:'Tallinn'),
              CitiesModel(name:'Tartu'),
              CitiesModel(name:'Narva' ),
              CitiesModel(name:'Pärnu'),
              CitiesModel(name:'Viljandi'),]
        ),
        CountryModel(
            name: "Montenegro",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_mj-flag.gif',
            cities: [
            CitiesModel(name:'Podgorica'),
        CitiesModel(name:'Nikšić'),
        CitiesModel(name:'Pljevlja' ),
        CitiesModel(name:'Cetinje'),
        CitiesModel(name:'Budva'),]
        ),
        CountryModel(
            name: "Luxembourg",
            flag: 'https://www.kidlink.org/icons/f0-lu.gif',
            cities: [
              CitiesModel(name:'Dudelange'),
              CitiesModel(name:'Schifflange'),
              CitiesModel(name:'Bettembourg' ),
              CitiesModel(name:'Pétange'),
            ]
        ),
        CountryModel(
            name: "Malta", flag: 'https://www.kidlink.org/icons/f0-mt.gif',
            cities: [
              CitiesModel(name:'Qormi'),
              CitiesModel(name:'Mosta'),
              CitiesModel(name:'Żabbar' ),
              CitiesModel(name:'Fgura'),
              CitiesModel(name:'Żejtun'),]
        ),
        CountryModel(
            name: "Iceland", flag: 'https://www.kidlink.org/icons/f0-is.gif',
            cities: [
              CitiesModel(name:'Reykjavík'),
              CitiesModel(name:'Kópavogur'),
              CitiesModel(name:'Hafnarfjörður' ),
              CitiesModel(name:'Akureyri'),
              CitiesModel(name:'Garðabær'),]
        ),
        CountryModel(
            name: "Andorra", flag: 'https://www.kidlink.org/icons/f0-ad.gif', cities: [
          CitiesModel(name:'Andorra La Vella'),
          CitiesModel(name:'Escaldes-Engordany'),
          CitiesModel(name:'Encamp' ),
          CitiesModel(name:'La Massana'),
          CitiesModel(name:'Ordino'),]),
        CountryModel(
            name: "Monaco",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_mn-flag.gif', cities: [
          CitiesModel(name:'La Condamine'),
          CitiesModel(name:'Fontvieille'),
          CitiesModel(name:'Saint-Roman' ),
          CitiesModel(name:'Monte Carlo '),
          CitiesModel(name:'Moneghetti'),]),
        CountryModel(
            name: "Liechtenstein",
            flag: 'https://www.kidlink.org/icons/f0-li.gif', cities: [
          CitiesModel(name:'Schaan'),
          CitiesModel(name:'Vaduz'),
          CitiesModel(name:'Triesen' ),
          CitiesModel(name:'Balzers'),
          CitiesModel(name:'Eschen'),]),
        CountryModel(
            name: "San Marino",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_sm-flag.gif', cities: [
          CitiesModel(name:'Serravalle'),
          CitiesModel(name:'Borgo Maggiore'),
          CitiesModel(name:'San Marino' ),
          CitiesModel(name:'Domagnano'),
          CitiesModel(name:'Fiorentino'),]),
        CountryModel(
            name: "Gibraltar",
            flag: 'https://www.kidlink.org/icons/f0-gi.gif', cities: [
          CitiesModel(name:'Catalan Bay'),
          CitiesModel(name:'Gibraltar'),
   ]),
        CountryModel(
            name: "vatican City",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_vt-flag.gif', cities: [
          CitiesModel(name:'Vatican City'),
          CitiesModel(name:'Tutong'),
          CitiesModel(name:'Kapok' ),
          CitiesModel(name:'Bangar'),
          CitiesModel(name:'Mentiri'),]),
      ]),
  //North America
  ContinentModel(
    name: 'North America',
    flag:
    'https://thumbs.dreamstime.com/z/united-states-transparent-icon-symbol-design-america-collection-simple-element-vector-illustration-background-130321816.jpg',
    countryList: [
      CountryModel(
          name: "United States",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_us-flag.gif', cities: [
        CitiesModel(name:'New York'),
        CitiesModel(name:'Los Angeles'),
        CitiesModel(name:'Chicago' ),
        CitiesModel(name:'Houston'),
        CitiesModel(name:'Phoenix'),]),
      CountryModel(
          name: "Mexico", flag: 'https://www.kidlink.org/icons/f0-mx.gif', cities: [
CitiesModel(name:'Tijuana'),
CitiesModel(name:'Ecatepec'),
CitiesModel(name:'León' ),
CitiesModel(name:'Puebla'),
CitiesModel(name:'Juárez'),]),
      CountryModel(
          name: "Canada", flag: 'https://www.kidlink.org/icons/f0-ca.gif', cities: [
        CitiesModel(name:'Toronto'),
        CitiesModel(name:'Montreal'),
        CitiesModel(name:'Vancouver' ),
        CitiesModel(name:'Calgary'),
        CitiesModel(name:'Edmonton'),]),
      CountryModel(
          name: "Guatemala", flag: 'https://www.kidlink.org/icons/f0-gt.gif', cities: [
        CitiesModel(name:'Guatemala City'),
        CitiesModel(name:'Mixco'),
        CitiesModel(name:'Villa Nueva' ),
        CitiesModel(name:'Quetzaltenango'),
        CitiesModel(name:'Escuintla'),]),
      CountryModel(
          name: "Haiti",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_ha-flag.gif', cities: [
        CitiesModel(name:'Port-au-Prince'),
        CitiesModel(name:'Delmas 73'),
        CitiesModel(name:'Pétionville' ),
        CitiesModel(name:'Jacmel'),
        CitiesModel(name:'Léogâne'),]),
      CountryModel(
          name: "Cuba",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_cu-flag.gif', cities: [
        CitiesModel(name:'Havana'),
        CitiesModel(name:'Camagüey'),
        CitiesModel(name:'Holguín' ),
        CitiesModel(name:'Guantánamo'),
        CitiesModel(name:'Santa Clara'),]),
      CountryModel(
          name: "Dominican Republic",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_dr-flag.gif', cities: [
        CitiesModel(name:'Santo Domingo'),
        CitiesModel(name:'Santiago de los Caballeros'),
        CitiesModel(name:'Santo Domingo Este' ),
        CitiesModel(name:'San Pedro de Macorís'),
        CitiesModel(name:'La Romana'),]),
      CountryModel(
          name: "Honduras",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_ho-flag.gif', cities: [
        CitiesModel(name:'Tegucigalpa'),
        CitiesModel(name:'San Pedro Sula'),
        CitiesModel(name:'Choloma' ),
        CitiesModel(name:'La Ceiba'),
        CitiesModel(name:'El Progreso'),]),
      CountryModel(
          name: "Nicaragua", flag: 'https://www.kidlink.org/icons/f0-ni.gif', cities: [
        CitiesModel(name:'Managua'),
        CitiesModel(name:'Masaya'),
        CitiesModel(name:'Chinandega' ),
        CitiesModel(name:'Matagalpa'),
        CitiesModel(name:'Estelí'),]),
      CountryModel(
          name: "El Salvador",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_es-flag.gif', cities: [
        CitiesModel(name:'San Salvador'),
        CitiesModel(name:'Soyapango'),
        CitiesModel(name:'San Miguel' ),
        CitiesModel(name:'Mejicanos'),
        CitiesModel(name:'Santa Tecla'),]),
      CountryModel(
          name: "Costa Rica",
          flag: 'https://www.kidlink.org/icons/f0-cr.gif', cities: [
        CitiesModel(name:'Heredia'),
        CitiesModel(name:'Alajuela'),
        CitiesModel(name:'Puntarenas' ),
        CitiesModel(name:'Limón'),
        ]),
      CountryModel(
          name: "Panama", flag: 'https://www.kidlink.org/icons/f0-pa.gif', cities: [
        CitiesModel(name:'Panama City'),
        CitiesModel(name:'San Miguelito'),
        CitiesModel(name:'Las Cumbres' ),
        CitiesModel(name:'La Chorrera'),
        CitiesModel(name:'Tocumen'),]),
      CountryModel(
          name: "Jamaica",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_jm-flag.gif', cities: [
        CitiesModel(name:'Kingston'),
        CitiesModel(name:'Portmore'),
        CitiesModel(name:'Spanish Town' ),
        CitiesModel(name:'Montego Bay'),
        CitiesModel(name:'Mandeville'),]),
      CountryModel(
          name: "Puerto Rico",
          flag: 'https://www.kidlink.org/icons/f0-pr.gif', cities: [
        CitiesModel(name:'Bayamón'),
        CitiesModel(name:'Carolina'),
        CitiesModel(name:'Ponce' ),
        CitiesModel(name:'Caguas'),
        CitiesModel(name:'Guaynabo'),]),
      CountryModel(
          name: "Trinidad And Tobago",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_td-flag.gif', cities: [
        CitiesModel(name:'Chaguanas'),
        CitiesModel(name:'Port of Spain'),
        CitiesModel(name:'Arima' ),
        CitiesModel(name:'Couva'),
        CitiesModel(name:'Point Fortin'),]),
      CountryModel(
          name: "Guadeloupe",
          flag: 'https://www.kidlink.org/icons/f0-al.gif', cities: [
        CitiesModel(name:'Les Abymes'),
        CitiesModel(name:'Baie-Mahault'),
        CitiesModel(name:'Le Gosier' ),
        CitiesModel(name:'Petit-Bourg'),
        CitiesModel(name:'Le Moule'),]),
      CountryModel(
          name: "Belize", flag: 'https://www.kidlink.org/icons/f0-bz.gif', cities: [
        CitiesModel(name:'Belize City'),
        CitiesModel(name:'San Ignacio'),
        CitiesModel(name:'Belmopan' ),
        CitiesModel(name:'Dangriga'),
        CitiesModel(name:'Corozal'),]),
      CountryModel(
          name: "Bahamas", flag: 'https://www.kidlink.org/icons/f0-bs.gif', cities: [
        CitiesModel(name:'Lucaya'),
        CitiesModel(name:'West End'),
        CitiesModel(name:'Cooper’s Town' ),
   ]),
      CountryModel(
          name: "Martinique",
          flag: 'https://www.kidlink.org/icons/f0-al.gif', cities: [
        CitiesModel(name:'Fort-de-France'),
        CitiesModel(name:'Le Lamentin'),
        CitiesModel(name:'Le Robert' ),
        CitiesModel(name:'Le François'),
        CitiesModel(name:'Ducos'),]),
      CountryModel(
          name: "Barbados", flag: 'https://www.kidlink.org/icons/f0-bb.gif', cities: [
        CitiesModel(name:'Bridgetown'),
        CitiesModel(name:'Speightstown'),
        CitiesModel(name:'Oistins' ),
        CitiesModel(name:'Bathsheba'),
        CitiesModel(name:'Holetown'),]),
      CountryModel(
          name: "Saint Lucia",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_st-flag.gif', cities: [
        CitiesModel(name:'Castries'),
        CitiesModel(name:'Bisee'),
        CitiesModel(name:'Vieux Fort' ),
        CitiesModel(name:'Micoud'),
        CitiesModel(name:'Soufriere'),]),
      CountryModel(
          name: "Grenada", flag: 'https://www.kidlink.org/icons/f0-gd.gif', cities: [
        CitiesModel(name:'Gouyave'),
        CitiesModel(name:'Grenville'),
        CitiesModel(name:'Victoria' ),
    ]),
      CountryModel(
          name: "Saint Vincent And Grenadines",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_vc-flag.gif', cities: [
        CitiesModel(name:'Arnos Vale'),
        CitiesModel(name:'Barrouallie'),
        CitiesModel(name:'Biabou' ),
      ]),
      CountryModel(
          name: "Aruba", flag: 'https://www.kidlink.org/icons/f0-aw.gif', cities: [
        CitiesModel(name:'Oranjestad'),
        CitiesModel(name:'Savaneta'),
        CitiesModel(name:'Noord'),
      ]),
      CountryModel(
          name: "Virgin Islands, U.s.",
          flag: 'https://www.kidlink.org/icons/f0-vi.gif', cities: [
        CitiesModel(name:'Saint Croix'),
        CitiesModel(name:'Charlotte Amalie'),
        CitiesModel(name:'Cruz Bay' ),
  ]),
      CountryModel(
          name: "Antigua And Barbuda",
          flag: 'https://www.kidlink.org/icons/f0-ag.gif', cities: [
        CitiesModel(name:'Piggotts'),
        CitiesModel(name:'Bolands'),
        CitiesModel(name:'Parham' ),
       ]),
      CountryModel(
          name: "Dominica",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_do-flag.gif', cities: [
        CitiesModel(name:'Roseau'),
        CitiesModel(name:'Berekua'),
        CitiesModel(name:'Mahaut' ),
        CitiesModel(name:'Wesley'),
        ]),
      CountryModel(
          name: "Cayman Islands",
          flag: 'https://www.kidlink.org/icons/f0-al.gif', cities: [
        CitiesModel(name:'West Bay'),
        CitiesModel(name:'Bodden Town'),
        CitiesModel(name:'North Side'),
       ]),
      CountryModel(
          name: "Bermuda", flag: 'https://www.kidlink.org/icons/f0-bm.gif', cities: [
        CitiesModel(name:'Bermuda'),
        ]),
      CountryModel(
          name: "Greenland", flag: 'https://www.kidlink.org/icons/f0-gl.gif', cities: [
        CitiesModel(name:'Nuuk'),
        CitiesModel(name:'Sisimiut'),
        CitiesModel(name:'Ilulissat' ),
        CitiesModel(name:'Qaqortoq'),
        CitiesModel(name:'Aasiaat'),]),
      CountryModel(
          name: "Saint Kitts And Nevis",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_sc-flag.gif', cities: [
        CitiesModel(name:'Basseterre'),
        CitiesModel(name:'Sandy Point Town'),
        CitiesModel(name:'Dieppe Bay Town' ),
        CitiesModel(name:'Monkey Hill'),
        ]),
      CountryModel(
          name: "Sint Maarten",
          flag:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Flag_of_Sint_Maarten.svg/1024px-Flag_of_Sint_Maarten.svg.png', cities: [
        CitiesModel(name:'Cul de Sac'),
        CitiesModel(name:'Philipsburg'),
  ]),
      CountryModel(
          name: "Anguilla", flag: 'https://www.kidlink.org/icons/f0-a.gif', cities: [
        CitiesModel(name:'The Valley'),
        CitiesModel(name:'Long Ground'),
      ]),
      CountryModel(
          name: "saint barthélemy",
          flag:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Flag_of_Saint_Barthelemy.svg/800px-Flag_of_Saint_Barthelemy.svg.png', cities: [
        CitiesModel(name:'Gustavia'),
      ]),
      CountryModel(
          name: "Turks and Caicos Islands",
          flag:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Flag_of_the_Turks_and_Caicos_Islands.svg/1280px-Flag_of_the_Turks_and_Caicos_Islands.svg.png', cities: [
        CitiesModel(name:'Cockburn Town'),
        CitiesModel(name:'Back Salina'),
        CitiesModel(name:'Cockburn Town' ),
       ]),
      CountryModel(
          name: "Saint Martin",
          flag:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Flag_of_Sint_Maarten.svg/1024px-Flag_of_Sint_Maarten.svg.png', cities: [
        CitiesModel(name:'Saint Martin'),
        CitiesModel(name:'Marigot'),
      ]),
      CountryModel(
          name: "British Virgin Islands",
          flag:
          'https://cdn.shopify.com/s/files/1/0090/5072/products/cf-flag-annin-flag-12-x-18-british-virgin-islands-country-flag-14206071898212.jpg?v=1587199569', cities: [
        CitiesModel(name:'Road Town'),
     ]),
      CountryModel(
          name: "Caribbean Netherlands",
          flag: 'https://flagpedia.net/data/flags/w580/bq.png', cities: [
        CitiesModel(name:'Bonaire'),
        CitiesModel(name:'Sint Eustatius'),
        CitiesModel(name:'Bonaire' ),
 ]),

      CountryModel(
          name: "Saint Pierre And Miquelon",
          flag: 'https://www.kidlink.org/icons/f0-al.gif', cities: [
        CitiesModel(name:'Saint Pierre And Miquelon'),
        CitiesModel(name:'Miquelon'),
     ]),
      CountryModel(
          name: "Montserrat",
          flag: 'https://www.kidlink.org/icons/f0-al.gif', cities: [
        CitiesModel(name:'Montserrat'),
        CitiesModel(name:'Brades '),
      ]),
    ],
  ),
  //south America
  ContinentModel(
    name: 'south America',
    flag:
    'https://www.seekpng.com/png/detail/201-2013847_andean-travel-web-south-america-png.png',
    countryList: [
      CountryModel(
          name: "Brazil", flag: 'https://www.kidlink.org/icons/f0-br.gif',
          cities: [
            CitiesModel(name:'São Paulo',),
            CitiesModel(name:'Rio de Janeiro',),
            CitiesModel(name:'Brasília', ),
            CitiesModel(name:'Fortaleza',),
            CitiesModel(name:'Manaus',),
          ]),
      CountryModel(
          name: "Colombia", flag: 'https://www.kidlink.org/icons/f0-co.gif',
          cities: [
            CitiesModel(name:'Bogotá',),
            CitiesModel(name:'Medellín',),
            CitiesModel(name:'Cali', ),
            CitiesModel(name:'Barranquilla',),
            CitiesModel(name:'Cartagena',),
          ]),
      CountryModel(
          name: "Argentina", flag: 'https://www.kidlink.org/icons/f0-ar.gif',
          cities: [
            CitiesModel(name:'Buenos Aires',),
            CitiesModel(name:'Córdoba',),
            CitiesModel(name:'Rosario', ),
            CitiesModel(name:'La Plata',),
            CitiesModel(name:'Salta',),
          ]),
      CountryModel(
          name: "Peru",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_pe-flag.gif',
          cities: [
            CitiesModel(name:'Lima',),
            CitiesModel(name:'Arequipa',),
            CitiesModel(name:'Trujillo', ),
            CitiesModel(name:'Chiclayo',),
            CitiesModel(name:'Piura',),
          ]),
      CountryModel(
          name: "Venezuela",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_ve-flag.gif',
          cities: [
            CitiesModel(name:'Caracas',),
            CitiesModel(name:'Maracaibo',),
            CitiesModel(name:'Barquisimeto', ),
            CitiesModel(name:'Maracay',),
            CitiesModel(name:'Maturín',),
          ]),
      CountryModel(
          name: "Chile", flag: 'https://www.kidlink.org/icons/f0-cl.gif',
          cities: [
            CitiesModel(name:'Arica',),
            CitiesModel(name:'Iquique',),
            CitiesModel(name:'Alto Hospicio', ),
            CitiesModel(name:'Pozo Almonte',),
            CitiesModel(name:'Antofagasta',),
          ]),
      CountryModel(
          name: "Ecuador",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_ec-flag.gif',
          cities: [
            CitiesModel(name:'Quito',),
            CitiesModel(name:'Guayaquil',),
            CitiesModel(name:'Cuenca', ),
            CitiesModel(name:'Ambato',),
            CitiesModel(name:'Portoviejo',),
          ]),
      CountryModel(
          name: "Bolivia", flag: 'https://www.kidlink.org/icons/f0-bo.gif',
          cities: [
            CitiesModel(name:'Santa Cruz',),
            CitiesModel(name:'La Paz',),
            CitiesModel(name:'Cochabamba', ),
            CitiesModel(name:'Oruro',),
            CitiesModel(name:'Sucre',),
          ]),
      CountryModel(
          name: "Uruguay",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_uy-flag.gif',
          cities: [
            CitiesModel(name:'Montevideo',),
            CitiesModel(name:'Salto',),
            CitiesModel(name:'Paysandú', ),
            CitiesModel(name:'Las Piedras',),
            CitiesModel(name:'Rivera',),
          ]),
      CountryModel(
          name: "Guyana", flag: 'https://www.kidlink.org/icons/f0-gy.gif',
          cities: [
            CitiesModel(name:'Linden',),
            CitiesModel(name:'New Amsterdam',),
            CitiesModel(name:'Anna Regina', ),
            CitiesModel(name:'Bartica',),
            CitiesModel(name:'Skeldon',),
          ]),
      CountryModel(
          name: "Suriname",
          flag:
          'https://www.worldometers.info//img/flags/small/tn_ns-flag.gif',
          cities: [
            CitiesModel(name:'Paramaribo',),
            CitiesModel(name:'Lelydorp',),
            CitiesModel(name:'Brokopondo', ),
            CitiesModel(name:'Nieuw Nickerie',),
            CitiesModel(name:'Moengo',),
          ]),
      CountryModel(
          name: "French Guiana",
          flag: 'https://www.kidlink.org/icons/f0-al.gif',
          cities: [
            CitiesModel(name:'Cayenne',),
            CitiesModel(name:'Matoury',),
            CitiesModel(name:'Kourou', ),
            CitiesModel(name:'Macouria',),
            CitiesModel(name:'Rémire-Montjoly',),
          ]),
      CountryModel(
          name: "Falkland Islands (malvinas)",
          flag:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_the_Falkland_Islands.svg/1280px-Flag_of_the_Falkland_Islands.svg.png',
          cities: [
            CitiesModel(name:'Goose Green',),
          ]),
      CountryModel(
          name: "Paraguay",
          flag:
          'https://upload.wikimedia.org/wikipedia/commons/2/27/Flag_of_Paraguay.svg',
          cities: [
            CitiesModel(name:'Asunción',),
            CitiesModel(name:'Ciudad del Este',),
            CitiesModel(name:'Capiatá', ),
            CitiesModel(name:'Lambaré',),
            CitiesModel(name:'Limpio',),
          ]),
    ],
  ),
  //Australia/Oceania
  ContinentModel(
      name: 'Australia/Oceania',
      flag:
      'https://lh3.googleusercontent.com/proxy/LXaJENKV30Dgg3f_q4RjZMoVXyjelG0HWOF8APG3Rc-DwBFxMRhpwKAr3uL9nZbMYaOwViaNAaO9Gr_xWgDZkZYYoq-8lNkp5ZXcvLu1L4s8zNVQjH7VEW1vy8Q59hFKPFTFddrYqRd2GIzxIInoWJ3kx0uWog',
      countryList: [
        CountryModel(
            name: "Australia",
            flag: 'https://www.kidlink.org/icons/f0-au.gif',
            cities: [
              CitiesModel(name:'Sydney',),
              CitiesModel(name:'Brisbane',),
              CitiesModel(name:'Perth', ),
              CitiesModel(name:'Adelaide',),
              CitiesModel(name:'Gold Coast',),
            ]),
        CountryModel(
            name: "Papua New Guinea",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_pp-flag.gif',
            cities: [
              CitiesModel(name:'Port Moresby',),
              CitiesModel(name:'Lae',),
              CitiesModel(name:'Arawa', ),
              CitiesModel(name:'Popondetta',),
              CitiesModel(name:'Madang',),
            ]),
        CountryModel(
            name: "New Zealand",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_nz-flag.gif',
            cities: [
              CitiesModel(name:'Auckland',),
              CitiesModel(name:'Wellington',),
              CitiesModel(name:'Tauranga', ),
              CitiesModel(name:'Dunedin',),
              CitiesModel(name:'Napier',),
            ]),
        CountryModel(
            name: "Fiji",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_fj-flag.gif',
            cities: [
              CitiesModel(name:'Suva',),
              CitiesModel(name:'Lautoka',),
              CitiesModel(name:'Nadi', ),
              CitiesModel(name:'Labasa',),
            ]),
        CountryModel(
            name: "Solomon Islands",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_bp-flag.gif',
            cities: [
              CitiesModel(name:'Honiara',),
              CitiesModel(name:'Auki',),
              CitiesModel(name:'Gizo', ),
              CitiesModel(name:'Buala',),
              CitiesModel(name:'Tulagi',),
            ]),
        CountryModel(
            name: "Micronesia",
            flag: 'https://www.kidlink.org/icons/f0-fm.gif',
            cities: [
              CitiesModel(name:'Weno',),
              CitiesModel(name:'Tofol',),
              CitiesModel(name:'Kolonia Town', ),
              CitiesModel(name:'Satowan',),
              CitiesModel(name:'Lukunor',),
            ]),
        CountryModel(
            name: "Vanuatu",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_nh-flag.gif',
            cities: [
              CitiesModel(name:'Port-Vila',),
              CitiesModel(name:'Luganville',),
              CitiesModel(name:'Isangel', ),
              CitiesModel(name:'Sola',),
              CitiesModel(name:'Lakatoro',),
            ]),
        CountryModel(
            name: "New Caledonia",
            flag: 'https://www.kidlink.org/icons/f0-fr.gif',
            cities: [
              CitiesModel(name:'Noumea',),
              CitiesModel(name:'Mont-Dore',),
              CitiesModel(name:'Dumbéa', ),
              CitiesModel(name:'Païta',),
              CitiesModel(name:'Wé',),
            ]),
        CountryModel(
            name: "French Polynesia",
            flag: 'https://www.kidlink.org/icons/f0-al.gif',
            cities: [
              CitiesModel(name:'Faaa',),
              CitiesModel(name:'Papeete',),
              CitiesModel(name:'Punaauia', ),
              CitiesModel(name:'Pirae',),
              CitiesModel(name:'Mahina',),
            ]),
        CountryModel(
            name: "Guam", flag: 'https://www.kidlink.org/icons/f0-gu.gif',
            cities: [
              CitiesModel(name:'Dededo',),
              CitiesModel(name:'Yigo',),
              CitiesModel(name:'Mangilao', ),

            ]),
        CountryModel(
            name: "Kiribati",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_kr-flag.gif',
            cities: [
              CitiesModel(name:'Tarawa',),
              CitiesModel(name:'Betio Village',),
              CitiesModel(name:'Bikenibeu Village', ),
              CitiesModel(name:'Bairiki Village',),
              CitiesModel(name:'Eita Village',),
            ]),
        CountryModel(
            name: "Tonga",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_tn-flag.gif',
            cities: [
              CitiesModel(name:'Nuku\'alofa',),
              CitiesModel(name:'Tongatapu',),
              CitiesModel(name:'Neiafu', ),
              CitiesModel(name:'Haveluloto',),
              CitiesModel(name:'Vaini',),
            ]),
        CountryModel(
            name: "Marshall Islands",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_rm-flag.gif',
            cities: [
              CitiesModel(name:'Majuro',),
              CitiesModel(name:'Ebaye',),
              CitiesModel(name:'Jabor', ),
              CitiesModel(name:'Wotje',),
              CitiesModel(name:'Mili',),
            ]),
        CountryModel(
            name: "Northern Mariana Islands",
            flag: 'https://www.kidlink.org/icons/f0-mp.gif',
            cities: [
              CitiesModel(name:'Saipan',),
              CitiesModel(name:'Tinian',),
            ]),
        CountryModel(
            name: "American Samoa",
            flag: 'https://www.kidlink.org/icons/f0-as.gif',
            cities: [
              CitiesModel(name:'Pago Pago',),
              CitiesModel(name:'Tāfuna',),
              CitiesModel(name:'Leone', ),
              CitiesModel(name:'Faleniu',),
              CitiesModel(name:'Aūa',),
            ]),
        CountryModel(
            name: "Palau",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_ps-flag.gif',
            cities: [
              CitiesModel(name:'Koror',),
              CitiesModel(name:'Koror Town',),
              CitiesModel(name:'Kloulklubed', ),
              CitiesModel(name:'Ulimang',),
              CitiesModel(name:'Mengellang',),
            ]),
        CountryModel(
            name: "Cook Islands",
            flag: 'https://www.kidlink.org/icons/f0-ck.gif',
            cities: [
              CitiesModel(name:'Avarua',),
            ]),
        CountryModel(
            name: "Tuvalu",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_tv-flag.gif',
            cities: [
              CitiesModel(name:'Funafuti',),
            ]),
        CountryModel(
            name: "Nauru",
            flag:
            'https://www.worldometers.info//img/flags/small/tn_nr-flag.gif',
            cities: [
              CitiesModel(name:'Arijejen',),

            ]),
        CountryModel(
            name: "Niue", flag: 'https://www.kidlink.org/icons/f0-nu.gif',
            cities: [
              CitiesModel(name:'Alofi',),
              CitiesModel(name:'Makefu Village',),
            ]),
        CountryModel(
            name: "Wallis and Futuna Islands",
            flag:
            'https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg',
            cities: [
              CitiesModel(name:'Mata-Utu',),
              CitiesModel(name:'Leava',),
            ]),
        CountryModel(
            name: "Tokelau",
            flag:
            'https://en.wikipedia.org/wiki/Tokelau#/media/File:Flag_of_Tokelau.svg',
            cities: [
              CitiesModel(name:'Fale old settlement',),
            ]),
      ]),
];