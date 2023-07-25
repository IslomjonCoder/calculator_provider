import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled21/provider/Calculate_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculateProvider = Provider.of<CalculatorProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Text('Result: ${calculateProvider.result}'),
              TextField(
                onChanged: (value) {
                  calculateProvider.setOperand1 =
                      (value.isEmpty) ? 0 : double.parse(value);
                },
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(label: Text("Operand 1")),
              ),
              TextField(
                onChanged: (value) {
                  calculateProvider.setOperand2 =
                      (value.isEmpty) ? 0 : double.parse(value);
                },
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(label: Text("Operand 1")),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        calculateProvider.add();
                      },
                      child: Text('Add')),
                  ElevatedButton(
                      onPressed: () {
                        calculateProvider.multiply();
                      },
                      child: Text('Multiply')),
                  ElevatedButton(
                      onPressed: () {
                        calculateProvider.subtract();
                      },
                      child: Text('Substract')),
                  ElevatedButton(
                      onPressed: () {
                        calculateProvider.divide();
                      },
                      child: Text('Divede')),
                ],
              )
            ],
          )),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       TextField(
      //         onChanged: (value) {
      //           calculatorProvider.number1 = double.parse(value);
      //           // calculatorProvider.setOperand1(double.parse(value));
      //         },
      //         keyboardType: TextInputType.number,
      //         decoration: InputDecoration(labelText: 'Operand 1'),
      //       ),
      //       TextField(
      //         onChanged: (value) {
      //           calculatorProvider.number2 = double.parse(value);
      //           // calculatorProvider.setOperand2(double.parse(value));
      //         },
      //         keyboardType: TextInputType.number,
      //         decoration: InputDecoration(labelText: 'Operand 2'),
      //       ),
      //       SizedBox(height: 20),
      //       ElevatedButton(
      //         onPressed: () => calculatorProvider.addNumbers(),
      //         child: Text('Add'),
      //       ),
      //       ElevatedButton(
      //         onPressed: () => calculatorProvider.subNumbers(),
      //         child: Text('Subtract'),
      //       ),
      //       ElevatedButton(
      //         onPressed: () => calculatorProvider.multipleNumbers(),
      //         child: Text('Multiply'),
      //       ),
      //       ElevatedButton(
      //         onPressed: () => calculatorProvider.divideNumbers(),
      //         child: Text('Divide'),
      //       ),
      //       SizedBox(height: 20),
      //       Text('Result: ${calculatorProvider.result}'),
      //     ],
      //   ),
      // ),
    );
  }
}
