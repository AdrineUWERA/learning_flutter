class ProductModel {
  final String productImageURL;
  final String productName;
  final double price;

  ProductModel(
      {required this.productImageURL,
      required this.productName,
      required this.price});

  static final List<ProductModel> products = [
    ProductModel(
        productImageURL:
            "https://res.cloudinary.com/dpuyeblqg/image/upload/v1670828973/Market%20media/akarabo-biscuit-494864_1400x1400_kzc2aq.webp",
        productName: "Akarabo",
        price: 1200),
    ProductModel(
      productImageURL:
          "https://res.cloudinary.com/dpuyeblqg/image/upload/v1670262627/Market%20media/R_3_dzz66e.jpg",
      productName: "Akabanga",
      price: 600,
    ),
    ProductModel(
      productImageURL:
          "https://res.cloudinary.com/dpuyeblqg/image/upload/v1676914203/Market%20media/Screen-Shot-2020-06-21-at-9.59.43-AM_odhhi9.png",
      productName: "Akarusho",
      price: 1000,
    ),
    ProductModel(
      productImageURL:
          "https://res.cloudinary.com/dpuyeblqg/image/upload/v1676914199/Market%20media/v2-36-540x540_tg66lh.jpg",
      productName: "Ikizere",
      price: 5000,
    ),
    ProductModel(
      productImageURL:
          "https://res.cloudinary.com/dpuyeblqg/image/upload/v1676914199/Market%20media/v2-15-scaled-540x540_bbf07f.jpg",
      productName: "Passion Agashya",
      price: 3500,
    ),
    ProductModel(
      productImageURL:
          "https://res.cloudinary.com/dpuyeblqg/image/upload/v1676914199/Market%20media/v2-11-scaled-540x540_doxqha.jpg",
      productName: "Strawberry Agashya",
      price: 4000,
    ),
  ];
}
