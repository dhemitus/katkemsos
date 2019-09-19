import 'package:flutter/material.dart';

import 'package:flutter_katkemsos/style/style.dart';
import 'package:flutter_katkemsos/model/menu.dart';

class MenuDrawer extends StatelessWidget {

  final Function onPressed;
  final Widget icon;
  final int id;
  List<MenuItem> _menu;

  MenuDrawer({Key key, this.icon, this.onPressed, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(id == null) {
      _menu = defaultMenu;
    } else {
      _menu = extendMenu;
    }

    return ListView.builder(
      itemCount: _menu.length,
      itemBuilder: (BuildContext context, int i) {
        if(_menu[i].label == 'HEAD') {
          return DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 120.0,
//                    child: Image.asset('assets/images/matel.png'),
                ),
              ],
            ),
          );

        } else {
          return ListTile(
            title: Text(_menu[i].label, style: Style.subTitle1.copyWith(color: _menu[i].label == 'Login' ? Style.green : Style.slategrey)),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => _menu[i].link));
            },
          );
        }
      },
    );
  }
}
