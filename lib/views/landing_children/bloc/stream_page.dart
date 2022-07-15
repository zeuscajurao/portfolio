import 'package:rxdart/rxdart.dart';

class StreamPage {
  StreamPage._pr();
  static final StreamPage _instance = StreamPage._pr();
  static StreamPage get instance => _instance;

  final BehaviorSubject<int> _subject = BehaviorSubject<int>.seeded(0);
  Stream<int> get stream => _subject.stream;
  int get current => _subject.value;

  void update(int page) {
    _subject.add(page);
  }
}
