abstract class CounterStates{}
class CounterInitialState extends CounterStates{}
class Counterminus extends CounterStates{
final int counter;

  Counterminus(this.counter);

}

class Counterplus extends CounterStates{
  final int counter;

  Counterplus(this.counter);


}
