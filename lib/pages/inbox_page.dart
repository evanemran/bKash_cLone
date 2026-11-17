import 'package:bkash/models/demo_profile.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _phoneController;
  late final TextEditingController _balanceController;

  @override
  void initState() {
    super.initState();
    final profile = demoProfile.value;
    _nameController = TextEditingController(text: profile.name);
    _phoneController = TextEditingController(text: profile.phoneNumber);
    _balanceController =
        TextEditingController(text: profile.formattedBalance);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _balanceController.dispose();
    super.dispose();
  }

  void _saveProfile() {
    if (!_formKey.currentState!.validate()) return;
    final balance = double.parse(_balanceController.text.trim());
    demoProfile.value = demoProfile.value.copyWith(
      name: _nameController.text.trim(),
      phoneNumber: _phoneController.text.trim(),
      balance: balance,
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('ডেমো প্রোফাইল আপডেট হয়েছে')),
    );
  }

  void _resetProfile() {
    const defaults = DemoProfile(
      name: 'Demo User',
      phoneNumber: '01700000000',
      balance: 7500.25,
      displayTime: TimeOfDay(hour: 10, minute: 30),
    );
    demoProfile.value = defaults;
    _nameController.text = defaults.name;
    _phoneController.text = defaults.phoneNumber;
    _balanceController.text = defaults.formattedBalance;
  }

  Future<void> _chooseTime() async {
    final selected = await showTimePicker(
      context: context,
      initialTime: demoProfile.value.displayTime,
      helpText: 'ডেমোতে দেখানোর সময় বাছুন',
    );
    if (selected != null) {
      demoProfile.value = demoProfile.value.copyWith(displayTime: selected);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.pink.shade50,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.pink.shade200),
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.info_outline, color: Colors.pink),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'ডেমো সেটিংস — এখানে কোনো বাস্তব অ্যাকাউন্টে লগইন হয় না। '
                    'শুধু কাল্পনিক নম্বর, প্রোফাইল ও প্রদর্শিত তথ্য ব্যবহার করুন। '
                    'PIN বা পাসওয়ার্ড চাওয়া বা সংরক্ষণ করা হয় না।',
                    style: TextStyle(height: 1.4),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  textCapitalization: TextCapitalization.words,
                  decoration: const InputDecoration(
                    labelText: 'ডেমো প্রোফাইলের নাম',
                    prefixIcon: Icon(Icons.person_outline),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value == null || value.trim().isEmpty
                      ? 'একটি ডেমো নাম লিখুন'
                      : null,
                ),
                const SizedBox(height: 14),
                TextFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'কাল্পনিক ডেমো নম্বর',
                    prefixIcon: Icon(Icons.phone_android),
                    border: OutlineInputBorder(),
                    helperText: 'শুধু প্রদর্শনের জন্য; এটি লগইন নম্বর নয়',
                  ),
                  validator: (value) => value == null || value.trim().isEmpty
                      ? 'একটি ডেমো নম্বর লিখুন'
                      : null,
                ),
                const SizedBox(height: 14),
                TextFormField(
                  controller: _balanceController,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'স্যান্ডবক্স ব্যালেন্স (৳)',
                    prefixIcon: Icon(Icons.account_balance_wallet_outlined),
                    border: OutlineInputBorder(),
                    helperText: 'এটি বাস্তব টাকা বা লেনদেন নয়',
                  ),
                  validator: (value) {
                    final parsed = double.tryParse(value?.trim() ?? '');
                    if (parsed == null || parsed < 0) {
                      return 'শূন্য বা তার বেশি একটি বৈধ পরিমাণ লিখুন';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          ValueListenableBuilder<DemoProfile>(
            valueListenable: demoProfile,
            builder: (context, profile, _) => Card(
              child: ListTile(
                leading: const Icon(Icons.schedule, color: Colors.pink),
                title: const Text('ডেমোতে দেখানোর সময়'),
                subtitle: Text(profile.formattedTime),
                trailing: const Icon(Icons.edit),
                onTap: _chooseTime,
              ),
            ),
          ),
          const SizedBox(height: 18),
          FilledButton(
            onPressed: _saveProfile,
            style: FilledButton.styleFrom(backgroundColor: Colors.pink),
            child: const Text('ডেমো সেটিংস সংরক্ষণ করুন'),
          ),
          TextButton(
            onPressed: _resetProfile,
            child: const Text('ডিফল্ট ডেমো তথ্য ফিরিয়ে আনুন'),
          ),
        ],
      ),
    );
  }
}
