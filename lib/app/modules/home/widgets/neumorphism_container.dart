import 'package:flutter/material.dart';

/// A Neuomorphic Container.
// ignore: camel_case_types
class NeuomorphicContainer extends StatefulWidget {
  final Key key;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry padding;
  final Decoration foregroundDecoration;
  final double width;
  final double height;
  final BoxConstraints constraints;
  final EdgeInsetsGeometry margin;
  final Matrix4 transform;
  final Widget child;
  final BorderRadiusGeometry borderRadius;
  final BoxShape shape;
  final BoxBorder border;
  final Color backgroundColor;

  NeuomorphicContainer(
      {this.key,
      this.child,
      this.alignment,
      this.padding,
      this.foregroundDecoration,
      this.width,
      this.height,
      this.shape = BoxShape.rectangle,
      this.constraints,
      this.borderRadius,
      this.margin,
      this.transform,
      this.border,
      this.backgroundColor})
      : assert(margin == null || margin.isNonNegative),
        assert(padding == null || padding.isNonNegative),
        assert(constraints == null || constraints.debugAssertIsValid()),
        super(key: key);

  @override
  _NeuomorphicContainerState createState() => _NeuomorphicContainerState();
}

class _NeuomorphicContainerState extends State<NeuomorphicContainer> {
  final Color grey = Color.fromRGBO(240, 240, 240, 1.0);

  bool isPressed = false;

  void onPressedDown(PointerDownEvent _) => setState(() {
        isPressed = true;
      });

  void onPressedUp(PointerUpEvent _) => setState(() {
        isPressed = false;
      });

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: onPressedDown,
      onPointerUp: onPressedUp,
      child: Container(
        key: widget.key,
        alignment: widget.alignment,
        padding: widget.padding,
        foregroundDecoration: widget.foregroundDecoration,
        width: widget.width,
        height: widget.height,
        constraints: widget.constraints,
        margin: widget.margin,
        transform: widget.transform,
        child: widget.child,
        decoration: BoxDecoration(
            boxShadow: isPressed
                ? [
                    BoxShadow(
                      color: Colors.white70,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(2, 2),
                    ),
                  ]
                : [
                    BoxShadow(
                      color: Color.lerp(
                        Colors.black.withOpacity(0.2),
                        Colors.white,
                        .5,
                      ),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(2, 1),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: -Offset(5, 5),
                      blurRadius: 10,
                    ),
                    BoxShadow(
                      color: Color.lerp(
                        Colors.white,
                        Colors.black,
                        .02,
                      ),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: -Offset(5, 5),
                    ),
                  ],
            color:
                widget.backgroundColor != null ? widget.backgroundColor : grey,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: widget.backgroundColor != null
                  ? [
                      widget.backgroundColor,
                      widget.backgroundColor,
                      widget.backgroundColor,
                      widget.backgroundColor
                    ]
                  : [
                      Color.lerp(
                        Colors.blueGrey.shade100,
                        Colors.white,
                        .57,
                      ),
                      Color(0xffF1F2F4),
                      Color(0xffF1F2F4),
                      Color.lerp(
                        Colors.white,
                        Colors.black,
                        .01,
                      ),
                    ],
              stops: [.1, .3, .7, 1],
            ),
            borderRadius: widget.borderRadius,
            shape: widget.shape,
            border: widget.border),
      ),
    );
  }
}
