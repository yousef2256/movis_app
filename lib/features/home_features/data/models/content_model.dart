import 'package:flutter/material.dart';

class ContentModel {
  final String? name;
  final String? imageUrl;
  final String? titleImageUrl;
  final String? videoUrl;
  final String? description;
  final Color? color;

  ContentModel({
    required this.name,
    required this.imageUrl,
    required this.titleImageUrl,
    required this.videoUrl,
    required this.description,
    required this.color,
  });
}