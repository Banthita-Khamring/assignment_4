import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'assignment_4_640710536',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 255, 111, 0),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 232, 131),
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const dotsData = [
    // Digit 0
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 1
    [
      [0, 0, 1, 0, 0],
      [0, 1, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 1, 1, 0],
    ],
    // Digit 2
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 0, 0, 0],
      [1, 1, 1, 1, 1],
    ],
    // Digit 3
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 4
    [
      [0, 0, 0, 1, 0],
      [0, 0, 1, 1, 0],
      [0, 1, 0, 1, 0],
      [1, 0, 0, 1, 0],
      [1, 1, 1, 1, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 0, 1, 0],
    ],
    // Digit 5
    [
      [1, 1, 1, 1, 1],
      [1, 0, 0, 0, 0],
      [1, 1, 1, 1, 0],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 6
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 0],
      [1, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 7
    [
      [1, 1, 1, 1, 1],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 0, 0, 0],
      [0, 1, 0, 0, 0],
      [0, 1, 0, 0, 0],
    ],
    // Digit 8
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 9
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 1],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ]
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildDot(int value) {
    return Container(
      // value = 0 จะแสดงจุดมืด, value = 1 จะแสดงจุดสว่าง
      width: 32.0,
      height: 32.0,
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: value == 0
            ? Color.fromARGB(221, 251, 239, 161)
            : Color.fromARGB(255, 34, 0, 253),
      ),
    );
  }

  Widget _buildRow(List<int> dotList) {
    return Row(
      // ...
      // วนลูปค่า int ใน dotList แล้วเรียกไปยัง _buildDot()
      // เพื่อแสดงจุดที่สัมพันธ์กับแต่ละค่า int
      // ...
      children: [
        for (int num in dotList) _buildDot(num),
      ],
    );
  }

  Widget _buildDigit(List<List<int>> rowList) {
    return Column(
      // ...
      // วนลูปค่า list ใน rowList แล้วเรียกไปยัง _buildRow()
      // เพื่อแสดงแถวของจุดที่สัมพันธ์กับแต่ละ list ใน rowList
      // ...
      children: [
        for (List<int> row in rowList) _buildRow(row),
      ],
    );
  }

  // value คือค่าสตริงที่เป็นตัวเลข 2 หลัก เช่น '00', '23', etc.
  Widget _buildDisplay(String value) {
    // แยกตัวเลขแต่ละหลักใน value ออกมา แล้วเรียกไปยัง _buildDigit()

    List<String> digits = value.split('');
    print(digits);
    //  String to int : String=> int
    List<int> digitsData = digits.map(int.parse).toList();
    // แล้วเอา Row มาครอบ เพื่อจัดเรียงตัวเลข 2 หลักในแนวนอน
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDigit(
          HomePage.dotsData[digitsData[0]],
        ),
        SizedBox(width: 32.0),
        _buildDigit(
          HomePage.dotsData[digitsData[1]],
        ),
      ],
    );
  }

  Widget _buildIcon(IconData i) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: i == Icons.expand_less_rounded
                ? Color.fromARGB(255, 163, 234, 165)
                : Color.fromARGB(255, 255, 188, 168),
            width: 8.0,
          ),
          shape: BoxShape.circle),
      child: InkWell(
        customBorder: CircleBorder(),
        onTap: () {
          setState(
            () {
              // condition 1 press Icons.expand_less_rounded _input == '99' then _input = '00'
              // condition 2 press Icons.expand_more_rounded _input == '00' then _input = '99'
              // condition 3 show 2 digits of 00, 01, 02, ..., 99 and when press Icons.expand_less_rounded value in _input change from current to that value plus one
              // condition 4 show 2 digits of 00, 01, 02, ..., 99 and when press Icons.expand_more_rounded value in _input change from current to that value minutes one

              if ( // press Icons.expand_less_rounded
                  i == Icons.expand_less_rounded) {
                if (_input == '99') {
                  _input = '00';
                } else {
                  _input = int.parse(_input) + 1 < 10
                      ? '0' + (int.parse(_input) + 1).toString()
                      : (int.parse(_input) + 1).toString();
                }
              } else if ( // press Icons.expand_more_rounded
                  i == Icons.expand_more_rounded) {
                if (_input == '00') {
                  _input = '99';
                } else {
                  _input = int.parse(_input) - 1 < 10
                      ? '0' + (int.parse(_input) - 1).toString()
                      : (int.parse(_input) - 1).toString();
                }
              }
            },
          );
        },
        child: Icon(
          i,
          size: 100.0,
          color: i == Icons.expand_less_rounded
              ? Colors.green[300]
              : Colors.deepOrange[300],
        ),
      ),
    );
  }

// เริ่มต้น แสดง 00 แล้วไป 01 แล้วไป 02 แล้วไป 99 แล้วไป 00
  String _input = '00';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LED MATRIX',
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // _buildDot(1),
          //_buildRow([1, 1, 1, 1, 1]),
          //_buildRow([0, 0, 1, 1, 1]),
          // _buildDigit(
          //   [
          //     [0, 0, 1, 0, 0],
          //     [0, 1, 1, 0, 0],
          //     [0, 0, 1, 0, 0],
          //     [0, 0, 1, 0, 0],
          //     [0, 0, 1, 0, 0],
          //     [0, 0, 1, 0, 0],
          //     [0, 1, 1, 1, 0],
          //   ],
          // )
          _buildIcon(Icons.expand_less_rounded),
          SizedBox(height: 32.0),
          _buildDisplay(_input),
          SizedBox(height: 32.0),
          _buildIcon(Icons.expand_more_rounded),
        ],
      ),
    );
  }
}
