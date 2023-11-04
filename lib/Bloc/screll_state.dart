part of 'screll_bloc.dart';

@immutable
abstract class ScrellState {}

class ScrellInitial extends ScrellState {}
class ScrellBlocLoading extends ScrellState{}
class SrellBlocLoaded extends ScrellState{}
class ScrellBlocError extends ScrellState{}