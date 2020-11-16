import 'package:flutter/material.dart';
import 'package:flutter_bubble_widget/flutter_bubble_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '气泡背景展示',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Row(
        children: [
          SizedBox(width: 20,),
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              BubbleWidget(
                style: PaintingStyle.stroke,
                backgroundColor: Colors.white,
                position: BubbleArrowPosition.leftTop,
                width: 150,
                height: 100,
                arrowWidth: 20,
                arrowMargin: 40,
                arrowHeight: 20,
                color: Colors.blue,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.blue, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.leftTop,
                width: 150,
                height: 40,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.leftBottom,
                width: 150,
                height: 40,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.rightTop,
                width: 150,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.rightBottom,
                width: 150,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.bottom,
                width: 150,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.bottomRight,
                width: 150,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(width: 20,),
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              BubbleWidget(
                style: PaintingStyle.stroke,
                backgroundColor: Colors.white,
                position: BubbleArrowPosition.rightBottom,
                width: 150,
                height: 100,
                arrowWidth: 20,
                arrowMargin: 40,
                arrowHeight: 20,
                color: Colors.red,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.left,
                width: 150,
                height: 40,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.right,
                width: 150,
                height: 40,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.topRight,
                width: 150,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.top,
                width: 150,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.topLeft,
                width: 150,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.bottomLeft,
                width: 150,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
