import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bubble_arrow_position.dart';

/*
 * 主体绘制
 */
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

  // 圆角 大小 矩形部分
  double radius;

  // 尖角 距离边框的距离
  double arrowMargin;

  // 尖角高度
  double arrowHeight;

  // 尖角 宽度
  double arrowWidth;

  /*
   * 构造
   */
  BubblePainter(
      this.width,
      this.height,
      this.color,
      this.style,
      this.position,
      this.stokeWidth,
      this.radius,
      this.arrowMargin,
      this.arrowHeight,
      this.arrowWidth,
      );

  /*
   * 具体绘制方法
   */
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
   * 当尖角位置在右侧时， 布局绘制
   */
  void _drawRights(Canvas canvas, Paint paint) {
    if (position == BubbleArrowPosition.rightTop ||
        position == BubbleArrowPosition.right ||
        position == BubbleArrowPosition.rightBottom) {
      // 先画一个矩形，然后再画尖角
      // 先画一个矩形，然后再画尖角
      Path path = Path();
      Path rectPath = Path()..addRRect(RRect.fromLTRBXY(0, 0, width-arrowHeight, height, radius, radius));

      // 尖角 起始点
      if(position == BubbleArrowPosition.rightTop ){
        path.relativeMoveTo(width-arrowHeight,  arrowMargin);
      }

      if(position == BubbleArrowPosition.right){
        path.relativeMoveTo(width-arrowHeight, height/2 - arrowWidth/2);
      }

      if(position == BubbleArrowPosition.rightBottom ){
        path.relativeMoveTo(width-arrowHeight, height- arrowWidth - arrowMargin);
      }

      path.relativeLineTo(arrowHeight, arrowWidth/2);
      path.relativeLineTo(-arrowHeight, arrowWidth/2);
      path.close();

      canvas.drawPath(Path.combine(PathOperation.union, path, rectPath), paint);
    }
  }

  /*
   * 当尖角在左侧时，布局绘制
   */
  void _drawLefts(Canvas canvas, Paint paint) {
    if (position == BubbleArrowPosition.leftTop ||
        position == BubbleArrowPosition.left ||
        position == BubbleArrowPosition.leftBottom) {
      // 先画一个矩形，然后再画尖角
      Path path = Path();

      Path rectPath = Path()..addRRect(RRect.fromLTRBXY(arrowHeight, 0, width, height, radius, radius));

      // 尖角 起始点
      if(position == BubbleArrowPosition.leftTop ){
        path.relativeMoveTo(arrowHeight,  arrowMargin);
      }

      if(position == BubbleArrowPosition.left){
        path.relativeMoveTo(arrowHeight, height/2 - arrowWidth/2);
      }

      if(position == BubbleArrowPosition.leftBottom ){
        path.relativeMoveTo(arrowHeight, height- arrowWidth - arrowMargin);
      }
      path.relativeLineTo(-arrowHeight, arrowWidth/2);
      path.relativeLineTo(arrowHeight, arrowWidth/2);
      path.close();

      canvas.drawPath(Path.combine(PathOperation.union, path, rectPath), paint);
    }
  }

  /*
   * 当尖角在底部时，布局绘制
   */
  void _drawBottoms(Canvas canvas, Paint paint) {
    if (position == BubbleArrowPosition.bottom ||
        position == BubbleArrowPosition.bottomLeft ||
        position == BubbleArrowPosition.bottomRight) {
      // 先画一个矩形，然后再画尖角
      Path path = Path();
      Path rectPath = Path()..addRRect(RRect.fromLTRBXY(0, 0, width, height-arrowHeight, radius, radius));

      // 尖角 起始点
      if(position == BubbleArrowPosition.bottomLeft ){
        path.relativeMoveTo(arrowMargin, height- arrowHeight);
      }

      if(position == BubbleArrowPosition.bottom){
        path.relativeMoveTo(width/2 - arrowWidth/2, height- arrowHeight);
      }

      if(position == BubbleArrowPosition.bottomRight ){
        path.relativeMoveTo(width - arrowMargin - arrowWidth, height- arrowHeight);
      }

      path.relativeLineTo(arrowWidth / 2, arrowHeight);
      path.relativeLineTo(arrowWidth / 2, -arrowHeight);
      path.close();

      canvas.drawPath(Path.combine(PathOperation.union, path, rectPath), paint);
    }
  }

  /*
   * 当尖角在顶部时，布局绘制
   */
  void _drawTops(Canvas canvas, Paint paint) {
    if (position == BubbleArrowPosition.top ||
        position == BubbleArrowPosition.topLeft ||
        position == BubbleArrowPosition.topRight) {
      // 先画一个矩形，然后再画尖角
      Path path = Path();
      Path rectPath = Path()..addRRect(
          RRect.fromLTRBXY(0, arrowHeight, width, height, radius, radius));

      // 尖角 起始点
      if(position == BubbleArrowPosition.topLeft ){
        path.relativeMoveTo(arrowMargin, arrowHeight);
      }

      if(position == BubbleArrowPosition.top){
        path.relativeMoveTo(width/2 - arrowWidth/2, arrowHeight);
      }

      if(position == BubbleArrowPosition.topRight ){
        path.relativeMoveTo(width - arrowMargin - arrowWidth, arrowHeight);
      }

      path.relativeLineTo(arrowWidth / 2, -arrowHeight);
      path.relativeLineTo(arrowWidth / 2, arrowHeight);
      path.close();

      canvas.drawPath(Path.combine(PathOperation.union, path, rectPath), paint);
    }
  }

  /*
   * 是否 需要重绘
   */
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}