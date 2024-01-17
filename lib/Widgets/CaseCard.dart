import 'package:flutter/material.dart';

import 'package:fundraising/models/project_dummy.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Pages/case_card_description.dart';

class CaseCard extends StatelessWidget {
  const CaseCard({
    super.key,
     required this.project,
    
   
  });

  final Project project;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CaseCardDescription(
                      project: project,
                    )
                    )
                    );
      },
      child: Container(
        height: 150,
        margin: EdgeInsets.only(right: 10),
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 227, 234, 237),
          borderRadius: BorderRadius.circular(20),
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
                      style: GoogleFonts.robotoSlab(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Raised so far',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('\$ ${project.donation}',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    Expanded(
                      child: Slider(
                        min: 0.0,
                        max: 100.0,
                        value: 60.0,
                        onChanged: (value) {},
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
