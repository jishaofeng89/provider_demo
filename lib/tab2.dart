import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/counter_model.dart';

class Tab2 extends StatefulWidget {
  Tab2({Key key}) : super(key: key);

  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> with AutomaticKeepAliveClientMixin{

  @override
  bool get wantKeepAlive => true;

  int _counter2 = 0;
  
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (BuildContext context, CounterModel counter, Widget child) {
        return Center(
          child: Text(counter.value.toString()),
        );
      },
    );
  }
}