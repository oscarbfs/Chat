import 'package:flutter/material.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nome',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                child: const Text('Entrar'),
                onPressed: () {},
              ),
              TextButton(
                child: const Text('Criar uma nova conta?'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
