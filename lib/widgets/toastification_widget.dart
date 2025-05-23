import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../models/message_config.dart';

/// ToastificationWidget is a helper class to display customizable toast notifications.
///
/// It shows a toast with title, message, icon, and custom colors. The appearance
/// and behavior (colors, icon, duration, position) are controlled by the MessageConfig parameter.
///
/// Usage example:
/// ```dart
/// ToastificationWidget.show(
///   context,
///   'Info',
///   'This is a toast notification.',
///   MessageConfig(
///     backgroundColor: Colors.blue,
///     textColor: Colors.white,
///     icon: Icons.info,
///     duration: Duration(seconds: 3),
///   ),
/// );
/// ```
///
/// ---
///
/// ToastificationWidget é uma classe auxiliar para exibir notificações toast customizáveis.
///
/// Exibe um toast com título, mensagem, ícone e cores personalizadas. A aparência
/// e comportamento (cores, ícone, duração, posição) são controlados pelo parâmetro MessageConfig.
///
/// Exemplo de uso:
/// ```dart
/// ToastificationWidget.show(
///   context,
///   'Informação',
///   'Esta é uma notificação toast.',
///   MessageConfig(
///     backgroundColor: Colors.blue,
///     textColor: Colors.white,
///     icon: Icons.info,
///     duration: Duration(seconds: 3),
///   ),
/// );
/// ```
class ToastificationWidget {
  static void show(
    BuildContext context,
    String title,
    String message,
    MessageConfig config,
  ) {
    toastification.show(
      context: context,
      title: Text(title, style: TextStyle(color: config.textColor)),
      description: Text(message, style: TextStyle(color: config.textColor)),
      backgroundColor: config.backgroundColor ?? Colors.black,
      icon: Icon(config.icon, color: config.textColor),
      autoCloseDuration: config.duration ?? const Duration(seconds: 3),
      alignment: Alignment.topRight,
    );
  }
}
