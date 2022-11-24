import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ditonton/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Ditonton TV', (WidgetTester tester) async {
    // setup
    app.main();
    await tester.pumpAndSettle();

    // do
    // open drawer
    final ScaffoldState stateMovie = tester.firstState(find.byType(Scaffold));
    stateMovie.openDrawer();
    await tester.pumpAndSettle();

    // tap icon tv
    await tester.tap(find.byIcon(Icons.tv));
    await tester.pumpAndSettle();
  });
}
