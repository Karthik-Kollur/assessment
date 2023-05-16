import 'package:assesment/pages/personal_page.dart';
import 'package:assesment/pages/profile_page.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  final _formKey = GlobalKey<FormState>();
  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  bool isNonBinarySelected = false;
  String selectedGender = '';
  List<Widget> list = [];

  TextEditingController usernameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  late String userName;
  late String location;
  late String dob;
  late String bio;

  void navigateToProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfilePage(
          username: userName,
          location: location,
          dob: dob,
          bio: bio,
          selectedGender: selectedGender,
        ),
      ),
    );
  }

  List<Widget> getListOfCard(BuildContext context) {
    var currentWidget = GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PersonalPage()));
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
                      userName,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      dob,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(bio),
            ),
            Row(
              children: [
                Container(
                  width: 120.0,
                  child: FilterChip(
                    label: Row(
                      children: [
                        Icon(Icons.location_pin),
                        Text(location),
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
                        Text(selectedGender),
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "About Me",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.cyanAccent,
                      radius: 100.0,
                      child: Icon(
                        Icons.add,
                        size: 80.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Username*',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  TextFormField(
                    controller: usernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your username',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Location*',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  TextFormField(
                    controller: locationController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your location';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your location',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Date of Birth*',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  TextFormField(
                    controller: dobController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your date of birth';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your date of birth',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Gender*',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isMaleSelected = !isMaleSelected;
                            isFemaleSelected = false;
                            isNonBinarySelected = false;
                          });
                        },
                        child: FilterChip(
                          label: Text(
                            'Male',
                            style: TextStyle(
                              color:
                                  isMaleSelected ? Colors.white : Colors.black,
                            ),
                          ),
                          onSelected: (bool value) {
                            setState(() {
                              selectedGender = 'Male';
                              isMaleSelected = !isMaleSelected;
                              isFemaleSelected = false;
                              isNonBinarySelected = false;
                            });
                          },
                          selected: isMaleSelected,
                          backgroundColor:
                              isMaleSelected ? Colors.black : Colors.white,
                          selectedColor: Colors.black,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFemaleSelected = !isFemaleSelected;
                            isMaleSelected = false;
                            isNonBinarySelected = false;
                          });
                        },
                        child: FilterChip(
                          label: Text(
                            'Female',
                            style: TextStyle(
                              color: isFemaleSelected
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          onSelected: (bool value) {
                            setState(() {
                              selectedGender = 'Female';
                              isFemaleSelected = !isFemaleSelected;
                              isMaleSelected = false;
                              isNonBinarySelected = false;
                            });
                          },
                          selected: isFemaleSelected,
                          backgroundColor:
                              isFemaleSelected ? Colors.black : Colors.white,
                          selectedColor: Colors.black,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isNonBinarySelected = !isNonBinarySelected;
                            isMaleSelected = false;
                            isFemaleSelected = false;
                          });
                        },
                        child: FilterChip(
                          label: Text(
                            'Non-binary',
                            style: TextStyle(
                              color: isNonBinarySelected
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          onSelected: (bool value) {
                            setState(() {
                              selectedGender = 'Non-binary';
                              isNonBinarySelected = !isNonBinarySelected;
                              isMaleSelected = false;
                              isFemaleSelected = false;
                            });
                          },
                          selected: isNonBinarySelected,
                          backgroundColor:
                              isNonBinarySelected ? Colors.black : Colors.white,
                          selectedColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Bio',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  TextFormField(
                    controller: bioController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your bio';
                      }
                      return null;
                    },
                    maxLines: 10,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your bio',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              userName = usernameController.text;
                              location = locationController.text;
                              dob = dobController.text;
                              bio = bioController.text;
                            });
                            getListOfCard(context);
                            navigateToProfile();
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.cyanAccent),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(150, 50)),
                        ),
                        child: Text(
                          'Continue',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
