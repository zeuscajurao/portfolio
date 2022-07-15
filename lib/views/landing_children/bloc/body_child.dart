import 'package:rxdart/subjects.dart';

class BodyChild {
  BodyChild._pr();
  static final BodyChild _instance = BodyChild._pr();
  static BodyChild get instance => _instance;

  final BehaviorSubject<int> _subject = BehaviorSubject<int>.seeded(0);
  Stream<int> get stream => _subject.stream;
  int get current => _subject.value;

  void update(int i) {
    _subject.add(i);
  }

  void dispose() {
    _subject.close();
  }
}
