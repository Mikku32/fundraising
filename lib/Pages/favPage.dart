
import 'package:flutter/material.dart';
import 'package:fundraising/Widgets/bottom_Navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class FavPAge extends StatelessWidget {
  const FavPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigationPage(),));
        },
        icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text('Favorite',
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
            Text('Favorite projects will be shown here :)'),
          ]
        ),
      ),
      );
    
  }
}