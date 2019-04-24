import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          LsitItem(title: 'FLoatingActionButton',page: FloatingActionButtonDemo(),),
          LsitItem(title: 'ButtonDemo',page: ButtonDemo(),),
        ],
      ),
    );
  }
}




class ButtonDemo extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {

    final Widget FlatButtonDemo=Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Button'),
                onPressed: (){},
                splashColor: Colors.grey,
                textColor: Theme.of(context).accentColor,
              ),
                FlatButton.icon(
               label:Text('Button'),
               icon: Icon(Icons.add),
                onPressed: (){},
                splashColor: Colors.grey,
                textColor: Theme.of(context).accentColor,
              ),
            ],
          );
   
    final Widget RaisedButtonDemo= Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Button'),
                onPressed: (){},
                splashColor: Colors.grey,
                textColor: Theme.of(context).accentColor,
              ),
              SizedBox(width: 16.0,),
                RaisedButton.icon(
               label:Text('Button'),
               icon: Icon(Icons.add),
               elevation: 0.0,
                onPressed: (){},
                splashColor: Colors.grey,
                textColor: Theme.of(context).accentColor,
              ),
            ],
          );
   
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),

    body: Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Button'),
                onPressed: (){},
                splashColor: Colors.grey,
                textColor: Theme.of(context).accentColor,
              ),
              SizedBox(width: 16.0,),
                RaisedButton.icon(
               label:Text('Button'),
               icon: Icon(Icons.add),
               elevation: 0.0,
                onPressed: (){},
                splashColor: Colors.grey,
                textColor: Theme.of(context).accentColor,
              ),
            ],
          ),
        ],
      ),
    ),

    );
  }
}


class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),

    body: Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
            ],
          ),
        ],
      ),
    ),

    );
  }
}


class FloatingActionButtonDemo extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    final _floatingActionButton=FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){},
      elevation: 0.0,
      backgroundColor: Colors.black87,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
    );

     final _floatingActionButtonExtended=FloatingActionButton.extended(
     onPressed: (){
       Scaffold.of(context).showSnackBar(SnackBar(
         content: Text('你点一下'),
       ));
     },
     icon: Icon(Icons.add),
     label: Text('add'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      
      floatingActionButton: _floatingActionButtonExtended,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),


    );
  }
}


class LsitItem extends StatelessWidget {

  final String title;
  final Widget page;

  LsitItem({this.title,this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>page
        ));
      },
    );
  }
}