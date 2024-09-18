import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../provider/age_validation_providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataRef = ref.watch(ageValidationProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Your age'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your Age',
              ),
              onChanged: (value) {
                if(value.isNotEmpty){
                  ref
                      .read(ageValidationProvider.notifier).checkValidation(int.parse(value));
                }

              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(dataRef.toString()),
        ],
      ),
    );
  }
}
