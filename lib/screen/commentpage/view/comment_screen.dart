import 'package:flutter/material.dart';
import 'package:json/screen/commentpage/provider/comment_provider.dart';
import 'package:provider/provider.dart';

class commentpage extends StatefulWidget {
  const commentpage({Key? key}) : super(key: key);

  @override
  State<commentpage> createState() => _commentpageState();
}

class _commentpageState extends State<commentpage> {
  commentprovider? tpro;
  commentprovider? fpro;
  @override
  Widget build(BuildContext context) {
    tpro = Provider.of<commentprovider>(context, listen: true);
    fpro = Provider.of<commentprovider>(context, listen: false);
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
                child: Text("comment"),
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
                    title: Text("${tpro!.postlist[index].name}",
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text("${tpro!.postlist[index].email}",
                        style: TextStyle(color: Colors.white)),
                    trailing: Text("${tpro!.postlist[index].postId}",style: TextStyle(color: Colors.white)),
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
