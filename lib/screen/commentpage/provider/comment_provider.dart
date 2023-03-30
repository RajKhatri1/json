import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json/screen/commentpage/model/commentmodel.dart';

import '../../albumpage/model/albummodel.dart';

class commentprovider extends ChangeNotifier{
  List<dynamic> postlist = [];
  Future<void> jsonpa()
  async {
    String jsondatastr =await rootBundle.loadString("assets/json/comment.json");
    var json = jsonDecode(jsondatastr);
    List<dynamic> modellist = json.map((e)=> commmodel().fromjson(e)).toList();
    postlist = modellist;
    notifyListeners();
  }
}