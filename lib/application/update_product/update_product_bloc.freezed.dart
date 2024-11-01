// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateProductEvent {
  int get productID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productID) updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productID)? updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productID)? updateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProduct value) updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProduct value)? updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProductEventCopyWith<UpdateProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProductEventCopyWith<$Res> {
  factory $UpdateProductEventCopyWith(
          UpdateProductEvent value, $Res Function(UpdateProductEvent) then) =
      _$UpdateProductEventCopyWithImpl<$Res, UpdateProductEvent>;
  @useResult
  $Res call({int productID});
}

/// @nodoc
class _$UpdateProductEventCopyWithImpl<$Res, $Val extends UpdateProductEvent>
    implements $UpdateProductEventCopyWith<$Res> {
  _$UpdateProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productID = null,
  }) {
    return _then(_value.copyWith(
      productID: null == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProductImplCopyWith<$Res>
    implements $UpdateProductEventCopyWith<$Res> {
  factory _$$UpdateProductImplCopyWith(
          _$UpdateProductImpl value, $Res Function(_$UpdateProductImpl) then) =
      __$$UpdateProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productID});
}

/// @nodoc
class __$$UpdateProductImplCopyWithImpl<$Res>
    extends _$UpdateProductEventCopyWithImpl<$Res, _$UpdateProductImpl>
    implements _$$UpdateProductImplCopyWith<$Res> {
  __$$UpdateProductImplCopyWithImpl(
      _$UpdateProductImpl _value, $Res Function(_$UpdateProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productID = null,
  }) {
    return _then(_$UpdateProductImpl(
      productID: null == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateProductImpl implements UpdateProduct {
  const _$UpdateProductImpl({required this.productID});

  @override
  final int productID;

  @override
  String toString() {
    return 'UpdateProductEvent.updateProduct(productID: $productID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductImpl &&
            (identical(other.productID, productID) ||
                other.productID == productID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductImplCopyWith<_$UpdateProductImpl> get copyWith =>
      __$$UpdateProductImplCopyWithImpl<_$UpdateProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productID) updateProduct,
  }) {
    return updateProduct(productID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productID)? updateProduct,
  }) {
    return updateProduct?.call(productID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productID)? updateProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(productID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProduct value) updateProduct,
  }) {
    return updateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProduct value)? updateProduct,
  }) {
    return updateProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(this);
    }
    return orElse();
  }
}

abstract class UpdateProduct implements UpdateProductEvent {
  const factory UpdateProduct({required final int productID}) =
      _$UpdateProductImpl;

  @override
  int get productID;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProductImplCopyWith<_$UpdateProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get idUpdate => throw _privateConstructorUsedError;
  List<UpdateProduct> get updatedList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProductStateCopyWith<UpdateProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProductStateCopyWith<$Res> {
  factory $UpdateProductStateCopyWith(
          UpdateProductState value, $Res Function(UpdateProductState) then) =
      _$UpdateProductStateCopyWithImpl<$Res, UpdateProductState>;
  @useResult
  $Res call({bool isLoading, bool idUpdate, List<UpdateProduct> updatedList});
}

/// @nodoc
class _$UpdateProductStateCopyWithImpl<$Res, $Val extends UpdateProductState>
    implements $UpdateProductStateCopyWith<$Res> {
  _$UpdateProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? idUpdate = null,
    Object? updatedList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      idUpdate: null == idUpdate
          ? _value.idUpdate
          : idUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedList: null == updatedList
          ? _value.updatedList
          : updatedList // ignore: cast_nullable_to_non_nullable
              as List<UpdateProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UpdateProductStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool idUpdate, List<UpdateProduct> updatedList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UpdateProductStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? idUpdate = null,
    Object? updatedList = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      idUpdate: null == idUpdate
          ? _value.idUpdate
          : idUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedList: null == updatedList
          ? _value._updatedList
          : updatedList // ignore: cast_nullable_to_non_nullable
              as List<UpdateProduct>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.idUpdate,
      required final List<UpdateProduct> updatedList})
      : _updatedList = updatedList;

  @override
  final bool isLoading;
  @override
  final bool idUpdate;
  final List<UpdateProduct> _updatedList;
  @override
  List<UpdateProduct> get updatedList {
    if (_updatedList is EqualUnmodifiableListView) return _updatedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_updatedList);
  }

  @override
  String toString() {
    return 'UpdateProductState(isLoading: $isLoading, idUpdate: $idUpdate, updatedList: $updatedList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.idUpdate, idUpdate) ||
                other.idUpdate == idUpdate) &&
            const DeepCollectionEquality()
                .equals(other._updatedList, _updatedList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, idUpdate,
      const DeepCollectionEquality().hash(_updatedList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements UpdateProductState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool idUpdate,
      required final List<UpdateProduct> updatedList}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get idUpdate;
  @override
  List<UpdateProduct> get updatedList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
