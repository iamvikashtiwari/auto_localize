# auto_localize

🚀 Automatically generate multi-language localization JSON files for Flutter & Dart projects.

Convert a single base file (like `en.json`) into multiple languages such as:

- Hindi (hi)
- Tamil (ta)
- Telugu (te)
- Kannada (kn)
- Malayalam (ml)
- Marathi (mr)
- Bengali (bn)
- Gujarati (gu)
- Punjabi (pa)
- And more…

Fast parallel translation included ⚡

---

## ✨ Features

✅ Generate localization JSON automatically  
✅ Supports multiple languages  
✅ Fast parallel translation (batch processing)  
✅ CLI support (`dart run auto_localize`)  
✅ Works with Flutter & Dart projects  
✅ Simple API  
✅ Easy integration

---

## 📦 Installation

```bash
dart pub add auto_localize
```

---

## 📁 Input File

Create your base localization file (example `en.json`) in your project:

```
your_project/
  assets/
    en.json
```

Example:

```json
{
  "hello": "Hello",
  "welcome": "Welcome to the app",
  "login": "Login"
}
```

---

## 🚀 Usage (Dart API)

```dart
import 'package:auto_localize/auto_localize.dart';

Future<void> main(List<String> args) async {
  await AutoLocalize.generate(
    inputPath: 'assets/en.json',
    outputDir: 'assets',
    languages: ['hi', 'ta'],
  );
}
```

### 📌 languages Parameter

In:

```dart
languages: ['hi', 'ta']
```

Add the language codes that you want to generate.

Example:

```dart
languages: ['hi', 'ta', 'te', 'kn']
```

This will generate:

```
assets/
  hi.json
  ta.json
  te.json
  kn.json
```

---

## 🚀 CLI Usage

You can also run directly from terminal:

```bash
dart run auto_localize
```

---

## 📁 Output Structure

After running:

```
assets/
  en.json
  hi.json
  ta.json
  te.json
```

---

## 🌍 Supported Language Codes

Below are commonly used language codes:

| Language | Code |
|----------|------|
English | en |
Hindi | hi |
Tamil | ta |
Telugu | te |
Kannada | kn |
Malayalam | ml |
Marathi | mr |
Bengali | bn |
Gujarati | gu |
Punjabi | pa |
Odia | or |
Assamese | as |
Urdu | ur |
Nepali | ne |
Sinhala | si |

You can use any valid ISO language code supported by the translation engine.

Example:

```dart
languages: ['hi', 'bn', 'mr']
```

---

## 🎯 Perfect For

- Flutter apps
- Banking apps
- Enterprise apps
- Multi-language products
- Localization automation

---

## ⚡ Performance

Uses batch parallel translation for faster processing compared to sequential translation.

---

## ❤️ Contributing

Contributions are welcome!

If you find a bug or want a feature, please open an issue or submit a PR.

---

## 📄 License

MIT License

---

## 👨‍💻 Author

Developed with ❤️ for the Flutter & Dart community.

---

## ⭐ Support

If you find this package useful, please give it a star on GitHub ⭐
