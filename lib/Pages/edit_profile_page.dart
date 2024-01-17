import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  final _nameController=TextEditingController(
    text: ''
  );

  final _emailController=TextEditingController(
    text: ''
  );

  final _phoneController=TextEditingController(
    text: '+91'
  );
  final _passwordController=TextEditingController(
    text: ''
  );
  final _password2Controller=TextEditingController(
    text: ''
  );
  final _formKey = GlobalKey<FormState>();

  //for email validation
  bool isEmailValid(String email) {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
    );
    return emailRegex.hasMatch(email);
  }

  //A function that validate user entered password
  bool validatePassword(String pass){
    RegExp pass_valid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");//regExprssion for validate password
    String password = pass.trim();
    if(pass_valid.hasMatch(password)){
      return true;
    }else{
      return false;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text('Edit Profile',
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
          padding: EdgeInsets.all(20),
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
                      color: Colors.amber
                      ),
                      child: InkWell(
                        onTap:() => showDialog(context: context,
                        builder: (context)=>AlertDialog(
                          title: Text('Add Photo'),
                          content: Text('Choose from'),
                          
                        )),
                        child: Icon(LineAwesomeIcons.camera,color: Colors.black,size: 18.0,)),
                    )
                  )
                ]
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Name cannot be empty';
                        }
                        return null;
                      },
                      controller: _nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        prefixIcon: Icon(LineAwesomeIcons.user),
                        labelText: 'Name',  
                      )
                    ),
                    SizedBox(height: 20,),

                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Email cannot be empty';
                        }
                        if(!value.contains('@')){
                          return 'Enter a valid email';
                        }
                        if(!isEmailValid(value)){
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        prefixIcon: Icon(LineAwesomeIcons.envelope),
                        labelText: 'Email',
                      )
                    ),
                    SizedBox(height: 20,),

                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Phone cannot be empty';
                        }
                        if(value.length<13 || value.length>13){
                          return 'Enter a valid phone number';
                        }
                        return null;
                      },
                      controller: _phoneController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        prefixIcon: Icon(LineAwesomeIcons.phone),
                        labelText: 'Phone',
                      )
                    ),
                    SizedBox(height: 20,),

                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Password cannot be empty';
                        }
                        if(value.length<8){
                          return 'Password must be atleast 8 characters';
                        }
                        if(!validatePassword(value)){
                          return 'Password must contain at least one uppercase letter, one lowercase letter, one number and one special character';
                        }
                        return null;
                      },
                      controller: _passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        prefixIcon: Icon(LineAwesomeIcons.fingerprint),
                        labelText: 'Password',
                      )
                    ),
                      SizedBox(height: 20,),

                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Password cannot be empty';
                        }

                        if(value!=_passwordController.text){
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                      controller: _password2Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        prefixIcon: Icon(LineAwesomeIcons.fingerprint),
                        labelText: 'Confirm Password',
                      )
                    ),
                    SizedBox(
                      height: 30,
                    ),

                  ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data'))
                      );
                    }
                  },
                  child: Text('Edit Profile',
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.black)
                    ),
                    backgroundColor: Colors.amber,
                    shadowColor: const Color.fromARGB(255, 53, 51, 51),
                    
                  )
                )
                  ]
                ),)
            ],
          )
        ),
      ),
    );
  }
}