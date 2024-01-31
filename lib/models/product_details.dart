class ProductDetails {
  String title;
  String subtitle;
  String price;
  String company;
  String description;
  String image;

  ProductDetails({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.company,
    required this.description,
    required this.image,
  });
}

List<ProductDetails> productDetails = [
  ProductDetails(
    title: "Nike Sportswear Club   Fleece",
    subtitle: "Men's Printed Pullover Hoodie",
    price: "\$120",
    company: "Nike",
    description:
        "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with Read More..",
    image: "assets/images/profile.png",
  ),
  ProductDetails(
    title: "Trail Running Jacket Nike Windrunner",
    subtitle: "Men's Printed Pullover Hoodie",
    price: "\$99",
    company: "Nike",
    description:
        "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with Read More..",
    image: "assets/images/profile2.png",
  ),
  ProductDetails(
    title: "Joggers",
    subtitle: "Men's joggers",
    price: "\$239",
    company: "Nike",
    description:
        "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with Read More..",
    image: "assets/images/profile3.png",
  ),
  ProductDetails(
    title: "Jacket Nike Windrunner",
    subtitle: "Men's Printed Pullover Jacket",
    price: "\$50",
    company: "Nike",
    description:
        "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with Read More..",
    image: "assets/images/profile4.png",
  ),
];
