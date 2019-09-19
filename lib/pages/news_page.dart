import 'package:flutter/material.dart';

import 'package:flutter_katkemsos/managers/news_manager.dart';
import 'package:flutter_katkemsos/services/service_locator.dart';
import 'package:flutter_katkemsos/model/news.dart';
//import 'package:flutter_katkemsos/widgets/cards/news_card.dart';
import 'package:flutter_katkemsos/widgets/cards/gallery_card.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    getIt.get<NewsManager>().loadNews.execute();

    return StreamBuilder<List<News>>(
      stream: getIt.get<NewsManager>().loadNews,
      builder: (BuildContext context, AsyncSnapshot<List<News>> snapshot) {
        print(snapshot);
        if(snapshot.hasData){
          return Container(
            height: 300.0,
            child: PageView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int i) {
                return GalleryCard(item: snapshot.data[i]);
              },
            ),
          );
        } else {
          return Container();
        }
      }
    );
  }
}