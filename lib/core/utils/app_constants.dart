import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  // static const List<CustomService> services = [
  //   CustomService(
  //     service: 'Android App',
  //     logo: AppAssets.androidLogo,
  //     description: 'I am a Junior mobile developer. I have experience using Dart and Flutter Framework.',
  //   ),
  //   CustomService(
  //     service: 'UI & UX DESIGNING',
  //     logo: AppAssets.uiDesignLogo,
  //     description: 'I design beautiful web interfaces with Figma and Adobe XD. I design beautiful web interfaces with Figma and Adobe XD.',
  //   ),
  //   CustomService(
  //     service: 'WEB SCRAPING',
  //     logo: AppAssets.scrappingLogo,
  //     description: 'I can collect content and data from the internet then manipulate and analyze as needed.',
  //   ),
  // ];

  static const List<CustomService> services = [
    CustomService(
      service: 'Android App Development',
      logo: AppAssets.androidLogo,
      description: 'I develop high-performance Android applications using Flutter, ensuring smooth and engaging user experiences.',
    ),
    CustomService(
      service: 'IOS App Development',
      logo: AppAssets.iosLogo,
      description: 'I build scalable and user-friendly iOS applications with Flutter, optimized for Apple’s ecosystem.',
    ),
    CustomService(
      service: 'Web Development',
      logo: AppAssets.webLogo,
      description: 'I create modern and responsive web applications using Flutter and other web technologies.',
    ),
    CustomService(
      service: 'Desktop App Development',
      logo: AppAssets.desktopLogo,
      description: 'I develop cross-platform desktop applications with Flutter, tailored for performance and usability.',
    ),
    CustomService(
      service: 'UI/UX Design',
      logo: AppAssets.uiDesignLogo,
      description: 'I design intuitive and aesthetically pleasing user interfaces using Figma & Adobe XD.',
    ),
  ];

  static const List<Project> projects = [
    Project(
      name: 'Village Court GPS Monitoring System (UNDP)',
      imageUrl: 'assets/images/undp.jpg',
      description:
          "The system enhances village court operations with Google Maps integration, robust location tracking, and offline monitoring. It ensures secure user authentication, background services, and employee management, enabling seamless supervision and improved transparency in court activities, even in areas with limited connectivity",
      githubRepoLink: 'https://github.com/afiksourav/UNDP-AVCB-GEMS-Flutter-main.git',
      previewLink: 'https://youtu.be/HSIosFd6Sys',
    ),
    Project(
      name: 'Bangladesh police Online GD App',
      imageUrl: 'assets/images/online_gd.jpg',
      description:
          'Online GD App enables users to file General Diaries (GD) securely and efficiently.The app offers authentication to ensure that only authorized individuals can access the system. Users can submit incident reports directly through the app, attaching any relevant documents with ease. Tracking and monitoring features allow users to check the progress of their GD and receive updates in real-time. The app prioritizes data security, keeping all personal and report information safe from unauthorized access. Accessibility features ensure that the app is easy to use for all individuals, and the built-in search and reporting tools help in quickly retrieving filed GDs and generating necessary reports.',
      githubRepoLink: 'Null',
      previewLink: 'https://youtu.be/MuuVjqrR49g',
    ),
    Project(
      name: 'NBR Vat Collection Pos System (Govt Project)',
      imageUrl: 'assets/images/IMG_8372.PNG',
      description:
          'The NBR VAT Collection POS System is a specialized solution designed to facilitate government VAT collection while helping sellers efficiently manage their sales. This system ensures compliance with VAT regulations by automatically calculating and recording VAT for every transaction. It includes features such as Quick Items Sales for fast transactions, Single and Bulk Item Entry for seamless product management, and an Item Discount Feature for flexible pricing options.With Stock Movement Tracking and Exchange Items functionality, businesses can efficiently monitor inventory changes. The system also supports Offline Sales, allowing transactions even without an internet connection. Additionally, it provides comprehensive sales reports, including X Report, Z Report, and Sales Summary, which help businesses track their sales performance and meet regulatory requirements. The integration of background services ensures smooth operation, while the Employee Management module helps businesses oversee staff activities efficiently.',
      githubRepoLink: 'https://t.ly/QZnOO',
      previewLink: 'link',
    ),
    Project(
      name: 'Quizva: The Ultimate Quiz Experience ',
      imageUrl: 'assets/images/quiz12.jpg',
      description:
          'Quizva is a powerful quiz application designed for interactive learning and competition. It offers Quiz Creation and Management, allowing users to create and organize quizzes easily. With User Authentication, participants can securely log in and track their progress. The app supports Real-time Quiz Participation with Scoring and Leaderboard features for a competitive experience.Quizva ensures Multi-platform Accessibility, making it available across different devices. It supports diverse Question Types and provides Progress Tracking to help users improve. Additionally, the Social Sharing feature allows users to share achievements, while the User-Friendly Interface ensures a seamless experience.',
      githubRepoLink: 'https://github.com/afiksourav/quiz_project.git',
      previewLink: 'https://youtu.be/3nU_dYjsPsg',
    ),
    Project(
      name: 'Restaurant food delivery System',
      imageUrl: 'assets/images/food delivary.PNG',
      description:
          'The Restaurant Food Delivery Mobile Application is a user-friendly platform designed to enhance the online food ordering experience. It seamlessly loads food items from an API, ensuring that users always have access to the latest menu updates. The app features an intuitive Add to Cart option, allowing customers to easily select and manage their desired food items before placing an order. Additionally, the Favorite Food Feature enables users to save their preferred dishes for quick access in future orders.For a smooth ordering process, the app includes a Checkout system that ensures hassle-free payment and order confirmation. Users can also manage their details through the User Profile section, making it convenient to track orders and update personal information. With a Responsive UI Design, the application delivers a seamless experience across different devices, ensuring a visually appealing and easy-to-navigate interface for all users',
      githubRepoLink: 'https://github.com/afiksourav/Restaurant-food-delivery-services.git',
      previewLink: 'https://youtu.be/s1KFdBKNFig',
    ),
    Project(
      name: 'Chatting App With Firebase',
      imageUrl: 'assets/images/chatapp.PNG',
      description:
          'The "Chatting App with Firebase" is a real-time messaging application that allows users to log in and register for an account, ensuring secure authentication through Firebase. Users can send and receive messages, with their chat history saved for easy reference. The app also includes features like sending and receiving friend requests, enabling users to connect with others. Additionally, users can search for other individuals to start conversations, and they have the ability to delete users from their friend list or block them as necessary. This project utilizes Firebase for backend functionality, ensuring smooth communication and user management.',
      githubRepoLink: 'https://github.com/afiksourav/ChattingApp-using-FIrebase.git',
      previewLink: 'https://youtu.be/wK9Y9BhP190',
    ),
    Project(
      name: 'Bangladesh police Rail Seba App',
      imageUrl: 'assets/images/rail.jpg',
      description:
          '"Rail Seba" is an innovative and user-friendly app designed to give the public a powerful tool to report any issues encountered with rail services. With this app, users can easily file complaints and upload supporting evidence such as photos, audio, and videos to substantiate their claims. To ensure secure and accurate submissions, users are required to register using their national ID. The app also allows police users to view and assess the complaints, taking necessary actions to address and resolve the issues quickly. Additionally, "Rail Seba" offers a real-time train location tracking feature, providing users with up-to-date information about their train whereabouts. Users can also monitor the progress of their complaints, receiving notifications on their resolution status, making the app an essential tool for enhancing the transparency, efficiency, and overall experience of rail services.',
      githubRepoLink: 'Null',
      previewLink: 'link',
    ),
  ];
}
