import 'package:flutter/material.dart';

Widget buildAdvertisementItem(
  String text,
  bool isLoading 
) {
  return  Visibility(
    visible:isLoading ,
    child: Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF616161),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0.5, color: Colors.grey),
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
              ),
            ),
          ),
  );
      }

