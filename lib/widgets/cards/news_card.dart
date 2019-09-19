import 'package:flutter/material.dart';

import 'package:flutter_katkemsos/model/news.dart';
import 'package:flutter_katkemsos/style/style.dart';

class NewsCard extends StatelessWidget {
  final News item;

  NewsCard({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(item.download_url);
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(item.download_url),
                fit: BoxFit.cover,
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:5.0),
            child: Text(item.judul, style: Style.subTitle2.copyWith(color: Style.darkindigo),),
          )
        ],
      ),
    );
  }
}