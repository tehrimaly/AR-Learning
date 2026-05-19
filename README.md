# NeuroTick: Interactive Augmented Reality Learning Platform

## Project Overview

NeuroTick is an immersive, mobile-first educational application designed to enhance STEM education. By integrating Augmented Reality (AR) visualizations with an interactive, adaptive quiz framework, the application bridges the gap between theoretical complex concepts and spatial understanding. Built on a modular Flutter architecture, NeuroTick transforms standard curriculum content into high-fidelity 3D interactive experiences.

---

## Core Features & System Functionality

### 1. Augmented Reality Component

* **3D Spatial Visualizations:** Renders high-fidelity, interactive 3D models directly into the user's immediate environment to make structural and microscopic scientific concepts observable.
* **Gesture-Based Manipulation:** Supports localized coordinate transformation calculations, enabling users to rotate, scale, and inspect complex structures via intuitive touch input.

### 2. Interactive Evaluation Engine

* **Multi-Tiered Quizzes:** Dynamically generates subject-oriented quizzes broken down into scalable difficulty profiles (Easy, Medium, Hard).
* **Progress Diagnostics:** Tracks real-time performance analytics, maintaining user engagement metrics such as learning streaks, score multipliers, and milestone-based achievement badges.

### 3. Integrated Curriculums

The platform delivers specialized structural models and targeted assessments across primary scientific domains:

* **Biology:** Microscopic cellular structures, anatomical layouts, and organic system functions.
* **Chemistry:** Molecular bonds, atomic lattices, and crystal structures.
* **Astronomy:** Orbital physics, planetary bodies, and cosmic anomalies.

---

## Technical Architecture & State Management

NeuroTick is engineered using clean architecture principles, decoupling data structures, user interfaces, and business logic to ensure system scalability and efficient frame processing during AR rendering loops.

* **State Management:** Implements the Provider Pattern to decouple business logic from the view layer, tracking application-wide states safely and optimizing widget rebuilding cycles.
* **Cloud Infrastructure:** Powered by Firebase Authentication for user profiling and secure onboarding pipelines, combined with Cloud Firestore for real-time cloud-syncing of performance analytics.
* **Offline Fallback Pipeline:** Integrates a SharedPreferences storage layer to handle local caching, guaranteeing uninterrupted session tracking, metric caching, and progress evaluation during localized network drops.

---

## Project Structure

```text
lib/
├── models/         # Data serialization schemas and Data Transfer Objects (DTOs)
├── providers/      # ChangeNotifiers orchestrating state tracking and app reactive states
├── screens/        # UI Layer containing 8 foundational screens (Home, Quiz, AR Viewer, Profile, Analytics, etc.)
├── services/       # Core business logic processing wrappers and Firebase API abstractions
├── widgets/        # Reusable global atomic UI components and layout foundations
└── utils/          # System layout themes, global constants, and helper functions

```

---

## Key Dependencies

The platform's underlying subsystems utilize the following core framework configurations:

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0              # Architecture & app state tracking
  firebase_core: ^2.0.0         # Firebase initialization pipeline
  firebase_auth: ^4.0.0         # User identification and secure session tokens
  cloud_firestore: ^4.0.0       # Distributed real-time database management
  ar_flutter_plugin: ^1.0.0     # Native AR spatial anchor rendering engine
  shared_preferences: ^2.0.0    # Local atomic caching key-value engine

```

---

## Installation & Environment Initialization

### Prerequisites

* Flutter SDK (v3.0 or higher)
* Android Studio / VS Code
* Target mobile environment: Android 8.0 (API Level 26) or higher supporting ARCore configurations

### Configuration Pipeline

1. Clone the repository and navigate to the project directory:

```bash
git clone <repository-url>
cd neurotick

```

2. Fetch target dependencies defined in the pubspec layout:

```bash
flutter pub get

```

3. Configure Backend Integrations:

* Provision a project instance via the Firebase Console.
* Connect your platform-specific targets and append the generated `google-services.json` metadata to your `android/app/` subdirectory.
* Initialize Email/Password database entries under the Authentication console and start a new Cloud Firestore instance.

4. Run the target software environment on your device:

```bash
flutter run

```

---

## Development Status

* **Completed:** Full application view layer implementation (8 essential screens), localized state tracking patterns, quiz validation structures, and local caching engines.
* **In Progress:** Integrating Firebase backend synchronization endpoints, extending structural 3D AR object reference indexes, and optimizing rendering frame cycles.
