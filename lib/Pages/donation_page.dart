import 'package:flutter/material.dart';
import 'package:fundraising/models/project_dummy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/quickalert.dart';


class DonationPage extends StatefulWidget {
  const DonationPage({super.key,
  required this.project
  
    
  });
final Project project;

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Stack(
          children:[ Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios)),
              Align(
                alignment: FractionalOffset.topCenter,
                
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    
                        height: 200,
                        width:double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 236, 239, 241),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Hero(
                        tag: widget.project.imgurl,
                        child: Image.asset(
                          widget.project.imgurl,
                          height: double.maxFinite,
                          width: double.maxFinite,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.project.title,
                            style: GoogleFonts.robotoSlab(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        Row(
                          children: [
                            Icon(Icons.access_time_outlined,size: 20  ,),
                            SizedBox(width: 5,),
                            Text(widget.project.remaining,
                            style: GoogleFonts.robotoSlab(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue
                            ),),
                          ],
                        ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(border: Border.all()),
                          ),
                          SizedBox(height: 25,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                'Target : ',
                                style: GoogleFonts.robotoSlab(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                          ),
                          Text('\$ ${widget.project.target}',
                              style: GoogleFonts.robotoSlab(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                             ],
                           ),
                          
                          
                               SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Raised so far: ',
                                style: GoogleFonts.robotoSlab(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                               
                          Text('\$ ${widget.project.donation}',
                              style:GoogleFonts.robotoSlab(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(251, 137, 14, 6),
                              )),
                            ],
                          ),
                         
                         
                        ],
                      ),
                    ),
                  )
                          ],
                        ),
                      ),
                ),
              ),
              SizedBox(
          height: 20,
              ),
              Text('Payment Information ',
                    style: GoogleFonts.kdamThmorPro(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )
               ),
        
              SizedBox(
          height: 25,
              ),
               TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'Referal Number :  DNS 0000 000 00',
            hintStyle: GoogleFonts.robotoSlab(
              fontSize: 15,
              fontWeight: FontWeight.w400
            ),
            ),
               ),  
               
           SizedBox(
          height: 15,
              ),
               TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'Payement Method : UPI',
             hintStyle: GoogleFonts.robotoSlab(
              fontSize: 15,
              fontWeight: FontWeight.w400
            ),
            ),
               ), 
           SizedBox(
          height: 15,
              ),
               TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'Upi id',
             hintStyle: GoogleFonts.robotoSlab(
              fontSize: 15,
              fontWeight: FontWeight.w400
            ),
            ),
               ), 
           SizedBox(
          height: 15,
              ),
               TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'Amount',
             hintStyle: GoogleFonts.robotoSlab(
              fontSize: 15,
              fontWeight: FontWeight.w400
            ),
            ),
               ),  
               
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      onPressed: (){
                        QuickAlert.show(
                          context: context,
                          type: QuickAlertType.success,
                          text: 'Payment is confirmed !!!',
                          title: 'Success',
                          showCancelBtn: false,
                          confirmBtnText: 'Close',
                          confirmBtnTextStyle: GoogleFonts.kdamThmorPro(
                            color: Colors.white
                          ),
                          confirmBtnColor: Colors.green,
                          autoCloseDuration: Duration(seconds: 10),
                        );
                      } ,
                
                      child: Text('Confirm Payment',
                      style: GoogleFonts.kdamThmorPro(
                        fontSize: 15,
                        color: Colors.white
                      ),
                      ))),
            )  
          ],
        ),
        
      ),
    );
  }
}