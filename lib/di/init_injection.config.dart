// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:yumarket_flutter/auth/data/repository/auth_repository_impl.dart'
    as _i6;
import 'package:yumarket_flutter/auth/domain/repository/auth_repository.dart'
    as _i5;
import 'package:yumarket_flutter/auth/ui/login_bloc.dart' as _i21;
import 'package:yumarket_flutter/di/module/preference_module.dart' as _i22;
import 'package:yumarket_flutter/item_manage/data/repository/item_repository_impl.dart'
    as _i10;
import 'package:yumarket_flutter/item_manage/domain/repository/item_repository.dart'
    as _i9;
import 'package:yumarket_flutter/item_manage/domain/validator/item_validator.dart'
    as _i4;
import 'package:yumarket_flutter/item_manage/ui/item_add/item_add_bloc.dart'
    as _i20;
import 'package:yumarket_flutter/item_manage/ui/item_list/item_manage_bloc.dart'
    as _i15;
import 'package:yumarket_flutter/item_manage/ui/item_update/item_update_bloc.dart'
    as _i16;
import 'package:yumarket_flutter/item_manage/ui/item_update/item_update_state.dart'
    as _i17;
import 'package:yumarket_flutter/order/data/repository/order_repository_impl.dart'
    as _i13;
import 'package:yumarket_flutter/order/domain/repository/order_repository.dart'
    as _i12;
import 'package:yumarket_flutter/order/ui/order_bloc.dart' as _i14;
import 'package:yumarket_flutter/preference/data/secured_preference.dart'
    as _i19;
import 'package:yumarket_flutter/preference/domain/preference.dart' as _i18;
import 'package:yumarket_flutter/review/data/repository/review_repository_impl.dart'
    as _i8;
import 'package:yumarket_flutter/review/domain/repository/review_repository.dart'
    as _i7;
import 'package:yumarket_flutter/review/ui/review_bloc.dart' as _i11;

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
    final preferenceModule = _$PreferenceModule();
    gh.factory<_i3.FlutterSecureStorage>(() => preferenceModule.secureStorage);
    gh.factory<_i4.ItemValidator>(() => _i4.ItemValidator());
    gh.factory<_i5.AuthRepository>(() => _i6.AuthRepositoryImpl());
    gh.factory<_i7.ReviewRepository>(
        () => _i8.ReviewRepositoryImpl(gh<String>(instanceName: 'storeId')));
    gh.factory<_i9.ItemRepository>(
        () => _i10.ItemRepositoryImpl(gh<String>(instanceName: 'storeId')));
    gh.factory<_i11.ReviewBloc>(
        () => _i11.ReviewBloc(gh<_i7.ReviewRepository>()));
    gh.factory<_i12.OrderRepository>(
        () => _i13.OrderRepositoryImpl(gh<String>(instanceName: 'storeId')));
    gh.factory<_i14.OrderBloc>(
        () => _i14.OrderBloc(gh<_i12.OrderRepository>()));
    gh.factory<_i15.ItemManageBloc>(
        () => _i15.ItemManageBloc(gh<_i9.ItemRepository>()));
    gh.factoryParam<_i16.ItemUpdateBloc, _i17.ItemUpdateState, dynamic>((
      itemUpdateState,
      _,
    ) =>
        _i16.ItemUpdateBloc(
          gh<_i9.ItemRepository>(),
          gh<_i4.ItemValidator>(),
          itemUpdateState,
        ));
    gh.factory<_i18.Preference>(
        () => _i19.SecuredPreference(gh<_i3.FlutterSecureStorage>()));
    gh.factory<_i20.ItemAddBloc>(() => _i20.ItemAddBloc(
          gh<_i9.ItemRepository>(),
          gh<_i4.ItemValidator>(),
        ));
    gh.factory<_i21.LoginBloc>(() => _i21.LoginBloc(
          gh<_i5.AuthRepository>(),
          gh<_i18.Preference>(),
        ));
    return this;
  }
}

class _$PreferenceModule extends _i22.PreferenceModule {}
