import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';

void main() {
  testWidgets('Notes app launches and shows Notes title', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    expect(find.text('Notes'), findsOneWidget);
    // There should be a floating action button for adding.
    expect(find.byType(FloatingActionButton), findsOneWidget);
    // "No notes yet" should be visible for empty db
    expect(find.text('No notes yet'), findsOneWidget);
  });
}
