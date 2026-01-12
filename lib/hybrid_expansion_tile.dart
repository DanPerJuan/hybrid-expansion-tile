import 'package:flutter/material.dart';

import 'styles/styles.dart';

/// Library to create a customizable expansion tile with animated behavior.
///
/// This widget provides a collapsible tile that expands and collapses
/// smoothly to show or hide custom content. It includes configurable
/// styles, animation duration, border behavior and content padding.
///
/// [author] Daniela Perez
/// [module] HybridExpansionTile
/// [version] 1.0.1
class HybridExpansionTile extends StatefulWidget {
  /// TITLE
  final String title;
  final TextStyle? styleTitle;
  final Color backgroundTileColor;

  /// CONTENT
  final Widget? content;
  final EdgeInsets contentPadding;

  /// ICON
  final IconData icon;
  final Color iconColor;

  /// ANIMATION DURATION
  final Duration animationsDuration;

  /// CONTAINER
  final bool hasExpandedHardEdge;
  final Color expandedBorderColor;
  final double borderRadius;

  /// CONSTRUCTOR
  const HybridExpansionTile({
    super.key,

    /// TITLE
    required this.title,

    /// TITLE TEXT STYLE
    this.styleTitle,

    /// TILE BACKGROUND COLOR
    this.backgroundTileColor = Styles.grayLight,

    /// CONTENT
    required this.content,

    /// CONTENT PADDING
    this.contentPadding = const EdgeInsets.all(16),

    /// ICON
    this.icon = Icons.keyboard_arrow_up_outlined,

    /// ICON COLOR
    this.iconColor = Styles.black,

    /// ANIMATION DURATION
    this.animationsDuration = const Duration(milliseconds: 200),

    /// EXPANDED HARD EDGE
    this.hasExpandedHardEdge = false,

    /// EXPANDED BORDER COLOR
    this.expandedBorderColor = Styles.grayLight,

    /// BORDER RADIUS
    this.borderRadius = 6,
  });

  @override
  State<HybridExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<HybridExpansionTile> {
  /// EXPANSION STATE
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.animationsDuration,

      /// CONTAINER DECORATION
      ///
      /// Applies animated border color changes based on expansion state.
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: Border.all(
          color: _isExpanded ? widget.expandedBorderColor : Theme.of(context).scaffoldBackgroundColor,
          width: 1,
        ),
      ),

      /// TILE STRUCTURE
      ///
      /// Main tile + expandable child content.
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _mainTile(),
          _childTile(),
        ],
      ),
    );
  }

  /// BUILDS THE MAIN (HEADER) TILE
  ///
  /// This tile is always visible and reacts to taps to toggle
  /// the expanded state.
  Widget _mainTile() {
    return Material(
      color: widget.backgroundTileColor,

      /// SHAPE CONFIGURATION
      ///
      /// Adjusts border radius based on expanded state and hard edge option.
      shape: RoundedRectangleBorder(
        borderRadius: widget.hasExpandedHardEdge
            ? BorderRadius.vertical(
                top: Radius.circular(widget.borderRadius - 1),
                bottom: _isExpanded ? Radius.zero : Radius.circular(widget.borderRadius),
              )
            : BorderRadius.circular(widget.borderRadius - 1),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Ink(
        decoration: BoxDecoration(
          border: widget.hasExpandedHardEdge
              ? Border(
                  bottom: _isExpanded
                      ? BorderSide(
                          color: widget.expandedBorderColor,
                          width: 1,
                        )
                      : BorderSide.none,
                )
              : null,
        ),
        child: InkWell(
          /// TOGGLE EXPANSION
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                /// TITLE TEXT
                Text(
                  widget.title,
                  style: widget.styleTitle,
                ),

                const Spacer(),

                /// TRAILING ICON
                _trailingIcon(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// BUILDS THE TRAILING ICON
  ///
  /// Rotates the arrow icon depending on expansion state.
  AnimatedRotation _trailingIcon() {
    return AnimatedRotation(
      turns: _isExpanded ? 0 : 0.5,
      duration: widget.animationsDuration,
      child: Icon(
        widget.icon,
        color: widget.iconColor,
      ),
    );
  }

  /// BUILDS THE EXPANDABLE CHILD CONTENT
  ///
  /// Uses AnimatedSwitcher + SizeTransition to smoothly
  /// show or hide the content.
  Widget _childTile() {
    return AnimatedSwitcher(
      duration: widget.animationsDuration,
      transitionBuilder: (child, animation) {
        return SizeTransition(
          sizeFactor: animation,
          axisAlignment: 0.0,
          child: child,
        );
      },
      child: _isExpanded
          ? Padding(
              padding: widget.contentPadding,
              child: widget.content,
            )
          : const SizedBox.shrink(),
    );
  }
}
