

import 'package:flutter/material.dart';
import 'package:fundraising/Pages/case_card_description.dart';
import 'package:fundraising/models/project_dummy.dart';



class SearchPage extends StatefulWidget {
     SearchPage ({
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
                labelText: "Search",
                prefixIcon: Icon(Icons.search)
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredProjects.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title:  Text(filteredProjects[index].title),
                  subtitle: Text(filteredProjects[index].author),
          
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

