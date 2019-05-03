import 'dart:async';
import 'dart:ui';
import 'package:rxdart/rxdart.dart';

class ThemeBloc {
  final StreamController<Color> _streamController = StreamController<Color>();
  final PublishSubject<Color> _publishSubject = PublishSubject<Color>();

  Sink<Color> get sinkColor => _streamController.sink;
  Stream<Color> get streamColor => _publishSubject.stream;

  ThemeBloc() {
    _streamController.stream.distinct().listen(_handel);
  }

  void _handel(Color color) {
    _publishSubject.add(color);
  }

  void dispose() {
    _streamController.close();
    _publishSubject.close();
  }

}