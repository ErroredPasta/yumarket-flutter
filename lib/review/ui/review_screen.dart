import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:yumarket_flutter/core/ui/component/main_screen_bottom_navigation.dart';
import 'package:yumarket_flutter/review/domain/model/review.dart';
import 'package:yumarket_flutter/review/ui/review_bloc.dart';
import 'package:yumarket_flutter/review/ui/review_event.dart';
import 'package:yumarket_flutter/review/ui/review_list.dart';

import '../../core/ui/bloc/ui_state.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ReviewBloc bloc = GetIt.I.get();

    bloc.addEvent(const GetReviews());

    return Scaffold(
      appBar: AppBar(title: const Text('리뷰 관리'),),
      bottomNavigationBar: const MainScreenBottomNavigation(currentIndex: 1,),
      body: BlocConsumer<ReviewBloc, UiState<List<Review>>>(
        bloc: bloc,
        listenWhen: (previous, current) =>
            previous.exception != current.exception,
        listener: (context, state) {
          if (state.exception != null) {
            final snackBar = SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text(state.exception.toString()),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            bloc.exceptionHandled();
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return ReviewList(state.data);
        },
      ),
    );
  }
}
