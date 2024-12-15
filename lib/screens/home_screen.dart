import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/flag.png',
                    width: 80,
                    height: 60,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/ministere_interieur.png',
                    width: 80,
                    height: 80,
                  ),
                  const Spacer(),
                  Text(
                    'بوابة الجماعات المحلية',
                    style: GoogleFonts.montserrat(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.red)),
                    child: const Text(
                      'تسجيل دخول',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 2)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...List.generate(
                        5,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: HoverCategoryButton(
                              categoryName: 'Category ${index + 1}'),
                        ),
                      ),
                    ])),

            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height - 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      opacity: 0.2,
                      image: AssetImage('assets/landing_imag.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Text(
                  'Welcome to Our Services',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            // Slider Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CarouselSlider(
                items: List.generate(
                  10,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Service ${index + 1}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: true,
                ),
              ),
            ),

            // Footer Section
            Container(
              color: Colors.grey.shade900,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    'Follow us on',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.facebook, color: Colors.white, size: 30),
                      SizedBox(width: 20),
                      Icon(Icons.add, color: Colors.white, size: 30),
                      SizedBox(width: 20),
                      Icon(Icons.delete, color: Colors.white, size: 30),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '© 2024 Company Name. All rights reserved.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
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

class HoverCategoryButton extends StatefulWidget {
  final String categoryName;

  const HoverCategoryButton({
    required this.categoryName,
    super.key,
  });

  @override
  State<HoverCategoryButton> createState() => _HoverCategoryButtonState();
}

class _HoverCategoryButtonState extends State<HoverCategoryButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      onSelected: (value) {},
      menuPadding: const EdgeInsets.all(10),
      position: PopupMenuPosition.under,
      child: Row(
        children: [
          Text(
            'item Name',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(
            Iconsax.arrow_down_1,
            color: Colors.black,
            size: 20,
          )
        ],
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem(child: Text('item')),
          PopupMenuItem(child: Text('item')),
          PopupMenuItem(child: Text('item')),
          PopupMenuItem(child: Text('item'))
        ];
      },
    );
  }
}
