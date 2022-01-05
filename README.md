A Text Controller that can extract hashtags from the input text.

## Getting started

1. Import the package

```dart
import 'package:flutter_hashtags/flutter_hashtags.dart';
```

2. Use it on your TextField or TextFormField.
```dart
final textController = HashtagTextController();
```

```dart
TextField(
    controller: textController,
);
```

3. Extract the hashtags using the controller.

```dart
List<String> hashtags = textController.hashtags;
```

## Additional information

[Full Example](example/main.dart)

Feel free to contibute with the package :)