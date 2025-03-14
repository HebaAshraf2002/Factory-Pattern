# Factory Pattern in Flutter

## Overview

This Flutter project demonstrates the implementation of the Factory Design Pattern to create objects without specifying their concrete classes. The app allows users to select different shapes (Circle, Rectangle, Square), and the corresponding message is displayed using the `ShapeFactory` class.

## What the Code Does

- Implements an abstract class `Shape` with a function `revealMe()`.
- Defines three concrete classes (`Circle`, `Rectangle`, `Square`) that implement `Shape` and provide their own messages.
- Creates a `ShapeFactory` class that generates shape objects based on user input.
- Uses Flutter's stateful widget to update the UI dynamically when a shape is selected.
- Displays messages using SnackBars when a shape is chosen.

## How the Code Works

1. The user selects a shape by pressing one of the buttons (Circle, Rectangle, Square).
2. The `ShapeFactory` creates the corresponding shape object.
3. The shape's `revealMe()` function returns a specific message.
4. The UI updates with the selected shape message.
5. A Snackbar appears with the same message for better UX.

## Getting Started

To run this project, ensure you have Flutter installed on your machine. Clone the repository and use the following commands:

```bash
flutter pub get
flutter run
