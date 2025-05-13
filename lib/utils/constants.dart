import 'package:flutter/material.dart';

const List<String> filtersOnCourseScreen = [
  'All',
  'Popular',
  'New',
];

const List<RangeValues> filterDurations = [
  RangeValues(3, 8),
  RangeValues(8, 14),
  RangeValues(14, 20),
  RangeValues(20, 24),
  RangeValues(24, 30),
];

const String settingsPrivacyText = '''
⚙️ Settings & Privacy
👤 Account Settings
- Username & Email
  View or update your username and email address.

- Password
  Change your password to keep your account secure.

- Profile Photo
  Upload or update your profile picture.
 
📱 Notification Preferences
Stay informed about new courses, updates, discounts, and learning progress.

Choose which notifications you'd like to receive via email or in-app.

🔒 Privacy Settings
- Profile Visibility
  Choose who can see your profile, enrolled courses, and achievements.

- Learning Activity
  Control whether other users can view your learning progress and activity.
  
📄 Data and Security
- Download Your Data
  Download a complete copy of your account data in JSON format.

- Delete Account
  If you choose to leave the platform, you can permanently delete your account and all associated data.
''';

const String helpText = '''
🛟 Help Center
Welcome to the Help Center! Here you’ll find answers to common questions and guidance on how to get the most out of our platform.

📘 Getting Started
How do I create an account?
Simply tap Sign Up, enter your details, and verify your email to start learning.

How do I enroll in a course?
Browse the catalog, tap on a course, and click Enroll or Start Learning.

🧑‍🎓 My Learning
Where can I find my courses?
Go to My Courses from the main menu to access all your enrolled content.

How do I track my progress?
Each course shows a progress bar. Completed lessons are automatically marked.

Can I download lessons?
Some courses offer downloadable materials for offline use — look for the download icon.

🛠️ Account & Settings
How do I update my profile?
Navigate to Settings → Account, where you can change your username, photo, or password.

I forgot my password — what now?
Tap Forgot Password on the login screen and follow the instructions to reset it.

💳 Payments & Subscriptions
How do I pay for a course?
Choose a course, tap Buy Now, and follow the secure checkout process.

Can I get a refund?
Refunds are available within 14 days if the course hasn’t been completed. Contact support for help.

🧾 Certificates
Do I get a certificate after completing a course?
Yes! Once you finish all lessons and quizzes, your certificate will be available for download or sharing.

📩 Need More Help?
Contact Support
If your question wasn’t answered here, reach out to us via the Contact Us form or email:
📧 support@yourappname.com

We’re here to help you succeed in your learning journey!
''';
