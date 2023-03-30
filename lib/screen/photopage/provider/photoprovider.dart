import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../commentpage/model/commentmodel.dart';
import '../model/photomodel.dart';

class photoprovider extends ChangeNotifier{
  List<dynamic> postlist = [];
  Future<void> jsonpa()
  async {
    String jsondatastr =await rootBundle.loadString("assets/json/photo.json");
    var json = jsonDecode(jsondatastr);
    List<dynamic> modellist = json.map((e)=> photomodel().fromjson(e)).toList();
    postlist = modellist;
    notifyListeners();
  }
}