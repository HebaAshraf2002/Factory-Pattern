import 'package:flutter/material.dart';
import 'package:practicefactorydesignpattern/Shape.dart';
import 'package:practicefactorydesignpattern/ShapeFactory.dart';

class ShapeScreen extends StatefulWidget {
  const ShapeScreen({super.key});

  @override
  State<ShapeScreen> createState() => _ShapeScreenState();
}

class _ShapeScreenState extends State<ShapeScreen> {
  final ShapeFactory _shapeFactory = ShapeFactory();
  String _message = "Choose a shape";

  void _selectShape(String shapeType) {
    Shape? shape = _shapeFactory.getShape(shapeType);
    setState(() {
      _message = shape?.revealMe() ?? "Invalid shape!";
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          _message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Factory Pattern in Flutter",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 5,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.blue[50],
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    _message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Wrap(
                spacing: 15,
                runSpacing: 10,
                children: [
                  _buildShapeButton("Circle", Icons.circle, Colors.purple),
                  _buildShapeButton("Rectangle", Icons.crop_16_9, Colors.green),
                  _buildShapeButton("Square", Icons.crop_square, Colors.orange),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShapeButton(String label, IconData icon, Color color) {
    return ElevatedButton.icon(
      onPressed: () => _selectShape(label.toLowerCase()),
      icon: Icon(icon, color: Colors.white),
      label: Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        backgroundColor: color,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
      ),
    );
  }
}
