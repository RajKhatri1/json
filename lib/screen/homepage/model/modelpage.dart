class postmodel
{
  String? title,body;
  int? userid,id;

  postmodel({this.title, this.body, this.userid, this.id});


  postmodel fromjson(Map m1)
  {
    id = m1['id'];
    userid = m1['userId'];
    title = m1['title'];
    body = m1['body'];
    postmodel p1 = postmodel(id: id,userid: userid,title: title,body: body);
    return p1;
  }
}