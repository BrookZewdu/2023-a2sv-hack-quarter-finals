import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure(String s);

  @override
  List<Object> get props => [];
}

// General failures
