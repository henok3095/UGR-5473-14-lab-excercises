import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

// Define the events
abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {}

class CounterDecrementPressed extends CounterEvent {}


// Define the state
class CounterState {
  final int count;

  const CounterState(this.count);
}

// Define the bloc
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>(
      (event, emit) => emit(state + 1)
    );
    on<CounterDecrementPressed>(
      (event, emit) => emit(state - 1)
    );
      }
  }



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return BlocBuilder<CounterBloc, int>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  '$state',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ],
            ),
          ),
           floatingActionButton: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
    FloatingActionButton(
      onPressed: () {
        counterBloc.add(CounterIncrementPressed());
      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ),
    const SizedBox(height: 16),
    FloatingActionButton(
      onPressed: () {
        counterBloc.add(CounterDecrementPressed());
      },
      tooltip: 'Decrement',
      child: const Icon(Icons.remove),
    ),
  ],
),
          );
      },
    );
  }
}
