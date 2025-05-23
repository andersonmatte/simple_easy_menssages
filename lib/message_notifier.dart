import 'package:flutter/material.dart';
import 'package:simple_easy_menssages/widgets/alert_dialog_widget.dart';

import 'enums/display_type.dart';
import 'enums/message_type.dart';
import 'models/message_config.dart';
import 'widgets/snackbar_widget.dart';
import 'widgets/toastification_widget.dart';

/// MessageNotifier is a centralized utility class to display messages in different styles (Snackbar, AlertDialog, Toast).
///
/// It supports showing success, warning, error, and fully custom messages, each with default configurations
/// that can be overridden by a custom [MessageConfig].
///
/// The message display type is controlled by [DisplayType] and can be one of:
/// - snackbar
/// - alert dialog
/// - toastification
///
/// Example usage:
/// ```dart
/// MessageNotifier.showSuccess(
///   context: context,
///   title: 'Success',
///   message: 'Operation completed successfully.',
///   displayType: DisplayType.snackbar,
/// );
/// ```
///
/// ---
///
/// MessageNotifier é uma classe utilitária centralizada para exibir mensagens em diferentes estilos (Snackbar, AlertDialog, Toast).
///
/// Ela suporta exibir mensagens de sucesso, aviso, erro e mensagens totalmente customizadas,
/// cada uma com configurações padrão que podem ser sobrescritas por um [MessageConfig] personalizado.
///
/// O tipo de exibição da mensagem é controlado por [DisplayType] e pode ser um de:
/// - snackbar
/// - diálogo de alerta (alert dialog)
/// - toastification
///
/// Exemplo de uso:
/// ```dart
/// MessageNotifier.showSuccess(
///   context: context,
///   title: 'Sucesso',
///   message: 'Operação concluída com sucesso.',
///   displayType: DisplayType.snackbar,
/// );
/// ```
class MessageNotifier {
  // Generic private method to avoid repetition
  static void _show({
    required BuildContext context,
    required String title,
    required String message,
    required DisplayType displayType,
    required MessageConfig config,
  }) {
    switch (displayType) {
      case DisplayType.snackbar:
        SnackbarWidget.show(context, title, message, config);
        break;
      case DisplayType.alert:
        AlertDialogWidget.show(context, title, message, config);
        break;
      case DisplayType.toast:
        ToastificationWidget.show(context, title, message, config);
        break;
    }
  }

  /// Shows a success message with default or custom configuration.
  static void showSuccess({
    required BuildContext context,
    required String title,
    required String message,
    required DisplayType displayType,
    MessageConfig? config,
  }) {
    final defaultConfig = _getDefaultConfig(MessageType.success);
    final effectiveConfig = _mergeConfigs(defaultConfig, config);
    _show(
      context: context,
      title: title,
      message: message,
      displayType: displayType,
      config: effectiveConfig,
    );
  }

  /// Shows a warning message with default or custom configuration.
  static void showWarning({
    required BuildContext context,
    required String title,
    required String message,
    required DisplayType displayType,
    MessageConfig? config,
  }) {
    final defaultConfig = _getDefaultConfig(MessageType.warning);
    final effectiveConfig = _mergeConfigs(defaultConfig, config);
    _show(
      context: context,
      title: title,
      message: message,
      displayType: displayType,
      config: effectiveConfig,
    );
  }

  /// Shows an error message with default or custom configuration.
  static void showError({
    required BuildContext context,
    required String title,
    required String message,
    required DisplayType displayType,
    MessageConfig? config,
  }) {
    final defaultConfig = _getDefaultConfig(MessageType.error);
    final effectiveConfig = _mergeConfigs(defaultConfig, config);
    _show(
      context: context,
      title: title,
      message: message,
      displayType: displayType,
      config: effectiveConfig,
    );
  }

  /// Shows a fully custom message with required configuration.
  static void showCustom({
    required BuildContext context,
    required String title,
    required String message,
    required DisplayType displayType,
    required MessageConfig config,
  }) {
    _show(
      context: context,
      title: title,
      message: message,
      displayType: displayType,
      config: config,
    );
  }

  /// Returns the default configuration based on the message type.
  static MessageConfig _getDefaultConfig(MessageType type) {
    switch (type) {
      case MessageType.success:
        return MessageConfig(
          textColor: Colors.white,
          icon: Icons.check_circle_outline,
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 3),
        );
      case MessageType.warning:
        return MessageConfig(
          textColor: Colors.black,
          icon: Icons.warning_amber,
          backgroundColor: Colors.yellow,
          duration: const Duration(seconds: 4),
        );
      case MessageType.error:
        return MessageConfig(
          textColor: Colors.white,
          icon: Icons.error_outline_outlined,
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 4),
        );
    }
  }

  /// Merges default and custom configs, overriding defaults with custom values if provided.
  static MessageConfig _mergeConfigs(
    MessageConfig base,
    MessageConfig? custom,
  ) {
    if (custom == null) return base;
    return MessageConfig(
      textColor: custom.textColor ?? base.textColor,
      icon: custom.icon ?? base.icon,
      backgroundColor: custom.backgroundColor ?? base.backgroundColor,
      duration: custom.duration ?? base.duration,
    );
  }
}
