# **E-Commerce Store (Laravel 10)**

## **📌 Overview**
This is a **fully functional e-commerce store** built using **Laravel 10**. It includes product management, user authentication, shopping cart functionality, wishlist, reviews & ratings, order history, and checkout.

## **🚀 Features**
### **🛍️ User Features:**
- **User Authentication:** Register, Login, Profile, Logout
- **Product Catalog:** View products, categories, and details
- **Shopping Cart:** Add, remove, update quantity
- **Wishlist:** Save products for later
- **Reviews & Ratings:** Leave reviews and rate products
- **Order History:** View past orders
- **Checkout System:** Secure order processing

### **🔑 Admin Features (Future Enhancements)**
- **Product & Category Management**
- **Order Management**
- **User Management**

## **📂 Project Structure**
```
├── app/
│   ├── Http/
│   │   ├── Controllers/
│   │   │   ├── ProductController.php
│   │   │   ├── CartController.php
│   │   │   ├── CheckoutController.php
│   │   │   ├── UserController.php
│   │   │   ├── WishlistController.php
│   │   │   ├── ReviewController.php
│   ├── Models/
│   │   ├── Product.php
│   │   ├── Category.php
│   │   ├── Order.php
│   │   ├── Wishlist.php
│   │   ├── Review.php
├── resources/
│   ├── views/
│   │   ├── welcome.blade.php
│   │   ├── product.blade.php
│   │   ├── single-product.blade.php
│   │   ├── category.blade.php
│   │   ├── cart.blade.php
│   │   ├── checkout.blade.php
│   │   ├── profile.blade.php
│   │   ├── wishlist.blade.php
│   │   ├── dashboard/orders.blade.php
├── routes/
│   ├── web.php
│   ├── api.php
├── database/
│   ├── migrations/
│   │   ├── create_products_table.php
│   │   ├── create_categories_table.php
│   │   ├── create_orders_table.php
│   │   ├── create_wishlists_table.php
│   │   ├── create_reviews_table.php
├── .env
├── composer.json
├── README.md
```

## **⚙️ Installation & Setup**
### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/omar0930/Fruit-EcommerceStore.git
cd your-repo-name
```

### **2️⃣ Install Dependencies**
```sh
composer install
npm install
```

### **3️⃣ Setup Environment**
1. Copy `.env.example` to `.env`:
   ```sh
   cp .env.example .env
   ```
2. Configure **database settings** inside `.env`:
   ```env
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=your_database_name
   DB_USERNAME=your_db_user
   DB_PASSWORD=your_db_password
   ```

### **4️⃣ Generate App Key**
```sh
php artisan key:generate
```

### **5️⃣ Run Migrations**
```sh
php artisan migrate
```

### **6️⃣ Seed Database (Optional)**
```sh
php artisan db:seed
```

### **7️⃣ Start Development Server**
```sh
php artisan serve
```
Then open **[http://127.0.0.1:8000](http://127.0.0.1:8000)** in your browser.

## **🔗 API Endpoints**
| Method | Endpoint | Description |
|--------|---------|-------------|
| **GET** | `/product` | Get all products |
| **GET** | `/product/{id}` | Get product details |
| **POST** | `/cart/add/{id}` | Add product to cart |
| **GET** | `/cart` | View cart |
| **POST** | `/cart/update/{id}` | Update cart quantity |
| **GET** | `/wishlist` | View wishlist |
| **POST** | `/wishlist/add/{id}` | Add to wishlist |
| **POST** | `/product/{id}/review` | Submit review |
| **GET** | `/dashboard/orders` | View user orders |

