import 'package:flutter/material.dart';

/// A Neuomorphic Container.
// ignore: camel_case_types
class NeuomorphicContainer extends StatelessWidget {
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
  final Color grey = Color.fromRGBO(240, 240, 240, 1.0);

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
  Widget build(BuildContext context) {
    return Container(
      key: key,
      alignment: alignment,
      padding: padding,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      child: child,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(209, 205, 199, 1),
              offset: Offset(5.0, 5.0),
              blurRadius: 5.0,
            ),
            BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 0.8),
              offset: Offset(-5.0, -5.0),
              blurRadius: 5.0,
            ),
          ],
          color: backgroundColor != null ? backgroundColor : grey,
          borderRadius: borderRadius,
          shape: shape,
          border: border),
    );
  }
}
