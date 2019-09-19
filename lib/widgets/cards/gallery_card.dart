import 'package:flutter/material.dart';

import 'package:flutter_katkemsos/model/news.dart';
import 'package:flutter_katkemsos/style/style.dart';

class GalleryCard extends StatelessWidget {
  final News item;

  GalleryCard({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(item.download_url);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 22.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
            shape: BoxShape.rectangle,
              boxShadow: <BoxShadow> [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 22.0,
                    offset: Style.downbottom
                )
              ],
//              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(item.download_url),
                fit: BoxFit.cover,
              )
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Container(
            padding: EdgeInsets.only(top:10.0, left: 10.0, right: 10.0),
              child: Text(item.judul, style: Style.subTitle2.copyWith(color: Style.black),),
            ),
          )
        ],
      ),
    );
  }
}