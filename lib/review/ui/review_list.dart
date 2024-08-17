import 'package:flutter/material.dart';
import 'package:yumarket_flutter/review/domain/model/review.dart';

class ReviewList extends StatelessWidget {
  final List<Review> reviews;

  const ReviewList(this.reviews, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [for (final review in reviews) ReviewListItem(review)],
    );
  }
}

class ReviewListItem extends StatelessWidget {
  final Review review;

  const ReviewListItem(this.review, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                review.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Spacer(),
              Text('${review.rating} / 5') // todo : change to rating bar
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            review.content,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
