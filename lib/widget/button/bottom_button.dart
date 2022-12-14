import 'package:flutter/material.dart';
import 'package:myTestApp_Test/shared/style/style.dart';

class BottomButton extends StatelessWidget {
  final String contents;
  final Widget child;
  final Function onPressed;
  final ShapeBorder shape;

  BottomButton(
      {@required this.contents,
      this.child,
      @required this.onPressed,
      this.shape});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(contents, style: alertDialogText),
        style: ElevatedButton.styleFrom(shape: shape));
  }
}
