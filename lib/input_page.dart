import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),

      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
                Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
                Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
