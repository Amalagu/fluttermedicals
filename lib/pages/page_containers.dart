import 'package:flutter/material.dart';
import 'package:medics/models/home_card_models.dart';
import 'package:medics/widgets/homecards.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});
  final premium = const Text(
    'Premium',
    style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.red,
    ),
  );
  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final PageController _pageController =
      PageController(viewportFraction: 0.875, initialPage: 1);
  // ignore: unused_field
  final int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Swipeable Containers
          SizedBox(
            height: 300, // Adjust the height as needed
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {},
              /* onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              }, */
              children: [
                buildContainer(
                  const Icon(Icons.crisis_alert_sharp),
                  'Quick Service',
                  'Access Important Services Quickly',
                ),
                buildContainer(
                  const FlutterLogo(size: 100),
                  'Chisom E. O.',
                  'Member Since 2023 \nGo Premium to access all the features',
                ),
                buildContainer(
                  const Icon(Icons.star),
                  'Another Container',
                  'Some description here',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.crisis_alert_sharp),
              Text(
                'Quick Service',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 67, 21, 119),
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Access Important Services Quickly',
                style: TextStyle(
                    fontSize: 16.0, color: Color.fromARGB(255, 67, 21, 119)),
              ),
            ],
          ),

          // Scrollable Grid of Cards
          // Inside the PageOne class
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.65,
              ),
              itemCount: cardDetailsList.length,
              itemBuilder: (context, index) {
                return MyHomeCard(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContainer(Widget content, String title, String description) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 10, 8, 10),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 231, 225, 231),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          content,
          const SizedBox(
            height: 40,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 48, 18, 117),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            description,
            style: const TextStyle(
                fontSize: 16.0, color: Color.fromARGB(255, 48, 18, 117)),
          ),
        ],
      ),
    );
  }
}

/* double calculateAspectRatio() {
  double maxHeight = 0.0;

  // Calculate the maximum height among the cards
  for (var cardDetails in cardDetailsList) {
    final double cardHeight = calculateCardHeight(cardDetails);
    if (cardHeight > maxHeight) {
      maxHeight = cardHeight;
    }
  }

  // Set the childAspectRatio based on the maximum height
  return 1 * (maxHeight / 100); // Adjust 0.65 as needed
}

double calculateCardHeight(CardDetails cardDetails) {
  // Implement your logic to calculate the height of a card based on its content
  // You can use TextPainter or other methods to get the text height

  // Example: Assuming title and desc are strings
  const TextStyle textStyle = TextStyle(fontSize: 16.0);
  final titleTextPainter = TextPainter(
    text: TextSpan(text: cardDetails.title, style: textStyle),
    maxLines: 1,
    textDirection: TextDirection.ltr,
  );
  titleTextPainter.layout(maxWidth: double.infinity);

  final descTextPainter = TextPainter(
    text: TextSpan(text: cardDetails.desc, style: textStyle),
    maxLines: 1,
    textDirection: TextDirection.ltr,
  );
  descTextPainter.layout(maxWidth: double.infinity);

  // Return the total height of the card (adjust padding and spacing as needed)
  return titleTextPainter.height + descTextPainter.height + 16.0;
} */




/* import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Card(key: key, child: Expanded(child: Text("Expanded"))),
            const Text("This is a text",
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 237, 223, 252),
                )),
          ],
        ),
        Expanded(
          child: GridView(
            padding: const EdgeInsets.all(24),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            children: [
              // availableCategories.map((category) => CategoryGridItem(category: category)).toList()
              for (int x = 0; x <= 6; x++) Card(key: key),
            ],
          ),
        ),
        Container(
          height: 30,
          color: Colors.red,
        ),
      ],
    );
  }
}
 */