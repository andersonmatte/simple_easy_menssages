import 'package:flutter/material.dart';

import '../models/message_config.dart';

/// SnackbarWidget is a helper class to display customizable snack bars.
///
/// It shows a snack bar with an icon, title, and message. The appearance
/// (colors, icon, duration) is controlled by the MessageConfig parameter.
///
/// Usage example:
/// ```dart
/// SnackbarWidget.show(
///   context,
///   'Success',
///   'Operation completed successfully.',
///   MessageConfig(
///     backgroundColor: Colors.green,
///     textColor: Colors.white,
///     icon: Icons.check_circle,
///     duration: Duration(seconds: 3),
///   ),
/// );
/// ```
///
/// ---
///
/// SnackbarWidget é uma classe auxiliar para exibir snack bars customizáveis.
///
/// Exibe uma snack bar com ícone, título e mensagem. A aparência
/// (cores, ícone, duração) é controlada pelo parâmetro MessageConfig.
///
/// Exemplo de uso:
/// ```dart
/// SnackbarWidget.show(
///   context,
///   'Sucesso',
///   'Operação concluída com sucesso.',
///   MessageConfig(
///     backgroundColor: Colors.green,
///     textColor: Colors.white,
///     icon: Icons.check_circle,
///     duration: Duration(seconds: 3),
///   ),
/// );
/// ```
class SnackbarWidget {
  static void show(
    BuildContext context,
    String title,
    String message,
    MessageConfig config,
  ) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(config.icon, color: config.textColor),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              '$title\n$message',
              style: TextStyle(color: config.textColor),
            ),
          ),
        ],
      ),
      backgroundColor: config.backgroundColor,
      duration: config.duration ?? const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
