import 'package:flutter/material.dart';
import '../model/post.dart';


class ViewDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GirdViewBuilderDemo();
  }
}


class GirdViewBuilderDemo extends StatelessWidget {
  
  Widget _girdItemBuilder(BuildContext context,int index){

    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit:BoxFit.cover
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: posts.length,
      itemBuilder: _girdItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}



class GirdViewCountDemo extends StatelessWidget {

List<Widget> _buildTiles(int length){

  return List.generate(length, (int index){
    return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Item$index',
            style:TextStyle(
              fontSize:18.0,
              color:Colors.grey
            ),
          ),
        );
  });
}


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {

      Widget _pageItemBuilder(BuildContext context,int index){

  return Stack(
    children: <Widget>[
      SizedBox.expand(
        child: Image.network(posts[index].imageUrl,
          fit: BoxFit.cover,
        ),

      ),

      Positioned(
        bottom: 8.0,
        left: 8.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              posts[index].title,
              style: TextStyle(fontWeight: FontWeight.bold),

            ),
            Text(
              posts[index].author,
              
            ),
          ],
        ),
      ),
    ],
  );
}



  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}


class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style:TextStyle(fontSize:32.0,color:Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style:TextStyle(fontSize:32.0,color:Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style:TextStyle(fontSize:32.0,color:Colors.white),
          ),
        ),
      ],
    );
  }
}