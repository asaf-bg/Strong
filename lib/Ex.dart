import 'dart:convert';
import 'package:flutter/material.dart';
import 'main.dart';



class Ex {
  int id;
  String name;
  int set1;
  int set2;
  int set3;
  DateTime date_created;
  DateTime date_last_edited;
  int is_archived = 0;

  Ex(this.id, this.name, this.set1,this.set2,this.set3, this.date_created,this.date_last_edited);


//   Map<String, dynamic> toMap(bool forUpdate) {
//     var data = {
// //      'id': id,  since id is auto incremented in the database we don't need to send it to the insert query.
//       'name': utf8.encode(name),
//       'set1': (set1),
//       'set2': (set2),
//       'set3': (set3),
//       'date_created': epochFromDate( date_created ),
//       'date_last_edited': epochFromDate( date_last_edited ),
//       'is_archived': is_archived  //  for later use for integrating archiving
//     };
//     if(forUpdate){
//       data["id"] = this.id;
//     }
//     return data;
//   }

// Converting the date time object into int representing seconds passed after midnight 1st Jan, 1970 UTC
  int epochFromDate(DateTime dt) {
    return dt.millisecondsSinceEpoch ~/ 1000 ;
  }

  UpdateSet(int setnum , int value)
  {
    switch(setnum) {
      case 1: {
        this.set1=value;
      }
      break;

      case 2: {
        this.set2=value;
      }
      break;
      case 3: {
        this.set3=value;
      }
      break;


      default: {
        return;
      }
      break;
    }
  }

  void archiveThisEX() {
    is_archived = 1;
  }


// overriding toString() of the note class to print a better debug description of this custom class
  @override toString() {
    return {
      'id': id,
      'set1': set1,
      'set2': set2,
      'set3': set3,
      'date_created': epochFromDate( date_created ),
      'date_last_edited': epochFromDate( date_last_edited ),
      'is_archived':is_archived
    }.toString();
  }

}