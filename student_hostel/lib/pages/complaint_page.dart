
import 'package:flutter/material.dart';
import '../myOutpass.dart';


class ComplainPage extends StatefulWidget {
  @override
  _ComplainPageState createState() => _ComplainPageState();
}

class _ComplainPageState extends State<ComplainPage> {

  List<myComplain> allData = [];

  @override
  void initState() {
   
    
  }


  @override
  Widget build(BuildContext context) {
     return new Scaffold(
      body: new Container(
        
          child: allData.length == 0
              ? new Center(child:Text(' No Data Available',))
              : new ListView.builder(
                  itemCount: allData.length,
                  itemBuilder: (_, index) {
                    return uI(
                      allData[index].complain_type,
                      allData[index].message,
                    );
                  },
                )),);
  }

  Widget uI(String complain_type, String message) {
    return new Card(
      elevation: 10.0,
      child: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text('ComplainType : $complain_type',style: Theme.of(context).textTheme.title,),
            new Text('message : $message'),
          ],
        ),
      ),
    );
  }
}