import 'package:flutter_ssvm/about.dart';
import 'package:flutter_ssvm/home.dart';
import 'package:flutter_ssvm/schedules.dart';
import 'package:flutter_ssvm/notifications.dart';
import 'package:flutter_ssvm/stats.dart';

typedef T Constructor<T>();

final Map<String, Constructor<Object>> _constructors = <String, Constructor<Object>>{};

void register<T>(Constructor<T> constructor) {
  _constructors[T.toString()] = constructor;
}

class ClassBuilder {
  static void registerClasses() {
    register<Home>(() => Home());
    register<Notifications>(() => Notifications());
    register<Stats>(() => Stats());
    register<Schedules>(() => Schedules());
    register<About>(() => About());
  }

  static dynamic fromString(String type) {
    return _constructors[type]();
  }
}