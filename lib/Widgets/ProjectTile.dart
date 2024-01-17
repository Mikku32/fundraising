import 'package:flutter/material.dart';
import 'package:fundraising/Pages/case_card_description.dart';
import 'package:fundraising/models/project_dummy.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({
    super.key,
    required this.project,
  });
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(project.title,
                      style:
                         GoogleFonts.robotoSlab(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                         )
                         ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(project.author,
                      style:
                         GoogleFonts.robotoSlab(
                          
                         )
                         ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context) => CaseCardDescription(project: project)));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(color: Colors.lightGreen),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Donate',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
