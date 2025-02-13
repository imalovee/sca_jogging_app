import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jogging_app/shared/app_colors.dart';
import 'package:jogging_app/shared/assets.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current joggin', style: TextStyle(fontSize: 18)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.gps_fixed),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: [
          // Background Map
          Positioned.fill(
            child: Image.asset(
              AppAssets.mapPng,
              fit: BoxFit.cover,
            ),
          ),

          // Mock Jogging Route Marker
          const Positioned(
            left: 50,
            top: 200,
            child: Icon(Icons.location_on, color: Colors.blue, size: 30),
          ),

          // Bottom Card with Stats
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.scaffoldColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Running time",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "01:09:44",
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w600,
                        color: AppColors.appBlack),
                  ),
                  const SizedBox(height: 15),

                  // Stat Row with Background
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset('assets/svgs/runner_half.svg', height: 24, width: 24),

                        _buildStatItem(AppAssets.runnerHalf, "10,9", "km"),
                        _divider(),
                        _buildStatItem(AppAssets.image9Svg, "539", "kcal"),
                        _divider(),
                        _buildStatItem(AppAssets.image12Svg, "12,3", "km/hr"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Pause Button Inside the Card
          Positioned(
            bottom: 165,
            right: 35,
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: AppColors.appColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.pause, size: 28, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String assetPath, String value, String unit) {
    return Column(
      children: [
        SvgPicture.asset(assetPath, height: 24, width: 24),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.appBlack,
          ),
        ),
        Text(
          unit,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _divider() {
    return Container(
      height: 40,
      width: 1,
      color: Colors.grey.shade400,
    );
  }
}
