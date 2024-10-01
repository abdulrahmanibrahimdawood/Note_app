import 'package:flutter/material.dart';
import 'package:note/constants.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.onTap, this.isloading = false});
  final void Function()? onTap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child: Center(
          child: isloading
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : const Text(
                  'Add',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
