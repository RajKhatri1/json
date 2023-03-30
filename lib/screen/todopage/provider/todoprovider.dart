import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json/screen/todopage/model/todomodel.dart';

import '../../photopage/model/photomodel.dart';

class todoprovider extends ChangeNotifier{
  List<dynamic> postlist = [];
  Future<void> jsona()
  async {
    String jsondatastr =await rootBundle.loadString("assets/json/todo.json");
    var json = jsonDecode(jsondatastr);
    List<dynamic> modellist = json.map((e)=> todomodel().fromjson(e)).toList();
    postlist = modellist;
    notifyListeners();
  }
}