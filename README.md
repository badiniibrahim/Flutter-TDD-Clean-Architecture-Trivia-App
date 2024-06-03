# Flutter-TDD-Clean-Architecture-Trivia-App

Description

Flutter-TDD-Clean-Architecture-Trivia-App is a trivia application developed using Flutter. This project implements the principles of Clean Architecture combined with Test-Driven Development (TDD). The goal is to create a modular, maintainable, and testable application while following best practices in software development.

## Features

- Get trivia based on specific numbers.
  Get random trivia.
- Responsive and attractive user interface.
- Uses external APIs to fetch trivia data.
- State management and navigation using clean architectural concepts.

## Architecture

This project follows the principles of Clean Architecture, which separates concerns into different layers:

    - Domain: Contains core entities, use cases, and repository interfaces.
    - Data: Manages external and internal data sources (API, local database).
    - Presentation: Manages the UI logic and presentation layer.
    - Application: Manages the global configuration of the application (dependency injection, navigation).

## Development Practices

    - TDD (Test-Driven Development): Each feature is developed following the TDD cycle (write a test, write code, refactor).
    - Mockito: Used for creating mocks and simulating repository and API calls.
    - Equatable: Used to simplify object comparisons and facilitate testing.

## Prerequisites

    - Flutter SDK
    - Dart SDK
    - A code editor (VS Code, Android Studio, etc.)

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
