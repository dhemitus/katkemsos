import 'package:flutter/material.dart';
import 'package:flutter_katkemsos/pages/news_page.dart';
//import 'package:flutter_katkemsos/pages/program_page.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:flutter_katkemsos/pages/map_page.dart';
import 'package:flutter_katkemsos/pages/gallery_page.dart';
import 'package:flutter_katkemsos/style/style.dart';
import 'package:flutter_katkemsos/style/icon.dart';
import 'package:flutter_katkemsos/widgets/main_bar.dart';
import 'package:flutter_katkemsos/widgets/buttons/main_button.dart';
import 'package:flutter_katkemsos/widgets/menus/menu_drawer.dart';
import 'package:flutter_katkemsos/managers/menu_manager.dart';
import 'package:flutter_katkemsos/services/service_locator.dart';

class ContainerPage extends StatefulWidget {
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  ScrollController _sc = ScrollController();
  PanelController _pc = PanelController();
  bool _unscroll = true;

  @override
  void initState() {

    super.initState();

    _sc.addListener(() {
      setState(() {
        if(_pc.isPanelOpen()) {
          _unscroll = _sc.offset <= 0;
        }
      });
    });
  }

  _onOut(){
    getIt.get<MenuManager>().sendId.execute(null);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: getIt.get<MenuManager>().sendId,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return Scaffold(
          key: _scaffoldKey,
          drawer: Drawer(
            child: MenuDrawer(id: snapshot.data)
          ),
          body: Stack(
            children: <Widget>[
              MapPage(),
              Padding(
                padding: EdgeInsets.only(top:40.0, left: 20.0, right: 20.0),
                child: MainBar(
                  color: Style.white,
                  shadow: true,
                  align: MainAxisAlignment.spaceBetween,
                  left: Row(
                    children: <Widget>[
                      MainButton(icon: STIcon.menu, onPressed: (context) => _scaffoldKey.currentState.openDrawer()),
                      Text('Komunitas Adat Terpencil', style: Style.subTitle2.copyWith(color: Style.darkindigo),)
                    ],
                  ),
                    right: MainButton(icon: STIcon.backToTop, onPressed: (context) => _onOut()),
                ),
              ),
              SlidingUpPanel(
                onPanelOpened: () => setState(() => _unscroll = false),
                onPanelClosed: () => setState(() => _unscroll = true),
                minHeight: 18.0,
                parallaxOffset: .5,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
                maxHeight: MediaQuery.of(context).size.height,
                panel: Column(
                  children: <Widget>[
                    Container(
                      height: 45.0,
                      alignment: Alignment.topCenter,
                      child: Text("==", style: Style.caption.copyWith(color: Style.badbluebox),),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height - 45.0,
                      child: ListView(
                        physics: _unscroll ? NeverScrollableScrollPhysics() : ClampingScrollPhysics(),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left:22.0),
                            child: Text('Gallery', style: Style.h5.copyWith(color: Style.cloudyblue) ),
                          ),
                          GalleryPage(),
/*                          Padding(
                            padding: EdgeInsets.only(top: 10.0, left:10.0, bottom: 10.0),
                            child: Text('Program KAT', style: Style.h5.copyWith(color: Style.cloudyblue) ),
                          ),
                          ProgramPage(),*/
                          Padding(
                            padding: EdgeInsets.only(left:22.0),
                            child: Text('Berita Terbaru', style: Style.h5.copyWith(color: Style.cloudyblue) ),
                          ),
                          NewsPage(),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        );
      }
    );
  }
}