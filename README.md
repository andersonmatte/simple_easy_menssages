# 💬 simple_easy_menssages

A simple and easy Flutter package to display success, warning, error and custom messages using AlertDialog, SnackBar and Toastification.

![Flutter Version](https://img.shields.io/badge/flutter-%E2%89%A53.0.0-blue)
![Pub Version](https://img.shields.io/pub/v/simple_easy_menssages.svg)
![License](https://img.shields.io/badge/license-MIT-green)

---

## 🚀 Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
simple_easy_menssages: ^1.0.0

```

## 🚀 How to Use

Import in your Dart code:

```
import 'package:simple_easy_menssages/enums/display_type.dart';
import 'package:simple_easy_menssages/message_notifier.dart';
import 'package:simple_easy_menssages/models/message_config.dart';
```

🎯 Features

```
showSuccess: displays a success message

showWarning: displays a warning message

showError: displays an error message

showCustom: allows you to display a custom message (icon, color, message)
```

```
Each feature is compatible with:

AlertDialogWidget

SnackbarWidget

ToastificationWidget
```

## IMPORTANT! The operations showSuccess, showWarning and showError are methods with predefined colors and icons, but they are not closed and can be customized just like showCustom.

✨ Demos

✅ Success

![Success](https://raw.githubusercontent.com/andersonmatte/simple_easy_menssages/refs/heads/master/assets/Success.png)

⚠️ Warning
![Warning](https://raw.githubusercontent.com/andersonmatte/simple_easy_menssages/refs/heads/master/assets/Warning.png)

❌ Error

![Error](https://raw.githubusercontent.com/andersonmatte/simple_easy_menssages/refs/heads/master/assets/Error.png)

🔷 Custom

![Custom](https://raw.githubusercontent.com/andersonmatte/simple_easy_menssages/refs/heads/master/assets/Custom.png)

✅ Success Example

```dart
    MessageNotifier.showSuccess(
      context: context,
      title: 'Success',
      message: 'Operation completed successfully!',
      displayType: displayType,
      config: MessageConfig(
        icon: Icons.check_circle_outline,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        duration: const Duration(seconds: 3),
      ),
    );
```
⚠️ Warning Example

```dart
    MessageNotifier.showWarning(
      context: context,
      title: 'Warning',
      message: 'Operation with warning!',
      displayType: displayType,
      config: MessageConfig(
        icon: Icons.warning_amber,
        backgroundColor: Colors.yellow,
        textColor: Colors.black,
        duration: const Duration(seconds: 3),
      ),
    );
```
❌ Error

```dart
MessageNotifier.showError(
      context: context,
      title: 'Error',
      message: 'Operation with error!',
      displayType: displayType,
      config: MessageConfig(
        icon: Icons.error_outline_outlined,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        duration: const Duration(seconds: 3),
      ),
    );
```
🔷 Custom

```dart
MessageNotifier.showCustom(
      context: context,
      title: 'Custom',
      message: 'Fully customizable message',
      displayType: displayType,
      config: MessageConfig(
        backgroundColor: Colors.purple,
        icon: Icons.star,
        textColor: Colors.yellow,
        duration: Duration(seconds: 5),
      ),
    );
```

🤝 Contributing

Contributions are welcome! Open an issue or submit a pull request:
https://github.com/andersonmatte/simple_easy_menssages

👨‍💻 Author

Anderson Matte
[GitHub](https://github.com/andersonmatte/) | [LinkedIn](https://www.linkedin.com/in/andersonmatte/)

📝 License

This project is licensed under the MIT License. See the LICENSE file for more details.
