import 'package:auto_localize/auto_localize.dart';

Future<void> main(List<String> args) async {
  await AutoLocalize.generate(
    inputPath: 'assets/en.json',
    outputDir: 'assets',
    languages: ['hi', 'ta'],
  );
}
