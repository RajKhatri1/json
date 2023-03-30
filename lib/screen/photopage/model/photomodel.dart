class photomodel
{
  String? url,title;
  int? albumId,id;

  photomodel({this.url, this.title, this.albumId, this.id});


  photomodel fromjson(Map m1)
  {
    id = m1['id'];
    albumId = m1['userId'];
    title = m1['title'];
    url = m1['body'];
    photomodel p1 = photomodel(id: id,albumId: albumId,title: title,url: url);
    return p1;
  }
}