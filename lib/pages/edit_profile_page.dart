import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF3F2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Edit Profile',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // صورة البروفايل
            CircleAvatar(
              radius: 50,
              backgroundImage: const AssetImage('assets/images/profile.png'),
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 16),
            const Text(
              'Ahmed',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'amoqiebel736@gmail.com',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 30),

            // عناصر الإعدادات
            const _EditOption(
              icon: Icons.person_outline,
              title: 'Edit Name',
            ),
            const _EditOption(
              icon: Icons.lock_outline,
              title: 'Change Password',
            ),
            const _EditOption(
              icon: Icons.security,
              title: 'Security and Privacy',
            ),

            const SizedBox(height: 40),

            // زر تسجيل الخروج
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD44035),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                // ضع كود تسجيل الخروج هنا
              },
              child: const Text(
                'Log out',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// عنصر الخيار في الصفحة
class _EditOption extends StatelessWidget {
  final IconData icon;
  final String title;
  const _EditOption({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFFD44035)),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.arrow_forward_ios,
          size: 16, color: Color(0xFFD44035)),
      onTap: () {
        // اضف التنقل لصفحات التعديل الخاصة بكل خيار
      },
    );
  }
}
