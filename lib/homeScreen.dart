import 'package:blogging/createPostScreen.dart';
import 'package:flutter/material.dart';
import 'package:blogging/Articles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Article> articles = [
    Article(
        title: 'What is dart?',
        description:
            'Dart is a client-optimized programming language for apps on multiple platforms. It is developed by Google and is used to build mobile, desktop, server, and web applications.',
        image:
            "https://ui-avatars.com/api/?background=A52A2A&color=fff&size=256&name=W",
        publishedAt: 'Jan 26, 2021'),
    Article(
        title: 'What is flutter?',
        description:
            'Flutter is Google\'s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. In this codelab, you\'ll create a simple chat application for Android, iOS, and (optionally) the web.',
        image:
            "https://ui-avatars.com/api/?background=089D45&color=fff&size=256&name=W",
        publishedAt: 'Jan 26, 2021')
  ];

  Widget articleCard(Article) {
    return Container(
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      child: Card(
        // color: Colors.orange,
        child: Container(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
              // color: Colors.orange,
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 2.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(Article.image),
                        ))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      Article.title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 60,
                    child: Text(
                      Article.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 65,
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  Article.publishedAt,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            'Your Blogs',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        body: Column(
          children: <Widget>[
            Column(
                children: articles.map((p) {
              return articleCard(p);
            }).toList())
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CreatePostScreen();
            }));
          },
          tooltip: 'Create New Article',
          child: Icon(Icons.add),
        ));
  }
}
