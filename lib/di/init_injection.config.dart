// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:yumarket_flutter/item_manage/data/repository/item_repository_impl.dart'
    as _i6;
import 'package:yumarket_flutter/item_manage/domain/repository/item_repository.dart'
    as _i5;
import 'package:yumarket_flutter/item_manage/ui/item_manage_bloc.dart' as _i8;
import 'package:yumarket_flutter/order/data/repository/order_repository_impl.dart'
    as _i4;
import 'package:yumarket_flutter/order/domain/repository/order_repository.dart'
    as _i3;
import 'package:yumarket_flutter/order/ui/order_bloc.dart' as _i7;

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
    gh.factory<_i3.OrderRepository>(() => _i4.OrderRepositoryImpl());
    gh.factory<_i5.ItemRepository>(() => _i6.ItemRepositoryImpl());
    gh.factory<_i7.OrderBloc>(() => _i7.OrderBloc(gh<_i3.OrderRepository>()));
    gh.factory<_i8.ItemManageBloc>(
        () => _i8.ItemManageBloc(gh<_i5.ItemRepository>()));
    return this;
  }
}
