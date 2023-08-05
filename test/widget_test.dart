import 'package:flutter_test/flutter_test.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/screens/categories.dart';
import 'package:meals/widgets/category_grid_item.dart'; // Import the Category class or the relevant model

void main() {
  testWidgets('Categories screen displays category items',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const CategoriesScreen(
      availableFilter: [],
    ));

    // Verify that category items are displayed in the grid.
    // Replace 'availableCategories' with the actual list of categories from your data source.
    for (final category in availableCategories) {
      expect(find.text(category.title), findsOneWidget);
      expect(find.byType(CategoryGridItem), findsOneWidget);
    }
  });
}
