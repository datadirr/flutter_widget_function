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

### Extension Function

```dart
Object.isNullOREmpty()
Object.isNullOREmptyORZero()
Object.equals()
Object.parseInt()
Object.parseDouble()
Object.parseBool()
Object.parseBool()
TextEditingController.trimText()
```


### Http Overrides

If you Enable SSL certificate verification for api call
```dart
HttpSSLCertificate.enable();
```

If you Disable SSL certificate verification for api call
```dart
HttpSSLCertificate.disable();
```


### Progress Dialog

```dart
ProgressDialog _dialog = ProgressDialog(context);
_dialog.show();
_dialog.dismiss();
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


### Tap

```dart
Tap(
  onTap: () {
    //your functional code  
  },
  child: child
)
```


### Display Touch (Enable / Disable)

```dart
Touch(
  disable: true,
  child: child
)
```


### Flex Width and Height

```dart
FlexWidth(
  child: child
)

FlexHeight(
child: child
)
```