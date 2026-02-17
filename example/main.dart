import 'package:auto_localize/auto_localize.dart';

Future<void> main() async {
  await AutoLocalize.generate(
    inputPath: 'assets/en.json',
    outputDir: 'assets',
    languages: ['hi', 'ta'],
  );
}
