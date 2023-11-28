import 'package:dw_barbershop/src/core/ui/widgets/hours_panel.dart';
import 'package:dw_barbershop/src/core/ui/widgets/week_days_panel.dart';
import 'package:flutter/material.dart';

class BarbershopRegisterPage extends StatelessWidget {
  const BarbershopRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar estabelecimento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 5),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Nome'),
                ),
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Email'),
                ),
              ),
              const SizedBox(height: 24),
              WeekDaysPanel(),
              const SizedBox(height: 24),
              HoursPanel(
                starTime: 7,
                endTime: 20,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: Size.fromHeight(56)),
                onPressed: () {},
                child: const Text('Cadastrar estabelecimento'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
