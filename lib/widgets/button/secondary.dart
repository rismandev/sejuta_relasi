import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const SecondaryButton({
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
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 1,
              style: BorderStyle.solid),
        ),
        highlightElevation: 2,
        child: Text(
          text ?? 'Button',
          style: Theme.of(context).textTheme.button.copyWith(
              color: Theme.of(context).primaryColor,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
