import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:indian_food/dummy_data.dart';
import 'package:indian_food/models/category.dart';
import 'package:indian_food/screens/categories_mealsscreen.dart';
import 'package:indian_food/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<String> imageUrl = [
    'http://www.yummyfoodrecipes.in/resources/picture/org/Indian-Masala-Dosa.jpg',
    'https://www.awesomecuisine.com/wp-content/uploads/2007/10/Chicken-Biryani_resized.jpg',
    'https://ratlamee.com/wp-content/uploads/2018/09/chole-bhature-1.jpg',
    'https://i0.wp.com/vegecravings.com/wp-content/uploads/2017/03/samosa-recipe-step-by-step-instructions.jpg?fit=1801%2C1717&quality=65&strip=all&ssl=1',
    'https://www.lekhafoods.com//media/202191/paneer-tikka.jpg',
    'https://img-global.cpcdn.com/recipes/631a4673d1d9c8ea/751x532cq70/kolhapuri-mutton-recipe-recipe-main-photo.jpg',
    'https://www.ndtv.com/cooks/images/ALOO.KA.PARATH.1234%281%29.jpg',
    'https://i.ndtvimg.com/i/2015-07/vada-pav_625x350_71436350861.jpg',
    'https://www.thespruceeats.com/thmb/PKnNtfEzORDMd6iEz8NCa7vT1ZE=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/papdi-chaat-recipe-1958046-hero-01-100f6f30f05a4395a5c6bfa515fc087c.jpg',
    'https://im.rediff.com/getahead/2014/oct/22recipe-jalebi.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final catTitle=DUMMY_CATEGORIES.map((e) {return e.title;});
    
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('FoodIndia'),
      ),
      body: GridView.builder(
         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
    
        padding: const EdgeInsets.all(5),
        itemCount: DUMMY_CATEGORIES.length,
        itemBuilder: (context,index){
          return CategoryItem(
            
            DUMMY_CATEGORIES[index].title,
            DUMMY_CATEGORIES[index].id,
            DUMMY_MEALS[index].imageUrl
            
            
            );
        },
        
       
    ));
  }
}
