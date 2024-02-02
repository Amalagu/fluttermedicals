import 'package:flutter/material.dart';

class CardDetails {
  CardDetails({
    required this.title,
    required this.desc,
    required this.icon,
  });

  final String title; // Specify the type for title
  final String desc; // Specify the type for desc
  final IconData icon; // Specify the type for icon
}

List<CardDetails> cardDetailsList = [
  CardDetails(
    title: 'Emergency',
    desc: 'Quick Response',
    icon: Icons.phone_in_talk_sharp,
  ),
  CardDetails(
    title: 'Consult',
    desc: 'Symptoms Center',
    icon: Icons.person_3_outlined,
  ),
  CardDetails(
      title: 'Seek Advice',
      desc: 'Heart Rate Detector',
      icon: Icons.health_and_safety_rounded),
  CardDetails(
      title: 'ChatBot', desc: 'A.I Assistance', icon: Icons.android_outlined),
  CardDetails(
      title: 'Prescription',
      desc: 'Take Medication',
      icon: Icons.medication_liquid_outlined),
  CardDetails(
      title: 'Heart',
      desc: 'Heart Rate Detector',
      icon: Icons.health_and_safety_rounded),
  CardDetails(
      title: 'Heart',
      desc: 'Heart Rate Detector',
      icon: Icons.health_and_safety_rounded),
  CardDetails(
      title: 'Heart',
      desc: 'Heart Rate Detector',
      icon: Icons.health_and_safety_rounded),
  CardDetails(
      title: 'Heart',
      desc: 'Heart Rate Detector',
      icon: Icons.health_and_safety_rounded),
];
