import 'package:flutter/material.dart';

const List<String> filterCategories = [
  'Design',
  'Painting',
  'Coding',
  'Music',
  'Visual identity',
  'Mathematics',
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
