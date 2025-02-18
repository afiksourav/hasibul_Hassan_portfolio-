import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_enums.dart';
import 'package:portfolio/core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';

// class WorkExperience extends StatefulWidget {
//   const WorkExperience({super.key});

//   @override
//   State<WorkExperience> createState() => _WorkExperienceState();
// }

// class _WorkExperienceState extends State<WorkExperience> {
//   Color itemColor = AppColors.white;
//   void _onExit(event) {
//     setState(() => itemColor = AppColors.white);
//   }

//   void _onEnter(event) {
//     setState(() => itemColor = AppColors.primaryColor);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           alignment: Alignment.centerLeft,
//           child: Text(
//             "My Work Experience",
//             style: AppStyles.s32,
//           ),
//         ),
//         const SizedBox(height: 32),
//         Container(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 15,
//             vertical: 10,
//           ),
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: itemColor,
//               width: 3,
//             ),
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: MouseRegion(
//             onEnter: _onEnter,
//             onExit: _onExit,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // SvgPicture.asset(
//                 //   widget.service.logo.toLowerCase().endsWith('.svg') ? widget.service.logo : 'assets/images/default.svg', // SVG না হলে ডিফল্ট SVG দেখাবে
//                 //   height: context.width < DeviceType.mobile.getMinWidth() ? 40 : 56,
//                 //   placeholderBuilder: (context) => Image.asset(widget.service.logo, height: context.width < DeviceType.mobile.getMinWidth() ? 40 : 56),
//                 // ),
//                 const SizedBox(height: 16),
//                 FittedBox(
//                   child: Text(
//                     "afik",
//                     style: AppStyles.s24.copyWith(color: itemColor),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),

//                 const SizedBox(height: 16),
//                 AutoSizeText(
//                   "description",
//                   style: AppStyles.s17,
//                   minFontSize: 8,
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

// Work Experience Model
class Experience {
  final String company;
  final String duration;
  final String position;
  final List<String> responsibilities;

  Experience({
    required this.company,
    required this.duration,
    required this.position,
    required this.responsibilities,
  });
}

class WorkExperience extends StatefulWidget {
  const WorkExperience({super.key});

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  Color itemColor = AppColors.white;

  void _onExit(PointerExitEvent event) {
    setState(() => itemColor = AppColors.white);
  }

  void _onEnter(PointerEnterEvent event) {
    setState(() => itemColor = AppColors.primaryColor);
  }

  // Work Experience List

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Container(
    //       alignment: Alignment.centerLeft,
    //       child: Text(
    //         "My Work Experience",
    //         style: AppStyles.s32,
    //       ),
    //     ),
    //     const SizedBox(height: 32),
    //     Column(
    //       children: experiences.map((experience) {
    //         return MouseRegion(
    //           onEnter: _onEnter,
    //           onExit: _onExit,
    //           child: AnimatedContainer(
    //             duration: const Duration(milliseconds: 200),
    //             margin: const EdgeInsets.only(bottom: 20),
    //             padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    //             decoration: BoxDecoration(
    //               border: Border.all(color: itemColor, width: 3),
    //               borderRadius: BorderRadius.circular(16),
    //             ),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 const SizedBox(height: 16),
    //                 Text(
    //                   experience.company,
    //                   style: AppStyles.s24.copyWith(color: itemColor),
    //                   textAlign: TextAlign.left,
    //                 ),
    //                 const SizedBox(height: 8),
    //                 Text(
    //                   experience.duration,
    //                   style: AppStyles.s17.copyWith(fontStyle: FontStyle.italic),
    //                 ),
    //                 const SizedBox(height: 16),
    //                 Text(
    //                   experience.position,
    //                   style: AppStyles.s24.copyWith(fontWeight: FontWeight.bold),
    //                 ),
    //                 const SizedBox(height: 8),
    //                 Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: experience.responsibilities.map((task) {
    //                     return Padding(
    //                       padding: const EdgeInsets.only(bottom: 4),
    //                       child: Row(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           const Text("• ", style: TextStyle(fontSize: 16)),
    //                           Expanded(
    //                             child: AutoSizeText(
    //                               task,
    //                               style: AppStyles.s17,
    //                               minFontSize: 10,
    //                               textAlign: TextAlign.justify,
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     );
    //                   }).toList(),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         );
    //       }).toList(),
    //     ),
    //   ],
    // );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "My Work Experience",
            style: AppStyles.s32.copyWith(fontWeight: FontWeight.bold, color: AppColors.primaryColor),
          ),
        ),
        const SizedBox(height: 32),
        Column(
          children: experiences.map((experience) {
            return MouseRegion(
              onEnter: _onEnter,
              onExit: _onExit,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  color: itemColor == AppColors.white ? AppColors.appBarColor : Color(0xFFBB86FC).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: itemColor == AppColors.white ? Colors.transparent : AppColors.primaryColor.withOpacity(0.2),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      experience.company,
                      style: AppStyles.s24.copyWith(color: itemColor, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      experience.duration,
                      style: AppStyles.s17.copyWith(fontStyle: FontStyle.italic, color: Colors.grey),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      experience.position,
                      style: AppStyles.s24.copyWith(fontWeight: FontWeight.bold, color: AppColors.primaryColor),
                    ),
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: experience.responsibilities.map((task) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 4,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.check_circle, color: Color(0xFFBB86FC), size: 20),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  task,
                                  style: TextStyle(color: Colors.white),
                                ),
                                // child: AutoSizeText(
                                //   task,
                                //   style: AppStyles.s17,
                                //   minFontSize: 10,
                                //   maxFontSize: 17, // Ensuring maximum font size for readability
                                //   textAlign: TextAlign.justify,
                                //   overflow: TextOverflow.visible, // Ensures text does not get truncated
                                // ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  final List<Experience> experiences = [
    Experience(
      company: "Transcom Ltd",
      duration: "December 2024 - Now",
      position: "Software Engineer",
      responsibilities: [
        "As a Software Engineer at Transcom Ltd.I specialize in mobile application development, utilizing Flutter to create efficient and user-friendly cross-platform apps. In the Technology Division, I work closely with a multidisciplinary team to deliver innovative solutions that align with the company’s diverse business interests. Transcom Ltd is a leading conglomerate in Bangladesh with over a century of history and operations across 29 countries, spanning industries like pharmaceuticals, consumer goods, electronics, and media. My work plays a key role in driving technological advancements within the organization."
      ],
    ),
    Experience(
      company: "Dream71 Bangladesh Ltd",
      duration: "December 2023 - December 2024 ( 1+ years Experience )",
      position: "Mobile Apps Developer (Android & iOS)",
      responsibilities: [
        "As a Mobile Apps Developer, I led the end-to-end development of Android and iOS applications, ensuring stability and maintainability. I implemented the Bloc pattern for efficient state management and collaborated with the UX team to improve user interfaces and navigation. I integrated Google Maps and location tracking in key projects like the Village Court GPS Monitoring System and Bangladesh Police Online GD App. I ensured project stability, adhered to UNDP timelines, and maintained high coding standards. Additionally, I promoted cross-functional collaboration and documented best practices within the team."
      ],
    ),
    Experience(
      company: "eAppair Ltd ",
      duration: "February 2022 - November 2023 ( 1.8 years Experience )",
      position: "Software Engineer",
      responsibilities: [
        "I was responsible for developing and maintaining Flutter applications for both Android and iOS, utilizing the Bloc pattern for efficient state management. I collaborated closely with the UX/UI team to ensure a smooth and bug-free user experience. Additionally, I implemented background services to enhance app functionality and performance.\nTo make the applications more accessible, I integrated localization for multilingual support. One of my key contributions was to the NBR VAT system app, a widely adopted solution used by business institutions across Dhaka City.",
      ],
    ),
  ];
}
