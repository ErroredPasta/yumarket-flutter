// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:yumarket_flutter/data/repository/order_repository_impl.dart'
    as _i4;
import 'package:yumarket_flutter/domain/repository/order_repository.dart'
    as _i3;
import 'package:yumarket_flutter/ui/screen/home/order_bloc.dart' as _i5;

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
    gh.factory<_i5.OrderBloc>(() => _i5.OrderBloc(gh<_i3.OrderRepository>()));
    return this;
  }
}
