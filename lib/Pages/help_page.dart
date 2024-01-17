import 'package:flutter/material.dart';
import 'package:fundraising/Pages/profilepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
        
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage(),));
        },
        icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text('Help',
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
            Text('Help details will available here :)'),
          ]
        ),
      ),
    );
  }
}