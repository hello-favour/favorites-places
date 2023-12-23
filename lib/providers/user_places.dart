import 'dart:io';

import 'package:favorites_places/models/place.dart';
import 'package:riverpod/riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super([]);

  void addPlace(String title, File image, PlaceLocation location) {
    final newPlace = Place(title: title, image: image,location: location);
    state = [...state, newPlace]; 
  }
}

final userPlaceProvider = StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  (ref) => UserPlacesNotifier(),
);
