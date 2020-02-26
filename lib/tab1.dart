import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/counter_model.dart';

class Tab1 extends StatefulWidget {
  Tab1({Key key}) : super(key: key);

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;

  int _counter1 = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Text('${Provider.of<CounterModel>(context).value}'),
       ),
    );
  }
}