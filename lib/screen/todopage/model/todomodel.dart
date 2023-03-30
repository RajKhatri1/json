class todomodel
{
  String? title;
  int? albumId,id;

  todomodel({ this.title, this.id});


  todomodel fromjson(Map m1)
  {
    id = m1['id'];
    title = m1['title'];
    todomodel p1 = todomodel(id: id,title: title);
    return p1;
  }
}