class albumbmodel
{
  String? title;
  int? userId,id;

  albumbmodel({this.title,this.userId, this.id});


  albumbmodel fromjson(Map m1)
  {
    id = m1['id'];
    userId = m1['userId'];
    title = m1['title'];
    albumbmodel p1 = albumbmodel(id: id,userId: userId,title: title);
    return p1;
  }
}