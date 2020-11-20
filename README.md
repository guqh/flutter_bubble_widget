|      |      |
| ---- | ---- |
|  作者    |  [john.gu](mailto:970113287@qq.com) |
|  创建时间    | 2020-11-19 16:00:00      |
# flutter_bubble_widget

一个全方位尖角的 flutter 气泡组件

## 介绍

Flutter小部件.

您可以使用此小部件的不同属性创建漂亮的聊天气泡.

也可以用作弹窗dialog背景。

## 安装

1. Add this to your package's pubspec.yaml file:
```
dependencies:
  flutter_bubble_widget: ^1.0.8
```
2. You can install packages from the command line:
```
flutter pub get
```
3. Now in your Dart code, you can use:
```
import 'package:flutter_bubble_widget/flutter_bubble_widget.dart';
```


## 示意图
![image](https://github.com/guqh/flutter_bubble_widget/blob/master/images/demo.jpg)


## 	参数说明

| 参数名称      | 说明                                                         | 类型               | 默认值 |
| ------------- | ------------------------------------------------------------ | ------------------ | ------ |
| child       | 子组件，可以是任何widget                                                       | Widget       | -      |
| padding       | 内边距                                                   | double       | 10    |
| width | 总宽度，包含尖角部分的 | double             | 100     |
| height   | 总高度，包含尖角部分的                        | double            |100    |
| color    | 边框或者填充颜色 与style 对应 填充颜色 默认 PaintingStyle.fill 是填充颜色  PaintingStyle.stroke 是 边框线颜色  | Color    |Colors.greenAccent|
| style   | 填充方式 还是边框线方式                                        | PaintingStyle | PaintingStyle.fill      |
| position | 尖角的位置其中 非 上下左右 正中位置的 可以通过设置 arrowMargin  尖角 距离 边框的长度来自定义设置 尖角的位置|  BubbleArrowPosition | BubbleArrowPosition.topLeft|
| stokeWidth | 边框宽度 当style == PaintingStyle.stroke 时 有效 ，否则无效 | double | 1 |
| radius | 矩形部分 圆角 大小 | double | 10  |
| arrowMargin | 尖角 距离边框的距离 | double | 10 |
| arrowHeight | 尖角高度 | double | 10 |
| arrowWidth | 尖角 宽度 | double | 10 |

### BubbleArrowPosition 尖角位置

| 属性名称      | 说明     | 类型   |
| ------------ | -------  | ------ |
| left         | 左侧中心  | enum   |
| leftTop      | 左侧顶部  | enum   |
| leftBottom   | 左侧底部  | enum   |
| right        | 右侧中心  | enum   |      
| rightTop     | 右侧顶部  | enum   |    
| rightBottom  | 右侧底部  | enum   |    
| top          | 顶部中心  | enum   |    
| topRight     | 顶部右侧  | enum   |    
| topLeft      | 顶部左侧  | enum   |    
| bottom       | 底部中心  | enum   |    
| bottomRight  | 底部右侧  | enum   |    
| bottomLeft   | 底部左侧  | enum   |    

## 	代码演示

```
              BubbleWidget(
                style: PaintingStyle.stroke,
                position: BubbleArrowPosition.left,
                width: 150,
                height: 100,
                arrowWidth: 20,
                arrowHeight: 20,
                color: Colors.red,
                child: Container(
                  child: Text(
                    "强大的 气泡控件",
                    style: TextStyle(color: Colors.red, ),
                  ),
                ),
              )
              

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
              )
              
```












