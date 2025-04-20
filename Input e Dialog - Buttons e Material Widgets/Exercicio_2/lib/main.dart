import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAB BottomAppBar',
      theme: ThemeData(primarySwatch: Colors.pink),
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
  int selectedTabIndex = 0;
  bool showFabMenu = false;

  final TextStyle pageTextStyle = const TextStyle(
    fontSize: 20,
    color: Colors.pink,
  );

  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      Center(child: Text('Página: Menu', style: pageTextStyle)),
      Center(child: Text('Página: Camadas', style: pageTextStyle)),
      Center(child: Text('Página: Painel', style: pageTextStyle)),
      Center(child: Text('Página: Info', style: pageTextStyle)),
      Center(child: Text('Página: SMS', style: pageTextStyle)),
      Center(child: Text('Página: Email', style: pageTextStyle)),
      Center(child: Text('Página: Telefone', style: pageTextStyle)),
    ];
  }

  void _onTabSelected(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }

  void _onFabTapped(int index) {
    setState(() {
      selectedTabIndex = index + 4; // 0 = SMS, 1 = Email, 2 = Telefone → índices 4, 5, 6
      showFabMenu = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAB + BottomAppBar', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.pink,
      ),
      body: Stack(
        children: [
          pages[selectedTabIndex],
          if (showFabMenu)
            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildMiniFab(icon: Icons.sms, index: 0),
                  const SizedBox(width: 16),
                  _buildMiniFab(icon: Icons.mail, index: 1),
                  const SizedBox(width: 16),
                  _buildMiniFab(icon: Icons.phone, index: 2),
                ],
              ),
            ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {
          setState(() {
            showFabMenu = !showFabMenu;
          });
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.white,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBottomBarIcon(Icons.menu, 0),
              _buildBottomBarIcon(Icons.layers, 1),
              const SizedBox(width: 48), // espaço para o FAB
              _buildBottomBarIcon(Icons.dashboard, 2),
              _buildBottomBarIcon(Icons.info, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMiniFab({required IconData icon, required int index}) {
    return FloatingActionButton(
      heroTag: 'fab-$index',
      mini: true,
      backgroundColor: Colors.pink,
      child: Icon(icon, color: Colors.white),
      onPressed: () {
        _onFabTapped(index);
        setState(() => showFabMenu = false);
      },
    );
  }

  Widget _buildBottomBarIcon(IconData icon, int index) {
    final isSelected = index == selectedTabIndex;
    return IconButton(
      icon: Icon(icon, color: isSelected ? Colors.pink : Colors.grey),
      onPressed: () => _onTabSelected(index),
    );
  }
}
