// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuestionStore on _QuestionStoreBase, Store {
  Computed<Animation<dynamic>?>? _$animationComputed;

  @override
  Animation<dynamic>? get animation => (_$animationComputed ??=
          Computed<Animation<dynamic>?>(() => super.animation,
              name: '_QuestionStoreBase.animation'))
      .value;
  Computed<List<Question>>? _$questionsComputed;

  @override
  List<Question> get questions =>
      (_$questionsComputed ??= Computed<List<Question>>(() => super.questions,
              name: '_QuestionStoreBase.questions'))
          .value;

  late final _$_questionsAtom =
      Atom(name: '_QuestionStoreBase._questions', context: context);

  @override
  List<Question> get _questions {
    _$_questionsAtom.reportRead();
    return super._questions;
  }

  @override
  set _questions(List<Question> value) {
    _$_questionsAtom.reportWrite(value, super._questions, () {
      super._questions = value;
    });
  }

  late final _$_QuestionStoreBaseActionController =
      ActionController(name: '_QuestionStoreBase', context: context);

  @override
  void onInit() {
    final _$actionInfo = _$_QuestionStoreBaseActionController.startAction(
        name: '_QuestionStoreBase.onInit');
    try {
      return super.onInit();
    } finally {
      _$_QuestionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
animation: ${animation},
questions: ${questions}
    ''';
  }
}
