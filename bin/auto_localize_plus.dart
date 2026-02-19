import 'package:auto_localize_plus/auto_localize_plus.dart';

Future<void> main(List<String> args) async {
  await AutoLocalize.generate(
    inputPath: 'assets/en.json',
    outputDir: 'assets',
    languages: ['hi', 'ta'],
  );
}
