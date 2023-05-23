[<img src="https://datadirr.com/datadirr.png" width="200" />](https://datadirr.com)


# flutter_widget_function

Custom Widgets and Functions, Widgets and Functions easy to access, reuse and no longer code.

## Using

For help getting started with Flutter, view our
[online documentation](https://pub.dev/documentation/flutter_widget_function/latest), which offers tutorials,
samples, guidance on mobile and web development, and a full API reference.

## Installation

First, add `flutter_widget_function` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

In your flutter project add the dependency:

```yml
dependencies:
  ...
  flutter_widget_function:
```

For help getting started with Flutter, view the online
[documentation](https://flutter.io/).

## Example

Please follow this [example](https://github.com/datadirr/flutter_widget_function/tree/master/example) here.

## Functions

### Utils Function

```dart
Utils.equals()
Utils.isNullOREmpty()
Utils.isNullOREmptyORZero()
```


### Extension Function

```dart
String.parseInt()
String.parseDouble()
String.parseBool()
Int.parseBool()
TextEditingController.trimText()
```




## Widgets

### Responsive Layout

```dart
ResponsiveLayout(
  mobileBody: Widget,
  tabletBody: Widget,
  desktopBody: Widget
);
```


### Keyboard Dismiss

```dart
KeyboardDismiss(
  child: MaterialApp(
    home: const MyApp()),
);
```


### Text Field

```dart
DDTextField(labelText: "Value", hintText: "Value")
```


### Card

```dart
DDCard(
  color: Colors.blue,
  shadowColor: Colors.grey,
  radius: 20,
  blur: 15
)
```


### Progress Dialog

```dart
ProgressDialog _dialog = ProgressDialog(context);
_dialog.show();
_dialog.dismiss();
```