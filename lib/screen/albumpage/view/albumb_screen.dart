import 'package:flutter/material.dart';
import 'package:json/screen/albumpage/provider/album_provider.dart';
import 'package:provider/provider.dart';

import '../../homepage/provider/Home_provider.dart';

class albumbpage extends StatefulWidget {
  const albumbpage({Key? key}) : super(key: key);

  @override
  State<albumbpage> createState() => _albumbpageState();
}

class _albumbpageState extends State<albumbpage> {
  albumbprovider? tprovider;
  albumbprovider? fprovider;

  @override
  Widget build(BuildContext context) {
    tprovider = Provider.of<albumbprovider>(context, listen: true);
    fprovider = Provider.of<albumbprovider>(context, listen: false);
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
                  fprovider!.jsonpar();
                },
                child: Text("album"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tprovider!.postlist.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text("${tprovider!.postlist[index].id}",
                        style: TextStyle(color: Colors.white)),
                    title: Text("${tprovider!.postlist[index].title}",
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text("${tprovider!.postlist[index].userId}",
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
