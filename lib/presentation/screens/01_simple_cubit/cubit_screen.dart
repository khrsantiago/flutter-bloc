import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/config.dart';
import '../../blocs/blocs.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final usernameCubit = context.watch<UsernameCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit'),
      ),
      body: Center(
        // child: Text('Fernando Herrera'),
        // child: Text(usernameCubit.state),
        child: BlocBuilder<UsernameCubit, String>(
          builder: (context, state) {
            return Text(state);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // usernameCubit
          context.read<UsernameCubit>()
          //
          .setUsername(
            RandomGenerator.getRandomName(),
          );
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
