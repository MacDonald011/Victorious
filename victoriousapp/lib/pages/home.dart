// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:victoriousapp/drawerpages/activities.dart';
import 'package:victoriousapp/drawerpages/editprofile.dart';
import 'package:victoriousapp/drawerpages/notifications.dart';
import 'package:victoriousapp/drawerpages/settings.dart';
import 'package:victoriousapp/utils/activity.dart';
import 'package:victoriousapp/views/Card.dart';
import 'package:victoriousapp/views/Todo.dart';
import 'package:victoriousapp/views/messages.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final List packagesforyou = [
    ['Bible App', 'bible aPP', 'see more...'],
    ['Media handles', 'Social', 'see more...'],
    ['Counsel', 'Counselling', 'see more...'],
  ];
  // final List weeklyActivities = [
  //   ['Manna from Heaven', 'Wednesday', 4],
  //   ['Intercessory', 'Fridays', 3],
  //   ['Evangelism', 'Tuesdays', 5],
  //   ['House Fellowships', 'Fridays', 5],
  // ];

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // APP BAR
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              },
              icon: const Icon(Icons.search))
        ],
      ),

      // DRAWER//
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(),
                child: Center(
                  child: UserAccountsDrawerHeader(
                    // currentAccountPicture:
                    //     CircleAvatar(child: Image(image: NetworkImage(""))),
                    accountName: Text(
                      'VictoriousPeopleAssembly',
                      style: TextStyle(fontSize: 35),
                    ),
                    accountEmail: Text('Victorious@gmail.com'),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person_add),
                title: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfile()));
                  },
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.local_activity),
                title: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Activity()));
                  },
                  child: const Text(
                    'Activites',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()));
                  },
                  child: const Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.check_box),
                title: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const todo()));
                  },
                  child: const Text(
                    'To Do list',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const notify()));
                  },
                  child: const Text(
                    'Notifications',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // BODY
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            // appbar
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                height: 50,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.church),
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            // Discover branch
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'Discover Branch',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // search bar
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 30,
                        child: const Icon(Icons.search),
                      ),
                    ),
                    const Expanded(
                      // ignore: unnecessary_const
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Locate Nearest Branch...'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'For You',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                  height: 160,
                  child: ListView.builder(
                    itemCount: packagesforyou.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return PackageCard(
                        CardName: packagesforyou[index][0],
                        CardTitle: packagesforyou[index][1],
                        word: packagesforyou[index][2],
                      );
                    },
                  )),
            ),
            const SizedBox(height: 25),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  const Text('Weekly Activities',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.calendar_month)
                ],
              ),
            ),
            Container(
              color: Colors.grey[300],
              height: 170,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  // ignore: prefer_const_constructors
                  Activities(
                    ActivityTitle: 'Manna from Heaven',
                    ActivityDate: 'Wednesday',
                    ActivityTime: 5,
                    color: Colors.blue,
                  ),

                  // ignore: prefer_const_constructors
                  Activities(
                    ActivityTitle: 'House Fellowship',
                    ActivityDate: 'Friday',
                    ActivityTime: 5,
                    color: Colors.green,
                  ),
                  Activities(
                    ActivityTitle: 'Counselling',
                    ActivityDate: 'Saturday',
                    ActivityTime: 2,
                    color: Colors.deepOrange,
                  ),
                  Activities(
                    ActivityTitle: 'Evangelism',
                    ActivityDate: 'Saturday',
                    ActivityTime: 12,
                    color: Colors.deepPurple,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Center(
                child: SmoothPageIndicator(
                    effect: ExpandingDotsEffect(
                        dotWidth: 12, activeDotColor: Colors.deepPurple),
                    controller: _controller,
                    count: 4)),
            SizedBox(
              height: 25,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    'Resource Persons',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.verified,
                    color: Colors.deepPurple,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              height: 80,
                              child: Icon(Icons.person),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Pst Mike Onyeka',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.deepPurple,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  'Senior Pastor',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'V P A I',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.phone,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              height: 80,
                              child: Icon(Icons.person),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Pst Benson Isiukwu',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.deepPurple,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  ' Resident Pastor',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'City of Liberty',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.phone,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              height: 80,
                              child: Icon(Icons.person),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Ezinwa Mbalewe',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.deepPurple,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  'Head of Elders Council',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'City of Liberty',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.phone,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // BOTTOMNAVIGATION BAR/

      // FLOATING BUTTON
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const messages()));
        },
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<String> allData = [
    'American',
    'Russia',
    'China',
    'Nigeria',
    'Gabon',
    'India',
    'SouthAfrica',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
