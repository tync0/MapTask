import 'package:flutter/material.dart';
import 'package:prodata/core/base/extension.dart';

class SearchField extends StatefulWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final VoidCallback? onEditingComplete;
  const SearchField({
    super.key,
    required this.hintText,
    required this.textEditingController,
    this.onEditingComplete,
  });

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      controller: widget.textEditingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.black.withAlpha(60),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        ),
        hintText: widget.hintText,
        hintStyle: context.smallTextStyle,
        filled: true,
        fillColor: Colors.white,
      ),
      onEditingComplete: widget.onEditingComplete,
    );
  }
}
