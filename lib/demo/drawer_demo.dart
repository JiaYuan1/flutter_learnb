import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'wanghao',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('1305081045@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://resources.ninghao.org/images/wanghao.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage(
                        'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1207259703,335941331&fm=200&gp=0.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.6),
                        BlendMode.hardLight))),
          ),
          ListTile(
            title: Text('Messages', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, color: Colors.black38),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, color: Colors.black38),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Setting', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, color: Colors.black38),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
