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
                    width: 50.0,
                    height: 50.0,
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
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Container(
                width: 90,
                height: 50,
                child: Text(
                  Article.publishedAt,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
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
    );
  }
}
