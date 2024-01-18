import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDialogue extends StatefulWidget {
  const CustomDialogue({super.key});

  @override
  State<CustomDialogue> createState() => _CustomDialogueState();
}

class _CustomDialogueState extends State<CustomDialogue> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(14),
            decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 200,
            width: 280,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Image.asset('assets/thankful.png',height: 100,width: 100,),
                  SizedBox(height: 20),
                  Text('Thank You for Donating :)',
                      style: GoogleFonts.robotoSlab(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ), 
                  ),
                  SizedBox(height: 20),
                ]
              ),
            )
          ),
        Positioned(
          right: 0,
          top: 0,
          child: OutlinedButton(onPressed: (){
            Navigator.pop(context);
            },
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.all(5),
              shape: CircleBorder(),
              backgroundColor: Colors.lightBlue,
            ),
          child: Icon(Icons.close,color: Colors.black,size: 20,),
          
          ),
        )
        ],
      ),
    );
  }
}