import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const PrimaryButton({
    Key key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(40, 5, 40, 5),
      child: RaisedButton(
        onPressed: onPressed ?? () {},
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        highlightElevation: 2,
        child: Text(
          text ?? 'Button',
          style: Theme.of(context).textTheme.button.copyWith(
              color: Colors.white,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
