import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as p;

Future<void> testExecutable(FutureOr<void> testMain()) async {
  await loadAppFonts();
  return testMain();
}

Future<void> loadAppFonts() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final fontLoader = FontLoader('Roboto');
  var fontData;
  var fontFileExists =
      File(p.absolute('fonts', 'Roboto-Regular.ttf')).existsSync();
  if (p.style == p.Style.windows && fontFileExists) {
    fontData = File(p.absolute('fonts', 'Roboto-Regular.ttf'))
        .readAsBytes()
        .then((bytes) => ByteData.view(Uint8List.fromList(bytes).buffer));
  } else {
    fontData = File(p.absolute('test', 'fonts', 'Roboto-Regular.ttf'))
        .readAsBytes()
        .then((bytes) => ByteData.view(Uint8List.fromList(bytes).buffer));
  }

  fontLoader.addFont(fontData);
  await fontLoader.load();
}
