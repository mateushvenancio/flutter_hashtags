library flutter_hashtags;

import 'package:flutter/material.dart';

class HashtagTextController extends TextEditingController {
  List<String> get hashtags {
    List<String> _hashs = [];

    final _regex = RegExp(r'#[A-Za-zá-úÁ-Úà-úÀ-Ú0-9]+');
    final _result = _regex.allMatches(super.text);

    _result.forEach((e) {
      _hashs.add(e.group(0) ?? '');
    });

    return _hashs;
  }
}
