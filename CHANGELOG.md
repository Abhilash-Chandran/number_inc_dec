## [0.7.0] - 19June2021

* `autovalidate` has been replaced with `autovalidateMode`.  More details in TextFormField [docs]([TextFormField class - material library - Dart API](https://api.flutter.dev/flutter/material/TextFormField-class.html))
   
   * In your code replace `autovalidate: true` to `autovalidateMode: AutovalidateMode.always` 
   
   * In your code replace `autovalidate: false` to `autovalidateMode: AutovalidateMode.disabled`

* `autovalidateMode` is by default set to `always`. The morale behind this is to perform validations similar to html's `<input type='number'>` tag kind validation performed in chrome. Its not upto the specification but ateleast mimics to its best.

* New attribute `enableMinMaxClamping` is created to and handles the behaviour of clamping the values to `min` and `max` when provided.  For example if `min` is -2 and user enter -5 this is autocorrected to -2. By default this is attribute is set to `true`.

* New attribute `onChanged` is introduced which when provided will be called whenever the user edits the value. Note this callback will not be called if any validation error exists.

* By default the numbers will be validated for stepped increments like in browser and suggest valid nearest possible values. The intention is to mimic the behaviour of number field in Chrome.

* Fixes the following bugs.
   - ["autovalidate" is deprecated. Use "autovalidateMode" parameter instead.](https://github.com/Abhilash-Chandran/number_inc_dec/issues/31)
   - [Validation errors causes inc/dec button decoration to displace](https://github.com/Abhilash-Chandran/number_inc_dec/issues/29)
   - [Entering negative numbers when text editing is not possible](https://github.com/Abhilash-Chandran/number_inc_dec/issues/27)
   - [ClampAndUpdate inconsistent while editing.](https://github.com/Abhilash-Chandran/number_inc_dec/issues/26)
   - [NumberInputPrefabbed class unnecessarily re-declares attributes](https://github.com/Abhilash-Chandran/number_inc_dec/issues/25)
   - [onSubmitted callback doesn't update the controller](https://github.com/Abhilash-Chandran/number_inc_dec/issues/24)
   - [While editing the numbers manually the incDecFactor is not considered.](https://github.com/Abhilash-Chandran/number_inc_dec/issues/23)
   - [NumberInputPrefabbed.roundedEdgeButtons doesnt allow overriding the numberFieldDecoration property.](https://github.com/Abhilash-Chandran/number_inc_dec/issues/34)

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
