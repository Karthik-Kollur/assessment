import 'package:assesment/pages/about_me.dart';
import 'package:assesment/pages/public_page.dart';
import 'package:assesment/pages/circle_rings.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  String username;
  String location;
  String dob;
  String bio;
  String selectedGender;

  ProfilePage({
    Key? key,
    required this.username,
    required this.location,
    required this.dob,
    required this.bio,
    required this.selectedGender,
  }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Widget> list = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      list = getListOfCard(context);
    });
  }

  List<Widget> getListOfCard(BuildContext context) {
    var currentWidget = GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PublicPage()));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.cyanAccent,
                  radius: 50.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    Text(
                      widget.username,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.dob,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(widget.bio),
            ),
            Row(
              children: [
                Container(
                  width: 120.0,
                  child: FilterChip(
                    label: Row(
                      children: [
                        Icon(Icons.location_pin),
                        Text(widget.location),
                      ],
                    ),
                    onSelected: (bool value) {},
                    backgroundColor: Colors.white70,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  width: 120.0,
                  child: FilterChip(
                    label: Row(
                      children: [
                        Icon(Icons.male),
                        Text(widget.selectedGender),
                      ],
                    ),
                    onSelected: (bool value) {},
                    backgroundColor: Colors.white70,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 120.0,
                  child: FilterChip(
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.white,
                        ),
                        Text(
                          "Music",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onSelected: (bool value) {},
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  width: 120.0,
                  child: FilterChip(
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.white,
                        ),
                        Text(
                          "Music",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onSelected: (bool value) {},
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  width: 120.0,
                  child: FilterChip(
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.white,
                        ),
                        Text(
                          "Music",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onSelected: (bool value) {},
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            ),
            ConnectedCircles(),
          ],
        ),
      ),
    );

    list.add(currentWidget);

    list.add(SizedBox(
      height: 10,
    ));

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length - 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 45.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AboutMe()));
                              },
                              icon: Icon(
                                Icons.edit,
                                size: 32.0,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.settings_outlined, size: 32.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PublicPage()),
                    );
                  },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.cyanAccent,
                              radius: 50.0,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  'John Doe',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "30 years",
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "'SpaceX is welcoming a key new hire. Kathy Lueders, who led NASA's human spaceflight program before retiring in April, is joining Elon Musk's firm as general manager and will work'",
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 120.0,
                              child: FilterChip(
                                label: Row(
                                  children: [
                                    Icon(Icons.location_pin),
                                    Text("India"),
                                  ],
                                ),
                                onSelected: (bool value) {},
                                backgroundColor: Colors.white70,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Container(
                              width: 120.0,
                              child: FilterChip(
                                label: Row(
                                  children: [
                                    Icon(Icons.male),
                                    Text("Male"),
                                  ],
                                ),
                                onSelected: (bool value) {},
                                backgroundColor: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 120.0,
                              child: FilterChip(
                                label: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Music",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                onSelected: (bool value) {},
                                backgroundColor: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Container(
                              width: 120.0,
                              child: FilterChip(
                                label: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Music",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                onSelected: (bool value) {},
                                backgroundColor: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Container(
                              width: 120.0,
                              child: FilterChip(
                                label: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Music",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                onSelected: (bool value) {},
                                backgroundColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                list[index],
                Divider(
                  color: Colors.black,
                  thickness: 2.0,
                ),
                list[index],
                Divider(
                  color: Colors.black,
                  thickness: 2.0,
                ),
                list[index],
                Divider(
                  color: Colors.black,
                  thickness: 2.0,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
