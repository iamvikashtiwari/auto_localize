import 'dart:convert';
import 'dart:io';

import 'package:auto_localize_plus/auto_localize_plus.dart';
import 'package:test/test.dart';

void main() {
  group('AutoLocalize Tests', () {
    test('Generate localization file', () async {
      // Create temp folder
      final dir = Directory.systemTemp.createTempSync();

      final inputFile = File('${dir.path}/en.json');

      inputFile.writeAsStringSync(jsonEncode({
        "hello": "Hello",
      }));

      await AutoLocalize.generate(
        inputPath: inputFile.path,
        outputDir: dir.path,
        languages: ['hi'],
      );

      final outputFile = File('${dir.path}/hi.json');

      expect(outputFile.existsSync(), true);
    });
  });
}
