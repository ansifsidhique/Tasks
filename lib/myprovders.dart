import 'dart:convert';

import 'package:apitask/Modelss.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';


class  MyProviders extends ChangeNotifier{

Future<List<Models>> showData()async{
 Response response=await get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
 try {
   if (response.statusCode == 200) {
     List<dynamic> data = jsonDecode(response.body);
     List<Models> userList =
     data.map((user) => Models.fromJson(user)).toList();
     return userList;
     notifyListeners();
   } else {
     throw 'failed to load data${response.statusCode}';
   }
 } catch (error) {
   throw 'failed to load data';
 }
}

}







