import 'package:flutter/material.dart';
import 'package:fundraising/Pages/profilepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
        
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage(),));
        },
        icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text('Settings',
        style: GoogleFonts.kdamThmorPro(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold
        )),
      centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Settings will available here :)'),
          ]
        ),
      ),
    );
  }
}