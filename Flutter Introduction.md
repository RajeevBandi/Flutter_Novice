# Flutter Introduction

## What is Flutter?

- Flutter is a **UI toolkit** for creating fast, beautiful, natively compiled applications.
- Supports **mobile (Android & iOS), web, and desktop** development.
- Uses a **single programming language (Dart)** and a **single codebase**.


## Features of Flutter

![This is a image](https://github.com/RajeevBandi/Flutter_Novice/blob/main/flutter-features.png)

- **Open-Source:** Flutter is a free and open-source framework for developing mobile applications.
- **Cross-platform:** This feature allows Flutter to write the code once, maintain, and run on different platforms, saving time, effort, and money.
- **Hot Reload:** Changes in the code are reflected instantly, allowing developers to fix bugs quickly and improve productivity.
- **Accessible Native Features and SDKs:** Enables easy access to native code, third-party integrations, and platform APIs.
- **Minimal Code:** Uses Dart's JIT and AOT compilation for improved start-up time, performance, and UI updates without extra effort.
- **Widgets:** Provides customizable widgets, including Material Design and Cupertino widgets, for a seamless user experience across platforms.

## Widgets

The core concept of the Flutter framework is In Flutter, Everything is a widget. Widgets are basically user interface components used to create the user interface of the application.

In Flutter, the application is itself a widget. The application is the top-level widget and its UI is build using one or more children (widgets), which again build using its children widgets. This composability feature helps us to create a user interface of any complexity.

## Design Specific Widgets

The Flutter framework has two sets of widgets that conform to specific design languages. These are Material Design for Android application and Cupertino Style for IOS application.

## Gestures

It is a widget that provides interaction (how to listen for and respond to) in Flutter using GestureDetector. GestureDector is an invisible widget, which includes tapping, dragging, and scaling interaction of its child widget. We can also use other interactive features into the existing widgets by composing with the GestureDetector widget.

## State Management

Flutter widget maintains its state by using a special widget, StatefulWidget. It is always auto re-rendered whenever its internal state is changed. The re-rendering is optimized by calculating the distance between old and new widget UI and render only necessary things that are changes.

## Layers

The most important concept of Flutter framework is that the framework is grouped into multiple category in terms of complexity and clearly arranged in layers of decreasing complexity. A layer is build using its immediate next level layer. The top most layer is widget specific to Android and iOS. The next layer has all flutter native widgets. The next layer is Rendering layer, which is low level renderer component and renders everything in the flutter app. Layers goes down to core platform specific code

![This is a image]()



## Advantages of Flutter

- Makes the app development process extremely fast due to the hot-reload feature, allowing instant updates to the code.
- Provides smoother and seamless scrolling experiences, reducing lags and enhancing app performance compared to other frameworks.
- Reduces testing time and effort, as Flutter apps are cross-platform, eliminating the need to run the same tests on multiple platforms.
- Offers an excellent user interface with design-centric widgets, high-development tools, and advanced APIs.
- Functions similarly to a reactive framework, removing the need for manual UI updates.
- Ideal for MVP (Minimum Viable Product) apps due to its fast development process and cross-platform capabilities.

## Disadvantages of Flutter

- As a relatively new language, Flutter requires continuous integration support and maintenance of scripts.
- Provides limited access to SDK libraries, meaning developers may need to create certain functionalities themselves.
- Does not support browser-based applications, only supporting Android and iOS platforms.
- Uses Dart programming language, requiring developers to learn a new technology, though it is relatively easy to pick up.
