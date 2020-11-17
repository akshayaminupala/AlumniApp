import 'package:flutter/material.dart';
import 'package:sarvali_alumni/constants.dart';

class NewsPage extends StatefulWidget {
  static const String id = 'newscard';
  final String postedBy;
  final String postedTime;
  final String newsHeading;
  final String imageUrl;
  const NewsPage(
      {Key key,
      this.postedBy,
      this.postedTime,
      this.newsHeading,
      this.imageUrl})
      : super(key: key);
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image(
            height: 35,
            image: AssetImage('images/sarvali.jpeg'),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.newsHeading,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            widget.postedBy,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.postedTime,
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Icon(
                            Icons.share,
                            color: Colors.orange,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(widget.imageUrl),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(contentlong),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
