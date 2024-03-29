import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

void main() {
  testWidgets('Test Default Appearance', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputWithIncrementDecrement(
                  controller: TextEditingController(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputWithIncrementDecrement),
        matchesGoldenFile('goldens/default_appearance.png'));
  });
  testWidgets('Test Button Arrangement LeftEnd', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputWithIncrementDecrement(
                  controller: TextEditingController(),
                  buttonArrangement: ButtonArrangement.leftEnd,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputWithIncrementDecrement),
        matchesGoldenFile('goldens/button_arrangement_left.png'));
  });
  testWidgets('Test Button Arrangement leftIncRightDec',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.roundedButtons(
                  controller: TextEditingController(),
                  buttonArrangement: ButtonArrangement.incLeftDecRight,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputPrefabbed),
        matchesGoldenFile('goldens/button_arrangement_left_right.png'));
  });
  testWidgets('Test Button Arrangement leftDecRightInc',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.roundedButtons(
                  controller: TextEditingController(),
                  buttonArrangement: ButtonArrangement.incRightDecLeft,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputPrefabbed),
        matchesGoldenFile('goldens/button_arrangement_right_left.png'));
  });
  testWidgets('Test RoundedEdgeButtons appearance',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.roundedEdgeButtons(
                  controller: TextEditingController(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputPrefabbed),
        matchesGoldenFile('goldens/prefabbed_rounded_edge_buttons.png'));
  });
  testWidgets('Test RoundedEdgeButtons leftEnd appearance',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.roundedEdgeButtons(
                  controller: TextEditingController(),
                  buttonArrangement: ButtonArrangement.leftEnd,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(
        find.byType(NumberInputPrefabbed),
        matchesGoldenFile(
            'goldens/prefabbed_rounded_edge_left_end_buttons.png'));
  });
  testWidgets('Test RoundedEdgeButtons incLeftDecRight appearance',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.roundedEdgeButtons(
                  controller: TextEditingController(),
                  buttonArrangement: ButtonArrangement.incLeftDecRight,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(
        find.byType(NumberInputPrefabbed),
        matchesGoldenFile(
            'goldens/prefabbed_rounded_edge_incLeftDecRight_buttons.png'));
  });
  testWidgets('Test RoundedEdgeButtons incRightDecLeft appearance',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.roundedEdgeButtons(
                  controller: TextEditingController(),
                  buttonArrangement: ButtonArrangement.incRightDecLeft,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(
        find.byType(NumberInputPrefabbed),
        matchesGoldenFile(
            'goldens/prefabbed_rounded_edge_incRightDecLeft_buttons.png'));
  });
  testWidgets('Test Squared Buttons appearance', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.squaredButtons(
                  controller: TextEditingController(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputPrefabbed),
        matchesGoldenFile('goldens/prefabbed_squared_buttons.png'));
  });
  testWidgets('Test Prefabbed Leafy Appearance', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.leafyButtons(
                  controller: TextEditingController(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputPrefabbed),
        matchesGoldenFile('goldens/prefabbed_leafy_appearance.png'));
  });
  testWidgets('Test Prefabbed Leafy Appearance leftEnd',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.leafyButtons(
                  controller: TextEditingController(),
                  buttonArrangement: ButtonArrangement.leftEnd,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputPrefabbed),
        matchesGoldenFile('goldens/prefabbed_leafy_leftEnd_appearance.png'));
  });

  testWidgets('Test Prefabbed Directional button Appearance',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.directionalButtons(
                  controller: TextEditingController(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(
        find.byType(NumberInputPrefabbed),
        matchesGoldenFile(
            'goldens/prefabbed_directional_button_appearance.png'));
  });
  testWidgets('Test increment Decrement Icon color settings',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.leafyButtons(
                  controller: TextEditingController(),
                  incDecBgColor: Colors.pink,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputPrefabbed),
        matchesGoldenFile('goldens/prefabbed_pink_leafy_appearance.png'));
  });
  testWidgets('Test Increment Icon Decrement Icons decoration setting',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputWithIncrementDecrement(
                  controller: TextEditingController(),
                  incIconDecoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  // separateIcons: true,
                  decIconDecoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputWithIncrementDecrement),
        matchesGoldenFile('goldens/incr_decr_icon_decoration_appearance.png'));
  });

  testWidgets('Test Regular Widget incLeftDecRight',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputWithIncrementDecrement(
                  controller: TextEditingController(),
                  buttonArrangement: ButtonArrangement.incLeftDecRight,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputWithIncrementDecrement),
        matchesGoldenFile('goldens/regular_incLeftDecRight.png'));
  });

  testWidgets('Test Regular Widget incRightDecLeft',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputWithIncrementDecrement(
                  controller: TextEditingController(),
                  buttonArrangement: ButtonArrangement.incRightDecLeft,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputWithIncrementDecrement),
        matchesGoldenFile('goldens/regular_incRightDecLeft.png'));
  });
  testWidgets('Test Increment Icon Decrement Icons size setting',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputWithIncrementDecrement(
                  controller: TextEditingController(),
                  incIconSize: 32,
                  decIconSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputWithIncrementDecrement),
        matchesGoldenFile('goldens/incr_decr_icon_size.png'));
  });
  testWidgets('Test scaleWidth and scaleHeight setting',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NumberInputWithIncrementDecrement(
                      controller: TextEditingController(),
                      scaleHeight: 1.5,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    NumberInputWithIncrementDecrement(
                      controller: TextEditingController(),
                      scaleWidth: 0.5,
                      initialValue: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Currently using initial value trick to differentiate the widgets.
    // should change to findByKey once the key attributes are exposed.
    await expectLater(
        find.widgetWithText(NumberInputWithIncrementDecrement, '0'),
        matchesGoldenFile('goldens/scale_height_width_setting.png'));
  });

  testWidgets('Test widget container decoration settings',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.leafyButtons(
                  controller: TextEditingController(),
                  incDecBgColor: Colors.blueGrey,
                  widgetContainerDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Colors.amber,
                        width: 2,
                      )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(
        find.byType(NumberInputPrefabbed),
        matchesGoldenFile(
            'goldens/prefabbed_blue_leafy_amber_container_appearance.png'));
  });
  testWidgets('Test number field decoration settings',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.leafyButtons(
                  controller: TextEditingController(),
                  incDecBgColor: Colors.pink,
                  numberFieldDecoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.orange, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    // place the cursor in the text field
    await tester.tap(find.byType(TextFormField));
    // wait for the tap event to finish, only then orange border will appear
    await tester.pumpAndSettle();

    await expectLater(
        find.byType(NumberInputPrefabbed),
        matchesGoldenFile(
            'goldens/prefabbed_leafy_orange_number_decoration_appearance.png'));
  });

  testWidgets('Test style on Prefabbed widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.squaredButtons(
                  controller: TextEditingController(),
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputPrefabbed),
        matchesGoldenFile('goldens/prefabbed_with_style.png'));
  });
  testWidgets('Test style on regular widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputWithIncrementDecrement(
                  controller: TextEditingController(),
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 42,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(find.byType(NumberInputWithIncrementDecrement),
        matchesGoldenFile('goldens/regular_widget_with_style.png'));
  });
  testWidgets('Test enabled on regular widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputWithIncrementDecrement(
                  controller: TextEditingController(),
                  enabled: false,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(
      find.byType(NumberInputWithIncrementDecrement),
      matchesGoldenFile('goldens/regular_widget_disabled.png'),
    );
  });
  testWidgets('Test enabled on prefabbed widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RepaintBoundary(
              child: Material(
                child: NumberInputPrefabbed.directionalButtons(
                  controller: TextEditingController(),
                  enabled: false,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await expectLater(
      find.byType(NumberInputPrefabbed),
      matchesGoldenFile('goldens/prefabbed_widget_disabled.png'),
    );
  });
}
