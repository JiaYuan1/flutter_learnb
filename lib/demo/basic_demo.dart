import 'package:flutter/material.dart';




class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
        )
      ),
      //color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                Container(
                  child: Icon(Icons.pool,size:32.0),
                  //color: Color.fromRGBO(3, 54, 255, 1.0),
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.all(8.0),
                  width: 90.0,
                  height: 90.0,
                  decoration: BoxDecoration(
                    color:Color.fromRGBO(3, 54, 255, 1.0) ,
                    border: Border.all(
                       color: Colors.indigoAccent,
                        width: 3.0,
                        style: BorderStyle.solid,
                        
                    ),
                  //  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    boxShadow: [
                        BoxShadow(
                          offset: Offset(6.0, 7.0),
                          color: Color.fromRGBO(16, 20, 188, 1.0),
                          blurRadius: 25.0,
                          spreadRadius: -9.0,
                        ),
                    ],
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7,102 , 255, 1.0),
                        Color.fromRGBO(3, 28, 128, 1.0)
                      ],
                    ),
                  ),
                ),
          ],
      ),
    );
  }
}