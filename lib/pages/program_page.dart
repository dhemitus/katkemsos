import 'package:flutter/material.dart';

import 'package:flutter_katkemsos/managers/news_manager.dart';
import 'package:flutter_katkemsos/services/service_locator.dart';
import 'package:flutter_katkemsos/model/news.dart';
import 'package:flutter_katkemsos/style/style.dart';
import 'package:flutter_katkemsos/style/icon.dart';
import 'package:flutter_katkemsos/widgets/buttons/main_button.dart';
import 'package:flutter_katkemsos/widgets/main_bar.dart';

class ProgramPage extends StatefulWidget {
  @override
  _ProgramPageState createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {

  @override
  void initState() {
    getIt.get<NewsManager>().loadProgram.execute();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return StreamBuilder<List<News>>(
      stream: getIt.get<NewsManager>().loadProgram,
      builder: (BuildContext context, AsyncSnapshot<List<News>> snapshot) {

        if(snapshot.hasData){
          return Scaffold(
            body: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top:25.0),
                  child: MainBar(
                    color: Style.verybluelight,
                    align: MainAxisAlignment.spaceBetween,
                    left: MainButton(icon: STIcon.arrowLeft, onPressed: (context) => Navigator.pop(context)),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 77,
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int i) {
                      News _item = snapshot.data[i];
                      return ListTile(
                        trailing: MainButton(icon: STIcon.arrowDown, onPressed: (context) => getIt.get<NewsManager>().download.execute(_item)),
                        title: Text(_item.judul, style: Style.subTitle2.copyWith(color: Style.badbluebox))
                      );
                    },
                  )
                ),
              ],
            )
          );
        } else {
          return Container(
            color: Colors.white,
          );
        }
      }
    );
  }
}