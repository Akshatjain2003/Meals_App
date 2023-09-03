import 'package:flutter/material.dart';
import 'package:meals_app/Model/meal.dart';
import 'package:meals_app/Model/category.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Indian',
    color: Color.fromARGB(255, 204, 120, 2),
  ),
  Category(
    id: 'c2',
    title: 'South Indian',
    color: Color.fromARGB(255, 45, 179, 67),
  ),
  Category(
    id: 'c3',
    title: 'Nepali',
    color: Color.fromARGB(255, 216, 24, 24),
  ),
  Category(
    id: 'c4',
    title: 'Chinese',
    color: Color.fromARGB(255, 255, 152, 0),
  ),
  Category(
    id: 'c5',
    title: 'Italian',
    color: Color.fromARGB(255, 9, 187, 199),
  ),
  Category(
    id: 'c6',
    title: 'Street Food',
    color: Color.fromARGB(255, 113, 18, 202),
  ),
  Category(
    id: 'c7',
    title: 'Fast Food',
    color: Color.fromARGB(255, 27, 182, 22),
  ),
  Category(
    id: 'c8',
    title: 'Dessert',
    color: Colors.lightBlue,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c5',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isNonVegetarian: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Plain Dosa',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://thumbs.dreamstime.com/b/masala-dosa-chutney-sambaar-traditionally-south-india-masala-dosa-chutney-sambaar-traditionally-south-indian-96973762.jpg',
    duration: 10,
    ingredients: [
      '½ cup idli rice or parboiled rice or regular rice',
      '½ cup regular rice',
      '¼ cup urad dal',
      '⅛ teaspoon fenugreek seeds or 2 pinches (methi seeds or methi dana)',
      '2 tablespoons thick poha (flattened rice)',
      '1.5 cups water for soaking both rice and lentils',
      '¾ cup water for grinding, do add water as required',
      '½ teaspoon rock salt edible and food grade or non-iodized salt or sea salt crystals or Himalayan pink salt',
      'oil as required',
    ],
    steps: [
      'Soaking Lentils And Rice : ',
      '1.In a bowl take the idli rice or parboiled rice along with the regular white rice. Instead of adding regular rice, you can also make the dosa with a total of 1 cup idli rice as I have shown in the video. The video has the recipe ingredients doubled in proportion.',
      '2.To the same bowl, add urad dal and fenugreek seeds.',
      '3.Rinse the rice, lentils and methi seeds together a couple of times and keep aside.',
      '4.In a separate bowl, take the flattened rice.',
      '5.Rinse it once or twice in water and then add rinsed flattened rice to the bowl containing the rinsed rice+lentils+methi seeds.',
      '5.Pour 1.5 cups water. Mix. Cover with a lid and soak everything for 5 to 6 hours.',
      '',
      'Making Dosa Batter : ',
      '1.Drain all the water and add the soaked ingredients in a wet grinder jar.',
      '2.Add ⅔ to ¾ cup water and grind till you get a fine grainy consistency of rice in the batter. A smooth consistency of batter is also fine. ',
      '3.If the mixer gets heated up, then stop and wait for some minutes. When the mixer cools down, grind again. Depending on the jar capacity, you can grind everything once or in two batches. I ground in two batches and added overall ¾ cup water.',
      '4.Now take the batter in a large bowl or pan.',
      '5.Add ½ tsp rock salt. Mix very well. Cover and allow to ferment for 8 to 9 hours or more. Time of fermentation will vary depending on the temperature conditions.',
      '6.A proper fermentation will double or triple up the volume of the batter and you will see tiny air pockets in the batter with a light sour aroma.',
      '7.Now lightly stir the batter, before you begin to make dosa.',
      '',
      'Making Dosa :',
      '1.Heat a cast iron pan. When the pan becomes hot, spread ¼ to ½ teaspoon oil all over the pan. Do keep the heat on low to low-medium heat, so that you are easily able to spread the batter. If the pan base is very thick, then keep the flame to medium.',
      '2.Do not spread oil if you are using a non stick pan, as you wont be able to spread the batter.',
      '3.Now take a ladle full of the batter. Pour the dosa batter and gently spread the batter starting from the center and moving outwards.',
      '4.Cover it with a lid and cook the dosa on a low to medium heat. Do regulate the flame as per the pan size and thickness.',
      '5.When you see the batter on the top has cooked well and the bottom has become crisp and golden, then sprinkle ¼ to ½ teaspoon oil on the edges and center.',
      '6.With the spoon spread the oil on the dosa.',
      '7.Cook till the base is nicely golden and crisp. The base will leave the pan and the sides will also get separated when it gets cooked.',
      '8.Fold and serve sada dosa hot. Make all dosai this way.',
      '9.Serve these crisp plain dosa with sambar or potato masala or coconut chutney.',
    ],
    isNonVegetarian: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c3',
    ],
    title: 'Aloo Sandheko ',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/photo-s/25/ee/af/54/aloo-sandheko-cooked.jpg',
    duration: 25,
    ingredients: [
      '500g potatoes, peeled and cubed',
      '3 cloves garlic, cut into very thin strips',
      '3 cm piece ginger, peeled and cut into very thin strips',
      '1 large red onion, peeled and finely sliced',
      '1 tsp chilli powder',
      '1 tbsp lemon juice',
      'Salt to taste',
      '3 tbsp mustard (or another) oil',
      '1 tsp fenugreek seeds',
      '2 green chillis, deseeded and sliced very fine',
      '1 tsp ground turmeric',
      'Handful fresh coriander, chopped',
    ],
    steps: [
      'Boil the potatoes in water until they are soft, then drain.',
      'In a bowl, combine the garlic, ginger, onion, chilli and lemon juice, then coat the potatoes in the mixture. Season to taste.',
      'Heat the oil in a frying pan, then add the fenugreek seeds. When they start to brown, add the green chillis and the turmeric. Cook for another minute, then add this spice mixture to the potatoes.',
      'Refrigerate to cool, then serve garnished with the coriander',
    ],
    isNonVegetarian: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Schezwan Sauce | Spicy Szechuan Sauce',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://www.vegrecipesofindia.com/wp-content/uploads/2021/02/schezwan-sauce-3-500x500.jpg',
    duration: 60,
    ingredients: [
      '4 tablespoons toasted sesame oil or any vegetable oil',
      '1 tablespoon finely chopped garlic or 15 small to medium-sized garlic cloves',
      '1 teaspoon finely chopped ginger or 1 inch ginger',
      '¼ cup finely chopped shallots or 1 small onion finely chopped',
      '3 to 4 sichuan peppers',
      '½ tablespoon finely chopped celery ',
      '½ cup water ',
      '2 teaspoons raw sugar or organic unrefined cane sugar or brown sugar, please add as required. For a more sweeter taste, you can even add up to 3 teaspoon sugar.',
      '¼ to ½ teaspoon black pepper powder or as required',
      '½ teaspoon light soy sauce or as required',
      '1 tablespoon rice vinegar or white vinegar or apple cider vinegar',
      'salt as required',
    ],
    steps: [
      'Heat toasted sesame oil or any other vegetable oil in a frying pan.',
      'Lower the heat. Add the garlic and ginger first and sauté for some seconds till their raw aroma goes away. Don t brown them.',
      'Add the chopped shallots and then saute them stirring often till translucent on low to medium-low heat.',
      'Add the ground red chili paste and combine thoroughly.',
      'Then add the crushed sichuan pepper and finely chopped celery (if using). Sauté for 1 to 2 minutes more till you see oil releasing from the sides of the sauce.',
      'Add ½ cup of water and mix well. Simmer for 2 minutes stirring often on a low to medium-low heat.',
      'Add salt, sugar, pepper, soy sauce and vinegar.',
      'Stir and continue to cook further for 5 to 6 minutes more on low to medium-low heat.',
      'Switch off the heat and set the pan aside. Check the taste and add more salt, sugar or pepper as required.',
      'Once the sauce cools at room temperature, transfer it in a small jar or bowl. Cover tightly with a lid and refrigerate.',
      'Serve schezwan sauce as a condiment with snacks or you can also add in recipes like schezwan fried rice or noodles, vegetable schezwan or veg balls in hot garlic sauce or schezwan dosa.',
      'It stays good for about 2 to 3 weeks in an air-tight container in the refrigerator.',
    ],
    isNonVegetarian: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c8',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isNonVegetarian: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c1',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isNonVegetarian: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c8',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isNonVegetarian: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c5',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isNonVegetarian: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
