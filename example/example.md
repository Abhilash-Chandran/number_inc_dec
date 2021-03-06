# Example

In following section you can see several different examples with different configurations.

---

#### Default Appearance

```dart
NumberInputWithIncrementDecrement(
 controller: TextEditingController(),
);
```

![example1](./gifs/example1.gif)

---

#### Setting minimum and maximum values

```dart
NumberInputWithIncrementDecrement(
  controller: TextEditingController(),
  min: -2,
  max: 3,
);
```

![example2](./gifs/example2.gif)

---

#### Using double values with fractional `incDecFactor=0.35`

```dart
NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      isInt: false,
      incDecFactor: 0.35,
    );
```

![example3](./gifs/example3.gif)

---

#### Providing callbacks for successful increment / decrement


```dart
NumberInputWithIncrementDecrement(
  controller: TextEditingController(),
  onIncrement: (num newlyIncrementedValue) {
    print('Newly incremented value is $newlyIncrementedValue');
  },
  onDecrement: (num newlyDecrementedValue) {
    print('Newly decremented value is $newlyDecrementedValue');
  },
)
```

![call_back_inc_dec](./gifs/inc_dec_callback.gif)

---

#### Prefabbed Widget with Squared buttons

```dart
NumberInputPrefabbed.squaredButtons(
  controller: TextEditingController(),
),
```

![pre_squared](./gifs/pre_squared.gif)

---

#### Prefabbed widget with Leaf like Icons

```dart
NumberInputPrefabbed.leafyButtons(
  controller: TextEditingController(),
),
```

![pre_leaf](./gifs/pre_leaf.gif)

---

#### Prefabbed widget directional icons.

```dart
NumberInputPrefabbed.directionalButtons(
  controller: TextEditingController(),
),
```

![pre_directional](./gifs/pre_directional.gif)

---

#### Prefabbed widget with round edged icons

```dart
NumberInputPrefabbed.roundedEdgeButtons(
  controller: TextEditingController(),
),
```

![pre_roundEdge](./gifs/pre_roundEdge.gif)

---

#### Prefabbed widget with circular icons in Pink color

```dart
NumberInputPrefabbed.roundedButtons(
   controller: TextEditingController(),
   incDecBgColor: Colors.pink,
),
```

![pre_rounded](./gifs/pre_rounded.gif)

---
#### Alternative button arrangement
The `buttonArrangement` option can be used to decide the position of the 
increment decrement buttons. This can be used with both `NumberInputPrefabbed`
and `NumberInputWithIncrementDecrement`.

---
***Increment/Decrement buttons at the right***

```dart
NumberInputPrefabbed.roundedButtons(
  controller: TextEditingController(),
  incDecBgColor: Colors.amber,
  buttonArrangement: ButtonArrangement.rightEnd,
),
```

![buttonpos_rightend](./gifs/buttonpos_right.gif)


***Increment/Decrement buttons at the left***

```dart
NumberInputPrefabbed.roundedButtons(
  controller: TextEditingController(),
  incDecBgColor: Colors.amber,
  buttonArrangement: ButtonArrangement.leftEnd,
),
```

![buttonpos_rightend](./gifs/buttonpos_left.gif)

***Increment at left, decrement at right ***

```dart
NumberInputPrefabbed.roundedButtons(
  controller: TextEditingController(),
  incDecBgColor: Colors.amber,
  buttonArrangement: ButtonArrangement.incLeftDecRight,
),
```

![buttonpos_rightend](./gifs/buttonpos_left_right.gif)

***Increment at right, decrement at left***

```dart
NumberInputPrefabbed.roundedButtons(
  controller: TextEditingController(),
  incDecBgColor: Colors.amber,
  buttonArrangement: ButtonArrangement.incRightDecLeft,
),
```

![buttonpos_rightend](./gifs/buttonpos_right_left.gif)

---


#### With initial Value as 5

```dart
NumberInputWithIncrementDecrement(
  controller: TextEditingController(),
  initialValue: 5,
);
```

![example4](./gifs/example4.gif)

---

#### Different border decoration

```dart
    NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      widgetContainerDecoration: BoxDecoration(
        border: Border.all(
          color: Colors.pink,
        ),
      ),
    );
```

![example5](./gifs/example5.gif)

---

#### Different icons & form field decoration

```dart
    NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      numberFieldDecoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.orange, width: 2.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      incIcon: Icons.plus_one,
      decIcon: Icons.exposure_neg_1,
    );
```

![example6](./gifs/example6.gif)

---

#### Height scaled to 0.75

```dart
    NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      scaleHeight: 0.75,
      incIcon: Icons.plus_one,
      decIcon: Icons.exposure_neg_1,
    );
```

