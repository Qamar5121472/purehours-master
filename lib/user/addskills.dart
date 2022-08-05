import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purehours/widgets/scaffold.dart';

class AddSkills extends StatefulWidget {
  const AddSkills({Key? key}) : super(key: key);

  @override
  State<AddSkills> createState() => _AddSkillsState();
}

class _AddSkillsState extends State<AddSkills> {
  CollectionReference skill = FirebaseFirestore.instance.collection('skills');
  // CollectionReference skill = FirebaseFirestore.instance.collection('skills');
  late String name;
  late String deficulty;
  final TextEditingController _skillNameControler = TextEditingController();
  final TextEditingController _skillDifficultyController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Add Skills',
      showIcon: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.9)),
              // color: Colors.white.withOpacity(0.9),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: TextField(
                          onChanged: (value){
                            name = value;
                          },
                          controller: _skillNameControler,
                          decoration: const InputDecoration(
                              hintText: 'Skill Name',
                              fillColor: Colors.transparent),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 8, bottom: 8),
                      //   child: TextField(
                      //     controller: _skillDifficultyController,
                      //     decoration: const InputDecoration(
                      //         hintText: 'Skill Difficulty',
                      //         fillColor: Colors.transparent),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: TextField(
                          onChanged: (value){
                            deficulty = value;
                          },
                          controller: _skillDifficultyController,
                          decoration: const InputDecoration(
                              hintText: 'Skill Difficulty',
                              fillColor: Colors.transparent),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ElevatedButton(
                          onPressed: () async {
                            await skill.doc().set({
                              'skillname':name,
                              'skilldeficulty': deficulty
                            }).then((value) => print('Subject Added'));
                            Navigator.of(context).pushNamed('/Your Skills');
                          },
                          child: const Text("Add"),
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(120, 50),
                            shadowColor: Colors.deepPurple[800],
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
