library mplatform;

import 'package:flutter/foundation.dart';

enum Mplatform {
  /// List of all platforms supported
  ///
  /// e.g.  var platform = Mplatform.current;
  ///
  /// e.g.  if(Mplatform.isAndroid) {}
  ///       else if (Mplatform.) {}
  ///
  android,
  web,
  ios,
  macos,
  windows,
  linux,
  fuchsia;

  ///Get the current platform and @return the Enum value
  static Mplatform get current {
    if (kIsWeb) {
      return Mplatform.web;
    } else {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
          return Mplatform.android;
        case TargetPlatform.fuchsia:
          return Mplatform.fuchsia;
        case TargetPlatform.iOS:
          return Mplatform.ios;
        case TargetPlatform.linux:
          return Mplatform.linux;
        case TargetPlatform.macOS:
          return Mplatform.macos;
        case TargetPlatform.windows:
          return Mplatform.windows;
      }
    }
  }

  /// @param web
  static bool get isWeb => current == web;

  /// @param android
  static bool get isAndroid => current == android;

  /// @param ios
  static bool get isIos => current == ios;

  /// @param macos
  static bool get isMacOs => current == macos;

  /// @param windows
  static bool get isWindows => current == windows;

  /// @param linux
  static bool get isLinux => current == linux;

  /// @param fuchsia
  static bool get isFuchsia => current == fuchsia;
}
