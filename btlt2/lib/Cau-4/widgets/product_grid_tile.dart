import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductGridTile extends StatelessWidget {
  final ProductModel product;

  const ProductGridTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ảnh sản phẩm
          Expanded(
            child: Image.network(
              product.imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                color: Colors.grey.shade200,
                child: const Icon(Icons.image, color: Colors.grey, size: 40),
              ),
            ),
          ),

          // Thông tin
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Tên sản phẩm
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF212121),
                  ),
                ),
                const SizedBox(height: 4),

                // Giá + Rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.formattedPrice,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFD32F2F),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star,
                            size: 12, color: Color(0xFFFFA000)),
                        const SizedBox(width: 2),
                        Text(
                          '${product.rating}/5',
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color(0xFF757575),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}