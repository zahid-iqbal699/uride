# uride_mvvm_template

## 🚀 Flutter MVVM Starter Boilerplate with GetX

A clean, scalable Flutter starter template based on **MVVM architecture** and **GetX** — crafted for rapid project setup and consistent structure across apps.

This boilerplate provides a solid foundation with:

* 🔄 MVVM architecture (Model-View-ViewModel)
* ⚡ GetX for state management, routing & dependency injection
* 🎨 Centralized theme & color setup
* 📦 Ready-to-use folder structure for large-scale apps
* 📱 Splash screen & sample view for quick customization

---

### 📂 Structure Overview

```
lib/
├── app/
│   ├── core/              # App-wide constants, themes, etc.
│   ├── modules/           # Feature-wise modular screens
│   ├── routes/            # App routing setup
│   ├── services/          # API, local storage, etc.
│   └── utils/             # Helpers, extensions, etc.
├── main.dart              # Entry point
```

---

### ✅ Features

* 🧠 MVVM + GetX integration
* 🗂️ Modular structure per screen/feature
* 🖌️ Easy color and theme customization
* 🚀 Minimal setup — just clone, change app name & colors, and start building
* 📱 Fully responsive layout setup ready

---

### 🛠 Getting Started

```bash
git clone https://github.com/zahid-iqbal699/uride.git
cd uride
flutter pub get
```

#### 🔧 Setup

1. Update app name and colors in `core/theme/app_colors.dart`
2. Start building your modules in `modules/`
3. Use `Get.to()` or named routes for navigation

---

### 💡 Contributing

Feel free to fork and contribute improvements or suggestions! This project aims to help all Flutter devs get started faster with a maintainable, scalable setup.

---

### 📄 License

MIT License © Zahid Iqbal
