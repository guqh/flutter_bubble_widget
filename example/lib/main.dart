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
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                style: PaintingStyle.stroke,
                backgroundColor: Colors.white,
                position: BubbleArrowPosition.leftTop,
                width: 200,
                height: 100,
                arrowWidth: 20,
                arrowMargin: 40,
                arrowHeight: 20,
                color: Colors.blue,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.leftTop,
                width: 200,
                height: 40,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.leftBottom,
                width: 200,
                height: 40,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.rightTop,
                width: 200,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.rightBottom,
                width: 200,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.bottom,
                width: 200,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.bottomRight,
                width: 200,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(width: 50,),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                style: PaintingStyle.stroke,
                backgroundColor: Colors.white,
                position: BubbleArrowPosition.rightBottom,
                width: 200,
                height: 100,
                arrowWidth: 20,
                arrowMargin: 40,
                arrowHeight: 20,
                color: Colors.red,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.left,
                width: 200,
                height: 40,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.right,
                width: 200,
                height: 40,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.topRight,
                width: 200,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.top,
                width: 200,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.topLeft,
                width: 200,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BubbleWidget(
                position: BubbleArrowPosition.bottomLeft,
                width: 200,
                height: 80,
                arrowHeight: 20,
                arrowMargin: 20,
                arrowWidth: 20,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, fontSize: 20),
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
