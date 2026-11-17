import 'package:flutter/material.dart';

/// In-memory profile values for the clearly marked, non-authenticating demo.
/// No login credentials or PINs are collected or persisted.
class DemoProfile {
  const DemoProfile({
    required this.name,
    required this.phoneNumber,
    required this.balance,
    required this.displayTime,
  });

  final String name;
  final String phoneNumber;
  final double balance;
  final TimeOfDay displayTime;

  DemoProfile copyWith({
    String? name,
    String? phoneNumber,
    double? balance,
    TimeOfDay? displayTime,
  }) {
    return DemoProfile(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      balance: balance ?? this.balance,
      displayTime: displayTime ?? this.displayTime,
    );
  }

  String get formattedBalance => balance.toStringAsFixed(2);

  String get formattedTime {
    final hour = displayTime.hourOfPeriod == 0 ? 12 : displayTime.hourOfPeriod;
    final minute = displayTime.minute.toString().padLeft(2, '0');
    final period = displayTime.period == DayPeriod.am ? 'AM' : 'PM';
    return '$hour:$minute $period';
  }
}

/// Shared app-wide demo state. Values last for this app session only.
final ValueNotifier<DemoProfile> demoProfile = ValueNotifier<DemoProfile>(
  const DemoProfile(
    name: 'Demo User',
    phoneNumber: '01700000000',
    balance: 7500.25,
    displayTime: TimeOfDay(hour: 10, minute: 30),
  ),
);
