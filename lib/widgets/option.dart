import 'package:flutter/material.dart';
import 'package:quiz/constants.dart';

class Option extends StatelessWidget {
  const Option({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: kGrayColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "1. Test",
            style: TextStyle(color: kGrayColor, fontSize: 16),
          ),
          Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: kGrayColor),
            ),
          )
        ],
      ),
    );
  }
}
