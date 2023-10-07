import 'package:flutter/material.dart';

void main() => runApp(GREENHUB());

class GREENHUB extends StatelessWidget {
  const GREENHUB({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "GREENHUB",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    CommunityWidget(),
    LocationWidget(),
    ChallengesWidget(),
  ];

  void _onItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Buenas Noches!", style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: _widgetOptions.elementAt(
            _selectedIndex), //Muestra la pantalla del wigget seleccionado
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Comunidad',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Localidad',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Desafios',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItem,
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Inicio'),
    );
  }
}

class CommunityWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Comunidad'),
    );
  }
}

class LocationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Localidad'),
    );
  }
}

class Challenge {
  final String title;
  final String description;

  Challenge({
    required this.title,
    required this.description,
  });
}

class ChallengesWidget extends StatelessWidget {
  // Supongamos que tienes una lista de desafíos como esta
  final List<Challenge> challenges = [
    Challenge(title: 'Desafío 1', description: 'Descripción del desafío 1'),
    Challenge(title: 'Desafío 2', description: 'Descripción del desafío 2'),
    Challenge(title: 'Desafío 3', description: 'Descripción del desafío 3'),
    Challenge(title: 'Desafío 4', description: 'Descripción del desafío 4'),
    Challenge(title: 'Desafío 5', description: 'Descripción del desafío 5'),
    Challenge(title: 'Desafío 6', description: 'Descripción del desafío 6'),
    Challenge(title: 'Desafío 7', description: 'Descripción del desafío 7'),
    Challenge(title: 'Desafío 8', description: 'Descripción del desafío 8'),
    Challenge(title: 'Desafío 9', description: 'Descripción del desafío 9'),
    Challenge(title: 'Desafío 10', description: 'Descripción del desafío 10'),
    // Agrega más desafíos según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: challenges.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: EdgeInsets.all(5.0), // Margen entre las tarjetas
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
          ),
          elevation: 4.0, // Elevación de la tarjeta
          child: ListTile(
            title: Text(challenges[index].title),
            subtitle: Text(challenges[index].description),
            // Agrega más contenido de la tarjeta según sea necesario
          ),
        );
      },
    );
  }
}
