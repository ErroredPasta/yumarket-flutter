// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:yumarket_flutter/auth/data/repository/auth_repository_impl.dart'
    as _i7;
import 'package:yumarket_flutter/auth/domain/repository/auth_repository.dart'
    as _i6;
import 'package:yumarket_flutter/auth/ui/login_bloc.dart' as _i15;
import 'package:yumarket_flutter/item_manage/data/repository/item_repository_impl.dart'
    as _i9;
import 'package:yumarket_flutter/item_manage/domain/repository/item_repository.dart'
    as _i8;
import 'package:yumarket_flutter/item_manage/domain/validator/item_validator.dart'
    as _i3;
import 'package:yumarket_flutter/item_manage/ui/item_add/item_add_bloc.dart'
    as _i18;
import 'package:yumarket_flutter/item_manage/ui/item_list/item_manage_bloc.dart'
    as _i14;
import 'package:yumarket_flutter/item_manage/ui/item_update/item_update_bloc.dart'
    as _i16;
import 'package:yumarket_flutter/item_manage/ui/item_update/item_update_state.dart'
    as _i17;
import 'package:yumarket_flutter/order/data/repository/order_repository_impl.dart'
    as _i5;
import 'package:yumarket_flutter/order/domain/repository/order_repository.dart'
    as _i4;
import 'package:yumarket_flutter/order/ui/order_bloc.dart' as _i13;
import 'package:yumarket_flutter/review/data/repository/review_repository_impl.dart'
    as _i11;
import 'package:yumarket_flutter/review/domain/repository/review_repository.dart'
    as _i10;
import 'package:yumarket_flutter/review/ui/review_bloc.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ItemValidator>(() => _i3.ItemValidator());
    gh.factory<_i4.OrderRepository>(() => _i5.OrderRepositoryImpl());
    gh.factory<_i6.AuthRepository>(() => _i7.AuthRepositoryImpl());
    gh.factory<_i8.ItemRepository>(() => _i9.ItemRepositoryImpl());
    gh.factory<_i10.ReviewRepository>(() => _i11.ReviewRepositoryImpl());
    gh.factory<_i12.ReviewBloc>(
        () => _i12.ReviewBloc(gh<_i10.ReviewRepository>()));
    gh.factory<_i13.OrderBloc>(() => _i13.OrderBloc(gh<_i4.OrderRepository>()));
    gh.factory<_i14.ItemManageBloc>(
        () => _i14.ItemManageBloc(gh<_i8.ItemRepository>()));
    gh.factory<_i15.LoginBloc>(() => _i15.LoginBloc(gh<_i6.AuthRepository>()));
    gh.factoryParam<_i16.ItemUpdateBloc, _i17.ItemUpdateState, dynamic>((
      itemUpdateState,
      _,
    ) =>
        _i16.ItemUpdateBloc(
          gh<_i8.ItemRepository>(),
          gh<_i3.ItemValidator>(),
          itemUpdateState,
        ));
    gh.factory<_i18.ItemAddBloc>(() => _i18.ItemAddBloc(
          gh<_i8.ItemRepository>(),
          gh<_i3.ItemValidator>(),
        ));
    return this;
  }
}
