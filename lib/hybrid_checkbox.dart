import 'package:flutter/material.dart';

import 'styles/styles.dart';

class HybridCheckbox extends StatefulWidget {
  final bool value;
  final bool automaticChange;
  final ValueChanged<bool>? onChanged;

  const HybridCheckbox({
    super.key,
    this.value = false,
    this.onChanged,
    this.automaticChange = true,
  });

  @override
  State<HybridCheckbox> createState() => _HybridCheckboxState();
}

class _HybridCheckboxState extends State<HybridCheckbox> {
  late bool _isChecked = widget.value;

  @override
  void didUpdateWidget(covariant HybridCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value && widget.value != _isChecked) {
      setState(() {
        _isChecked = widget.value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: CircleBorder(),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () {
          setState(() {
            if (widget.automaticChange) _isChecked = !_isChecked;
            widget.onChanged?.call(_isChecked);
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 150),
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              color: _isChecked ? Styles.black : Colors.transparent,
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
                color: _isChecked ? Colors.transparent : Styles.black,
                width: 1.5,
              ),
            ),
            child: Center(
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 150),
                child: _isChecked ? Icon(Icons.check, color: Styles.black, size: 12) : const SizedBox.shrink(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
