import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String cardTitle;
  final String cardSubtitle;
  final String cardStatus;
  final DateTime startDate;
  final DateTime endDate;
  final int phase;
  final String stack;
  final String price;

  final void Function()? onTap;

  const ProjectCard({
    Key? key,
    required this.cardTitle,
    required this.cardSubtitle,
    this.cardStatus = "",
    required this.startDate,
    required this.endDate,
    this.phase = 1,
    required this.stack,
    required this.price,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Duration duration = endDate.difference(startDate);
    String durationText = _getDurationText(duration);

    return GestureDetector(
      onTap: onTap,
      child: Card(
        shadowColor: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.folder_rounded,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                cardTitle,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(cardSubtitle),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                child: Text(stack),
              ),
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Add this line
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 8),
                    Row(
                      children: [
                        const Text('Phase',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                        const SizedBox(width: 4),
                        Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 1.5,
                                color: Theme.of(context).colorScheme.tertiary,
                              )),
                          child: Center(
                              child: Text((phase + 1).toString(),
                                  style: const TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w500))),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.attach_money_rounded,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(price.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.av_timer_rounded,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(durationText,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
                TextButton(
                  onPressed: null,
                  child: Row(
                    children: [
                      Icon(
                        _getIconBasedOnStatus(_parseStatus(cardStatus)),
                        color:
                            _getStatusColor(_parseStatus(cardStatus), context),
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(cardStatus,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: _getStatusColor(
                                _parseStatus(cardStatus), context),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(CardStatus status, BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    switch (status) {
      case CardStatus.preparing:
        return isDarkMode ? Colors.purpleAccent : Colors.purple.shade700;
      case CardStatus.active:
        return isDarkMode ? Colors.lightGreenAccent : Colors.green.shade700;
      case CardStatus.inactive:
        return isDarkMode ? Colors.deepOrangeAccent : Colors.red.shade700;
      case CardStatus.completed:
        return isDarkMode ? Colors.lightBlueAccent : Colors.blue.shade700;
      case CardStatus.onHold:
        return isDarkMode ? Colors.grey.shade300 : Colors.grey.shade700;
      default:
        return isDarkMode ? Colors.grey.shade300 : Colors.grey.shade700;
    }
  }

  IconData _getIconBasedOnStatus(CardStatus status) {
    switch (status) {
      case CardStatus.preparing:
        return Icons.pending_actions_rounded;
      case CardStatus.active:
        return Icons.play_arrow_rounded;
      case CardStatus.inactive:
        return Icons.pause_rounded;
      case CardStatus.completed:
        return Icons.check_circle_rounded;
      case CardStatus.onHold:
        return Icons.pause_circle_rounded;
      default:
        return Icons.pending_actions_rounded;
    }
  }

  String _getDurationText(Duration duration) {
    if (duration.inDays >= 365) {
      int years = (duration.inDays / 365).floor();
      return '$years ${years == 1 ? 'year' : 'years'}';
    } else if (duration.inDays >= 30) {
      int months = (duration.inDays / 30).floor();
      return '$months ${months == 1 ? 'month' : 'months'}';
    } else {
      return '${duration.inDays} ${duration.inDays == 1 ? 'day' : 'days'}';
    }
  }

  CardStatus _parseStatus(String status) {
    switch (status) {
      case 'preparing':
        return CardStatus.preparing;
      case 'active':
        return CardStatus.active;
      case 'inactive':
        return CardStatus.inactive;
      case 'completed':
        return CardStatus.completed;
      case 'onHold':
        return CardStatus.onHold;
      default:
        return CardStatus.preparing;
    }
  }
}

enum CardStatus { preparing, active, inactive, completed, onHold }