![example7](./gifs/example7.gif)

---

#### Width scaled to 0.75

```dart
    NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      scaleWidth: 0.75,
      incIcon: Icons.plus_one,
      decIcon: Icons.exposure_neg_1,
    );
```

![example8](./gifs/example8.gif)

---

#### Highly Customized widget, Icon shape and size.

```dart
    NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      numberFieldDecoration: InputDecoration(
        border: InputBorder.none,
      ),
      widgetContainerDecoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        ),
        border: Border.all(
          color: Colors.amber,
          width: 2,
        )
      ),
      incIconDecoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
        ),
      ),
      separateIcons: true,
      decIconDecoration: BoxDecoration(
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
```

![example9](./gifs/example9.gif)

---

## Demo

Full demo with different options being used for this widget.

```dart
import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
            child: ListView(
              padding: EdgeInsets.all(12),
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Default appearance'),
                Example1(),
                Text('Setting minimum value -2 and maximum value 3'),
                Example2(),
                Divider(),
                Text('Using double values with incDecFactor=0.35'),
                Example3(),
                Text('Prefabbed widget: Squared Buttons'),
                NumberInputPrefabbed.squaredButtons(
                  controller: TextEditingController(),
                ),
                Text('Prefabbed widget: Leafy Icons'),
                NumberInputPrefabbed.leafyButtons(
                  controller: TextEditingController(),
                ),
                Text('Prefabbed widget: Directional Icons'),
                NumberInputPrefabbed.directionalButtons(
                  controller: TextEditingController(),
                ),
                Text('Prefabbed widget: RoundEdged Icons'),
                NumberInputPrefabbed.roundedEdgeButtons(
                  controller: TextEditingController(),
                ),
                Text('Prefabbed widget: Rounded Icons'),
                NumberInputPrefabbed.roundedButtons(
                  controller: TextEditingController(),
                  incDecBgColor: Colors.pink,
                ),
                Text('Both buttons positioned at right side'),
                NumberInputPrefabbed.roundedButtons(
                  controller: TextEditingController(),
                  incDecBgColor: Colors.amber,
                  buttonArrangement: ButtonArrangement.rightEnd,
                ),
                Text('Both buttons positioned at left side'),
                NumberInputPrefabbed.roundedButtons(
                  controller: TextEditingController(),
                  incDecBgColor: Colors.amber,
                  buttonArrangement: ButtonArrangement.leftEnd,
                ),
                Text('Increment left Decrement right'),
                NumberInputPrefabbed.roundedButtons(
                  controller: TextEditingController(),
                  incDecBgColor: Colors.blueAccent,
                  buttonArrangement: ButtonArrangement.incLeftDecRight,
                ),
                Text('Increment right Decrement left'),
                NumberInputPrefabbed.roundedButtons(
                  controller: TextEditingController(),
                  incDecBgColor: Colors.blueAccent,
                  buttonArrangement: ButtonArrangement.incRightDecLeft,
                ),
                Text('With initial Value as 5'),
                Example4(),
                Text('Different border decoration'),
                Example5(),
                Text('Different icons & form field decoration'),
                Example6(),
                Text('Height scaled to 0.75'),
                Example7(),
                Text('Width scaled to 0.75'),
                Example8(),
                Text('Customized Icon shape and size.'),
                Example9(),
                Text('Passing callbacks onIncrment and onDecrement'),
                NumberInputWithIncrementDecrement(
                  controller: TextEditingController(),
                  onIncrement: (num newlyIncrementedValue) {
                    print('Newly incrmented value is $newlyIncrementedValue');
                  },
                  onDecrement: (num newlyDecrementedValue) {
                    print(
                        'Newly decremented value is $newlyDecrementedValue');
                  },
                ),
                Text('Disable the field.'),
                NumberInputWithIncrementDecrement(
                  controller: TextEditingController(),
                  enabled: false,
                ),
                Text('Change style of editable text.'),
                NumberInputWithIncrementDecrement(
                  controller: TextEditingController(),
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 32,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Example9 extends StatelessWidget {
  const Example9({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      numberFieldDecoration: InputDecoration(
        border: InputBorder.none,
      ),
      widgetContainerDecoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        ),
        border: Border.all(
          color: Colors.amber,
          width: 2,
        )
      ),
      incIconDecoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
        ),
      ),
      separateIcons: true,
      decIconDecoration: BoxDecoration(
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
    Key key,
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
    Key key,
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
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      numberFieldDecoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.orange, width: 2.0),
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
    Key key,
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
    Key key,
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
    Key key,
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
    Key key,
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
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
    );
  }
}
```

![demo](demo.gif)
