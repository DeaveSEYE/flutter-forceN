import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:listo/pages/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F9),
      appBar: AppBar(
          // automaticallyImplyLeading: false, // Désactive la flèche de retour
          backgroundColor: const Color(0xFFF1F4F9),
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.start, // Aligner à gauche
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                color: const Color(0xFF6C9FEE),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Text(
                'Retour',
                style: TextStyle(
                  color: Color(0xFF6C9FEE),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          title: const Text(
              ''), // Laisser vide si aucun titre au centre n'est requis
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0), // Espacement à droite
              child: Center(
                child: Text(
                  'Créer un compte',
                  style: TextStyle(
                    color: Color(0xFF6C9FEE), // Couleur du texte
                    fontWeight: FontWeight.bold,
                    fontSize: 15, // Taille du texte
                  ),
                ),
              ),
            ),
          ]),
      body: SingleChildScrollView(
        // Utilisation de SingleChildScrollView pour éviter l'overflow
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.supervised_user_circle_sharp,
                  size: 90,
                  color: Color(0xFF6C9FEE),
                ),
                onPressed: () {},
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'prénom & Nom',
                  hintText: 'Entrez votre nom complet',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email ou Nom utilisateur',
                  hintText: 'Entrez un identifiant',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  hintText: 'Entrez votre mot de passe',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Confirmer Mot de passe',
                  hintText: 'Entrez à nouveau',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6C9FEE),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "S'inscrire",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text('Ou'),
              SignInButton(
                Buttons.Google,
                text: "S'inscrire avec Google",
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              SignInButton(
                Buttons.Apple,
                text: "S'inscrire avec Apple",
                onPressed: () {},
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Déjà inscrit? '),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: const Text(
                      'Se connecter',
                      style: TextStyle(
                        color: Color(0xFF6C9FEE),
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
    );
  }
}
