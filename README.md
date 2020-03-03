# Pactive for Dart
Run Buddy pipelines from a library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:pactive/pactive.dart';

Pactive pactive = new Pactive();
String pipeline = 'https://app.buddy.works/.../trigger-webhook';
pactive.send(pipeline, {'fromScratch': 1, 'clearCache': 1, 'comment': htmlEscape.convert('This is a comment.'});
```
## Features
On the Map object, you can send nothing or more options even you want. See this example:
```dart
pactive.send('Webhook Link', {'comment': 'This is a comment.'});
```
Options that you can use (as Map primitive type):
- Run to revision
```dart
revision=38ebd0cc80895dadbf0e8c3d667123630f64ec6a
```
- Upload from scratch
```dart
fromScratch=1
```
- Clear cache
```dart
clearCache=1
```
- Comment
```dart
comment=my%20comment
```
We recommend to use htmlEscape.convert(), delivered by dart:convert package for convert the comment to HTML.
- Branch (for wildcard pipeline)
```dart
branch=dev
```
- Tag (for wildcard pipeline)
```dart
tag=mytag
```
- Custom ENV variables
```dart
myenv=value
```
#
Click on CHANGELOG.md file to see the changelog.