import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json/screen/homepage/model/modelpage.dart';

class homeprovider extends ChangeNotifier{
 List<dynamic> postlist = [];
Future<void> jsonparsing()
async {
 String jsondatastr =await rootBundle.loadString("assets/json/post.json");
 var json = jsonDecode(jsondatastr);
 List<dynamic> modellist = json.map((e)=> postmodel().fromjson(e)).toList();
  postlist = modellist;
 notifyListeners();
}
}