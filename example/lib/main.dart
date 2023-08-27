// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(
              fontSizeFactor: 1.1,
              fontSizeDelta: 2.0,
            ),
      ),
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                padding: const EdgeInsets.all(12),
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NumberInputWithIncrementDecrement(
                    key: const Key("testInput"),
                    controller: TextEditingController(),
                    isInt: true,
                    incDecFactor: 2,
                    min: 4,
                    max: 8,
                    enableMinMaxClamping: true,
                    initialValue: 5,
                    onSubmitted: (newValue) {
                      debugPrint('$newValue');
                    },
                  ),
                  const Text('Default appearance'),
                  const Example1(),
                  const Text('Setting minimum value -2 and maximum value 3'),
                  const Example2(),
                  const Divider(),
                  const Text('Using double values with incDecFactor=0.35'),
                  const Example3(),
                  const Text('Prefabbed widget: Squared Buttons'),
                  NumberInputPrefabbed.squaredButtons(
                    controller: TextEditingController(),
                  ),
                  const Text('Prefabbed widget: Leafy Icons'),
                  NumberInputPrefabbed.leafyButtons(
                    controller: TextEditingController(),
                  ),
                  const Text('Prefabbed widget: Directional Icons'),
                  NumberInputPrefabbed.directionalButtons(
                    controller: TextEditingController(),
                  ),
                  const Text('Prefabbed widget: RoundEdged Icons'),
                  NumberInputPrefabbed.roundedEdgeButtons(
                    controller: TextEditingController(),
                  ),
                  const Text('Prefabbed widget: Rounded Icons'),
                  NumberInputPrefabbed.roundedButtons(
                    controller: TextEditingController(),
                    incDecBgColor: Colors.pink,
                  ),
                  const Text('Both buttons positioned at right side'),
                  NumberInputPrefabbed.roundedButtons(
                    controller: TextEditingController(),
                    incDecBgColor: Colors.amber,
                    buttonArrangement: ButtonArrangement.rightEnd,
                  ),
                  const Text('Both buttons positioned at left side'),
                  NumberInputPrefabbed.roundedButtons(
                    controller: TextEditingController(),
                    incDecBgColor: Colors.amber,
                    buttonArrangement: ButtonArrangement.leftEnd,
                  ),
                  const Text('Increment left Decrement right'),
                  NumberInputPrefabbed.roundedButtons(
                    controller: TextEditingController(),
                    incDecBgColor: Colors.blueAccent,
                    buttonArrangement: ButtonArrangement.incLeftDecRight,
                  ),
                  const Text('Increment right Decrement left'),
                  NumberInputPrefabbed.roundedButtons(
                    controller: TextEditingController(),
                    incDecBgColor: Colors.blueAccent,
                    buttonArrangement: ButtonArrangement.incRightDecLeft,
                  ),
                  const Text('With initial Value as 5'),
                  const Example4(),
                  const Text('Different border decoration'),
                  const Example5(),
                  const Text('Different icons & FormField decoration'),
                  const Example6(),
                  const Text('Height scaled to 0.75'),
                  const Example7(),
                  const Text('Width scaled to 0.75'),
                  const Example8(),
                  const Text('Customized Icon shape and size.'),
                  const Example9(),
                  const Text('Passing callbacks onIncrement and onDecrement'),
                  NumberInputWithIncrementDecrement(
                    controller: TextEditingController(),
                    onIncrement: (num newlyIncrementedValue) {
                      debugPrint(
                          'Newly incremented value is $newlyIncrementedValue');
                    },
                    onDecrement: (num newlyDecrementedValue) {
                      debugPrint(
                          'Newly decremented value is $newlyDecrementedValue');
                    },
                  ),
                  const Text('Disable the field.'),
                  NumberInputWithIncrementDecrement(
                    controller: TextEditingController(),
                    enabled: false,
                  ),
                  const Text('Change style of editable text.'),
                  NumberInputWithIncrementDecrement(
                    controller: TextEditingController(),
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 32,
                    ),
                  ),
                  const Text('OnFieldSubmitted callback'),
                  NumberInputWithIncrementDecrement(
                    key: const Key("testInput"),
                    controller: TextEditingController(),
                    isInt: true,
                    incDecFactor: 2,
                    min: 4,
                    max: 8,
                    initialValue: 5,
                    onSubmitted: (newValue) {
                      debugPrint('OnSubmitted value: $newValue');
                    },
                  ),
                  const Text('onChanged callback'),
                  NumberInputWithIncrementDecrement(
                    key: const Key("testInput"),
                    controller: TextEditingController(),
                    isInt: true,
                    incDecFactor: 2,
                    min: 4,
                    max: 8,
                    initialValue: 5,
                    onChanged: (newValue) {
                      debugPrint('OnChanged value: $newValue');
                    },
                  ),
                  const Text('Decimal field with minMax clamping enabled'),
                  NumberInputWithIncrementDecrement(
                    key: const Key("testInput"),
                    controller: TextEditingController(),
                    isInt: false,
                    incDecFactor: 2.5,
                    min: -2.5,
                    enableMinMaxClamping: true,
                    initialValue: 0,
                    onSubmitted: (newValue) {
                      debugPrint('OnSubmitted value: $newValue');
                    },
                  ),
                  const Text('Decimal field with minMax clamping disabled'),
                  NumberInputWithIncrementDecrement(
                    controller: TextEditingController(),
                    isInt: false,
                    incDecFactor: 2.5,
                    min: -2.5,
                    enableMinMaxClamping: false,
                    initialValue: 0,
                    onSubmitted: (newValue) {
                      debugPrint('OnSubmitted value: $newValue');
                    },
                  ),
                  const Text('Decimal field with auto validate disabled'),
                  NumberInputWithIncrementDecrement(
                    controller: TextEditingController(),
                    isInt: false,
                    incDecFactor: 2.5,
                    min: -2.5,
                    autovalidateMode: AutovalidateMode.disabled,
                    initialValue: 0,
                    onSubmitted: (newValue) {
                      debugPrint('OnSubmitted value: $newValue');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Example9 extends StatelessWidget {
  const Example9({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      numberFieldDecoration: const InputDecoration(
        border: InputBorder.none,
      ),
      widgetContainerDecoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            color: Colors.amber,
            width: 2,
          )),
      incIconDecoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
        ),
      ),
      separateIcons: true,
      decIconDecoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
        ),
      ),
      incIconSize: 28,
      decIconSize: 28,
      incIcon: Icons.plus_one,
      decIcon: Icons.exposure_neg_1,
    );
  }
}

class Example7 extends StatelessWidget {
  const Example7({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      scaleHeight: 0.75,
      incIcon: Icons.plus_one,
      decIcon: Icons.exposure_neg_1,
    );
  }
}

class Example8 extends StatelessWidget {
  const Example8({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      scaleWidth: 0.75,
      incIcon: Icons.plus_one,
      decIcon: Icons.exposure_neg_1,
    );
  }
}

class Example6 extends StatelessWidget {
  const Example6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      numberFieldDecoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(color: Colors.orange, width: 2.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      incIcon: Icons.plus_one,
      decIcon: Icons.exposure_neg_1,
    );
  }
}

class Example5 extends StatelessWidget {
  const Example5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      widgetContainerDecoration: BoxDecoration(
        border: Border.all(
          color: Colors.pink,
        ),
      ),
    );
  }
}

class Example4 extends StatelessWidget {
  const Example4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      initialValue: 5,
    );
  }
}

class Example3 extends StatelessWidget {
  const Example3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      isInt: false,
      incDecFactor: 0.35,
    );
  }
}

class Example2 extends StatelessWidget {
  const Example2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      min: -2,
      max: 3,
    );
  }
}

class Example1 extends StatelessWidget {
  const Example1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
    );
  }
}
