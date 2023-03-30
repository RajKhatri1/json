import 'package:flutter/material.dart';
import 'package:json/screen/homepage/provider/Home_provider.dart';
import 'package:provider/provider.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  homeprovider? trueprovider;
  homeprovider? falseprovider;
  @override
  Widget build(BuildContext context) {
    trueprovider = Provider.of<homeprovider>(context,listen: true);
    falseprovider = Provider.of<homeprovider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text("Json user")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(onPressed: () {
                falseprovider!.jsonparsing();
              },child: Text("print"),),
            ),
            Expanded(
              child: ListView.builder(itemCount: trueprovider!.postlist.length,shrinkWrap: true,itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text("${trueprovider!.postlist[index].id}",style: TextStyle(color: Colors.white)),
                    title: Text("${trueprovider!.postlist[index].title}",style: TextStyle(color: Colors.white)),
                    subtitle: Text("${trueprovider!.postlist[index].body}",style: TextStyle(color: Colors.white)),
                  );
              },),
            ),
          ],
        ),
      ),
    );
  }
}
