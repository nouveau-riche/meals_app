import 'package:meals_app/widgets/Category.dart';
import 'package:meals_app/widgets/recipe.dart';

List categories_list = [
  Category(
    id: 1,
    name: 'italian',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg',
    allRecipes: [
      Reciepe(
        imageUr: 'https://img.traveltriangle.com/blog/wp-content/uploads/2018/12/cover-for-street-food-in-sydney.jpg',
        name: 'Pizza',
        money: 'Afforable',
        difficulty: 'Simple',
      ),
      Reciepe(
        imageUr: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvxAJcSQRs2u2vkyS5GoKLm66Op0CqWt0rjg&usqp=CAU',
        name: 'Buger',
        money: 'Cheap',
        difficulty: 'Moderate',
      ),
    ],
  ),
  Category(
    id: 2,
    name: 'South Indian',
    imageUrl:
        'https://img.traveltriangle.com/blog/wp-content/uploads/2018/12/cover-for-street-food-in-sydney.jpg',
    allRecipes: [],
  ),
  Category(
    id: 3,
    name: 'Eastern',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvxAJcSQRs2u2vkyS5GoKLm66Op0CqWt0rjg&usqp=CAU',
    allRecipes: [],
  ),
  Category(
    id: 4,
    name: 'Mumbai',
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gettyimages-1036880806.jpg?crop=0.6666666666666666xw:1xh;center,top&resize=640:*',
    allRecipes: [],
  ),
  Category(
    id: 5,
    name: 'Dubai',
    imageUrl:
        'https://media.self.com/photos/606ccf537369ccb45ca42214/4:3/w_384/DiGiorno-Gluten-Free-Pizza-Pepperoni.jpg',
    allRecipes: [],
  ),
];
