import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bubble_arrow_position.dart';

class BubblePainter extends CustomPainter {
  //  宽度
  double width;

  //  高度
  double height;

  // 边框或者填充颜色 与style 对应
  Color color;

  // 边框 或 填充
  PaintingStyle style;

  // 尖角的位置
  BubbleArrowPosition position;

  // 边框宽度 当style 是边框时 有效
  double stokeWidth;
  // 边框宽度 当style 是边框时 有效
  Color backgroundColor;

  // 圆角 大小 矩形部分
  double radius;

  // 尖角 距离边框的距离
  double arrowMargin;

  // 尖角高度
  double arrowHeight;

  // 尖角 宽度
  double arrowWidth;

  BubblePainter(
      this.width,
      this.height,
      this.color,
      this.style,
      this.position,
      this.stokeWidth,
      this.backgroundColor,
      this.radius,
      this.arrowMargin,
      this.arrowHeight,
      this.arrowWidth,
      );

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint
      ..style = style
      ..color = color
      ..strokeWidth = stokeWidth;

    canvas.save();
    _drawTops(canvas, paint);
    _drawBottoms(canvas, paint);
    _drawLefts(canvas, paint);
    _drawRights(canvas, paint);
    canvas.restore();
  }

  /*
   * 当 style 是 stroke 时 设置 尖角的底部颜色为背景色
   */
  void _drawArrowBottom(Canvas canvas, Paint paint, Offset start, Offset end){
    if(style == PaintingStyle.fill){
      return;
    }
    canvas.drawLine(start, end, paint);
    paint..color = backgroundColor;
    canvas.drawLine(start, end, paint);
    canvas.drawLine(start, end, paint);
    canvas.drawLine(start, end, paint);
    canvas.drawLine(start, end, paint);
    paint..color = color;
  }

  void _drawRights(Canvas canvas, Paint paint) {
    if (position == BubbleArrowPosition.rightTop ||
        position == BubbleArrowPosition.right ||
        position == BubbleArrowPosition.rightBottom) {
      // 先画一个矩形，然后再画尖角
      // 先画一个矩形，然后再画尖角
      Path path = Path();
      canvas.save();
      path.addRRect(
          RRect.fromLTRBXY(0, 0, width-arrowHeight, height, radius, radius));
      canvas.drawPath(path, paint);
      path.reset();
      canvas.restore();

      // 尖角 起始点
      if(position == BubbleArrowPosition.rightTop ){
        _drawArrowBottom(canvas, paint, Offset(width-arrowHeight, arrowMargin + stokeWidth/2), Offset(width-arrowHeight, arrowMargin + arrowWidth - stokeWidth/2));

        path.relativeMoveTo(width-arrowHeight,  arrowMargin);
      }

      if(position == BubbleArrowPosition.right){
        _drawArrowBottom(canvas, paint, Offset(width-arrowHeight, height/2 - arrowWidth/2 + stokeWidth/2), Offset(width-arrowHeight, height/2 - arrowWidth/2 + arrowWidth - stokeWidth/2));

        path.relativeMoveTo(width-arrowHeight, height/2 - arrowWidth/2);
      }

      if(position == BubbleArrowPosition.rightBottom ){
        _drawArrowBottom(canvas, paint, Offset(width-arrowHeight, height- arrowWidth - arrowMargin + stokeWidth/2), Offset(width-arrowHeight, height- arrowWidth - arrowMargin + arrowWidth - stokeWidth/2));

        path.relativeMoveTo(width-arrowHeight, height- arrowWidth - arrowMargin);
      }

      path.relativeLineTo(arrowHeight, arrowWidth/2);
      path.relativeLineTo(-arrowHeight, arrowWidth/2);
      // path.close();

      canvas.drawPath(path, paint);
    }
  }

  void _drawLefts(Canvas canvas, Paint paint) {
    if (position == BubbleArrowPosition.leftTop ||
        position == BubbleArrowPosition.left ||
        position == BubbleArrowPosition.leftBottom) {
      // 先画一个矩形，然后再画尖角
      Path path = Path();
      canvas.save();
      path.addRRect(
          RRect.fromLTRBXY(arrowHeight, 0, width, height, radius, radius));
      canvas.drawPath(path, paint);
      path.reset();
      canvas.restore();

      // 尖角 起始点
      if(position == BubbleArrowPosition.leftTop ){
        _drawArrowBottom(canvas, paint, Offset(arrowHeight, arrowMargin + stokeWidth/2), Offset(arrowHeight, arrowMargin + arrowWidth - stokeWidth/2));

        path.relativeMoveTo(arrowHeight,  arrowMargin);
      }

      if(position == BubbleArrowPosition.left){
        _drawArrowBottom(canvas, paint, Offset(arrowHeight, height/2 - arrowWidth/2 + stokeWidth/2), Offset(arrowHeight, height/2 - arrowWidth/2 + arrowWidth - stokeWidth/2));

        path.relativeMoveTo(arrowHeight, height/2 - arrowWidth/2);
      }

      if(position == BubbleArrowPosition.leftBottom ){
        _drawArrowBottom(canvas, paint, Offset(arrowHeight, height- arrowWidth - arrowMargin + stokeWidth/2), Offset(arrowHeight, height- arrowWidth - arrowMargin + arrowWidth - stokeWidth/2));

        path.relativeMoveTo(arrowHeight, height- arrowWidth - arrowMargin);
      }

      path.relativeLineTo(-arrowHeight, arrowWidth/2);
      path.relativeLineTo(arrowHeight, arrowWidth/2);
      // path.close();

      canvas.drawPath(path, paint);
    }
  }

  void _drawBottoms(Canvas canvas, Paint paint) {
    if (position == BubbleArrowPosition.bottom ||
        position == BubbleArrowPosition.bottomLeft ||
        position == BubbleArrowPosition.bottomRight) {
      // 先画一个矩形，然后再画尖角

      Path path = Path();
      canvas.save();
      path.addRRect(
          RRect.fromLTRBXY(0, 0, width, height-arrowHeight, radius, radius));
      canvas.drawPath(path, paint);
      path.reset();
      canvas.restore();

      // 尖角 起始点
      if(position == BubbleArrowPosition.bottomLeft ){
        _drawArrowBottom(canvas, paint, Offset(arrowMargin+ stokeWidth/2, height- arrowHeight), Offset(arrowMargin+arrowWidth- stokeWidth/2, height- arrowHeight));
        path.relativeMoveTo(arrowMargin, height- arrowHeight);
      }

      if(position == BubbleArrowPosition.bottom){
        _drawArrowBottom(canvas, paint, Offset(width/2 - arrowWidth/2 + stokeWidth/2, height- arrowHeight), Offset(width/2 - arrowWidth/2 + arrowWidth - stokeWidth/2, height- arrowHeight));
        path.relativeMoveTo(width/2 - arrowWidth/2, height- arrowHeight);
      }

      if(position == BubbleArrowPosition.bottomRight ){
        _drawArrowBottom(canvas, paint, Offset(width - arrowMargin - arrowWidth + stokeWidth/2, height- arrowHeight), Offset(width - arrowMargin- stokeWidth/2, height- arrowHeight));

        path.relativeMoveTo(width - arrowMargin - arrowWidth, height- arrowHeight);
      }

      path.relativeLineTo(arrowWidth / 2, arrowHeight);
      path.relativeLineTo(arrowWidth / 2, -arrowHeight);
      // path.close();

      canvas.drawPath(path, paint);
    }
  }

  void _drawTops(Canvas canvas, Paint paint) {
    if (position == BubbleArrowPosition.top ||
        position == BubbleArrowPosition.topLeft ||
        position == BubbleArrowPosition.topRight) {
      // 先画一个矩形，然后再画尖角
      Path path = Path();
      canvas.save();
      path.addRRect(
          RRect.fromLTRBXY(0, arrowHeight, width, height, radius, radius));
      canvas.drawPath(path, paint);
      path.reset();
      canvas.restore();

      // 尖角 起始点
      if(position == BubbleArrowPosition.topLeft ){
        _drawArrowBottom(canvas, paint, Offset(arrowMargin + stokeWidth/2, arrowHeight), Offset(arrowMargin + arrowWidth - stokeWidth/2, arrowHeight));

        path.relativeMoveTo(arrowMargin, arrowHeight);
      }

      if(position == BubbleArrowPosition.top){
        _drawArrowBottom(canvas, paint, Offset(width/2 - arrowWidth/2 + stokeWidth/2, arrowHeight), Offset(width/2 - arrowWidth/2 + arrowWidth - stokeWidth/2, arrowHeight));

        path.relativeMoveTo(width/2 - arrowWidth/2, arrowHeight);
      }

      if(position == BubbleArrowPosition.topRight ){
        _drawArrowBottom(canvas, paint, Offset(width - arrowMargin - arrowWidth + stokeWidth/2, arrowHeight), Offset(width - arrowMargin - arrowWidth + arrowWidth - stokeWidth/2, arrowHeight));

        path.relativeMoveTo(width - arrowMargin - arrowWidth, arrowHeight);
      }

      path.relativeLineTo(arrowWidth / 2, -arrowHeight);
      path.relativeLineTo(arrowWidth / 2, arrowHeight);
      // path.close();

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}