import 'package:flutter/material.dart';
import 'package:fundraising/models/project_dummy.dart';


class DonationPage extends StatelessWidget {
  const DonationPage({super.key,
  required this.project
  
    
  });
final Project project;

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
                        tag: project.imgurl,
                        child: Image.asset(
                          project.imgurl,
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
                            project.title,
                            style: TextStyle(
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
                            Icon(Icons.access_time_outlined),
                            SizedBox(width: 5,),
                            Text('30 days remaining',
                            style: TextStyle(
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
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                          ),
                          Text('\$ ${project.target}',
                              style: TextStyle(
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
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                               
                          Text('\$ ${project.donation}',
                              style: TextStyle(
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
                    style: TextStyle(
                      fontSize: 18,
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
            hintText: 'Referal Number :  DNS 0000 000 00'
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
            hintText: 'Payement Method : UPI'
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
            hintText: 'Upi id'
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
            hintText: 'Amount'
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
                      onPressed: () => showDialog(context: context, 
                builder: (context)=>AlertDialog(
                  title: Text('Confirm Payment'),
                  content: Text('Payment will be confirmed'),
                )),
                      child: Text('Confirm Payment'))),
            )  
          ],
        ),
        
      ),
    );
  }
}