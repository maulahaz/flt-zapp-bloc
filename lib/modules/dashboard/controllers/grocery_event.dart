part of 'grocery_bloc.dart';

// @immutable
abstract class GroceryEvent {}

class GroceryInitialEvent extends GroceryEvent {}

class GroceryAddEvent extends GroceryEvent {}
