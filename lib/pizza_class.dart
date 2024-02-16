abstract class Food {
  late String name;
  late int price;
  late double rating;
  late String image;

  Food(this.name, this.price, this.rating, this.image);
}

class Pizza extends Food {
  Pizza(super.name, super.price, super.rating, super.image);
}

class Burger extends Food {
  Burger(super.name, super.price, super.rating, super.image);
}
