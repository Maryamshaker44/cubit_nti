part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}
final class UpdateCount extends CounterState {}
final class UpdateImage extends CounterState {}
final class UpdateName extends CounterState {}
