import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:quiz/constants.dart';
import 'package:quiz/store/question_store.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({
    super.key,
  });

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar>
    with TickerProviderStateMixin {
  late final QuestionStore questionStore;

  @override
  void initState() {
    super.initState();
    questionStore = QuestionStore(this);
    questionStore.onInit();
  }

  @override
  void dispose() {
    questionStore.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF3F4768),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          Observer(builder: (_) {
            return LayoutBuilder(
              builder: (context, constraints) => Container(
                width: constraints.maxWidth *
                    (questionStore.animation?.value ?? 0.0),
                decoration: BoxDecoration(
                  gradient: kPrimaryGradient,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            );
          }),
          Observer(builder: (_) {
            return Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "${((questionStore.animation?.value ?? 0.0) * 60).round()} sec"),
                    WebsafeSvg.asset('assets/icons/clock.svg'),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
