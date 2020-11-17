import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/news.dart';

class NewsSmallCard extends StatelessWidget {
  const NewsSmallCard({
    this.heading,
    this.imageurl,
    this.time,
    Key key,
  }) : super(key: key);
  final String imageurl;
  final String heading;
  final String time;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NewsPage(
                    postedBy: 'admin',
                    postedTime: time,
                    newsHeading: heading,
                  )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Expanded(
                  flex: 3,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(imageurl),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          heading,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 20,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Text(
                        time,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 20,
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
