import 'package:counterapp_using_bloc/bloc/counter/counter_bloc.dart';
import 'package:counterapp_using_bloc/bloc/counter/counter_event.dart';
import 'package:counterapp_using_bloc/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Counter App"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState> (builder: (context,state){
            return  Text(state.count.toString(),style:const TextStyle(fontSize: 40),);
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            ElevatedButton(onPressed: (){
              context.read<CounterBloc>().add(IncrementCounter());
            }, child: const Text("Increment")),
            ElevatedButton(onPressed: (){
              context.read<CounterBloc>().add(DecrementCounter());
            }, child: const Text("Decrement"))
          ],)
        ],
      ),
    );
  }
}
