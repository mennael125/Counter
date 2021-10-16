import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/modules/counter_cubit/cubit/cubit.dart';
import 'package:udemy/modules/counter_cubit/cubit/states.dart';

class CounterCubit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounCubit(),
      child: BlocConsumer<CounCubit ,CounterStates >(
        listener: (context, state) {
          if ( state is Counterplus) print ("plus state  ${state.counter}") ;
          if ( state is Counterminus) print ("minus state ${state.counter} ") ;

        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Counter"),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      CounCubit.get(context).plus();
                    },
                    child: Text(
                      "Plus ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      "${CounCubit.get(context).num} ",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CounCubit.get(context).minus();
                    },
                    child: Text(
                      "minus ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
