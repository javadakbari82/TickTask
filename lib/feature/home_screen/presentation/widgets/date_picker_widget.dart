import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

import '../../../../colors.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({
    super.key,
    required this.getDate,
  });
  final Function(DateTime selectedTime) getDate;
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
            // print(selectedDate.toString());
            widget.getDate(selectedDate);
          },
          headerProps: const EasyHeaderProps(
            monthPickerType: MonthPickerType.switcher,
            dateFormatter: DateFormatter.fullDateDMY(),
            centerHeader: false,
            monthStyle: TextStyle(color: SolidColors.contentDatePickerColor),
            showMonthPicker: true,
            showSelectedDate: true,
            selectedDateStyle:
                TextStyle(color: SolidColors.contentDatePickerColor),
          ),
          dayProps: const EasyDayProps(
            todayStyle: DayStyle(
                dayNumStyle:
                    TextStyle(color: SolidColors.contentDatePickerColor),
                monthStrStyle:
                    TextStyle(color: SolidColors.contentDatePickerColor)),
            inactiveDayStyle: DayStyle(
                dayStrStyle:
                    TextStyle(color: SolidColors.contentDatePickerColor),
                dayNumStyle:
                    TextStyle(color: SolidColors.contentDatePickerColor)),
            borderColor: SolidColors.contentDatePickerColor,
            landScapeMode: true,
            dayStructure: DayStructure.dayStrDayNum,
            activeDayStyle: DayStyle(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: GradiantColors.selectedDay),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
