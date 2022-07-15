import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rxdart/rxdart.dart';
import 'package:zeuscajurao/global/constants.dart';
import 'package:zeuscajurao/views/landing_children/bloc/stream_page.dart';

class ScrollablePageView extends StatefulWidget {
  const ScrollablePageView({Key? key, required this.children})
      : super(key: key);
  final List<Widget> children;

  @override
  State<ScrollablePageView> createState() => _ScrollablePageViewState();
}

class _ScrollablePageViewState extends State<ScrollablePageView> {
  final sink = StreamController<double>();
  final pager = PageController();
  final StreamPage _vr = StreamPage.instance;
  final BehaviorSubject<int> _pageListener = BehaviorSubject<int>.seeded(0);
  @override
  void initState() {
    super.initState();
    _vr.stream.listen((page) async {
      await pager.animateToPage(
        page,
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
      );
    });
    _pageListener
        .debounceTime(const Duration(milliseconds: 200))
        .listen((event) {
      _vr.update(event);
    });
    throttle(sink.stream).listen((offset) {
      pager.animateTo(
        offset,
        duration: const Duration(milliseconds: 200),
        curve: Curves.fastLinearToSlowEaseIn,
      );
      // setState(() {
      //   currentPage = offset.floor();
      // });
      // print("PAGE : $currentPage");
    });
  }

  @override
  void dispose() {
    sink.close();
    pager.dispose();
    super.dispose();
  }

  Stream<double> throttle(Stream<double> src) async* {
    double offset = pager.position.pixels;
    DateTime dt = DateTime.now();
    await for (var delta in src) {
      if (DateTime.now().difference(dt) > Duration(milliseconds: 200)) {
        offset = pager.position.pixels;
      }
      dt = DateTime.now();
      offset += delta;
      yield offset;
    }
  }

  void _handlePointerSignal(PointerSignalEvent e) {
    if (e is PointerScrollEvent && e.scrollDelta.dy != 0) {
      sink.add(e.scrollDelta.dy);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraint) {
      final double width = constraint.maxWidth;
      final double height = constraint.maxHeight;
      return Container(
        width: width,
        height: height,
        constraints: const BoxConstraints.expand(),
        child: Listener(
          onPointerSignal: _handlePointerSignal,
          child: _IgnorePointerSignal(
            child: PageView.builder(
              onPageChanged: (index) async {
                _pageListener.add(index);
                // setState(() {
                //   currentPage = index;
                // });
                // await Future.delayed(const Duration(milliseconds: 200));
                // // _vr.update(index);
                // print("currentPage : $currentPage");
                // print("PAGE : ${pager.page!.round()}");
                // _vr.update(index);
              },
              physics: const ClampingScrollPhysics(),
              controller: pager,
              scrollDirection: Axis.vertical,
              itemCount: widget.children.length,
              itemBuilder: (_, index) => widget.children[index],
            ),
          ),
        ),
      );
    });
  }
}

class _IgnorePointerSignal extends SingleChildRenderObjectWidget {
  const _IgnorePointerSignal({Key? key, required Widget child})
      : super(key: key, child: child);

  @override
  RenderObject createRenderObject(_) => _IgnorePointerSignalRenderObject();
}

class _IgnorePointerSignalRenderObject extends RenderProxyBox {
  @override
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    final res = super.hitTest(result, position: position);
    for (var item in result.path) {
      final target = item.target;
      if (target is RenderPointerListener) {
        target.onPointerSignal = null;
      }
    }
    return res;
  }
}
