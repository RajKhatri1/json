import 'package:flutter/material.dart';
import 'package:json/screen/todopage/provider/todoprovider.dart';
import 'package:provider/provider.dart';

class todopage extends StatefulWidget {
  const todopage({Key? key}) : super(key: key);

  @override
  State<todopage> createState() => _todopageState();
}

class _todopageState extends State<todopage> {
  todoprovider? tpro;
  todoprovider? fpro;
  @override
  Widget build(BuildContext context) {
    tpro = Provider.of<todoprovider>(context, listen: true);
    fpro = Provider.of<todoprovider>(context, listen: false);
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
                  fpro!.jsona();
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
