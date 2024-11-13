import 'package:flutter/material.dart';
import 'profil.dart'; // Importez le fichier profil.dart

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Daouda"),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Barre de recherche sans contour
            TextField(
              decoration: InputDecoration(
                hintText: "Rechercher...",
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
                filled: true,
                fillColor: Colors
                    .grey[200], // Couleur de fond de la barre de recherche
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10), // Ajuste l'espacement
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Aperçu des tâches",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                _buildStatusCard("Terminés", "02", Colors.grey[200]!),
                SizedBox(width: 10),
                _buildStatusCard("En attente", "03", Colors.blue[300]!),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "En attentes",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildTaskItem("Réunion", "03-11-2024 17h-00", "Travail",
                      Colors.green, "Haute"),
                  _buildTaskItem("Shopping", "05-11-2024 10h-00", "Personnel",
                      Colors.red, "Moyenne"),
                  _buildTaskItem("Karaté", "02-11-2024 20h-00", "Sport",
                      Colors.grey, "Basse"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue[300],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Liste'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Agenda'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[300],
        onTap: (index) {
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          }
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
            right: 10.0), // Décale le bouton vers la droite
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat, // Place le bouton à droite
    );
  }

  Widget _buildStatusCard(String title, String count, Color color) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              count,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskItem(String title, String date, String category,
      Color categoryColor, String priority) {
    Color priorityColor;
    IconData priorityIcon;

    // Définir la couleur et l'icône en fonction de la priorité
    switch (priority) {
      case "Haute":
        priorityColor = Colors.red;
        priorityIcon = Icons.flag;
        break;
      case "Moyenne":
        priorityColor = Colors.orange;
        priorityIcon = Icons.flag;
        break;
      case "Basse":
      default:
        priorityColor = Colors.green;
        priorityIcon = Icons.flag;
        break;
    }

    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Checkbox(
          value: false,
          onChanged: (bool? value) {
            // Gérer l'état de la Checkbox
          },
        ),
        title: Text(title),
        subtitle: Text(date),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                category,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(width: 8),
            Icon(priorityIcon,
                color:
                    priorityColor), // Flag de priorité à droite du texte de catégorie
          ],
        ),
      ),
    );
  }
}
