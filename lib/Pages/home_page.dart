// ignore_for_file: prefer_const_constructors
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fundraising/Pages/help_page.dart';

import 'package:fundraising/Pages/profilepage.dart';
import 'package:fundraising/Pages/settings_page.dart';

import 'package:fundraising/Widgets/CaseCard.dart';
import 'package:fundraising/Widgets/ProjectTile.dart';
import 'package:fundraising/Widgets/profile_menu.dart';
import 'package:fundraising/models/project_dummy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
  
     drawer: Drawer(
       backgroundColor: Colors.lightBlue.shade50,
       child: ListView(
         children: [
           DrawerHeader(
             child: Column(
              children: [
                SizedBox(
                  height: 90,
                  width: 90,
                  child: ClipRRect(
                    
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/boy.png'
                    )
                  )
                ),
              
              Text('John Smith',style: GoogleFonts.robotoSlab(fontSize: 15,fontWeight: FontWeight.bold)),
              Text('JhonSmith@gmail.com',style: GoogleFonts.roboto(fontSize: 10,fontWeight: FontWeight.w500)),
              ],
             )
           ),
           ProfileMenu(
             title: 'Profile',
             icon: LineAwesomeIcons.user,
             onPress: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
             },
              color: Colors.black,
              endIcon: true
           ),
           ProfileMenu(
             title: 'Billing Details',
             icon: LineAwesomeIcons.credit_card,
             onPress: () => showDialog(context: context, 
                builder: (context)=>AlertDialog(
                  title: Text('Billing Details'),
                  content: Text('Billing details will be shown here'),
                )),
              color: Colors.black,
              endIcon: true
           ),
           ProfileMenu(
             title: 'Settings',
             icon: LineAwesomeIcons.cog,
             onPress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
             },
              color: Colors.black,
              endIcon: true
           ),
           ProfileMenu(
             title: 'Help',
             icon: LineAwesomeIcons.question,
             onPress: (){
              Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>HelpPage()));
             },
              color: Colors.black,
              endIcon: true
           ),
           SizedBox(
             height: 30,
           ),
           Divider(),
           SizedBox(
             height: 50,
           ),
           ProfileMenu(
             title: 'About',
             icon: LineAwesomeIcons.info,
             onPress: () => showDialog(context: context, 
                builder: (context)=>AlertDialog(
                  title: Text('About'),
                  content: Text('About the app'),
                )),
              color: Colors.black,
              endIcon: false
           ),
           ProfileMenu(
             title: 'Logout',
             icon: LineAwesomeIcons.alternate_sign_out,
             onPress: (){},
              color: Colors.red,
              endIcon: false
           ),

         ]
       )
     ),
      
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData().copyWith(
            color: Colors.black
          ),
          actions: [
            IconButton(icon: Icon(Icons.notifications),onPressed:() => showDialog(context: context,
             builder: (context) => AlertDialog(title: Text('Notifications'),
             content: Text('No new notifications'),)),)
          ],
        ),
        body: SafeArea(
          
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
                Column(
                  crossAxisAlignment:
                   CrossAxisAlignment.start,
                    children: [
             
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(final project in dummyData)
                      CaseCard(
                      project: project,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.adjust),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ending',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '5699 projects',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.add_reaction),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Donated',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text('199 Projects',
                                  style: TextStyle(fontSize: 10)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text('Explore Projects :)',
                  style:GoogleFonts.kdamThmorPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  )
                  ),
              SizedBox(height: 30),
             for(final project in dummyData)
              ProjectTile(project: project),
            ]),
          ),
        )));
  }
}
