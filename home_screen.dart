import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/input_cart.dart';
import '../widgets/topic_chip.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFe0f7fa), Color(0xFF80deea)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // ✅ Header
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'AR Learning Assistant',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.indigo[900],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(icon: const Icon(Icons.history_rounded, color: Colors.indigo), onPressed: () {}),
                          IconButton(icon: const Icon(Icons.settings_rounded, color: Colors.indigo), onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ),

                // ✅ Hero Banner
                Container(
                  height: 200,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage('https://images.unsplash.com/photo-1600880292203-757bb62b4baf?auto=format&fit=crop&w=800&q=60'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 12, offset: const Offset(0, 6))],
                  ),
                ),
                const SizedBox(height: 20),

                // ✅ Quick Action Cards
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      _buildCardButton(context, icon: Icons.school_rounded, title: 'Learn', color: Colors.indigo),
                      const SizedBox(width: 16),
                      _buildCardButton(context, icon: Icons.quiz_rounded, title: 'Quiz', color: Colors.teal),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      _buildCardButton(context, icon: Icons.assignment_rounded, title: 'Assignments', color: Colors.orange),
                      const SizedBox(width: 16),
                      _buildCardButton(context, icon: Icons.forum_rounded, title: 'Community', color: Colors.pink),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                // ✅ Topics Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Topics', style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo[900])),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: const [
                      TopicChip(label: 'AR Basics'),
                      TopicChip(label: '3D Models'),
                      TopicChip(label: 'Programming'),
                      TopicChip(label: 'Simulations'),
                      TopicChip(label: 'AI Integration'),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                // ✅ Input Cards Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      InputCard(icon: Icons.chat_rounded, title: 'Ask a Question', subtitle: 'Get AI-powered answers instantly', color: Colors.indigo, onTap: () {}),
                      const SizedBox(height: 16),
                      InputCard(icon: Icons.note_rounded, title: 'Notes', subtitle: 'Save your learning progress', color: Colors.teal, onTap: () {}),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardButton(BuildContext context, {required IconData icon, required String title, required Color color}) {
    return Expanded(
      child: GestureDetector(
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$title clicked'))),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.4), blurRadius: 12, offset: const Offset(0, 6))],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.white),
              const SizedBox(height: 10),
              Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}