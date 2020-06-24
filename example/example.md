# Example

In following section you can see several different examples with different configurations.

---

###### Default Appearance

```dart
NumberInputWithIncrementDecrement(
 controller: TextEditingController(),
);
```

![](C:\Abhilash\Github\number_inc_dec\example\gifs\example1.gif)

---

###### Setting minimum and maximum values

```dart
NumberInputWithIncrementDecrement(
  controller: TextEditingController(),
  min: -2,
  max: 3,
);
```

---

###### Using double values with fractional `incDecFactor=0.35`

```dart
NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      isInt: false,
      incDecFactor: 0.35,
    );
```

![](C:\Abhilash\Github\number_inc_dec\example\gifs\example3.gif)

---



###### 



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
                Text('Using double values with incDecFator=0.35'),
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
                Text('With initial Value as 5'),
                Example4(),
                Text('Different border decoration'),
                Example5(),
                Text('Different icons & formfield decoration'),
                Example6(),
                Text('Height scaled to 0.75'),
                Example7(),
                Text('Width scaled to 0.75'),
                Example8(),
                Text('Customized Icon shape and size.'),
                Example9(),
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
sWidget {
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

<img title="" src="C:\Abhilash\Github\number_inc_dec\demo.gif" alt="demo" width="270">
