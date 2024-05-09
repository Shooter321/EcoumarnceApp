import 'package:flutter/material.dart';


class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor,
    this.onPressed,
    required this.title,
    this.buttonTitle= 'View all',
    this.showActionButton = false,
  });
  final Color? textColor;
  final bool showActionButton;
  final String title,buttonTitle;
  final void Function ()? onPressed;
  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          Text(title,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
            maxLines: 1,overflow: TextOverflow.ellipsis,
          ),
          if (showActionButton) TextButton(onPressed: onPressed, child:  Text(buttonTitle))
        ],
      );

  }
}
