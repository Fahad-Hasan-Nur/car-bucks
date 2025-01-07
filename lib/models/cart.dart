// import 'package:practice/core/store.dart';
// import 'package:practice/models/product.dart';
// import 'package:velocity_x/velocity_x.dart';

// class CartModel {
//   // catalog field
//   ProductModel _product = ProductModel();

//   // Collection of IDs - store Ids of each item
//   final List<String> _itemIds = [];

//   // Get Catalog
//   ProductModel get product => _product;

//   set product(ProductModel newCatalog) {
//     _product = newCatalog;
//   }

//   // Get items in the cart
//   List<Product> get items =>
//       _itemIds.map((id) => _product.getById(id)).toList();

//   // Get total price
//   num get totalPrice =>
//       items.fold(0, (total, current) => total + current.price);

//   // Add Item

//   void add(Product item) {
//     _itemIds.add(item.id);
//   }

//   // Remove Item

//   void remove(Product item) {
//     _itemIds.remove(item.id);
//   }
// }

// class AddMutation extends VxMutation<MyStore> {
//   final Product ob;

//   AddMutation(this.ob);
//   @override
//   perform() {
//     store?.cart._itemIds.add(ob.id);
//   }
// }

// class RemoveMutation extends VxMutation<MyStore> {
//   final Product ob;

//   RemoveMutation(this.ob);
//   @override
//   perform() {
//     store?.cart._itemIds.remove(ob.id);
//   }
// }
