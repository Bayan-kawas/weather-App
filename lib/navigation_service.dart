// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum NavigationMethod {
  PUSH,
  PUSH_REPLACEMENT,
  PUSH_REPLACEMENT_ALL,
  OFF_UNTIL,
  POP,
}

class NavigationService {
  static Future<dynamic> navigateTo(
      {bool isNamed = false,
       NavigationMethod navigationMethod,
       dynamic page,
      Transition transition,
      Curve curve,
      Duration duration,
      dynamic arguments,
      bool preventDuplicates = true,
      bool popGesture,
      Map<String, String> parameters}) async {
    assert(navigationMethod != NavigationMethod.POP);
    assert(navigationMethod != NavigationMethod.PUSH_REPLACEMENT_ALL);
    FocusScope.of(Get.context).requestFocus(FocusNode());
    if (isNamed) {
      return await _getNavigationMethod(
          navigationMethod: navigationMethod, isNamed: true)(
        page.toString(),
        preventDuplicates: preventDuplicates,
        arguments: arguments,
        parameters: parameters,
      );
    } else {
      return await _getNavigationMethod(
          navigationMethod: navigationMethod, isNamed: false)(
        page,
        preventDuplicates: preventDuplicates,
        arguments: arguments,
        popGesture: popGesture,
        curve: curve,
        transition:  (transition == null)
            ? Transition.leftToRight
            : transition,
        duration: duration,
      );
    }
  }

  static goBack<T>({
    T result,
    bool closeOverlays = false,
    bool canPop = true,
    int id,
  }) {
    FocusScope.of(Get.context).requestFocus(FocusNode());
    Get.back<T>(
        canPop: canPop, id: id, closeOverlays: closeOverlays, result: result);
  }

  static void popUntil({
     RoutePredicate predicate,
  }) {
    FocusScope.of(Get.context).requestFocus(FocusNode());
    Get.until(predicate);
  }

  static Future<T> offAll<T>({
    bool isNamed = false,
     dynamic page,
    bool Function(Route<dynamic>) predicate,
    int id,
    Transition transition,
    Curve curve,
    Duration duration,
  }) {
    FocusScope.of(Get.context).requestFocus(FocusNode());
    if (!isNamed) {
      _getNavigationMethod(
              navigationMethod: NavigationMethod.PUSH_REPLACEMENT_ALL,
              isNamed: false)(page,
          predicate: predicate ?? (_) => false,
          transition: transition,
          curve: curve,
          duration: duration);
    } else {
      _getNavigationMethod(
          navigationMethod: NavigationMethod.PUSH_REPLACEMENT_ALL,
          isNamed: true)(
        page.toString(),
        predicate: predicate ?? (_) => false,
      );
    }
  }

  static _getNavigationMethod(
      {bool isNamed = false,  NavigationMethod navigationMethod}) {
    switch (navigationMethod) {
      case NavigationMethod.PUSH:
        {
          return isNamed ? Get.toNamed : Get.to;
        }
      case NavigationMethod.PUSH_REPLACEMENT:
        {
          return isNamed ? Get.offNamed : Get.off;
        }

      case NavigationMethod.PUSH_REPLACEMENT_ALL:
        {
          return isNamed ? Get.offAllNamed : Get.offAll;
        }
      default:
        {
          throw 'No navigation method selected, navigation method is required';
        }
    }
  }
}
