import 'dart:ffi';

import 'package:flutter/material.dart';

class WelcomeBackPage extends StatefulWidget {
  @override
  _WelcomeBackPageState createState() => _WelcomeBackPageState();
}

class _WelcomeBackPageState extends State<WelcomeBackPage> {
  final TextEditingController _studentIDController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Color.fromARGB(93, 8, 69, 192),
                  padding: EdgeInsets.only(top: 15, left: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://pbs.twimg.com/profile_images/1592444876569735170/EnoM_kjS_400x400.jpg', // Replace with your image URL
                          width: 80.0, // Set your desired width
                          height: 80.0, // Set your desired height
                          fit: BoxFit.cover,
                          alignment:
                              Alignment.center, // Set your desired BoxFit
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Your Name',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Text(
                            'Your Email',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Switch To Dark Mode",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                // Display the user's profile picture.
                //   Image.network(
                //  'https://wallpapers.com/images/hd/pretty-profile-pictures-6x5bfef0mhb60qyl.jpg'                  width: 100.0,
                //     height: 100.0,
                //   ),
                SizedBox(height: 16.0),
                // Display the user's display name.

                // Display a switch to toggle dark mode.

                SizedBox(height: 16.0),
                // Display the "Account Details" section.
                Text(
                  'Account Details',
                  style: TextStyle(
                      fontSize: 16.0, backgroundColor: Colors.amberAccent),
                ),
                SizedBox(height: 8.0),
                ListTile(
                  title: Text('Edit Profile'),
                  leading: Icon(Icons.person),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  tileColor: Colors.white,
                  splashColor: Colors.grey.shade100,
                  trailing: Icon(
                    Icons.arrow_forward,
                    opticalSize: 1,
                    size: 18,
                  ),
                  onTap: () {
                    // TODO: Implement edit profile screen.
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text('Change Password'),
                  leading: Icon(Icons.key),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  tileColor: Colors.white,
                  splashColor: Colors.grey.shade100,
                  onTap: () {
                    // TODO: Implement change password screen.
                  },
                ),
                // Display the "My Time Tables" section.
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text('View Time Tables'),
                  leading: Icon(Icons.calendar_today),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  tileColor: Colors.white,
                  splashColor: Colors.grey.shade100,
                  onTap: () {
                    // TODO: Implement view time tables screen.
                  },
                ),
                SizedBox(height: 16.0),
                // Display the "Log Out" button.
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement logout functionality.
                  },
                  child: Text('Log Out'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
