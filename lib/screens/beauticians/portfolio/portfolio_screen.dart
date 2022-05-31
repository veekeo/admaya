// @dart=2.9
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PortfolioScreen extends StatefulWidget {
  final List<String> portfolio;

  PortfolioScreen({this.portfolio});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        axisDirection: AxisDirection.down,
        children: List.generate(widget.portfolio.length, (index) {
          return BuildPortfolio(index: index, portfolio: widget.portfolio);
        }),
      ),
    );
  }
}

class BuildPortfolio extends StatelessWidget {
  final int index;
  final List<String> portfolio;

  BuildPortfolio({this.index, this.portfolio});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PortfolioImageViewer(
            image: portfolio[index],
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.all(6),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            portfolio[index],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class PortfolioImageViewer extends StatefulWidget {
  final String image;

  PortfolioImageViewer({this.image});

  @override
  State<PortfolioImageViewer> createState() => _PortfolioImageViewerState();
}

class _PortfolioImageViewerState extends State<PortfolioImageViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 16, 16),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 6,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 30,
              right: 6,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.save,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Medium',
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
