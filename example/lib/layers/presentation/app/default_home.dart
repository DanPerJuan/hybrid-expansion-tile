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
              title: 'Advanced Settings',
              styleTitle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              backgroundTileColor: Colors.blue.shade50,
              expandedBorderColor: Colors.blue,
              borderRadius: 12,
              iconColor: Colors.blue,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('• Option 1'),
                  Text('• Option 2'),
                  Text('• Option 3'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            HybridExpansionTile(
              title: 'Notifications',
              backgroundTileColor: Colors.grey.shade200,
              expandedBorderColor: Colors.grey.shade300,
              hasExpandedHardEdge: true,
              borderRadius: 0,
              icon: Icons.arrow_drop_up_rounded,
              iconColor: Colors.grey.shade700,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              styleTitle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const FlutterLogo(
                      size: 80,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur adipiscing elit. '
                    'Rhoncus varius nunc morbi odio duis lacus phasellus nulla primis nam.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.4,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: HybridExpansionTile(
                title: 'Information',
                styleTitle: const TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                iconColor: Colors.deepPurple,
                backgroundTileColor: Colors.white,
                expandedBorderColor: Colors.deepPurple.shade200,
                borderRadius: 12,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                content: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Wi-Fi'),
                          Switch(value: true, onChanged: (_) {}),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipiscing elit. '
                      'Rhoncus varius nunc morbi odio duis lacus phasellus nulla primis nam.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        height: 1.4,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
