import 'dart:math';

class commmodel
{
  String? name,email;
  int? id,postId;


  commmodel({this.name, this.email, this.id, this.postId});

  commmodel fromjson(Map m1)
  {
    id = m1['id'];
    name = m1['name'];
    email = m1['email'];
    postId = m1['postId'];
    commmodel p1 = commmodel(id: id,name: name,email: email,postId: postId);
    return p1;
  }
}