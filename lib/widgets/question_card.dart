import 'package:flutter/material.dart';
import 'package:quiz/constants.dart';
import 'package:quiz/models/questions.dart';
import 'package:quiz/widgets/widgets.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key});

//  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            sample_data[0]['question'],
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: kBlackColor),
          ),
          const SizedBox(height: kDefaultPadding * 0.5),
          Option(),
          Option(),
          Option(),
          Option(),
        ],
      ),
    );
  }
}
