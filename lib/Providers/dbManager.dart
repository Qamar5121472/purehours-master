import 'package:cloud_firestore/cloud_firestore.dart';


class DBManager{

  final CollectionReference user = FirebaseFirestore.instance.collection('skills');
  Future getUserList()async{
    List itemList = [];
    try{
      await user.get().then((QuerySnapshot) {
        QuerySnapshot.docs.forEach((element) {
          itemList.add(element.data());
         });
      });
      return itemList;
    } catch(e){
      print(e.toString());
      return null;
    }
  }


    final CollectionReference activity = FirebaseFirestore.instance.collection('activity');
  Future getActivityList()async{  
    List itemList = [];
    try{
      await activity.get().then((QuerySnapshot) {
        QuerySnapshot.docs.forEach((element) {
          itemList.add(element.data());
         });
      });
      return itemList;
    } catch(e){
      print(e.toString());
      return null;
    }
  }



  // for subject
   final CollectionReference subject = FirebaseFirestore.instance.collection('subjects');
  Future getSubjectList()async{  
    List itemList = [];
    try{
      await subject.get().then((QuerySnapshot) {
        QuerySnapshot.docs.forEach((element) {
          itemList.add(element.data());
         });
      });
      return itemList;
    } catch(e){
      print(e.toString());
      return null;
    }
  }
}