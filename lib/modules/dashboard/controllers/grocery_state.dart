part of 'grocery_bloc.dart';

// @immutable
abstract class GroceryState {}

class GroceryInitialState extends GroceryState {}

class GroceryLoadingState extends GroceryState {}

class GroceryAddedState extends GroceryState {
  final List<GroceryModel> data;

  GroceryAddedState({required this.data});
}
