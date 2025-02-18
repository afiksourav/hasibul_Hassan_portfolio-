import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../data/models/project.dart';
import 'project_actions.dart';
import 'project_image.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.primaryLight,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisSize: MainAxisSize.min, // Ensures dynamic height
        children: [
          AspectRatio(
            aspectRatio: 16 / 9, // Adjust the ratio based on your UI needs
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ProjectImage(imageUrl: project.imageUrl),
            ),
          ),

          const SizedBox(height: 16),
          FittedBox(
            child: Text(
              project.name,
              style: AppStyles.s24.copyWith(color: AppColors.primaryColor),
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: AutoSizeText(
              project.description.split(' ').take(15).join(' ') + (project.description.split(' ').length > 20 ? '...' : ''),
              style: AppStyles.s18,
              minFontSize: 12,
              maxLines: 5,
            ),
          ),

          const SizedBox(height: 15),
          ProjectActions(project: project) //afik
        ],
      ),
    );
  }
}
