import 'package:flutter/material.dart';

List<Map<String, dynamic>> products = [
  {
    "id": 1,
    "title": "Long_Shirt",
    "description": "Elevate your wardrobe with our Classic ...",
    "price": 549,
    'qty': 1,
    "discountPercentage": 12.96,
    "rating": 4.69,
    "stock": 94,
    "brand": "Blackberrys",
    "category": "Clothes",
    "thumbnail":
        "https://blackberrys.com/cdn/shop/files/printed-formal-shirt-in-brown-printed-blackberrys-clothing-1.jpg?v=1685949085",
    "images": [
      "https://rukminim2.flixcart.com/image/714/857/jkmwdjk0/shirt/p/z/k/40-bp-p1-dofb53-navy-blackberrys-original-imaf7ycmzrqteyya.jpeg?q=50",
    ]
  },
  {
    "id": 2,
    "title": "T-Shirt",
    "description":
        "he shirt is designed with a single chest pocket, ideal for holding small essentials or ....",
    "price": 899,
    "discountPercentage": 17.94,
    "rating": 4.44,
    'qty': 1,
    "stock": 34,
    "brand": "LACOSTA",
    "category": "Clothes",
    "thumbnail":
        "https://assets.ajio.com/medias/sys_master/root/20231230/yeEg/658fe373ddf7791519f777b4/-473Wx593H-461400854-pink-MODEL.jpg",
    "images": [
      "https://img01.ztat.net/article/spp-media-p1/d594f5f1c58131f0997a15bac70ea069/abaa9fc2bc4c482cb69eb797953f1ca0.jpg?imwidth=1800",
    ]
  },
  {
    "id": 3,
    "title": "Travertine Shirts",
    "description":
        " Calvin Klein Jeans Online in India at Rs. 7,199. Shop for more Calvin Klein Jeans Shirtss at Ajio.com and avail great ...",
    "price": 1249,
    "discountPercentage": 15.46,
    "rating": 4.09,
    'qty': 1,
    "stock": 36,
    "brand": " Calvin Klein",
    "category": "Clothes",
    "thumbnail":
        "https://assets.ajio.com/medias/sys_master/root/20230912/3iZN/650079a6ddf7791519d1e4b1/-473Wx593H-469528402-beige-MODEL.jpg",
    "images": [
      "https://assets.ajio.com/medias/sys_master/root/20230912/d1jc/65007e09afa4cf41f5ded31e/-473Wx593H-469528402-beige-MODEL2.jpg"
    ]
  },
  {
    "id": 4,
    "title": "PUMA_Shoes",
    "description":
        "PUMA RS-X3 Prism, Men's Sneakers, White Puma Rs 350 Re Invention 367914-01 from PUMA Unisex RS 2.0 WR Sneaker, ...",
    "price": 1749,
    "discountPercentage": 11.02,
    "rating": 4.57,
    'qty': 1,
    "stock": 10,
    "brand": "PUMA",
    "category": "Shoes",
    "thumbnail":
        "https://www.westendwell.ca/wp-content/uploads/2021/07/puma20rs20x-300qea-324x324.jpg",
    "images": [
      "https://img.etimg.com/thumb/width-1200,height-1200,imgsize-326409,resizemode-75,msid-68843860/magazines/panache/puma-rs-x-trophies-review-comfortable-running-shoes-perfect-for-workouts-parties.jpg",
    ]
  },
  {
    "id": 5,
    "title": "Nike_Shoes",
    "description":
        "Marca Nike s-a inspirat din scena muzicală londoneză pentru a crea o nouă versiune a încălțămintei Air Max - modelul Pulse. Acesta se caracterizează ...",
    "price": 1749,
    "discountPercentage": 11.02,
    "rating": 4.57,
    'qty': 1,
    "stock": 10,
    "brand": "Nike",
    "category": "Shoes",
    "thumbnail":
        "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/4a04bcea-04ce-45cb-9939-e69bf993974f/air-max-pulse-shoes-vntJKX.png",
    "images": [
      "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/4a04bcea-04ce-45cb-9939-e69bf993974f/air-max-pulse-shoes-vntJKX.png",
    ]
  },
  {
    "id": 6,
    "title": "LACOSTE",
    "description":
        "Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.",
    "price": 1499,
    "discountPercentage": 10.23,
    "rating": 4.43,
    'qty': 1,
    "stock": 68,
    "brand": "LACOSTE",
    "category": "Shoes",
    "thumbnail":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgmQ-RnyvHB4pa_k_I5fI5tPaa0Z88g6bQAYP9uOBvDg&s",
    "images": [
      "https://www.platypusshoes.com.au/media/catalog/product/cache/29beb692de466b469d767388c9a08051/4/6/46cfa0037216_wht_01.jpeg?auto=webp&quality=85&format=pjpg&width=800&fit=cover",
    ]
  },
  {
    "id": 7,
    "title": "LACOSTE-Bag",
    "description":
        "This Lacoste Logo Backpack offers premium quality everyday storage suitable for any purpose. The backpack features Lacoste's iconic logo to the bottom, and has functionality to match the premium style...",
    "price": 13,
    "discountPercentage": 8.4, //1.092
    "rating": 4.26,
    'qty': 1,
    "stock": 65,
    "brand": "LACOSTE",
    "category": "Bags",
    "thumbnail":
        "https://www.houseoffraser.co.uk/images/imgzoom/71/71592903_xxl.jpg",
    "images": [
      "https://www.houseoffraser.co.uk/images/products/71592903_l_a2.jpg",
    ]
  },
  {
    "id": 8,
    "title": "Safari",
    "description":
        "Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.",
    "price": 40,
    "discountPercentage": 15.66,
    "rating": 4,
    "stock": 52,
    'qty': 1,
    "brand": "Safari",
    "category": "Bags",
    "thumbnail":
        "https://rukminim2.flixcart.com/image/850/1000/xif0q/backpack/y/d/a/aero-1-laptop-waterproof-backpack-trendy-backpack-with-3-original-imagnhkayxcgtacg.jpeg?q=90&crop=false",
    "images": [
      "https://rukminim2.flixcart.com/image/850/1000/xif0q/backpack/o/j/x/aero-1-laptop-waterproof-backpack-trendy-backpack-with-3-original-imagnhkazgshhayv.jpeg?q=90&crop=false",
    ]
  },
  {
    "id": 9,
    "title": "Nike",
    "description":
        "Product details of Best Nike Scent Xpressio bag For Men cool long lasting bag for Men",
    "price": 13,
    "discountPercentage": 8.14,
    "rating": 4.59,
    "stock": 61,
    'qty': 1,
    "brand": "Nike",
    "category": "Bags",
    "thumbnail":
        "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/c34d55f6-1caf-4486-99d1-87365103b1e6/brasilia-9-5-training-backpack-8fmxn9.png",
    "images": [
      "https://assets.ajio.com/medias/sys_master/root/20231201/W7CI/6569f9a5ddf7791519ab3a7f/-473Wx593H-469565034-black-MODEL4.jpg",
    ]
  },
  {
    "id": 10,
    "title": "Crompton_Fan",
    "description":
        "Crompton fans help you stay cool and comfortable at all times. We provide a wide variety of sizes, designs,....",
    "price": 190,
    "discountPercentage": 13.31,
    "rating": 4.83,
    "stock": 110,
    "brand": "Crompton",
    "category": "Electronic",
    'qty': 1,
    "thumbnail":
        "https://rukminim2.flixcart.com/image/850/1000/ks4yz680/fan/v/o/i/aura-prime-antidust-ceiling-fan-crompton-original-imag5rpyyezfzhnr.jpeg?q=90&crop=false",
    "images": [
      "https://rukminim2.flixcart.com/image/850/1000/ks4yz680/fan/v/o/i/aura-prime-antidust-ceiling-fan-crompton-original-imag5rpyyezfzhnr.jpeg?q=90&crop=false",
    ]
  },
  {
    "id": 11,
    "title": "Blub",
    "description":
        "To find out the product(s) that require(s) the Bureau of Indian Standards (BIS) Marking, please refer to the mandatory certifications in India...",
    "price": 12,
    "discountPercentage": 4.09,
    "rating": 4.52,
    "stock": 78,
    'qty': 1,
    "brand": "Crompton",
    "category": "Electronic",
    "thumbnail":
        "https://5.imimg.com/data5/SELLER/Default/2020/9/OL/FS/IM/109373/5w-led-blub.JPG",
    "images": [
      "https://3.imimg.com/data3/WL/PX/MY-10514952/5-watt-led-blub-500x500.jpg",
    ]
  },
  {
    "id": 12,
    "title": "Rado",
    "description":
        "Rado was not a very well-known brand in the world of watchmaking during the 1960s. It was in 1962, the brand gained the recognition it deserved with the launch of the Rado DiaStar Original collection...",
    "price": 2000,
    "discountPercentage": 4.81,
    "rating": 4.44,
    "stock": 133,
    "brand": "Saaf & Khaas",
    'qty': 1,
    "category": "Watch",
    "thumbnail":
        "https://justintime.in/cdn/shop/products/R12065403.jpg?v=1682041189",
    "images": [
      "https://justintime.in/cdn/shop/products/R12065403_2.jpg?v=1682041189&width=823",
    ]
  },
  {
    "id": 13,
    "title": "Noise",
    "description":
        "Featuring a vibrant round display and a stylish metallic finish, the smartwatch offers a premium on-screen experience.;Tru SyncTM: Hassle-free pairing,...",
    "price": 1400,
    "discountPercentage": 15.58,
    "rating": 4.57,
    "stock": 146,
    'qty': 1,
    "brand": "Noise",
    "category": "Watch",
    "thumbnail":
        "https://m.media-amazon.com/images/I/61TapeOXotL._AC_UF1000,1000_QL80_.jpg",
    "images": [
      "https://m.media-amazon.com/images/I/41uSUOytOjL.jpg",
    ]
  },
  {
    "id": 14,
    "title": "Ring",
    "description":
        "The Glorious Lord Ganesha Gold Ring is in 22kt Hallmark Gold Certified By BIS. From The House Of Sehgal Gold.",
    "price": 410,
    "discountPercentage": 17.86,
    'qty': 1,
    "rating": 4.08,
    "stock": 131,
    "brand": "Glod",
    "category": "Jewelry",
    "thumbnail":
        "https://sehgalgold.com/wp-content/uploads/sites/444/2021/09/63.jpg",
    "images": [
      "https://5.imimg.com/data5/SELLER/Default/2020/9/LF/KE/ZV/92549921/mens-fancy-gold-ring-500x500.jpg",
    ]
  },
  {
    "id": 15,
    "title": "Chain",
    "description":
        "The pandemic was a catalyst for change across a number of industries..",
    "price": 51,
    "discountPercentage": 15.58,
    'qty': 1,
    "rating": 4.41,
    "stock": 17,
    "brand": "Gold",
    "category": "Jewelry",
    "thumbnail":
        "https://t3.ftcdn.net/jpg/05/79/13/68/360_F_579136896_ZCSyttNhj5KumoLZYlvOjgF7OWY9zojs.jpg",
    "images": [
      "https://t3.ftcdn.net/jpg/05/79/13/70/360_F_579137013_a5DeDJkl8gEIVGlb7JU2ImKM6C7bbInw.jpg",
    ]
  },
  {
    "id": 16,
    "title": "Kitchen-Set ",
    "description":
        "Hot Accesorios De Cocina 12 Piece Silicone Kitchen Set Private Label Kitchen Utensils...",
    "price": 60,
    "discountPercentage": 15.34,
    'qty': 1,
    "rating": 4.44,
    "stock": 7,
    "brand": "luxury palace",
    "category": "Kitchen",
    "thumbnail":
        "https://img.kwcdn.com/product/Fancyalgo/VirtualModelMatting/cbb938708f9885aade70bff8c8a60fa6.jpg?imageMogr2/auto-orient%7CimageView2/2/w/800/q/70/format/webp",
    "images": [
      "https://img.freepik.com/premium-photo/kitchen-utensils-tools-dishware-background-white-tile-wall_1048944-28145321.jpg?size=626&ext=jpg&ga=GA1.1.2082370165.1716595200&semt=ais_user",
    ]
  },
  {
    "id": 17,
    "title": "Key Holder",
    "description":
        "Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality",
    "price": 30,
    "discountPercentage": 2.92,
    "rating": 4.92,
    "stock": 54,
    'qty': 1,
    "brand": "Key-Holder",
    "category": "Kitchen",
    "thumbnail": "https://cdn.dummyjson.com/product-images/30/thumbnail.jpg",
    "images": [
      "https://cdn.dummyjson.com/product-images/30/1.jpg",
    ]
  },
  {
    "id": 18,
    "title": "Car-Racer",
    "description":
        "Kids Adventure Toy for 3 4 5 6 Year Old Boys Girls - Race Track Car Toys for Boys Age 3, Car Toys for Toddlers 2-4 Years..",
    "price": 30,
    "discountPercentage": 2.92,
    "rating": 4.92,
    "stock": 54,
    'qty': 1,
    "brand": "Car_Racer",
    "category": "Toys",
    "thumbnail":
        "https://images-cdn.ubuy.co.in/635f5db7433b2044f471c426-kids-adventure-toy-for-3-4-5-6-year-old.jpg",
    "images": [
      "https://www.ubuy.co.in/productimg/?image=aHR0cHM6Ly9pbWFnZXMtY2RuLnVidXkuY28uaW4vNjM5ZGQyNTU1NTM1Y2Y3OTljMzIzYWU0LXRvZGRsZXItdG95cy1jYXJzLWtpZHMtdG95cy1mb3ItMi0zLTQtNS5qcGc.jpg",
    ]
  },
  {
    "id": 24,
    "title": "Robot-Pat ",
    "description":
        "When it comes to parenting, we all want to keep little ones busy, entertained and engaged....",
    "price": 30,
    "discountPercentage": 2.92,
    "rating": 4.92,
    "stock": 54,
    'qty': 1,
    "brand": "Robot",
    "category": "Toys",
    "thumbnail":
        "https://dkc1jod44tx5p.cloudfront.net/images/products/312Wx312H/174116.jpg",
    "images": [
      "https://dkc1jod44tx5p.cloudfront.net/images/products/312Wx312H/174116.jpg",
    ]
  },
];

List category = products.map((e) => e['category']).toList().toSet().toList();

List<Map<String, dynamic>> subCategory = [
  {
    'image': "assets/images/home_page/img.png",
    'text': "Clothes",
  },
  {
    'image': "assets/images/home_page/shoes2.png",
    'text': "Shoes",
  },
  {
    'image': "assets/images/home_page/Bag2.png",
    'text': "Bag",
  },
  {
    'image': "assets/images/home_page/ele.png",
    'text': "Electronies",
  }
];
List<Map<String, dynamic>> subCategory1 = [
  {
    'image': "assets/images/home_page/watch.png",
    'text': "Watch",
  },
  {
    'image': "assets/images/home_page/jewelry.png",
    'text': "Jewelry",
  },
  {
    'image': "assets/images/home_page/kitchen.png",
    'text': "Kitchen",
  },
  {
    'image': "assets/images/home_page/toy.png",
    'text': "Toys",
  }
];
List cartList = [];
List favList = [];
