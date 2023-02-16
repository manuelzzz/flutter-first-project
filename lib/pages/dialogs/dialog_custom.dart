import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  // dialog 100% customizável
  DialogCustom(BuildContext context, {super.key})
      : super(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: SizedBox(
            width: 300,
            height: 300,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(Icons.arrow_back_rounded),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('TituloX'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
}
