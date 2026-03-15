class ProductModel {
  final String name;
  final int price;
  final double rating;
  final String imageUrl;

  ProductModel({
    required this.name,
    required this.price,
    required this.rating,
    required this.imageUrl,
  });

  String get formattedPrice => '₫${_formatNumber(price)}';

  String _formatNumber(int n) {
    final s = n.toString();
    final buffer = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) buffer.write('.');
      buffer.write(s[i]);
    }
    return buffer.toString();
  }
}