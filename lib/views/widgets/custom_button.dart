import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.text, super.key, this.onTap, this.isLoading = false});
  final String text;
  final VoidCallback? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
              color: kprimaryColor, borderRadius: BorderRadius.circular(8)),
          child: Center(
              child: isLoading == true
                  ? const SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    )
                  : Text(
                      text,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
        ),
      ),
    );
  }
}
