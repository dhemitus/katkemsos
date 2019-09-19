import 'package:flutter/material.dart';

import 'package:flutter_katkemsos/managers/news_manager.dart';
import 'package:flutter_katkemsos/services/service_locator.dart';
import 'package:flutter_katkemsos/model/news.dart';
import 'package:flutter_katkemsos/widgets/cards/gallery_card.dart';

class GalleryPage extends StatelessWidget {

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    getIt.get<NewsManager>().loadGallery.execute();

    return StreamBuilder<List<News>>(
      stream: getIt.get<NewsManager>().loadGallery,
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