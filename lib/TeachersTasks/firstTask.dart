import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AllFoodsScreen(),
    );
  }
}

class AllFoodsScreen extends StatefulWidget {
  const AllFoodsScreen({super.key});
  @override
  State<AllFoodsScreen> createState() => _AllFoodsScreenState();
}

class _AllFoodsScreenState extends State<AllFoodsScreen> {
  List<CategoryModel> categories = [
    CategoryModel("Pizza ", 25, 21, 5),
    CategoryModel("Sini ", 15, 15, 5),
    CategoryModel("Burger ", 18, 12, 2),
    CategoryModel("Juice ", 10, 10, 1),
  ];

  int? draggingIndex;
  int? acceptingIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        leading: const SizedBox.shrink(),
        title: LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.maxWidth;
            final isMobile = screenWidth < 600;

            return Row(
              children: [
                Text(
                  "All Foods",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: isMobile ? 20 : 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.keyboard_arrow_down, color: Colors.black),
                const Spacer(),

                _iconTab(Icons.fastfood, "Foods", screenWidth),
                SizedBox(width: isMobile ? 8 : 16),
                _iconTab(Icons.category, "Categories", screenWidth),
              ],
            );
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "+ Add Category",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double crossAxisSpacing = 12;
                  double mainAxisSpacing = 12;
                  int crossAxisCount = 2;
                  double totalHorizontalPadding =
                      crossAxisSpacing * (crossAxisCount - 1);
                  double itemWidth =
                      (constraints.maxWidth - totalHorizontalPadding) /
                      crossAxisCount;
                  double itemHeight = itemWidth / 1.2; // childAspectRatio: 1.2

                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      mainAxisSpacing: mainAxisSpacing,
                      crossAxisSpacing: crossAxisSpacing,
                      childAspectRatio: 1.2,
                    ),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final cat = categories[index];

                      return LongPressDraggable<int>(
                        data: index,
                        onDragStarted: () =>
                            setState(() => draggingIndex = index),
                        onDraggableCanceled: (_, __) => setState(() {
                          draggingIndex = null;
                          acceptingIndex = null;
                        }),
                        onDragCompleted: () => setState(() {
                          draggingIndex = null;
                          acceptingIndex = null;
                        }),
                        feedback: Material(
                          color: Colors.transparent,
                          child: SizedBox(
                            width: itemWidth,
                            height: itemHeight,
                            child: _categoryCard(cat, isDragging: true),
                          ),
                        ),
                        childWhenDragging: Opacity(
                          opacity: 0.3,
                          child: _categoryCard(cat, isDragging: false),
                        ),
                        child: DragTarget<int>(
                          onWillAccept: (fromIndex) {
                            setState(() => acceptingIndex = index);
                            return fromIndex != index;
                          },
                          onAccept: (fromIndex) {
                            setState(() {
                              final item = categories.removeAt(fromIndex);
                              categories.insert(index, item);
                              draggingIndex = null;
                              acceptingIndex = null;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                duration: Duration(seconds: 1),
                                content: Text(
                                  "Successfully changed the order of Cards ️",
                                ),
                              ),
                            );
                          },
                          onLeave: (_) => setState(() => acceptingIndex = null),
                          builder: (context, candidateData, rejectedData) {
                            return _categoryCard(
                              cat,
                              isDragging: draggingIndex == index,
                              isAccepting:
                                  acceptingIndex == index &&
                                  draggingIndex != null &&
                                  draggingIndex != index,
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryCard(
    CategoryModel model, {
    required bool isDragging,
    bool isAccepting = false,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isDragging
                ? Colors.grey.shade300
                : isAccepting
                ? Colors.orange.shade50
                : Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: isAccepting
                ? Border.all(color: Colors.orange, width: 2)
                : null,
            boxShadow: [
              BoxShadow(
                color: Colors.orange.withOpacity(isDragging ? 0.06 : 0.13),
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      model.title,
                      style: TextStyle(
                        fontSize: constraints.maxWidth * 0.08,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.more_vert,
                    color: Colors.black,
                    size: constraints.maxWidth * 0.1,
                  ),
                ],
              ),
              const SizedBox(height: 6),
              _iconText(Icons.fastfood, "${model.totalFood} Food", constraints),
              _iconText(
                Icons.check_circle,
                "${model.available} Available",
                constraints,
              ),
              _iconText(
                Icons.local_fire_department,
                "${model.discount} Discount",
                constraints,
              ),

            ],
          ),
        );
      },
    );
  }

  Widget _iconText(IconData icon, String text, BoxConstraints constraints) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange, size: constraints.maxWidth * 0.07),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: constraints.maxWidth * 0.06,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconTab(IconData icon, String text, double screenWidth) {
    double iconSize = screenWidth < 400 ? 20 : 26;
    double fontSize = screenWidth < 400 ? 14 : 16;
    return Row(
      children: [
        Icon(icon, color: Colors.orange, size: iconSize),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: fontSize),
        ),
      ],
    );
  }
}

class CategoryModel {
  final String title;
  final int totalFood;
  final int available;
  final int discount;

  CategoryModel(this.title, this.totalFood, this.available, this.discount);
}
