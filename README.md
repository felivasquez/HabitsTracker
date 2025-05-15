Overview
Relevant source files
This document provides a comprehensive introduction to the HabitsTracker application, a Flutter-based mobile application designed to help users track their habits. It outlines the high-level architecture, key components, and system relationships that form the foundation of the application.

For detailed information about specific components, please refer to their dedicated wiki pages:

For application architecture details, see Application Architecture
For UI components and screens, see User Interface
For platform integration specifics, see Platform Integration
Introduction to HabitsTracker
HabitsTracker is a Flutter application that allows users to track and manage their habits. The application follows a typical mobile app flow, starting with an onboarding experience, followed by authentication, and then providing access to the main habit tracking functionality.

The application is structured around several key systems:

Entry and initialization system - Bootstraps the application
Onboarding system - Introduces new users to the application
Authentication system - Handles user login and registration
Theme system - Provides consistent visual styling
Platform integration - Enables the application to run on Android and iOS
Sources: 
lib/main.dart
1-21

System Architecture
The application follows a layered architecture typical of Flutter applications. The following diagram illustrates the high-level architecture of the HabitsTracker application:

Platform Layer

Theme System

UI Layer

Application Entry

initializes

displays

navigates to

navigates to

navigates to

navigates to

styles

styles

styles

styles

runs on

runs on

main.dart

MainApp class

GetStarted Screen

Login Screen

SignIn Screen

Habits UI Components

appTheme

Android Configuration

iOS Configuration

Sources: 
lib/main.dart
1-21

Application Entry Point
The application entry point is defined in main.dart, which initializes the Flutter framework and launches the MainApp widget. The MainApp class serves as the root widget of the application, setting up the Material design system and rendering the initial screen.

Initial UI

Entry Point

calls runApp()

builds

contains

main() function

MainApp class

Scaffold widget

ColumnExample widget (GetStarted)

The main() function calls runApp() to initialize the Flutter application with the MainApp widget. Within the MainApp widget's build method, a MaterialApp is created containing a Scaffold with the ColumnExample widget, which is imported from the getstarted.dart file.

Sources: 
lib/main.dart
5-20

User Flow
The following diagram illustrates the main user flow through the application:

"Habits Tracking Functionality"
"SignIn Screen"
"Login Screen"
"GetStarted Screen"
"MainApp"
User
"Habits Tracking Functionality"
"SignIn Screen"
"Login Screen"
"GetStarted Screen"
"MainApp"
User
alt
[New User]
[Existing User]
Opens application
Displays onboarding
Completes onboarding
Navigates to login
Chooses to sign up
Navigates to registration
Completes registration
Grants access
Enters credentials
Grants access
Interacts with habits features
Sources: 
lib/main.dart
1-21

Technical Stack
HabitsTracker is built using the following technical stack:

Component	Technology
Framework	Flutter
Language	Dart
UI Design	Material Design
Platforms	Android, iOS
The application is structured as a Flutter project with the standard directory organization:

habitstracker/
├── lib/                  # Main Dart code
│   ├── main.dart         # Application entry point
│   ├── getstarted/       # Onboarding screens
│   └── login-signin/     # Authentication screens
├── android/              # Android-specific configuration
└── ios/                  # iOS-specific configuration
Sources: 
lib/main.dart
1-21
 
README.md
1-4

Current Development Status
The HabitsTracker application appears to be in the early stages of development, with the basic application structure in place. The main.dart file includes a commented import for the login/signin functionality, suggesting that this feature is under development or pending integration.

Sources: 
lib/main.dart
3
 
README.md
1-4

Conclusion
HabitsTracker is a Flutter-based mobile application designed for habit tracking, with a clean, modular architecture following standard Flutter conventions. The application is structured around distinct systems for onboarding, authentication, and habit tracking, all unified by a consistent theme system.

This overview provides the foundation for understanding the more detailed documentation of specific subsystems covered in subsequent wiki pages.
