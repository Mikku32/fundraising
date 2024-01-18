

import 'package:flutter/material.dart';
import 'package:fundraising/Pages/case_card_description.dart';
import 'package:fundraising/models/project_dummy.dart';
import 'package:google_fonts/google_fonts.dart';



class SearchPage extends StatefulWidget {
    const SearchPage ({
      super.key,   });


 
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
   List<Project> filteredProjects=[];
    @override
  void initState() {
    super.initState();
    // Initialize filteredProjects with the full list of projects
    filteredProjects = [...dummyData]; //list spread operator to make copy of a list
  }

  void _filterProjects(String query) {
    setState(() {
      filteredProjects = dummyData
          .where((project) =>
              project.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterProjects,
              decoration: InputDecoration(
                hintText: 'Search....',
                hintStyle: GoogleFonts.robotoSlab(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  
                )
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredProjects.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title:  Text(filteredProjects[index].title, 
                  style: GoogleFonts.robotoSlab(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                    ),),
                  subtitle: Text(filteredProjects[index].author,
                  style: GoogleFonts.robotoSlab(
                    fontSize: 10,
                    fontWeight: FontWeight.w400
                  ),
                  ),
          
                  onTap: () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: 
                   (context) => CaseCardDescription(project: filteredProjects[index]),)
                   );
      },
                  
                );
              },
            )
            )
        ],
      )
    );
  }
}

