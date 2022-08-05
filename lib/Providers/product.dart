
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Product with ChangeNotifier {
  var id;
  final String? skill;
  final String? deficulty;

  Product({
    required this.id,
    required this.skill,
    required this.deficulty,

  });

  void _setFavValue(bool newValue) {
    // isFavorite = newValue;
    notifyListeners();
  }

  Future<void> toggleFavoriteStatus(String token, String userId) async {
    // final oldStatus = isFavorite;
    // isFavorite = !isFavorite!;
    notifyListeners();
    final url =
        'https://shopapplication-3b366-default-rtdb.firebaseio.com/userFavorites/$userId/$id.json?auth=$token';
    
  }
}
