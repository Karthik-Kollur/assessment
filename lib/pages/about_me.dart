import 'dart:io';
import 'package:assesment/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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

  File? _selectedImage;

  Future<void> _selectImageFromGallery() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage!.path);
      });
    }
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 8.0),
            child: Container(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "About Me",
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 45.0,
              right: 45.0,
              left: 45.0,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: _selectedImage != null
                            ? FileImage(_selectedImage!)
                            : null,
                        backgroundColor: Colors.cyanAccent,
                        radius: 140.0,
                        child: _selectedImage != null
                            ? null
                            : Icon(
                                Icons.add,
                                size: 80.0,
                                color: Colors.black,
                              ),
                      ),
                      onTap: _selectImageFromGallery,
                    ),
                  ),
                  SizedBox(height: 50.0),
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
                  SizedBox(height: 20.0),
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
                  SizedBox(height: 20.0),
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
                  SizedBox(height: 20.0),
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
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          elevation: 3.0,
                          pressElevation: 6.0,
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
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          elevation: 3.0,
                          pressElevation: 6.0,
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
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          elevation: 3.0,
                          pressElevation: 6.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Bio*',
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
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
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

                    navigateToProfile();
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.cyanAccent),
                  minimumSize: MaterialStateProperty.all<Size>(Size(200, 50)),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
