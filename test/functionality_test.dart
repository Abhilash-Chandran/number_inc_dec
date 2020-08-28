import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:number_inc_dec/number_inc_dec.dart';

void main() {
  testWidgets('Check default Increment / Decrement functionality',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NumberInputWithIncrementDecrement(
            controller: TextEditingController(),
          ),
        ),
      ),
    );
    final defaultNumber = find.widgetWithText(TextFormField, '0');
    expect(defaultNumber, findsOneWidget);

    // tap and test increment button
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '1'), findsOneWidget);
    // tap again increment value to 2
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '2'), findsOneWidget);

    // tap decrement button twice to bring the value down to zero
    final decrementButton = find.byIcon(Icons.arrow_drop_down);
    await tester.tap(decrementButton);
    await tester.pump();
    await tester.tap(decrementButton);
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '0'), findsOneWidget);

    // try to decrement again and see its not able to decrement below zero
    await tester.tap(decrementButton);
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '0'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, '-1'), findsNothing);
  });

  testWidgets('Test Minimum Maximum Settings', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NumberInputWithIncrementDecrement(
            controller: TextEditingController(),
            min: -2,
            max: 3,
          ),
        ),
      ),
    );
    final defaultNumber = find.widgetWithText(TextFormField, '0');
    expect(defaultNumber, findsOneWidget);

    // tap increment button four times and check that value doesn't cross max value of 3
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '3'), findsOneWidget);
    // Make sure there is no widget with value more than 4
    expect(find.widgetWithText(TextFormField, '4'), findsNothing);

    // tap decrement button six times and ensure value doesn't fall below -2
    final decrementButton = find.byIcon(Icons.arrow_drop_down);
    await tester.tap(decrementButton);
    await tester.pump();
    await tester.tap(decrementButton);
    await tester.pump();
    await tester.tap(decrementButton);
    await tester.pump();
    await tester.tap(decrementButton);
    await tester.pump();
    await tester.tap(decrementButton);
    await tester.pump();
    await tester.tap(decrementButton);
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '-2'), findsOneWidget);
    // ensure no widget has value less than -2
    expect(find.widgetWithText(TextFormField, '-3'), findsNothing);
  });
  testWidgets('Test Increment decrement factor Settings',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NumberInputWithIncrementDecrement(
            controller: TextEditingController(),
            isInt: false,
            incDecFactor: 0.4,
          ),
        ),
      ),
    );
    // ensure default value is 0.00
    final defaultNumber = find.widgetWithText(TextFormField, '0.00');
    expect(defaultNumber, findsOneWidget);

    // tap increment button once and ensure the increment happens by 0.4
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '0.40'), findsOneWidget);
    // tap increment button three more times and check that value is 1.6
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '1.60'), findsOneWidget);
    // Make sure there is no widget with value more than 4
    expect(find.widgetWithText(TextFormField, '4.00'), findsNothing);

    // tap decrement button two times and ensure value is 0.8
    final decrementButton = find.byIcon(Icons.arrow_drop_down);
    await tester.tap(decrementButton);
    await tester.pump();
    await tester.tap(decrementButton);
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '0.80'), findsOneWidget);
    // ensure no widget has value less than -2
    expect(find.widgetWithText(TextFormField, '0.00'), findsNothing);
  });

  testWidgets(
      'Test fraction digits Settings. This setting decides no of units after decimal point',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NumberInputWithIncrementDecrement(
            controller: TextEditingController(),
            isInt: false,
            incDecFactor: 0.35,
            fractionDigits: 4,
          ),
        ),
      ),
    );
    // ensure default value is 0.00
    final defaultNumber = find.widgetWithText(TextFormField, '0.0000');
    expect(defaultNumber, findsOneWidget);

    // tap increment button once and ensure the increment happens by 0.4
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '0.3500'), findsOneWidget);
    // tap increment button three more times and check that value is 1.6
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '1.4000'), findsOneWidget);
    // Make sure there is no widget with value more than 4
    expect(find.widgetWithText(TextFormField, '4.0000'), findsNothing);

    // tap decrement button two times and ensure value is 0.8
    final decrementButton = find.byIcon(Icons.arrow_drop_down);
    await tester.tap(decrementButton);
    await tester.pump();
    await tester.tap(decrementButton);
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '0.7000'), findsOneWidget);
    // ensure no widget has value less than -2
    expect(find.widgetWithText(TextFormField, '0.0000'), findsNothing);
  });

  testWidgets('Test Initial Value', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NumberInputWithIncrementDecrement(
            controller: TextEditingController(),
            initialValue: 7,
          ),
        ),
      ),
    );
    // ensure default value is 0.00 is not set
    final defaultNumber = find.widgetWithText(TextFormField, '0.00');
    expect(defaultNumber, findsNothing);

    // ensure default value is 0.00 is not set
    final defaultSetNumber = find.widgetWithText(TextFormField, '7');
    expect(defaultSetNumber, findsOneWidget);
    // tap increment button once and ensure it works
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '8'), findsOneWidget);

    // tap decrement button two times and ensure it works
    final decrementButton = find.byIcon(Icons.arrow_drop_down);
    await tester.tap(decrementButton);
    await tester.pump();
    await tester.tap(decrementButton);
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '6'), findsOneWidget);
    // ensure no widget has 0 as values
    expect(find.widgetWithText(TextFormField, '0'), findsNothing);
  });
  testWidgets('Test increment decrement call backs',
      (WidgetTester tester) async {
    Completer incCompleter = Completer<num>();
    Completer decCompleter = Completer<num>();
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NumberInputWithIncrementDecrement(
            controller: TextEditingController(),
            initialValue: 7,
            onIncrement: incCompleter.complete,
            onDecrement: decCompleter.complete,
          ),
        ),
      ),
    );
    // ensure default value is not set to 0
    final defaultNumber = find.widgetWithText(TextFormField, '0');
    expect(defaultNumber, findsNothing);

    // ensure default value 7 is set
    final defaultSetNumber = find.widgetWithText(TextFormField, '7');
    expect(defaultSetNumber, findsOneWidget);
    // tap increment button once and ensure it works
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextFormField, '8'), findsOneWidget);

    // Ensure that the increment call back is returned with the correct value 8.
    expect(incCompleter.isCompleted, isTrue);
    expect(await incCompleter.future, equals(8));

    // tap decrement button two times and ensure it works
    final decrementButton = find.byIcon(Icons.arrow_drop_down);
    await tester.tap(decrementButton);
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextFormField, '7'), findsOneWidget);

    // Ensure that the decrement call back is returned with the correct value 8.
    expect(decCompleter.isCompleted, isTrue);
    expect(await decCompleter.future, equals(7));
  });
  testWidgets('Test autoValidate with default min-max validator',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NumberInputWithIncrementDecrement(
            controller: TextEditingController(),
            autovalidate: true,
            initialValue: 1,
            min: 1,
            max: 10,
          ),
        ),
      ),
    );

    // ensure default value 1 is set
    final defaultSetNumber = find.widgetWithText(TextFormField, '1');
    expect(defaultSetNumber, findsOneWidget);
    // enter number '0'
    await tester.enterText(find.byType(TextFormField), '0');
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextFormField, '0'), findsOneWidget);
    expect(
        find.widgetWithText(TextFormField, 'Value should be between 1 and 10'),
        findsOneWidget);
  });

  testWidgets('Test enable as false', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NumberInputWithIncrementDecrement(
            controller: TextEditingController(),
            enabled: false,
          ),
        ),
      ),
    );
    // ensure default value is 0.00 is not set
    final defaultNumber = find.widgetWithText(TextFormField, '0.00');
    expect(defaultNumber, findsNothing);

    // ensure default value is 0.00 is not set
    final defaultSetNumber = find.widgetWithText(TextFormField, '0');
    expect(defaultSetNumber, findsOneWidget);
    // tap increment button once and ensure it works
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '0'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, '1'), findsNothing);

    // tap decrement button two times and ensure it works
    final decrementButton = find.byIcon(Icons.arrow_drop_down);
    await tester.tap(decrementButton);
    await tester.pump();
    await tester.tap(decrementButton);
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '0'), findsOneWidget);
    // ensure no widget has 0 as values
    expect(find.widgetWithText(TextFormField, '-1'), findsNothing);
    expect(find.widgetWithText(TextFormField, '1'), findsNothing);
  });

  testWidgets('Test enable as false on prefabbed widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NumberInputPrefabbed.roundedEdgeButtons(
            controller: TextEditingController(),
            enabled: false,
          ),
        ),
      ),
    );
    // ensure default value is 0.00 is not set
    final defaultNumber = find.widgetWithText(TextFormField, '0.00');
    expect(defaultNumber, findsNothing);

    // ensure default value is 0.00 is not set
    final defaultSetNumber = find.widgetWithText(TextFormField, '0');
    expect(defaultSetNumber, findsOneWidget);
    // tap increment button once and ensure it works
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '0'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, '1'), findsNothing);

    // tap decrement button two times and ensure it works
    final decrementButton = find.byIcon(Icons.arrow_drop_down);
    await tester.tap(decrementButton);
    await tester.pump();
    await tester.tap(decrementButton);
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '0'), findsOneWidget);
    // ensure no widget has 0 as values
    expect(find.widgetWithText(TextFormField, '-1'), findsNothing);
    expect(find.widgetWithText(TextFormField, '1'), findsNothing);
  });

  testWidgets('Test onSubmitted callback for double',
      (WidgetTester tester) async {
    double valueSubmitted = 15;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NumberInputWithIncrementDecrement(
            key: Key("testInput"),
            controller: TextEditingController(),
            isInt: false,
            incDecFactor: 0.4,
            min: 4.5,
            max: 44.5,
            initialValue: 10.0,
            onSubmitted: (newValue) {
              valueSubmitted = newValue;
            },
          ),
        ),
      ),
    );
    // ensure can find the widget
    expect(find.byKey(Key("testInput")), findsOneWidget);

    // ensure default value is 10.00 (fractionDigits defaults to 2)
    final defaultNumber = find.widgetWithText(TextFormField, '10.00');
    expect(defaultNumber, findsOneWidget);

    // tap increment button once and ensure onSubmitted is NOT called
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(valueSubmitted, 15);

    // entering a value and hitting done should trigger callback
    await tester.enterText(find.byKey(Key("testInput")), "20.00");
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump();
    expect(valueSubmitted, 20);

    // entering a value out of range should not be allowed and corrects to
    // largest allowed
    await tester.enterText(find.byKey(Key("testInput")), "500.0");
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump();
    expect(valueSubmitted, 44.5);

    // entering a value out of range should not be allowed and corrects to
    // smallest allowed
    await tester.enterText(find.byKey(Key("testInput")), "1.0");
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump();
    expect(valueSubmitted, 4.5);
  });
  testWidgets('Test onSubmitted callback for int', (WidgetTester tester) async {
    int valueSubmitted = 6;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NumberInputWithIncrementDecrement(
            key: Key("testInput"),
            controller: TextEditingController(),
            isInt: true,
            incDecFactor: 2,
            min: 4,
            max: 8,
            initialValue: 5,
            onSubmitted: (newValue) {
              valueSubmitted = newValue;
            },
          ),
        ),
      ),
    );
    // ensure can find the widget
    expect(find.byKey(Key("testInput")), findsOneWidget);

    // ensure default value is 5
    final defaultNumber = find.widgetWithText(TextFormField, '5');
    expect(defaultNumber, findsOneWidget);

    // tap increment button once and ensure onSubmitted is NOT called
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(valueSubmitted, 6);

    // entering a value and hitting done should trigger callback
    await tester.enterText(find.byKey(Key("testInput")), "7");
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump();
    expect(valueSubmitted, 7);

    // entering a value out of range should not be allowed and corrects to
    // largest allowed
    await tester.enterText(find.byKey(Key("testInput")), "500");
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump();
    expect(valueSubmitted, 8);

    // entering a value out of range should not be allowed and corrects to
    // smallest allowed
    await tester.enterText(find.byKey(Key("testInput")), "1");
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump();
    expect(valueSubmitted, 4);

    // following needs to be un commented once the relevant issue is solved.
    // tap increment button once and ensure onSubmitted is NOT called
    await tester.tap(find.byIcon(Icons.arrow_drop_up));
    await tester.pump();
    expect(valueSubmitted, 4);
    final updatedNumber = find.widgetWithText(TextFormField, '6');
    expect(updatedNumber, findsOneWidget);
  });
}
