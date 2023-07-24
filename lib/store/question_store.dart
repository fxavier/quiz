import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../models/models.dart';
part 'question_store.g.dart';

class QuestionStore extends _QuestionStoreBase with _$QuestionStore {
  QuestionStore(TickerProvider vsync) : super(vsync: vsync);
}

abstract class _QuestionStoreBase with Store {
  _QuestionStoreBase({required this.vsync});

  final TickerProvider vsync;
  late AnimationController _animationController;
  Animation? _animation;

  @observable
  List<Question> _questions = sample_data
      .map((question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index'],
          ))
      .toList();

  @computed
  Animation? get animation => _animation;

  @computed
  List<Question> get questions => _questions;

  @action
  void onInit() {
    _animationController = AnimationController(
        duration: const Duration(seconds: 60), vsync: vsync);
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        runInAction(() {});
      });
    _animationController.forward();
    // Remember to dispose the controller when you're done with it
    // DisposeBag is a simple way to manage multiple disposables, but it's not necessary
    // _animationController.disposedBy(disposeBag);
  }

  void dispose() {
    _animationController.dispose();
  }
}
