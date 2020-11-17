import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/news.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(
      {Key key,
      this.imageurl,
      this.mainContext,
      this.newsCategorie,
      this.newsHeading,
      this.onTap,
      this.postedBy,
      this.postedTime})
      : super(key: key);
  final String imageurl;
  final String newsHeading;
  final String newsCategorie;
  final Function onTap;
  final String postedBy;
  final String postedTime;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: onTap ??
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewsPage(
                          postedBy: postedBy,
                          postedTime: postedTime,
                          newsHeading: newsHeading,
                          imageUrl: imageurl,
                        )),
              );
            },
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  image: AssetImage(imageurl),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    color: Colors.orange.withOpacity(0.9),
                    child: Text(
                      newsCategorie,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  newsHeading,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    postedBy,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    postedTime,
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
            )
          ],
        ),
      ),
    );
  }
}
