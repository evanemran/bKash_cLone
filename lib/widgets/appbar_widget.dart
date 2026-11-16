import 'package:bkash/models/demo_profile.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  bool _balanceVisible = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 8, 4),
          child: ValueListenableBuilder<DemoProfile>(
            valueListenable: demoProfile,
            builder: (context, profile, _) => Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              profile.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(width: 6),
                          const _DemoBadge(),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '${profile.phoneNumber}  •  ${profile.formattedTime}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 4),
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () => setState(
                          () => _balanceVisible = !_balanceVisible,
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            _balanceVisible
                                ? 'ডেমো ব্যালেন্স: ৳ ${profile.formattedBalance}'
                                : 'ডেমো ব্যালেন্স দেখতে ট্যাপ করুন',
                            style: const TextStyle(
                              color: Colors.pink,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          tooltip: 'ডেমো মেনু',
          onPressed: () => Scaffold.of(context).openEndDrawer(),
          icon: Image.asset('assets/logo.png', width: 30, height: 30),
        ),
      ],
    );
  }
}

class _DemoBadge extends StatelessWidget {
  const _DemoBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'DEMO',
        style: TextStyle(
          color: Colors.pink,
          fontSize: 9,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
