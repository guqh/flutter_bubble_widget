import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'bubble_arrow_position.dart';
import 'bubble_painter.dart';
/*
 * 气泡背景组件
 *
 * 支持 上  上左侧  上右侧
 *      下  下左侧  下右侧
 *      左  左上侧  左下侧
 *      右  又上侧  右下侧
 * 共 12 个 标准位置
 *
 * 其中 非 上下左右 正中位置的 可以通过设置 arrowMargin  尖角 距离 边框的长度来自定义设置 尖角的位置
 *      例： BubbleArrowPosition.topLeft
 *           arrowMargin = 100  (不设置默认是 距离左侧 10 ，设置了之后是从顶部的左侧 距离100 处 是尖角的起始点位置)
 *
 * style ： 填充颜色 默认 PaintingStyle.fill 是填充颜色
 *          PaintingStyle.stroke 是 外边框线
 *
 * stokeWidth： 当 style == PaintingStyle.stroke 时  边框线宽度才会生效
 */
class BubbleWidget extends StatelessWidget {
  // 子 widget
  Widget child;

  // 内边距
  double padding;

  // 宽度
  double width;

  // 高度
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

  BubbleWidget({
    @required this.child,
    this.padding = 10,
    this.width = 100,
    this.height = 50,
    this.color = Colors.greenAccent,
    this.style = PaintingStyle.fill,
    this.position = BubbleArrowPosition.topLeft,
    this.stokeWidth = 1,
    this.radius = 10,
    this.arrowMargin = 10,
    this.arrowHeight = 10,
    this.arrowWidth = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Stack(
        children: [

          CustomPaint(
            painter: BubblePainter(width, height, color, style, position,
                stokeWidth, radius, arrowMargin, arrowHeight, arrowWidth),
          ),

          Padding(
            padding: EdgeInsets.only(
              top: (position == BubbleArrowPosition.top || position == BubbleArrowPosition.topLeft|| position == BubbleArrowPosition.topRight) ? arrowHeight + padding :padding,
              left: (position == BubbleArrowPosition.left || position == BubbleArrowPosition.leftTop|| position == BubbleArrowPosition.leftBottom) ? arrowHeight + padding :padding,
              right: (position == BubbleArrowPosition.right || position == BubbleArrowPosition.rightTop|| position == BubbleArrowPosition.rightBottom) ? arrowHeight + padding :padding,
              bottom: (position == BubbleArrowPosition.bottom || position == BubbleArrowPosition.bottomLeft|| position == BubbleArrowPosition.bottomRight) ? arrowHeight + padding :padding,
            ),
            child: Center(
              child: this.child,
            ),
          ),
        ],
      ),
    );
  }
}




