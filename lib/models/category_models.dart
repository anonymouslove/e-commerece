import 'package:equatable/equatable.dart';
class Category extends Equatable{
  final String name;
  final String image;

  const Category({
    required this.name,
    required this.image,
  });

  @override
  List<Object?> get props =>[name,image];

  static List<Category> categories = [
    const Category(
      name: 'a',
      image: 'images/m1.jpeg'
    ),
     const Category(
      name: 'b',
      image: 'images/m2.jpg'
    ),
     const Category(
      name: 'a',
      image: 'images/w1.jpeg'
    ),
     const Category(
      name: 'a',
      image: 'images/w3.jpeg'
    ),
     const Category(
      name: 'a',
      image: 'images/w4.jpeg'
    ),
  ];
}
