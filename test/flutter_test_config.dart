import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> main(FutureOr<void> testMain()) async {
  await loadAppFonts();
  return testMain();
}

Future<void> loadAppFonts() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final fontLoader = FontLoader('Roboto');
  final fontData = File('fonts/Roboto-Regular.ttf')
      .readAsBytes()
      .then((bytes) => ByteData.view(Uint8List.fromList(bytes).buffer));
  fontLoader.addFont(fontData);
  await fontLoader.load();
}
