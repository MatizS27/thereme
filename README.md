# Thereme 🎮🎶

**Thereme** is a rhythm game inspired by *Guitar Hero* that blends gaming with robotics. It uses a custom hardware device inspired by the **theremin** — an instrument played **without physical contact** — to control the gameplay.

---

## 🧠 What Is Thereme?

Thereme is an interactive rhythm game where players hit notes to the beat of music, but instead of using buttons or a controller, they use a theremin‑like device built into the system to detect motion and play. This adds a **unique physical control dimension** to the rhythm game experience.

---

## 🚀 Features

- 🎶 Rhythm gameplay similar to Guitar Hero  
- 🤖 Hardware‑integrated controls inspired by the theremin  
- 🎯 Motion‑based input via serial communication  
- 🎨 Multiple scenes and game states  
- 🛠️ Built using Processing

---

## 📁 Repository Structure

```
/
├── data/                # Asset files (images, songs, etc.)
├── thereme.pde          # Main game sketch
├── inicio7.pde          # Intro screen logic
├── juegocancion.pde     # Song gameplay logic
├── tutorial7.pde        # Tutorial scene
├── findejuegos.pde      # Ending screen
├── COM_Serial.pde       # Serial communication with hardware
├── LICENSE              # MIT License
└── README.md
```

---

## 🛠️ How to Run

1. Install **Processing** (3.x or newer).
2. Open the project folder in Processing.
3. Connect the theremin‑like hardware controller.
4. Run `thereme.pde`.

> ⚠️ The game expects serial input from the custom hardware. Without it, gameplay may be limited.

---

## 📦 Dependencies

- Processing (https://processing.org/)
- Custom theremin‑style hardware device (serial input)

---

## 👥 Contributors

- PipeJF9  
- cosnor  
- MatizS27  

---

## 📜 License

This project is licensed under the **MIT License**.

---

## 🤝 Contributing

Pull requests are welcome! Ideas:
- Add more songs
- Improve calibration
- Add score saving
- Enhance visuals and effects
