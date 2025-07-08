## 👟 Shoe Shopping App (Flutter UI + o3d 3D Viewer)
A clean, interactive UI-based shoe shopping app built with Flutter. Featuring a dark theme, animated transitions, 3D avatar viewer (using o3d), cart UI, and fun like/favorite interactions — all without backend or Firebase.

---


## 🚀 Features

✅ Fully UI-based (No backend)
✅ Clean Dark Mode Design
✅ Animated Hero Transitions
✅ 3D Product Preview using o3d package
✅ “See More” section with interactive product tiles
✅ Like Button with green tint (no count)
✅ Cart Page UI
✅ Filter Functionality
✅ Viewed Products are saved in memory
✅ Google Fonts for beautiful typography
✅ Modular and clean widget architecture

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^6.2.1
  like_button: ^2.1.0
  o3d: ^1.0.6                
  provider: ^6.1.5
```

## 📁 Project Structure

```
lib/
│── main.dart
│── firebase_options.dart       # (Not used here, can be removed if present)
│── Shoes.dart                  # Shoe model
│
├── modules/
│   ├── shoe.dart               # Shoe tile widget
│   ├── shop.dart               # Main shopping UI
│   ├── cart.dart               # Cart screen
│   ├── cart_details.dart       # Cart item details
│   ├── cartitem.dart           # Model for cart item
│   ├── seetmore.dart           # See More page (Hero transition)
│   ├── seemore_tiles.dart      # Product tile list
│   ├── 3d.dart                 # o3d-based 3D Viewer
│   ├── shoespage.dart          # Product list UI
│   ├── gnav.dart               # Bottom navigation
│   ├── widgets.dart            # Reusable components

```

## 🧪 App Flow

1.👟 Browse products on the shoespage.dart

2.📸 Tap on image → navigate to seemore.dart via Hero Animation

3.🔄 Tap image → opens 3d.dart with o3d auto-rotating avatar

4.💚 Use Like Button (no count, green color)

5.🛒 Add items to cart (view in cart_details.dart)

6.🧠 Viewed products appear again locally (in memory, no backend)

🎨 All pages use dark theme + Google Fonts


## 🧩 o3d 3D Viewer

The o3d package is used to show a rotating 3D avatar when a product image is tapped from "See More."

1.Avatar auto-rotates

2.Interactable using drag/touch

3.Adds modern, premium UI feel

## 📦 How to Run

1. Clone the repo  
   ```sh
   git clone https://github.com/althaf-khan2005/Shoes-App.git
   cd Shoes-App

   ```
2. Install dependencies  
   ```sh
   flutter pub get
   ```
3. Run the app  
   ```sh
   flutter run


## Screenshots 


![Image](https://github.com/user-attachments/assets/c86ab868-0262-48c7-a87d-b886785790f7)

![Image](https://github.com/user-attachments/assets/ee5c6888-2d88-4b5c-9335-520f3cb3c733)

![Image](https://github.com/user-attachments/assets/a2ef2960-8d5f-4308-928a-3356ad41b1cd)

![Image](https://github.com/user-attachments/assets/c86ab868-0262-48c7-a87d-b886785790f7)

![Image](https://github.com/user-attachments/assets/f3ce6e0c-e0dd-42f7-a5a4-eff1d5d419bd)

![Image](https://github.com/user-attachments/assets/55c87b16-5473-486c-a54d-bbdf6bde3c32)


![Image](https://github.com/user-attachments/assets/d117c4c1-67e9-4a9d-bba9-3258127e0eff)

![Image](https://github.com/user-attachments/assets/0b4686ef-6de9-4f58-9eb9-ffc9fb3e9980)

![Image](https://github.com/user-attachments/assets/504ad5e5-8953-432a-a510-1677d03c4c00)

![Image](https://github.com/user-attachments/assets/9be38195-5396-4483-ac65-36a8173b3249)

![Image](https://github.com/user-attachments/assets/ff3085aa-ad97-4416-913a-474841a989e4)









