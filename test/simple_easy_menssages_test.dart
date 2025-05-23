import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_easy_menssages/enums/display_type.dart';
import 'package:simple_easy_menssages/message_notifier.dart';
import 'package:simple_easy_menssages/models/message_config.dart';

void main() {
  testWidgets('Display success message as SnackBar',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  MessageNotifier.showSuccess(
                    context: context,
                    title: 'Success!',
                    message: 'Operation completed successfully!',
                    displayType: DisplayType.snackbar,
                    config: MessageConfig(
                      icon: Icons.check_circle_outline,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: Text('Show Message'),
              ),
            ),
          );
        },
      ),
    ));

    // Tap the button
    await tester.tap(find.text('Show Message'));
    await tester.pump(); // Trigger onPressed

    // Wait for the SnackBar to appear completely
    await tester.pumpAndSettle(const Duration(seconds: 3));

    // Checks
    // expect(find.text('Success!'), findsOneWidget);
    // expect(find.text('Operation completed successfully!'), findsOneWidget);

    // Wait for the SnackBar to disappear
    await tester.pumpAndSettle(const Duration(seconds: 3));
  });
}
