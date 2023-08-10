import 'package:attendenceapp/screens/Home/markattendance.dart';
import 'package:attendenceapp/screens/Home/viewattendance.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/usermodel.dart';
import '../../utils/color_utils.dart';
import 'leaveattendance.dart';
import 'markattendancee.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        titleSpacing: 20,
        title: Center(
          child: Row(
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 50,
              ),
              const SizedBox(width: 25),
              Text(
                "Attendance App",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: kPColor,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Hi, ",
                  style: GoogleFonts.montserrat(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${user!.displayName}",
                  style: GoogleFonts.montserrat(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              "Welcome to Attendance App",
              style: GoogleFonts.montserrat(
                color: Colors.black.withOpacity(0.7),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              child: Image.asset(
                "assets/images/attendance.png",
                height: 200,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButtonContainer(
                  text: "Mark Attendance",
                  icon: Icons.check_circle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => markatt(),
                      ),
                    );
                  },
                ),
                ElevatedButtonContainer(
                  text: "Mark Leave",
                  icon: Icons.event_note_outlined,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => leaveAttendance(),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButtonContainer(
                  text: "View Attendance",
                  icon: Icons.visibility,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => viewAttendance(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ElevatedButtonContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const ElevatedButtonContainer({
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
