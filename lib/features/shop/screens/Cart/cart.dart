import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/Text_Widget/product_price_text.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/shop/screens/Cart/Widget/cart_2item.dart';
import 'package:t_store/features/shop/screens/CheckOutScreen/checkout.dart';
import 'package:t_store/utils/constants/size.dart';
import '../../../../common/widgets/products.cart/cart/add_remove_button.dart';
import '../../../../common/widgets/products.cart/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart',style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        child: TCartItems()
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(onPressed: ()=>Get.to(()=>const CheckOutScreen()), child: const Text('Checkout \$256.0'),),
      ),
    );
  }
}

