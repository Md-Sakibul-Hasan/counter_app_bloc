import 'package:equatable/equatable.dart';

class CounterState extends Equatable{
  final int count;

  const CounterState({this.count=0});

  @override
  // TODO: implement props
  List<Object?> get props => [count];

  CounterState copyWith({int? counter}){
    return CounterState(
      count: counter??count
    );
  }

}