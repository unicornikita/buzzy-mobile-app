import 'package:buzzy_mobile/core/models/class_subject.dart';
import 'package:buzzy_mobile/shared/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/providers/shared_providers.dart';
import 'buzzy_button.dart';

class ClassTile extends ConsumerStatefulWidget {
  const ClassTile({
    super.key,
    required this.isNextClass,
    this.classSubject,
  });
  final bool isNextClass;
  final ClassSubject? classSubject;

  @override
  ConsumerState<ClassTile> createState() => _ClassTileState();
}

class _ClassTileState extends ConsumerState<ClassTile> {
  final TextEditingController eventNameController = TextEditingController();
  final TextEditingController eventDetailsController = TextEditingController();

  @override
  void dispose() {
    eventDetailsController.dispose();
    eventNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color textColor =
        widget.isNextClass ? Colors.black : Theme.of(context).disabledColor;
    final Color containerColor = widget.isNextClass
        ? Theme.of(context).primaryColor
        : Theme.of(context).hintColor;
    final ThemeData theme = Theme.of(context);
    String? className;
    String? classDetails;
    if (widget.classSubject != null) {
      className = widget.classSubject!.className.isNotEmpty
          ? widget.classSubject!.className
          : 'PROSTO';
      classDetails = widget.classSubject != null
          ? '${widget.classSubject?.professor} - ${widget.classSubject?.classroom}'
          : '';
    }

    return InkWell(
      onTap: () {
        if (className == 'PROSTO' || className == 'Počitnice') {
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
                          const Text('DODAJ DOGODEK'),
                          const SizedBox(height: 16),
                          TextField(
                            controller: eventNameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Ime dogodka',
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextField(
                            controller: eventDetailsController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Podrobnosti',
                            ),
                          ),
                          BuzzyButton(
                              onPressed: () {
                                ref
                                    .read(selectedClassSubjectProvider.notifier)
                                    .selectClassSubject(widget.classSubject!);

                                ref
                                    .read(selectedClassSubjectProvider.notifier)
                                    .updateFreePeriod(
                                      eventNameController.text,
                                      professor: eventDetailsController.text,
                                    );
                                Navigator.of(context).pop();
                              },
                              text: 'POTRDI'),
                        ],
                      ),
                    ),
                  ),
                );
              });
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          border: Border.all(color: containerColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.classSubject != null
              ? <Widget>[
                  Text(
                    '${formatDate(widget.classSubject!.classDuration.startTime)} - ${formatDate(widget.classSubject!.classDuration.endTime)}',
                    style:
                        theme.textTheme.bodyMedium?.copyWith(color: textColor),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    className!,
                    style:
                        theme.textTheme.titleMedium?.copyWith(color: textColor),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    classDetails!,
                    style:
                        theme.textTheme.bodyMedium?.copyWith(color: textColor),
                  ),
                ]
              : <Widget>[
                  const SizedBox(height: 8),
                  Text('Urnik ni izbran', style: theme.textTheme.titleMedium),
                  const SizedBox(height: 8),
                ],
        ),
      ),
    );
  }
}
