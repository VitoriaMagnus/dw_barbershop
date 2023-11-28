import 'package:flutter/material.dart';

import 'package:dw_barbershop/src/core/ui/constants.dart';

class HoursPanel extends StatelessWidget {
  final int starTime;
  final int endTime;
  const HoursPanel({
    Key? key,
    required this.starTime,
    required this.endTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Selecione os horários de atendimento',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 16,
          children: [
            for (int i = starTime; i <= endTime; i++)
              TimeButton(label: '${i.toString().padLeft(2, '0')}:00')
          ],
        ),
      ],
    );
  }
}

class TimeButton extends StatelessWidget {
  final String label;
  const TimeButton({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(color: ColorConstants.grey),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: ColorConstants.grey),
        ),
      ),
    );
  }
}
