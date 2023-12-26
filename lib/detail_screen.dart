import 'package:flutter/material.dart';
import 'package:zodiac_pedia/model/zodiac.dart';

class DetailScreen extends StatelessWidget {
  final Zodiac zodiac;

  const DetailScreen({Key? key, required this.zodiac}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(zodiac: zodiac);
        } else {
          return DetailMobilePage(zodiac: zodiac);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final Zodiac zodiac;

  const DetailMobilePage({Key? key, required this.zodiac}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFD3E5FF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        zodiac.avatar,
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                      )),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xFFD3E5FF),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Column(children: <Widget>[
                Text(
                  zodiac.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 26.0,
                  ),
                ),
                Text(
                  "(${zodiac.rangeDate})",
                  style: const TextStyle(
                    color: Color(0xFF9AA7B0),
                    fontSize: 16,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 16,
            ),
            BoxInfo(
                icon: Icons.info_outline,
                title: "Tentang",
                description: zodiac.description),
            BoxInfo(
                icon: Icons.favorite_border,
                title: "Cinta",
                description: zodiac.predictionLove),
            BoxInfo(
                icon: Icons.monetization_on_outlined,
                title: "Keuangan",
                description: zodiac.predictionFinance),
            BoxInfo(
                icon: Icons.account_box_outlined,
                title: "Karir",
                description: zodiac.predictionCareer),
          ],
        ),
      ),
    );
  }
}

class BoxInfo extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const BoxInfo(
      {Key? key,
      required this.icon,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                icon,
                color: Colors.black,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            description,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 14.0,
            ),
          ),
        ]),
      )),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final Zodiac zodiac;

  const DetailWebPage({Key? key, required this.zodiac}) : super(key: key);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        child: Center(
          child: SizedBox(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          Image.asset(
                            widget.zodiac.avatar,
                            width: 200,
                            height: 200,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            widget.zodiac.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              decoration: TextDecoration.none,
                              color: Color(0xFF213641),
                              fontSize: 26.0,
                            ),
                          ),
                          Text(
                            "(${widget.zodiac.rangeDate})",
                            style: const TextStyle(
                              decoration: TextDecoration.none,
                              color: Color(0xFF9AA7B0),
                              fontSize: 16,
                            ),
                          ),
                          const FavoriteButton(),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            Column(children: [
                              BoxInfo(
                                  icon: Icons.info_outline,
                                  title: "Tentang",
                                  description: widget.zodiac.description),
                              BoxInfo(
                                  icon: Icons.favorite_border,
                                  title: "Cinta",
                                  description: widget.zodiac.predictionLove),
                              BoxInfo(
                                  icon: Icons.monetization_on_outlined,
                                  title: "Keuangan",
                                  description: widget.zodiac.predictionFinance),
                              BoxInfo(
                                  icon: Icons.account_box_outlined,
                                  title: "Karir",
                                  description: widget.zodiac.predictionCareer),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.star : Icons.star_border,
        color: const Color(0xFFFABB05),
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
