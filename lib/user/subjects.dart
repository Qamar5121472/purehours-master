import 'package:flutter/material.dart';
import 'package:purehours/widgets/listviewBuilder.dart';
import 'package:purehours/widgets/scaffold.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Providers/dbManager.dart';
class Subject extends StatefulWidget {
  const Subject({Key? key}) : super(key: key);

  @override
  State<Subject> createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  CollectionReference _collectionRef =
    FirebaseFirestore.instance.collection('subjects');
    List items = [];
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDatabaseList();
  }

  fetchDatabaseList() async {
    dynamic resultant = await DBManager().getSubjectList();

    if(resultant == null){
      print('Unable to retrive data');
    }else{
      setState(() {
        items = resultant;
        print(items);  
      });
      
    }
  }
  @override
  Widget build(BuildContext context) {
    
    // List<String> items = [ 'Coding', 'Programming'];
    return CustomScaffold(
      
      title: "Subjectadd",
      parameters: items,
      icon: const Icon(Icons.edit),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: Colors.white,
              ),
              child: ListTile(
                onTap: () => Navigator.of(context).pushNamed('/timerScreen'),
                horizontalTitleGap: 20,
                minVerticalPadding: 25,
                leading: CircleAvatar(
                  radius: 25,
                  child: Text(
                    items[index]['name'][0],
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
                title: Text(
                  items[index]['name'],
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
