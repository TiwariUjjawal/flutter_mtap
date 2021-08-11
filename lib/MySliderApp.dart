import 'package:flutter/material.dart';

class MySliderApp extends StatefulWidget {

  @override
  _MySliderAppState createState() => _MySliderAppState();
}

class _MySliderAppState extends State<MySliderApp> {
  int _value = 0;
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Slider Demo'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.volume_up,
                      size: 40,
                    ),
                    new Expanded(
                        child: Slider(
                          value: _value.toDouble(),
                          min: 0.0,
                          max: 20.0,
                          divisions: 10,
                          activeColor: Colors.green,
                          inactiveColor: Colors.orange,
                          label: 'Set Volume',
                          onChanged: (double newValue) {
                            // setState(() {
                            //   _value = newValue.round();
                            // });
                          },
                        )
                    ),
                    // new Expanded(
                    //   child: RangeSlider(
                    //     values: _currentRangeValues,
                    //     min: 0,
                    //     max: 100,
                    //     divisions: 10,
                    //     labels: RangeLabels(
                    //       _currentRangeValues.start.round().toString(),
                    //       _currentRangeValues.end.round().toString(),
                    //     ),
                    //     onChanged: (RangeValues values) {
                    //       setState(() {
                    //         _currentRangeValues = values;
                    //       });
                    //     },
                    //   ),),
                    Text('Volume: $_value', style: TextStyle(fontSize: 20),),
                  ]
              )
          ),
        )
    );
  }
}
