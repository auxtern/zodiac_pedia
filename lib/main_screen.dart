import 'package:flutter/material.dart';
import 'package:zodiac_pedia/model/zodiac.dart';

import 'detail_screen.dart';
import 'helper/utils.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Zodiac Pedia',
                style: TextStyle(color: Colors.white)),
            backgroundColor: const Color(0xFF213641),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return const ZodiacList();
              } else if (constraints.maxWidth <= 1024) {
                return const ZodiacGrid(gridCount: 4);
              } else {
                return const ZodiacGrid(gridCount: 6);
              }
            },
          ),
        );
      },
    );
  }
}

class ZodiacGrid extends StatelessWidget {
  final int gridCount;

  const ZodiacGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: zodiacList.map((zodiac) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(zodiac: zodiac);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      zodiac.avatar,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      zodiac.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      convertToShortDateRange(zodiac.rangeDate),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ZodiacList extends StatelessWidget {
  const ZodiacList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Zodiac zodiac = zodiacList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(zodiac: zodiac);
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Image.asset(zodiac.avatar),
                ),
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                zodiac.name,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "(${convertToShortDateRange(zodiac.rangeDate)})",
                                style: const TextStyle(
                                    color: Color(0xFF9AA7B0), fontSize: 13.0),
                              ),
                            ]),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          zodiac.overview,
                          style: const TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: zodiacList.length,
    );
  }
}
