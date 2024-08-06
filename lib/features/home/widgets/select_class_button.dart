import 'package:buzzy_mobile/features/home/widgets/buzzy_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/providers/shared_providers.dart';

class SelectClassButton extends ConsumerStatefulWidget {
  const SelectClassButton({super.key});

  @override
  ConsumerState<SelectClassButton> createState() => _SelectClassButtonState();
}

class _SelectClassButtonState extends ConsumerState<SelectClassButton> {
  final TextEditingController classUrlTextController = TextEditingController();
  @override
  void dispose() {
    classUrlTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BuzzyButton(
      onPressed: () {
        showModalBottomSheet<void>(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('IZBERI URNIK'),
                        const SizedBox(height: 16),
                        TextField(
                          controller: classUrlTextController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Vnesi povezavo do urnika',
                          ),
                        ),
                        BuzzyButton(
                            onPressed: () {
                              ref
                                  .read(classUrlProvider.notifier)
                                  .setClassUrl(classUrlTextController.text);
                              Navigator.of(context).pop();
                            },
                            text: 'POTRDI'),
                      ],
                    ),
                  ),
                ),
              );
            });
      },
      text: 'IZBERI RAZRED',
    );
  }
}
