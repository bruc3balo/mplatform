## Mplatform

### How to use

```dart
import 'package:flutter/foundation.dart';
import 'package:mplatform/mplatform.dart';

void main() {
  var platform = Mplatform.current;

  //Handle all conditions
  switch (platform) {
    case Mplatform.android:
    case Mplatform.web:
    case Mplatform.ios:
    case Mplatform.macos:
    case Mplatform.windows:
    case Mplatform.linux:
    case Mplatform.fuchsia:
      debugPrint(platform.name);
      break;
  }

  //check for just one condition
  if (!Mplatform.isFuchsia) {
    debugPrint("Why is fuchsia an option tho 🤔");
  }
}
```
