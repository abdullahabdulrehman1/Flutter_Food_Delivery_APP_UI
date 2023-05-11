// ignore_for_file: unnecessary_new

class Popular {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<Productmodel> _products;
  List<Productmodel> get products => _products;

  Popular({
    required totalSize,
    required typeId,
    required offset,
    required products,
  }) {
    this._totalSize = totalSize;
    this._offset = offset;
    this._typeId = typeId;
    this._products = products;
  }

  Popular.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['products'] != null) {
      _products = <Productmodel>[];
      json['products'].forEach((v) {
        _products.add(new Productmodel.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['total_size'] = this.totalSize;
  //   data['type_id'] = this.typeId;
  //   data['offset'] = this.offset;
  //   if (this.producs != null) {
  //     data['producs'] = this.producs!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class Productmodel {
  int? id;
  String? name;
  int? price;
  int? stars;
  String? img;
  String? location;
  String? createdAt;
  String? updatedAt;
  int? typeId;
  String? description;

  Productmodel(
      {this.id,
      this.name,
      this.price,
      this.stars,
      this.img,
      this.location,
      this.createdAt,
      this.updatedAt,
      this.typeId,
      this.description});

  Productmodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    stars = json['stars'];
    img = json['img'];
    location = json['location'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    typeId = json['type_id'];
    description = json['description'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['name'] = this.name;
  //   data['price'] = this.price;
  //   data['stars'] = this.stars;
  //   data['img'] = this.img;
  //   data['location'] = this.location;
  //   data['created_at'] = this.createdAt;
  //   data['updated_at'] = this.updatedAt;
  //   data['type_id'] = this.typeId;
  //   data['description'] = this.description;
  //   return data;
  // }
}


// {
//     "total_size": 6,
//     "type_id": 2,
//     "offset": 0,
//     "producs": [
//         {
//             "id": 1,
//             "name": "Nutrurious Fruit Meal",
//             "price": 12,
//             "stars": 5,
//             "img": "assets/Images/Frame 2 (2).png",
//             "location": "Pakistan",
//             "created_at": "2021-12-27 06:35:34",
//             "updated_at": "2021-12-27 06:35:34",
//             "type_id": 2,
//             "description": "This five mealWe spend our time within a structure we created, the sum total of human experience spread throughout the world in ones and zeros When CERN created the intethe goal was to freely share knowledge and learning with others throughout the world.You fear us because you do not understand us You see the results but not the minds behind it. When we took down PlayStation you saw your personal details, your bank details– the things which society says makes up you– disappear into thewe could do it so easily, what’s to stop someone el"
//         },
//         {
//             "id": 2,
//             "name": "Nutrurious Fruit Meal",
//             "price": 1234,
//             "stars": 3,
//             "img": "assets/Images/Frame 2 (2).png",
//             "location": "Pakistan",
//             "created_at": "2023-12-27 06:35:34",
//             "updated_at": "2022-12-27 06:35:34",
//             "type_id": 2,
//             "description": "This five mealWe spend our time within a structure we created, the sum total of human experience spread throughout the world in ones gsdfgdfgsdfgdfgsdggand zeros When CERN created the intethe goal was to freely share knowledge and learning with others throughout the world.You fear us because you do not understand us You see the results but not the minds behind it. When we took down PlayStation you saw your personal details, your bank details– the things which society says makes up you– disappear into thewe could do it so easily, what’s to stop someon"
//         }
//     ]
// }