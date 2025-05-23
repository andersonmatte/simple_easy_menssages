import 'package:flutter/material.dart';
import 'package:simple_easy_menssages/enums/display_type.dart';
import 'package:simple_easy_menssages/message_notifier.dart';
import 'package:simple_easy_menssages/models/message_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo da Package',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void _showMensagemSuccess(BuildContext context, DisplayType displayType) {
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
  }

  void _showMensagemWarning(BuildContext context, DisplayType displayType) {
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
  }

  void _showMensagemError(BuildContext context, DisplayType displayType) {
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
  }

  void _showCustom(BuildContext context, DisplayType displayType) {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Simple Easy Menssages Test',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: IntrinsicWidth(
          child: Column(
            children: [
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed:
                      () => _showMensagemSuccess(context, DisplayType.snackbar),
                  child: const Text('SnackBar Success'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed:
                      () => _showMensagemSuccess(context, DisplayType.alert),
                  child: const Text('AlertDialog Success'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed:
                      () => _showMensagemSuccess(context, DisplayType.toast),
                  child: const Text('Toastification Success'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed:
                      () => _showMensagemWarning(context, DisplayType.snackbar),
                  child: const Text('SnackBar Warning'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed:
                      () => _showMensagemWarning(context, DisplayType.alert),
                  child: const Text('AlertDialog Warning'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed:
                      () => _showMensagemWarning(context, DisplayType.toast),
                  child: const Text('Toastification Warning'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed:
                      () => _showMensagemError(context, DisplayType.snackbar),
                  child: const Text('SnackBar Error'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed:
                      () => _showMensagemError(context, DisplayType.alert),
                  child: const Text('AlertDialog Error'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed:
                      () => _showMensagemError(context, DisplayType.toast),
                  child: const Text('Toastification Error'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => _showCustom(context, DisplayType.snackbar),
                  child: const Text('Toastification Custom'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => _showCustom(context, DisplayType.alert),
                  child: const Text('Toastification Custom'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => _showCustom(context, DisplayType.toast),
                  child: const Text('Toastification Custom'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
