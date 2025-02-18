import 'package:flutter/material.dart';
import 'package:portfolio/data/models/project.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import 'package:universal_html/html.dart' as html;

class ProjectActions extends StatelessWidget {
  const ProjectActions({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (project.previewLink != null)
            Expanded(
              child: CustomButton(
                label: 'Details',
                backgroundColor: AppColors.primaryColor,
                onPressed: () {
                  showDetailsDialog(context, project);
                },
              ),
            ),
          if (project.githubRepoLink != null) ...[
            if (project.previewLink != null) const SizedBox(width: 18),
            project.githubRepoLink == "Null"
                ? Expanded(
                    child: CustomButton(
                      label: '',
                      borderColor: AppColors.primaryLight,
                      onPressed: () {},
                    ),
                  )
                : project.previewLink == "link"
                    ? Expanded(
                        child: CustomButton(
                          label: 'Project Link',
                          borderColor: AppColors.primaryColor,
                          onPressed: () {
                            html.window.open(project.githubRepoLink!, '_blank');
                          },
                        ),
                      )
                    : Expanded(
                        child: CustomButton(
                          label: 'Github',
                          borderColor: AppColors.primaryColor,
                          onPressed: () {
                            html.window.open(project.githubRepoLink!, '_blank');
                          },
                        ),
                      ),
          ],
          if (project.googlePlay != null) ...[
            if (project.previewLink != null || project.githubRepoLink != null) const SizedBox(width: 18),
            Expanded(
              child: CustomButton(
                label: 'play store',
                borderColor: AppColors.primaryColor,
                onPressed: () {
                  html.window.open(project.googlePlay!, '_blank');
                },
              ),
            ),
          ],
          if (project.previewLink == null && project.githubRepoLink == null && project.googlePlay == null)
            Expanded(
              child: CustomButton(
                label: 'No actions available',
                borderColor: AppColors.primaryColor,
                onPressed: () {},
              ),
            )
        ],
      ),
    );
  }

  void showDetailsDialog(BuildContext context, Project project) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Colors.transparent,
          child: Builder(
            builder: (context) {
              final width = MediaQuery.of(context).size.width;

              return Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white.withOpacity(0.9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                width: width > 600 ? 600 : width * 0.3, // Adjust width for web
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(12),
                          //   child: Image.asset(
                          //     project.imageUrl,
                          //     width: width * 0.2,
                          //     height: width * 0.2,
                          //     fit: BoxFit.contain,
                          //   ),
                          // ),
                          Image.asset(
                            project.imageUrl,
                            width: width * 0.2,
                            height: width * 0.2,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            project.description,
                            style: TextStyle(
                              fontSize: width < 600 ? 14 : 16,
                              color: Colors.black87,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: IconButton(
                        icon: const Icon(Icons.close, color: Colors.black),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
