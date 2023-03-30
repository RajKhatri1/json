import 'package:flutter/material.dart';
import 'package:json/screen/photopage/provider/photoprovider.dart';
import 'package:provider/provider.dart';

import '../../albumpage/provider/album_provider.dart';

class photopage extends StatefulWidget {
  const photopage({Key? key}) : super(key: key);

  @override
  State<photopage> createState() => _photopageState();
}

class _photopageState extends State<photopage> {
  photoprovider? tpro;
  photoprovider? fpro;
  @override
  Widget build(BuildContext context) {
    tpro = Provider.of<photoprovider>(context, listen: true);
    fpro = Provider.of<photoprovider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text("Json user")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  fpro!.jsonpa();
                },
                child: Text("photo"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tpro!.postlist.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text("${tpro!.postlist[index].id}",
                        style: TextStyle(color: Colors.white)),
                    title: Text("${tpro!.postlist[index].title}",
                        style: TextStyle(color: Colors.white)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
