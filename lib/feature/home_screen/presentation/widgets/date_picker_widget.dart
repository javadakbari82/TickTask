import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

import '../../../../colors.dart';

typedef OnDateChangeCallBack = void Function(DateTime selectedDate);

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({
    super.key,
    this.onDateChange,
  });

  final OnDateChangeCallBack? onDateChange;

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration:
          const BoxDecoration(color: SolidColors.bgBottomNavigationBarColor),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 10, 8, 12),
        child: EasyDateTimeLine(
          initialDate: DateTime.now(),
          onDateChange: (selectedDate) {
            //`selectedDate` the new date selected.
            print(selectedDate.toString());
          },
          headerProps: const EasyHeaderProps(
            monthPickerType: MonthPickerType.switcher,
            dateFormatter: DateFormatter.fullDateDMY(),
            centerHeader: false,
            monthStyle: TextStyle(color: Colors.white),
            showMonthPicker: true,
            showSelectedDate: true,
            selectedDateStyle: TextStyle(color: Colors.white),
          ),
          dayProps: const EasyDayProps(
            inactiveDayStrStyle: TextStyle(color: Colors.white),
            inactiveDayNumStyle: TextStyle(color: Colors.white),
            borderColor: SolidColors.activationBottomNavigationBarColor,
            landScapeMode: true,
            dayStructure: DayStructure.dayStrDayNum,
            activeDayStyle: DayStyle(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff3371FF),
                    Color(0xff8426D6),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
