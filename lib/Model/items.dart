class Item{

  String imgPath;
  String itemName;
  double price;

  Item({
    required this.imgPath, required this.itemName, required this.price
          });
}
final List<Item> items =[

Item(imgPath: 'assets/f1.png', itemName: 'Blossom Bliss', price: 24),
Item(imgPath: 'assets/f2.png', itemName: 'Petal Harmony', price: 64),
Item(imgPath: 'assets/f3.png', itemName: 'Rose Radiance', price: 14),
Item(imgPath: 'assets/f4.png', itemName: 'Lily Whisper', price: 13),
  Item(imgPath: 'assets/f5.png', itemName: 'Blossom', price: 12),
  Item(imgPath: 'assets/f6.png', itemName: 'Lily Whisper', price: 94),
  Item(imgPath: 'assets/f4.png', itemName: 'Floral Charm', price: 74),
  Item(imgPath: 'assets/f6.png', itemName: 'Lily Whisper', price: 94),
  Item(imgPath: 'assets/f2.png', itemName: 'Petal Harmony', price: 64),
  Item(imgPath: 'assets/f1.png', itemName: 'Blossom Bliss', price: 24),
  Item(imgPath: 'assets/f3.png', itemName: 'Rose Radiance', price: 14),
];