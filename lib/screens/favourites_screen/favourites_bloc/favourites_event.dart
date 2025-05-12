import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourites_event.freezed.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.getFavourites() = GetFavouritesCoursesEvent;
}