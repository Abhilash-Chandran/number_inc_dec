## [1.0.0] - 27October2020

* `autovalidate` has been replaced with `autovalidateMode`.  More details in TextFormField [docs]([TextFormField class - material library - Dart API](https://api.flutter.dev/flutter/material/TextFormField-class.html))
   
   * In your code replace `autovalidate: true` to `autovalidateMode: AutovalidateMode.always` 
   
   * In your code replace `autovalidate: false` to `autovalidateMode: AutovalidateMode.disabled`

* `autovalidateMode` is by default set to `always`. The morale behind this is to perform validations similar to html's `<input type='number'>` tag kind validation performed in chrome. Its not upto the specification but ateleast mimics to its best.

* New attribute `enableMinMaxClamping` is created to and handles the behaviour of clamping the values to `min` and `max` when provided.  For example if `min` is -2 and user enter -5 this is autocorrected to -2. By default this is attribute is set to `true`.

* New attribute `onChanged` is introduced which when provided will be called whenever the user edits the value. Note this callback will not be called if any validation error exists.


## [0.6.6] - 25August2020
* Improve code coverage
* Add missing documentation
* Merged pull request which enables `onSubmitted` for the widget.
     * Thank you [Andy Bulka](https://github.com/abulka) 🥇 😄.
## [0.6.5] - 19August2020

* increased test coverage.
* fixed lot of typo errors in documentation and code.
* Added `enable` and `style` attribute to the widgets.
* Replace deprecated WhiteListingTextFormatter with FilteringTextInputFormatter.

## [0.6.0+3] - 02August2020

* Added examples for `buttonArrangement` options.

* Added example for `onIncrement` & `onDecrement` callbacks

* Fixed some spell check errors in readme.

* Merged a documentation [fix](https://github.com/Abhilash-Chandran/number_inc_dec/pull/2) from [not-holar](https://github.com/not-holar). Thank you 🥇 😄.

## [0.6.0+2] - 24June2020

* Added 5 different prefabbed widgets for ease of use and  as example.

* Added scale factors for width and height.

* Provided more options such as icon size, background color and decoration.

* Added options for call back on Increment and Decrement

* Added options for different layouts of the increment decrement buttons.

## [0.5.0] - 22May2020.

- A initial release of the NumberIncrementDecrement Widget


## Todo

- [ ] Expose all options of the TextFormField for more customized control.

- [ ] Add more prefabbed widgets.

- [x] Write golden test cases.

- [x] Expose call back options

- [x] Expose more options for Icons.
