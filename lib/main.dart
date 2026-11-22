import 'package:flutter/material.dart';

void main() {
  runApp(const HamodiAmkomApp());
}

class HamodiAmkomApp extends StatelessWidget {
  const HamodiAmkomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'حمودي_عمكم',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D0F17),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF4F8CFF),
          secondary: Color(0xFF9B5CFF),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String statusText = 'جاهز للعمل - أهلاً بك في حمودي_عمكم';

  void _updateStatus(String msg) {
    setState(() {
      statusText = msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'حمودي_عمكم',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF151926),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF171C2C),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFF2B3554)),
                ),
                child: Column(
                  children: [
                    const Icon(
                      Icons.sports_esports,
                      size: 48,
                      color: Color(0xFF4F8CFF),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'حمودي_عمكم',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      statusText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () => _updateStatus('تم تشغيل القسم الأول بنجاح'),
                icon: const Icon(Icons.play_arrow),
                label: const Text('بدء التشغيل'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: const Color(0xFF4F8CFF),
                  foregroundColor: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () => _updateStatus('إعدادات حمودي_عمكم مفعلة'),
                icon: const Icon(Icons.settings),
                label: const Text('الإعدادات والأدوات'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
