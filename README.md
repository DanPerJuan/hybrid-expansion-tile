# Hybrid Expansion Tile

<p align="center">
<img src="https://raw.githubusercontent.com/rudoapps/hybrid-hub-vault/main/flutter/images/hybrid-expansion-tile/banner.png" width="100%" alt="Banner">
</p>

> A customizable, animated expansion tile widget for Flutter.

`HybridExpansionTile` is a Flutter widget that makes it easy to create expandable sections with smooth animations, flexible styling options and full control over appearance and behavior.

The Widget consists of **4 parts**:

- Main Tile / Configuration – defines title, style, background color, border radius, and animation.
- Trailing Icon – indicates expansion state and rotates when expanded/collapsed.
- Content – the collapsible area that can hold any widget (Text, Column, Image, etc.).
- Border & Animation – smooth expand/collapse animations with customizable expanded border color.

## <img src="https://raw.githubusercontent.com/rudoapps/hybrid-hub-vault/main/flutter/images/hybrid-expansion-tile/Example4.png" width="600" alt="Example 1">

## EXAMPLES

### Example 1: Change tile, styleText and colors

<img src="https://raw.githubusercontent.com/rudoapps/hybrid-hub-vault/main/flutter/images/hybrid-expansion-tile/Example1.png" width="600" alt="Example 1">

```dart
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
)
```

### Example 2: Change border, expanded hard edge, colors and icon

<img src="https://raw.githubusercontent.com/rudoapps/hybrid-hub-vault/main/flutter/images/hybrid-expansion-tile/Example2.png" width="600" alt="Example 2">

```dart
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
        'Rhoncus varius nunc morbi odio duis lacus phasellus nulla primis.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          height: 1.4,
          color: Colors.grey.shade700,
        ),
      ),
    ],
  ),
)
```

### Example 3: Add more widgets and change colors

<img src="https://raw.githubusercontent.com/rudoapps/hybrid-hub-vault/main/flutter/images/hybrid-expansion-tile/Example3.png" width="600" alt="Example 3">

```dart
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
          'Rhoncus varius nunc morbi odio duis lacus phasellus nulla primis',
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

```

## Author ✒️

- **Daniela Perez Juan** - _Flutter Developer_ - [danielaperez@rudo.es](danielaperez@rudo.es)

---

With ❤️ by RudoApps Flutter Team 😊

![Rudo Apps](https://rudo.es/wp-content/uploads/logo-rudo.svg)
