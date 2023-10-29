import 'package:flutter/material.dart';
import 'package:plannerly/screens/widgets/task.dart';
import 'package:plannerly/utils/colors/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.menu_outlined,
                    size: 28,
                    color: AppColors.white,
                  ),
                  Icon(
                    Icons.notifications_outlined,
                    size: 28,
                    color: AppColors.white,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              const Text(
                "Hi, Jason",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              const Text(
                "Be productivity today",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: size.height * 0.038),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.backgroundLight,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search task',
                              hintStyle: TextStyle(
                                color: AppColors.grey,
                                fontSize: 18,
                              ),
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search_outlined,
                            size: 28,
                            color: AppColors.white.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.025),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.backgroundLight,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Task Progress",
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "30/40 task completed.",
                                style: TextStyle(
                                  color: AppColors.white.withOpacity(0.4),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            SizedBox(
                              height: size.height * 0.07,
                              width: size.height * 0.07,
                              child: CircularProgressIndicator(
                                value: 0.8,
                                strokeWidth: 7,
                                valueColor: const AlwaysStoppedAnimation(
                                    AppColors.buttonBlue),
                                backgroundColor:
                                    AppColors.white.withOpacity(0.2),
                                color: AppColors.white,
                                semanticsValue: "80%",
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.07,
                              width: size.height * 0.07,
                              child: Center(
                                child: Text(
                                  "80%",
                                  style: TextStyle(
                                    color: AppColors.white.withOpacity(0.8),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height * 0.25,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                      color: AppColors.backgroundLight,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0)
                          .copyWith(top: 12, bottom: 12),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Urgent Tasks Progress",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Center(
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      height: size.height * 0.1,
                                      width: size.height * 0.1,
                                      child: CircularProgressIndicator(
                                        value: 0.8,
                                        strokeWidth: 7,
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.red[400]),
                                        backgroundColor:
                                            AppColors.white.withOpacity(0.2),
                                        color: AppColors.white,
                                        semanticsValue: "80%",
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.1,
                                      width: size.height * 0.1,
                                      child: Center(
                                        child: Text(
                                          "80%",
                                          style: TextStyle(
                                            color: AppColors.white
                                                .withOpacity(0.8),
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              Center(
                                child: Text(
                                  "30/40",
                                  style: TextStyle(
                                    color: AppColors.white.withOpacity(0.4),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.25,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                      color: AppColors.backgroundLight,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0)
                          .copyWith(top: 12, bottom: 12),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Regular Tasks Progress",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Center(
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      height: size.height * 0.1,
                                      width: size.height * 0.1,
                                      child: CircularProgressIndicator(
                                        value: 0.5,
                                        strokeWidth: 7,
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.green[400]),
                                        backgroundColor:
                                            AppColors.white.withOpacity(0.2),
                                        color: AppColors.white,
                                        semanticsValue: "80%",
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.1,
                                      width: size.height * 0.1,
                                      child: Center(
                                        child: Text(
                                          "50%",
                                          style: TextStyle(
                                            color: AppColors.white
                                                .withOpacity(0.8),
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              Center(
                                child: Text(
                                  "5/10",
                                  style: TextStyle(
                                    color: AppColors.white.withOpacity(0.4),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.045),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Urgent Tasks",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View all',
                      style: TextStyle(
                        color: AppColors.buttonBlue,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Task(),
                itemCount: 2,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 15);
                },
              ),
              SizedBox(height: size.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Regular Tasks",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View all',
                      style: TextStyle(
                        color: AppColors.buttonBlue,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Task(),
                itemCount: 2,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 15);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
