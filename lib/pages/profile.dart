import 'package:flutter/material.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF3F2),
      body: Stack(
        children: [
          // ===== محتوى الصفحة القابل للتمرير =====
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 200), // عشان تترك مساحة للصورة
            child: Column(
              children: [
                const SizedBox(height: 60), // فراغ تحت الصورة
                const Text(
                  'Ahmed',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'amoqiebel736@gmail.com',
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD44035),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditProfilePage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.edit, size: 18),
                  label: const Text('edit profile'),
                ),
                const SizedBox(height: 20),

                // ===== مربعات الاحصائيات =====
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      _StatBox(icon: Icons.menu_book, label: '15 Courses'),
                      _StatBox(icon: Icons.star, label: '4.9 Reviews'),
                      _StatBox(icon: Icons.access_time, label: '21 Hours'),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // ===== خيارات القائمة =====
                const _OptionTile(
                  icon: Icons.dark_mode,
                  title: 'Dark Mode',
                  hasSwitch: true,
                ),
                const _OptionTile(
                  icon: Icons.payment,
                  title: 'Payment Details',
                ),
                const _OptionTile(
                  icon: Icons.notifications,
                  title: 'Notifications',
                ),
                const _OptionTile(
                  icon: Icons.star_border,
                  title: 'Rate & Review',
                ),
                const _OptionTile(icon: Icons.help_outline, title: 'Help'),
                const SizedBox(height: 40),
              ],
            ),
          ),

          // ===== AppBar متدرج =====
          Container(
            height: 150,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.07, -0.06),
                end: Alignment(0.65, 0.87),
                colors: [Color(0xFFD44035), Color(0xFFF16055)],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            alignment: const Alignment(0, 0.4),
            child: const Text(
              'Profile',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          // ===== صورة البروفايل وسط الـ AppBar والـ body =====
          Positioned(
            top: 120,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: const CircleAvatar(
                radius: 46,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// مربع احصائيات
class _StatBox extends StatelessWidget {
  final IconData icon;
  final String label;
  const _StatBox({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFFD44035),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

// عنصر خيار قائمة
class _OptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool hasSwitch;
  const _OptionTile({
    required this.icon,
    required this.title,
    this.hasSwitch = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFFD44035)), // أيقونات باللون الأسود
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      trailing: hasSwitch
          ? Switch(
              value: false,
              activeThumbColor: const Color(0xFFD44035),
              onChanged: (val) {},
            )
          : const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Color(0xFFD44035),
            ),
      onTap: () {},
    );
  }
}
