import 'package:flutter/material.dart';

import 'hybrid_checkbox.dart';
import 'styles/styles.dart';
import 'types/selected_item_string_value_type.dart';

class HybridExpansionTile extends StatefulWidget {
  final String title;
  final TextStyle? style;
  final Duration animationsDuration;
  final Color expandedBorderColor;
  final bool hasExpandedHardEdge;
  final EdgeInsets contentPadding;
  final Widget? child;

  const HybridExpansionTile(
      {super.key,
      required this.title,
      this.style,
      required this.child,
      this.hasExpandedHardEdge = false,
      this.contentPadding = const EdgeInsets.all(16),
      this.animationsDuration = const Duration(milliseconds: 200),
      this.expandedBorderColor = Styles.black});

  static HybridExpansionTile checkboxChildren<T>({
    required String title,
    TextStyle? style,
    required Map<T, bool> values,
    Duration animationsDuration = const Duration(milliseconds: 150),
    SelectedItemStringValue<T>? itemText,
    ValueChanged<T>? onChanged,
  }) {
    return HybridExpansionTile(
      title: title,
      style: style,
      hasExpandedHardEdge: true,
      animationsDuration: animationsDuration,
      expandedBorderColor: Styles.black,
      contentPadding: EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: values.length,
        itemBuilder: (context, index) {
          return _checkboxListTile(values, index, onChanged, itemText, context);
        },
      ),
    );
  }

  static Material _checkboxListTile<T>(
    Map<dynamic, bool> values,
    int index,
    ValueChanged<T>? onChanged,
    SelectedItemStringValue<T>? itemText,
    BuildContext context,
  ) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          final key = values.keys.elementAt(index);
          onChanged?.call(key);
        },
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 16, top: 2, bottom: 2),
          child: Row(
            spacing: 10,
            children: [
              HybridCheckbox(
                value: values.values.elementAt(index),
                automaticChange: false,
                onChanged: (value) {
                  final key = values.keys.elementAt(index);
                  onChanged?.call(key);
                },
              ),
              Text(
                itemText?.call(values.keys.elementAt(index)) ?? values.keys.elementAt(index).toString(),
                style: TextTheme.of(context).bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HybridExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<HybridExpansionTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.animationsDuration,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: _isExpanded ? widget.expandedBorderColor : Theme.of(context).scaffoldBackgroundColor,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_mainTile(), _childTile()],
      ),
    );
  }

  Widget _mainTile() {
    return Material(
      color: Styles.grayLight,
      shape: RoundedRectangleBorder(
        borderRadius: widget.hasExpandedHardEdge
            ? BorderRadius.vertical(
                top: Radius.circular(6),
                bottom: _isExpanded ? Radius.zero : Radius.circular(6),
              )
            : BorderRadius.circular(6),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Ink(
        decoration: BoxDecoration(
          border: widget.hasExpandedHardEdge
              ? Border(
                  bottom: _isExpanded ? BorderSide(color: widget.expandedBorderColor, width: 1) : BorderSide.none,
                )
              : null,
        ),
        child: InkWell(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Text(
                  widget.title,
                  style: widget.style,
                ),
                Spacer(),
                _trailingIcon(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AnimatedRotation _trailingIcon() {
    return AnimatedRotation(
      turns: _isExpanded ? 0 : 0.5,
      duration: widget.animationsDuration,
      child: Icon(Icons.keyboard_arrow_up_outlined, color: Styles.black),
    );
  }

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
      child: _isExpanded ? Padding(padding: widget.contentPadding, child: widget.child) : const SizedBox.shrink(),
    );
  }
}
