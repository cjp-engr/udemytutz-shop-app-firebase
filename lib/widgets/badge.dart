import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Badge({
    @required this.child,
    @required this.value,
    this.color = Colors.black45,
  });

  final Widget child;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: const EdgeInsets.all(2.0),
            // color: Theme.of(context).accentColor,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              // ignore: deprecated_member_use, unnecessary_null_comparison, prefer_if_null_operators
              color: color != Colors.black45
                  ? color
                  : Theme.of(context).accentColor,
            ),
            constraints: const BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        )
      ],
    );
  }
}
