import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const AllFoodsApp());
}

class AllFoodsApp extends StatelessWidget {
  const AllFoodsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All Foods',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      home: const AllFoodsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Category {
  final String title;
  final int total;
  final int available;
  final String discount;

  Category({
    required this.title,
    required this.total,
    required this.available,
    required this.discount,
  });
}

class AllFoodsScreen extends StatefulWidget {
  const AllFoodsScreen({Key? key}) : super(key: key);

  @override
  State<AllFoodsScreen> createState() => _AllFoodsScreenState();
}

class _AllFoodsScreenState extends State<AllFoodsScreen>
    with TickerProviderStateMixin {
  final List<Category> _categories = [
    Category(title: 'Healthy Snacks', total: 34, available: 20, discount: '10%',),
    Category(title: 'Beverages', total: 24, available: 18, discount: '15%'),
    Category(title: 'Dairy', total: 15, available: 10, discount: '5%'),
    Category(title: 'Bakery', total: 28, available: 22, discount: '8%'),
    Category(title: 'Fruits', total: 40, available: 35, discount: '12%'),
    Category(title: 'Vegetables', total: 30, available: 25, discount: '7%'),
  ];

  int? _draggingIndex;
  int? _hoverIndex;

  final Set<int> _justReorderedIndices = {};

  double _baseIconSize(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    if (w < 350) return 18;
    if (w < 450) return 20;
    return 22;
  }

  void _reorder(int from, int to) {
    if (from == to) return;
    setState(() {
      final item = _categories.removeAt(from);
      _categories.insert(to, item);

      _justReorderedIndices.add(to);
      Timer(const Duration(milliseconds: 500), () {
        setState(() {
          _justReorderedIndices.remove(to);
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double horizontalPadding = 16;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: Material(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'All Foods',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),

                      Row(
                        children: [
                          _AppBarTab(
                            icon: Icons.fastfood,
                            label: 'Foods',
                            color: const Color(0xFFFFA500),
                            onTap: () {},
                          ),
                          const SizedBox(width: 12),
                          _AppBarTab(
                            icon: Icons.category,
                            label: 'Categories',
                            color: const Color(0xFFFFA500),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(
                horizontalPadding,
                12,
                horizontalPadding,
                12,
              ),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFFFFA500)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Add Category tapped')),
                    );
                  },
                  child: const Text(
                    '+ Add Category',
                    style: TextStyle(
                      color: Color(0xFFFFA500),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  horizontalPadding,
                  0,
                  horizontalPadding,
                  16,
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final crossAxisCount = 2;
                    final spacing = 12.0;
                    final itemWidth =
                        (constraints.maxWidth -
                            spacing * (crossAxisCount - 1)) /
                        crossAxisCount;
                    final itemHeight = 140.0;
                    final childAspectRatio = itemWidth / itemHeight;

                    return GridView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: spacing,
                        mainAxisSpacing: spacing,
                        childAspectRatio: childAspectRatio,
                      ),
                      itemCount: _categories.length,
                      itemBuilder: (context, index) {
                        final category = _categories[index];
                        final isDragging = _draggingIndex == index;
                        final isHovering = _hoverIndex == index;
                        final showBounce = _justReorderedIndices.contains(
                          index,
                        );

                        return DragTarget<int>(
                          onWillAccept: (fromIndex) {
                            setState(() {
                              _hoverIndex = index;
                            });
                            return true;
                          },
                          onAccept: (fromIndex) {
                            setState(() {
                              _hoverIndex = null;
                              _draggingIndex = null;
                            });
                            _reorder(fromIndex, index);
                          },
                          onLeave: (_) {
                            setState(() {
                              _hoverIndex = null;
                            });
                          },
                          builder: (context, candidateData, rejectedData) {
                            return LongPressDraggable<int>(
                              data: index,
                              onDragStarted: () {
                                setState(() {
                                  _draggingIndex = index;
                                });
                              },
                              onDraggableCanceled: (_, __) {
                                setState(() {
                                  _draggingIndex = null;
                                  _hoverIndex = null;
                                });
                              },
                              onDragEnd: (_) {
                                setState(() {
                                  _draggingIndex = null;
                                  _hoverIndex = null;
                                });
                              },
                              feedback: Material(
                                color: Colors.transparent,
                                elevation: 6,
                                borderRadius: BorderRadius.circular(14),
                                child: SizedBox(
                                  width: itemWidth,
                                  child: Opacity(
                                    opacity: 0.88,
                                    child: _CategoryCard(
                                      category: category,
                                      dragging: true,
                                      hovered: false,
                                      iconSize: _baseIconSize(context),
                                    ),
                                  ),
                                ),
                              ),
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 200),
                                opacity: isDragging ? 0.3 : 1.0,
                                child: AnimatedScale(
                                  scale: showBounce
                                      ? 1.03
                                      : (isDragging ? 0.98 : 1.0),
                                  duration: const Duration(milliseconds: 350),
                                  curve: showBounce
                                      ? Curves.elasticOut
                                      : Curves.easeInOut,
                                  child: _CategoryCard(
                                    category: category,
                                    dragging: isDragging,
                                    hovered: isHovering,
                                    iconSize: _baseIconSize(context),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppBarTab extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback? onTap;

  const _AppBarTab({
    Key? key,
    required this.icon,
    required this.label,
    required this.color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconSize = MediaQuery.of(context).size.width < 400 ? 18.0 : 20.0;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        child: Row(
          children: [
            Icon(icon, color: color, size: iconSize),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w600,
                fontSize: iconSize - 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final Category category;
  final bool dragging;
  final bool hovered;
  final double iconSize;

  const _CategoryCard({
    required this.category,
    required this.dragging,
    required this.hovered,
    required this.iconSize,
  });

  Color _backgroundColor() {
    if (dragging) return const Color(0xFFF0F0F0);
    if (hovered) return const Color(0xFFFFF3E0);
    return Colors.white;
  }

  List<BoxShadow> _boxShadow() {
    return [
      BoxShadow(
        color: const Color(0xFFFFA500).withOpacity(0.09),
        blurRadius: 8,
        offset: const Offset(0, 6),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: _backgroundColor(),
        borderRadius: BorderRadius.circular(14),
        boxShadow: _boxShadow(),
        border: Border.all(color: Colors.transparent),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  category.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              InkWell(
                onTap: () {
                  // placeholder for action menu
                },
                child: const Icon(
                  Icons.more_vert,
                  size: 18,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Info rows
          _InfoRow(
            icon: Icons.fastfood,
            iconSize: iconSize,
            label: 'Total: ${category.total}',
          ),
          const SizedBox(height: 6),
          _InfoRow(
            icon: Icons.check_circle,
            iconSize: iconSize,
            label: 'Available: ${category.available}',
          ),
          const SizedBox(height: 6),
          _InfoRow(
            icon: Icons.local_fire_department,
            iconSize: iconSize,
            label: 'Discount: ${category.discount}',
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;

  final double iconSize;

  final String label;

  const _InfoRow({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconColor = const Color(0xFFFFA500);

    return Row(
      children: [
        Icon(icon, size: iconSize, color: iconColor),

        const SizedBox(width: 8),

        Expanded(
          child: Text(
            label,

            style: const TextStyle(color: Colors.black87),

            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
