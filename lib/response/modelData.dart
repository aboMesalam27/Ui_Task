class DataModel {
  String image;
  String title;
  String price;

  DataModel({
    required this.title,
    required this.image,
    required this.price,
  });

  static List<DataModel> dataModelRes = [
    DataModel(
        image: 'https://cdn-icons-png.flaticon.com/512/53/53200.png?w=740',
        title: 'Nike Air Max2090',
        price: '150'),
    DataModel(
        image: 'https://cdn-icons-png.flaticon.com/512/274/274458.png?w=740',
        title: 'Football Max2090',
        price: '130'),
    DataModel(
        image: 'https://cdn-icons-png.flaticon.com/512/451/451925.png?w=740',
        title: 'Nike Blue Max2090',
        price: '400'),
    DataModel(
        image: 'https://cdn-icons-png.flaticon.com/512/451/451731.png?w=740',
        title: 'Nike Air Max2020',
        price: '600'),
    DataModel(
        image: 'https://cdn-icons-png.flaticon.com/512/1122/1122999.png?w=740',
        title: 'Shoes Player Max2020',
        price: '250'),
  ];
}
