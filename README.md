👟 Shoe Shopping App (Flutter UI + o3d 3D Viewer)
A clean, interactive UI-based shoe shopping app built with Flutter. Featuring a dark theme, animated transitions, 3D avatar viewer (using o3d), cart UI, and fun like/favorite interactions — all without backend or Firebase.

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

##📦 How to Run

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

![Image](https://github.com/user-attachments/assets/f3ce6e0c-e0dd-42f7-a5a4-eff1d5d419bd)

![Image](https://github.com/user-attachments/assets/55c87b16-5473-486c-a54d-bbdf6bde3c32)

[Image](https://github.com/user-attachments/assets/c86ab868-0262-48c7-a87d-b886785790f7)

<!-- Failed to upload "Screenshot 2025-07-07 192114.png" -->

![Image](https://github.com/user-attachments/assets/6fcbade2-7b15-4722-b555-18628af47983)

![Image](https://github.com/user-attachments/assets/07b956fa-5734-4fb2-a090-6032b244e168)

<!-- Failed to upload "Screenshot 2025-07-07 192040.png" -->

<!-- Failed to upload "Screenshot 2025-07-07 192114.png" -->

<!-- Failed to upload "Screenshot 2025-07-07 192140.png" -->

![Image](https://github.com/user-attachments/assets/b2f4fbb9-e9e7-4faa-9d14-8240e5ef9f41)

<!-- Failed to upload "Screenshot 2025-07-07 192300.png" -->

<!-- Failed to upload "Screenshot 2025-07-07 192317.png" -->




