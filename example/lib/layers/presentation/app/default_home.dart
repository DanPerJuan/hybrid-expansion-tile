import 'package:flutter/material.dart';
import 'package:hybrid_expansion_tile/hybrid_expansion_tile.dart';

class DefaultHome extends StatelessWidget {
  const DefaultHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          'Hybrid Expansion Tile',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF2563EB),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Main title
            const Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F2937),
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 16),

            HybridExpansionTile(
              title: 'Lorem 1',
              content: Text(
                  'Lorem ipsum dolor sit amet consectetur adipiscing elit rhoncus varius, nunc morbi odio duis lacus phasellus nulla primis nam, velit facilisi imperdiet vehicula molestie nascetur potenti consequat.'),
              backgroundTileColor: Colors.grey[300]!,
              expandedBorderColor: Colors.grey[300]!,
            ),

            const SizedBox(height: 16),

            HybridExpansionTile(
              title: 'Lorem 2',
              styleTitle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              content: Column(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: FlutterLogo(
                        size: 100,
                      )),
                  Text(
                      'Lorem ipsum dolor sit amet consectetur adipiscing elit rhoncus varius, nunc morbi odio duis lacus phasellus nulla primis nam, velit facilisi imperdiet vehicula molestie nascetur potenti consequat.'),
                ],
              ),
              hasExpandedHardEdge: true,
              backgroundTileColor: Colors.lightBlueAccent[100]!,
              expandedBorderColor: Colors.lightBlue[300]!,
              borderRadius: 0,
              icon: Icons.arrow_right_rounded,
              iconColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
