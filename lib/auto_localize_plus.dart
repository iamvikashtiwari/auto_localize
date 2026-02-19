library auto_localize;

import 'dart:convert';
import 'dart:io';
import 'package:translator/translator.dart';

class AutoLocalize {
  static final _translator = GoogleTranslator();

  /// Generate localization files
  static Future<void> generate({
    required String inputPath,
    required String outputDir,
    required List<String> languages,
    int batchSize = 20,
  }) async {
    final inputFile = File(inputPath);

    if (!inputFile.existsSync()) {
      throw Exception("Input file not found: $inputPath");
    }

    final jsonString = await inputFile.readAsString();
    Map<String, dynamic> data = json.decode(jsonString);

    for (final lang in languages) {
      print("\n🌍 Translating → $lang");

      final translated = await _translateMap(
        data,
        lang,
        batchSize,
      );

      final outputFile = File('$outputDir/$lang.json');

      await outputFile.writeAsString(
        const JsonEncoder.withIndent('  ').convert(translated),
      );

      print("✅ Generated: ${outputFile.path}");
    }
  }

  static Future<Map<String, dynamic>> _translateMap(
    Map<String, dynamic> data,
    String lang,
    int batchSize,
  ) async {
    Map<String, dynamic> result = {};

    final entries = data.entries.toList();

    for (int i = 0; i < entries.length; i += batchSize) {
      final batch = entries.skip(i).take(batchSize);

      final futures = batch.map((entry) async {
        try {
          final translation =
              await _translator.translate(entry.value, to: lang);

          return MapEntry(entry.key, translation.text);
        } catch (_) {
          return MapEntry(entry.key, entry.value);
        }
      });

      final batchResult = await Future.wait(futures);

      result.addEntries(batchResult);

      print("⚡ Batch ${(i ~/ batchSize) + 1} done");
    }

    return result;
  }
}
