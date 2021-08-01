import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:test_app_1/IntroPage/intro_page.dart';

class ConditionalRouter extends MapMixin<String, WidgetBuilder> {
  final Map<String, WidgetBuilder> public;
  final Map<String, WidgetBuilder> private;
  final bool isLoggedIn;

  ConditionalRouter({this.public, this.private, this.isLoggedIn});

  @override
  WidgetBuilder operator [](Object key) {
    if (public.containsKey(key)) return public[key];
    if (private.containsKey(key)) {
      if (isLoggedIn) return private[key];
      return (context) => IntroPage();
    }
    return null;
  }

  @override
  void operator []=(key, value) {}

  @override
  void clear() {}

  @override
  Iterable<String> get keys {
    final set = Set<String>();
    set.addAll(public.keys);
    set.addAll(private.keys);
    return set;
  }

  @override
  WidgetBuilder remove(Object key) {
    return public[key] ?? private[key];
  }
}
