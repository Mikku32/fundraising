import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    required this.color,
    required this.endIcon,
  });
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final Color color;
  final bool endIcon;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.lightBlueAccent.withOpacity(0.2)
          
        ),
        child: Icon(icon,color: Colors.black,),
      ),
      
      title: Text(title,style: GoogleFonts.robotoSlab(fontSize: 15,fontWeight: FontWeight.bold,color:color),),
      trailing: endIcon ?  Container(
         width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.2)
          
        ),
        child: Icon(LineAwesomeIcons.angle_right,color: Colors.black,size: 18.0,),
  ):null
    );
  }
}