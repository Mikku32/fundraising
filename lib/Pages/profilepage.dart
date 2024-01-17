import 'package:flutter/material.dart';
import 'package:fundraising/Pages/edit_profile_page.dart';
import 'package:fundraising/Pages/help_page.dart';
import 'package:fundraising/Pages/settings_page.dart';
import 'package:fundraising/Widgets/bottom_Navigation.dart';
import 'package:fundraising/Widgets/profile_menu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigationPage()));
        }, icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text('Profile',
        style: GoogleFonts.kdamThmorPro(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
        
      ),
      centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
        
          padding: EdgeInsets.all( 20),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/boy.png'
                      )
                    )
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.amber),
                      child:
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
                        },
                        child: Icon(LineAwesomeIcons.pen,color: Colors.black,size: 18.0,)),
                    )
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('John Smith',style: GoogleFonts.robotoSlab(fontSize: 18,fontWeight: FontWeight.bold)),
              Text('JhonSmith@gmail.com',style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w500)),
              SizedBox(height: 20,),
              SizedBox(
                width: 200,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  side: BorderSide.none,
                  shape: StadiumBorder()),
                 child: Text('Edit Profile',style: GoogleFonts.roboto(fontSize: 15,
                 fontWeight: FontWeight.bold,
                 color: Colors.black
                 ),
                 ),
                 ),
              ),
              SizedBox(height: 30,),
              Divider(
                thickness: 0.4,
              ),
              SizedBox(height: 30,),
              SizedBox(height: 10,),
              ProfileMenu(
                title: 'Settings',
                icon: LineAwesomeIcons.cog,
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
                },
                color: Colors.black,
                endIcon: true,
              ),
              ProfileMenu(
                title: 'Billing Details',
                icon: LineAwesomeIcons.credit_card,
                onPress:() => showDialog(context: context, 
                builder: (context)=>AlertDialog(
                  title: Text('Billing Details'),
                  content: Text('Billing details will be shown here'),
                )),
                color: Colors.black,
                endIcon: true,
              ),
              ProfileMenu(
                title: 'Information',
                icon: LineAwesomeIcons.info,
                onPress: ()  => showDialog(context: context, 
                builder: (context)=>AlertDialog(
                  title: Text('Information'),
                  content: Text('Detailed info will be shown here'),
                )),
                color: Colors.black,
                endIcon: true,
              ),
              SizedBox(height: 20,),
              Divider(
                thickness: .4,
              ),

              SizedBox(height: 10,),
              ProfileMenu(
                title: 'Help',
                icon: LineAwesomeIcons.question,
                onPress: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>HelpPage()));
                },
                color: Colors.black,
                endIcon: true,
              ),
              ProfileMenu(
                title: 'Logout',
                icon: LineAwesomeIcons.alternate_sign_out,
                onPress: () {},
                color: Colors.red,
                endIcon: false,
              ),

            ]
          ),
        )
      ),
       );
  }
}

