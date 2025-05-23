import 'package:flutter/material.dart';

import '../models/message_config.dart';

/// AlertDialogWidget is a helper class to display customizable alert dialogs.
///
/// It shows a dialog with a title, message, and an OK button. The appearance
/// (colors, icon, duration) is controlled by the MessageConfig parameter.
///
/// Usage example:
/// ```dart
/// AlertDialogWidget.show(
///   context,
///   'Warning',
///   'This is an alert message',
///   MessageConfig(
///     backgroundColor: Colors.orange,
///     textColor: Colors.white,
///     icon: Icons.warning,
///     duration: Duration(seconds: 3),
///   ),
/// );
/// ```
///
/// ---
///
/// AlertDialogWidget é uma classe auxiliar para exibir diálogos de alerta customizáveis.
///
/// Exibe um diálogo com título, mensagem e um botão OK. A aparência
/// (cores, ícone, duração) é controlada pelo parâmetro MessageConfig.
///
/// Exemplo de uso:
/// ```dart
/// AlertDialogWidget.show(
///   context,
///   'Aviso',
///   'Esta é uma mensagem de alerta',
///   MessageConfig(
///     backgroundColor: Colors.orange,
///     textColor: Colors.white,
///     icon: Icons.warning,
///     duration: Duration(seconds: 3),
///   ),
/// );
/// ```
class AlertDialogWidget {
  static void show(
    BuildContext context,
    String title,
    String message,
    MessageConfig config,
  ) {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            backgroundColor: config.backgroundColor,
            title: Row(
              children: [
                Icon(config.icon, color: config.textColor),
                const SizedBox(width: 8),
                Text(title, style: TextStyle(color: config.textColor)),
              ],
            ),
            content: Text(message, style: TextStyle(color: config.textColor)),
            actions: [
              TextButton(
                child: Text('OK', style: TextStyle(color: config.textColor)),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
    );
  }
}
