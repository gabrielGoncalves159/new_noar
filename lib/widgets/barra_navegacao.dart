import 'package:flutter/material.dart';

class BarraNavegacao extends StatelessWidget {
  final int index;
  const BarraNavegacao({Key? key, required this.index}) : super(key: key);

  Widget _buildStepIcon(IconData icon, bool ativo) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ativo ? const Color.fromRGBO(60, 120, 62, 1) : Colors.black12,
      ),
      child: Center(
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }

  Widget _buildDivider(bool ativo) {
    return Container(
      height: 2,
      width: 50,
      color: ativo ? const Color.fromRGBO(60, 120, 62, 1) : Colors.black12,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildStepIcon(Icons.person, index >= 1),
          _buildDivider(index >= 2),
          _buildStepIcon(Icons.home_work, index >= 2),
          _buildDivider(index >= 3),
          _buildStepIcon(Icons.lock, index >= 3),
        ],
      ),
    );
  }
}
