class Brands {
  String name;
  String image;
  Brands({
    required this.name,required this.image,
  });
}

List<Brands> brands = [
  Brands(name: "Adidas",image: "assets/images/adidas.svg"),
  Brands(name: "Nike",image: "assets/images/Vector.svg"),
  Brands(name: "Fila",image: "assets/images/fila.svg"),
  Brands(name: "Puma",image: "assets/images/puma.svg"),
];
