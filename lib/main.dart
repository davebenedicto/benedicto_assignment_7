import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int firstAddNum = 0;
  int secondAddNum = 0;
  int sum = 0;
  int difference = 0;
  int product = 0;
  int quotient = 0;

  final TextEditingController firstNumController = TextEditingController();
  final TextEditingController secondNumController = TextEditingController();

  @override
  void dispose() {
    firstNumController.dispose();
    secondNumController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit 5 Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 3,
                child: TextField(
                  controller: firstNumController,
                  decoration: const InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) {
                    setState(() {
                      firstAddNum = int.parse(value);
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 50,
                width: 50,
                child: Center(
                  child: Text(
                    " + ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: TextField(
                  controller: secondNumController,
                  decoration: const InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) {
                    setState(() {
                      secondAddNum = int.parse(value);
                    });
                  },
                ),
              ),
              SizedBox(
                width: 100,
                child: Center(
                  child: Text(
                    ' = $sum',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              // 3.a Add an IconButton here
              IconButton(
                  onPressed: () {
                    setState(() {
                      sum = firstAddNum + secondAddNum;
                    });
                  },
                  icon: const Icon(Icons.add)),
              const SizedBox(width: 20),
              // b.b Add an button here
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      firstNumController.clear();
                      secondNumController.clear();
                      sum = 0;
                      firstAddNum = 0;
                      secondAddNum = 0;
                    });
                  },
                  child: const Text("Clear"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 3,
                child: TextField(
                  controller: firstNumController,
                  decoration: const InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) {
                    setState(() {
                      firstAddNum = int.parse(value);
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 50,
                width: 50,
                child: Center(
                  child: Text(
                    " - ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: TextField(
                  controller: secondNumController,
                  decoration: const InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) {
                    setState(() {
                      secondAddNum = int.parse(value);
                    });
                  },
                ),
              ),
              SizedBox(
                width: 100,
                child: Center(
                  child: Text(
                    ' = $difference',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              // 3.a Add an IconButton here
              IconButton(
                  onPressed: () {
                    setState(() {
                      difference = firstAddNum - secondAddNum;
                    });
                  },
                  icon: const Icon(Icons.remove)),
              const SizedBox(width: 20),
              // b.b Add an button here
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      firstNumController.clear();
                      secondNumController.clear();
                      difference = 0;
                      firstAddNum = 0;
                      secondAddNum = 0;
                    });
                  },
                  child: const Text("Clear"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 3,
                child: TextField(
                  controller: firstNumController,
                  decoration: const InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) {
                    setState(() {
                      firstAddNum = int.parse(value);
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 50,
                width: 50,
                child: Center(
                  child: Text(
                    " x ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: TextField(
                  controller: secondNumController,
                  decoration: const InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) {
                    setState(() {
                      secondAddNum = int.parse(value);
                    });
                  },
                ),
              ),
              SizedBox(
                width: 100,
                child: Center(
                  child: Text(
                    ' = $product',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              // 3.a Add an IconButton here
              IconButton(
                  onPressed: () {
                    setState(() {
                      product = firstAddNum * secondAddNum;
                    });
                  },
                  icon: const Icon(Icons.close)),
              const SizedBox(width: 20),
              // b.b Add an button here
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      firstNumController.clear();
                      secondNumController.clear();
                      product = 0;
                      firstAddNum = 0;
                      secondAddNum = 0;
                    });
                  },
                  child: const Text("Clear"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 3,
                child: TextField(
                  controller: firstNumController,
                  decoration: const InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) {
                    setState(() {
                      firstAddNum = int.parse(value);
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 50,
                width: 50,
                child: Center(
                  child: Text(
                    " ÷ ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: TextField(
                  controller: secondNumController,
                  decoration: const InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) {
                    setState(() {
                      secondAddNum = int.parse(value);
                    });
                  },
                ),
              ),
              SizedBox(
                width: 100,
                child: Center(
                  child: Text(
                    ' = $quotient',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              // 3.a Add an IconButton here
              IconButton(
                  onPressed: () {
                    setState(() {
                      quotient = firstAddNum ~/ secondAddNum;
                    });
                  },
                  icon: const FaIcon(FontAwesomeIcons.divide)),
              const SizedBox(width: 20),
              // b.b Add an button here
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      firstNumController.clear();
                      secondNumController.clear();
                      quotient = 0;
                      firstAddNum = 0;
                      secondAddNum = 0;
                    });
                  },
                  child: const Text("Clear"))
            ],
          )

          // 3.c - Add the other operations
          // Minus Row

          // Multiplication Row

          // Division Row
        ],
      ),
    );
  }
}
