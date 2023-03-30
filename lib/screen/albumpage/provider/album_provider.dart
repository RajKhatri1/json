import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json/screen/albumpage/model/albummodel.dart';

class albumbprovider extends ChangeNotifier{
  List<dynamic> postlist = [];
  Future<void> jsonpar()
  async {
    String jsondatastr =await rootBundle.loadString("assets/json/album.json");
    var json = jsonDecode(jsondatastr);
    List<dynamic> modellist = json.map((e)=> albumbmodel().fromjson(e)).toList();
    postlist = modellist;
    notifyListeners();
  }
}