# Flutter Bloc Feature-First Demo App

A modular, **feature-first Flutter project** demonstrating **Bloc state management**, API integration, theming, localization, and reusable components. This project is structured to showcase real-world Flutter development practices, including full-stack integration with repositories, services, and REST APIs.

---

## Features

- **Feature-first architecture**: Each feature (login, songs, splash) is self-contained with its own Bloc, repository, and UI components.
- **State management**: Bloc pattern used for managing state in each feature.
- **Networking & API Handling**: Centralized network layer for REST APIs with error handling, loading, and response parsing.
- **Services**: Session management, local storage, and other reusable services in `core/services`.
- **Theming**: Light and dark themes with reusable theme configurations.
- **Localization**: Supports multiple languages using `.arb` files and `app_localizations`.
- **Reusable Widgets**: Custom UI components such as loading indicators, buttons, and network images.

---

## Project Structure

lib/
├─ core/                  # Global services, utils, exceptions, API engine
│  ├─ network/            # API request handling
│  ├─ response/           # API response models & status
│  ├─ utils/              # Logging, extensions, helpers
│  ├─ services/           # Session and storage services
├─ features/              # Feature-first modules
│  ├─ login/              # Login feature
│  │  ├─ login_bloc/      # Bloc files
│  │  ├─ repository/      # API repositories
│  │  ├─ widget/          # Feature-specific UI
│  ├─ songs/              # Songs feature
│  │  ├─ songs_bloc/
│  │  ├─ repository/
│  │  ├─ widget/
│  ├─ splash/             # Splash screen
├─ shared/                # Reusable components, themes, storage
├─ models/                # App models
├─ configs/               # App configuration and routes
├─ l10n/                  # Localization
├─ main.dart

---

## Tech Stack

- **Frontend**: Flutter, Dart, Bloc
- **Backend Integration**: REST APIs
- **State Management**: Bloc
- **Local Storage**: SharedPreferences / Hive (via core/services)
- **Localization**: ARB files
- **Theming**: Light & Dark modes
- **Tools**: VS Code, Android Studio, Flutter CLI

---

## Getting Started

1. Clone the repository:
   ```bash
   git clone <repo-url>

	2.	Navigate to the project folder:

cd Flutter-Bloc-Clean-Coding


	3.	Install dependencies:

flutter pub get


	4.	Run the app:

flutter run



⸻

Usage
	•	Each feature is independent; you can add new features without affecting existing ones.
	•	Bloc handles all state updates and event logic.
	•	Repositories abstract API interactions and can be swapped with mocks for testing.

⸻

Future Improvements
	•	Refactor to a stricter feature-first Clean Architecture with separate domain, data, presentation layers.
	•	Add unit and widget tests for better coverage.
	•	Separate models per feature instead of global models/.
	•	Improve folder naming consistency (widget → ui or views).

⸻

Contributing

Contributions are welcome! Please open an issue or submit a pull request for improvements.

⸻

License

MIT License

---

💡 **Next Steps / Suggestions for Improvement:**

1. Rename `widget` folders → `ui` or `views` to be clearer.
2. Move API/Repository logic under `data/` folder for future clean-architecture readiness.
3. Keep Bloc isolated per feature — already good.
4. Optionally, create a `README` inside each feature for documentation.

