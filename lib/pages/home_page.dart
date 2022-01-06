import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/providers/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times: ${context
                .watch<Counter>()
                .counter}'),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    onPressed: () => context.read<Counter>().reset(),
                    child: Text('C', style: TextStyle(fontSize: 24)),
                ),

                SizedBox(
                  width: 10.0,
                ),

                FloatingActionButton(
                  onPressed: () => context.read<Counter>().increment(),
                  child: Icon(Icons.add),
                ),

                SizedBox(
                  width: 10.0,
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}
