import 'package:buzzy_mobile/core/models/class_subject.dart';
import 'package:buzzy_mobile/features/home/widgets/buzzy_button.dart';
import 'package:buzzy_mobile/shared/providers/shared_providers.dart';
import 'package:buzzy_mobile/shared/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    final bool isNextClass = widget.isNextClass;
    final Color textColor =
        isNextClass ? Colors.black : Theme.of(context).disabledColor;
    final Color containerColor = isNextClass
        ? Theme.of(context).primaryColor
        : Theme.of(context).hintColor;

    String classDetails = '';
    String className = '';

    if (widget.classSubject != null) {
      final ClassSubject classSubject = widget.classSubject!;
      final String classNameValue =
          classSubject.className.isNotEmpty ? classSubject.className : 'PROSTO';

      className = classNameValue;

      if (classNameValue.isNotEmpty &&
          classNameValue != 'PROSTO' &&
          classNameValue != 'Počitnice') {
        classDetails = '${classSubject.professor}, ${classSubject.classroom}';
      }
    }

    return InkWell(
      onTap: () {
        if (className == 'PROSTO' ||
            widget.classSubject?.classStatusInt?.index == 5) {
          _buildBottomSheet();
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border.all(color: containerColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.classSubject != null
                ? _buildClassDetails(textColor, className, classDetails)
                : _buildNoScheduleSelected()),
      ),
    );
  }

  List<Widget> _buildNoScheduleSelected() {
    return <Widget>[
      const SizedBox(height: 8),
      Text('Urnik ni izbran', style: Theme.of(context).textTheme.titleMedium),
      const SizedBox(height: 8),
    ];
  }

  List<Widget> _buildClassDetails(
    Color textColor,
    String className,
    String classDetails,
  ) {
    return <Widget>[
      Text(
        '${formatDate(widget.classSubject!.classDuration.startTime)} - ${formatDate(widget.classSubject!.classDuration.endTime)}',
        style:
            Theme.of(context).textTheme.bodyMedium?.copyWith(color: textColor),
      ),
      const SizedBox(height: 8),
      Text(
        className,
        style:
            Theme.of(context).textTheme.titleMedium?.copyWith(color: textColor),
      ),
      const SizedBox(height: 8),
      Text(
        classDetails,
        style:
            Theme.of(context).textTheme.bodyMedium?.copyWith(color: textColor),
      ),
    ];
  }

  Future<void> _buildBottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) => Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                  text: 'POTRDI',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
