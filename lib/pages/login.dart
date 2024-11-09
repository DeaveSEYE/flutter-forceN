import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:listo/pages/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F4F9),
        // title: const Text('Retour'),
      ),
      body: Container(
        color: const Color(0xFFF1F4F9), // Définir la couleur d'arrière-plan ici
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Ajoutez le SingleChildScrollView ici
          child: Form(
            child: Column(
              children: <Widget>[
                const Text(
                  'Se Connecter',
                  style: TextStyle(
                    color: Color(0xFF6C9FEE), // Couleur du texte
                    fontWeight: FontWeight.bold,
                    fontSize: 15, // Taille du texte
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.lock,
                    size: 150, // Taille de l'icône agrandie
                    color: Color(0xFF6C9FEE), // Couleur de l'icône
                  ),
                  onPressed: () {
                    // Naviguer en arrière si besoin
                    // Navigator.pop(context); // retour en arrière
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nom d\'utilisateur', // Le texte du label
                    hintText:
                        'Entrez votre nom d\'utilisateur', // Le texte du placeholder
                    filled: true, // Définit que le champ de texte a un fond
                    fillColor: Colors.white, // Fond blanc
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Coins arrondis pour le champ de texte
                      borderSide: BorderSide(
                          color: Colors.grey.shade300), // Couleur de la bordure
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors
                              .blue), // Couleur de la bordure quand le champ est focalisé
                    ),
                    prefixIcon: const Icon(
                      Icons.person, // Icône utilisateur
                      color: Colors.grey, // Couleur grise pour l'icône
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mot de passe', // Le texte du label
                    hintText:
                        'Entrez votre mot de passe', // Le texte du placeholder
                    filled: true, // Définit que le champ de texte a un fond
                    fillColor: Colors.white, // Fond blanc
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Coins arrondis pour le champ de texte
                      borderSide: BorderSide(
                          color: Colors.grey.shade300), // Couleur de la bordure
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors
                              .blue), // Couleur de la bordure quand le champ est focalisé
                    ),
                    prefixIcon: const Icon(
                      Icons.lock, // Icône de verrouillage (mot de passe)
                      color: Colors.grey, // Couleur grise pour l'icône
                    ),
                  ),
                  obscureText: true, // Cacher le texte pour le mot de passe
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6C9FEE),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Pas de coins arrondis
                    ), // Couleur de fond du bouton
                  ),
                  onPressed: () {
                    // Action pour le bouton S'inscrire (à définir si nécessaire)
                  },
                  child: const Text(
                    'Connexion',
                    style: TextStyle(
                      color: Colors.white, // Couleur du texte cliquable
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Ou'),
                SignInButton(
                  Buttons.Google,
                  text: "Connexion avec Google",
                  onPressed: () {
                    // Action pour la connexion avec Google (à définir si nécessaire)
                  },
                ),
                const SizedBox(height: 10),
                SignInButton(
                  Buttons.Apple,
                  text: "Connexion avec Apple",
                  onPressed: () {
                    // Action pour la connexion avec Apple (à définir si nécessaire)
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Vous n\'avez pas de compte? '),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: const Text(
                        'S\'inscrire',
                        style: TextStyle(
                          color:
                              Color(0xFF6C9FEE), // Couleur du texte cliquable
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
