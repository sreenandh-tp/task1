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
  String get productname => throw _privateConstructorUsedError;
  int get productprice => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productID, String productname,
            int productprice, String description)
        updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productID, String productname, int productprice,
            String description)?
        updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productID, String productname, int productprice,
            String description)?
        updateProduct,
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
  $Res call(
      {int productID,
      String productname,
      int productprice,
      String description});
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
    Object? productname = null,
    Object? productprice = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      productID: null == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as int,
      productname: null == productname
          ? _value.productname
          : productname // ignore: cast_nullable_to_non_nullable
              as String,
      productprice: null == productprice
          ? _value.productprice
          : productprice // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {int productID,
      String productname,
      int productprice,
      String description});
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
    Object? productname = null,
    Object? productprice = null,
    Object? description = null,
  }) {
    return _then(_$UpdateProductImpl(
      productID: null == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as int,
      productname: null == productname
          ? _value.productname
          : productname // ignore: cast_nullable_to_non_nullable
              as String,
      productprice: null == productprice
          ? _value.productprice
          : productprice // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProductImpl implements UpdateProduct {
  const _$UpdateProductImpl(
      {required this.productID,
      required this.productname,
      required this.productprice,
      required this.description});

  @override
  final int productID;
  @override
  final String productname;
  @override
  final int productprice;
  @override
  final String description;

  @override
  String toString() {
    return 'UpdateProductEvent.updateProduct(productID: $productID, productname: $productname, productprice: $productprice, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductImpl &&
            (identical(other.productID, productID) ||
                other.productID == productID) &&
            (identical(other.productname, productname) ||
                other.productname == productname) &&
            (identical(other.productprice, productprice) ||
                other.productprice == productprice) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, productID, productname, productprice, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductImplCopyWith<_$UpdateProductImpl> get copyWith =>
      __$$UpdateProductImplCopyWithImpl<_$UpdateProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productID, String productname,
            int productprice, String description)
        updateProduct,
  }) {
    return updateProduct(productID, productname, productprice, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productID, String productname, int productprice,
            String description)?
        updateProduct,
  }) {
    return updateProduct?.call(
        productID, productname, productprice, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productID, String productname, int productprice,
            String description)?
        updateProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(productID, productname, productprice, description);
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
  const factory UpdateProduct(
      {required final int productID,
      required final String productname,
      required final int productprice,
      required final String description}) = _$UpdateProductImpl;

  @override
  int get productID;
  @override
  String get productname;
  @override
  int get productprice;
  @override
  String get description;
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
  String? get productname => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

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
  $Res call(
      {bool isLoading,
      bool idUpdate,
      List<UpdateProduct> updatedList,
      String? productname,
      int? price,
      String? description});
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
    Object? productname = freezed,
    Object? price = freezed,
    Object? description = freezed,
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
      productname: freezed == productname
          ? _value.productname
          : productname // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {bool isLoading,
      bool idUpdate,
      List<UpdateProduct> updatedList,
      String? productname,
      int? price,
      String? description});
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
    Object? productname = freezed,
    Object? price = freezed,
    Object? description = freezed,
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
      productname: freezed == productname
          ? _value.productname
          : productname // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.idUpdate,
      required final List<UpdateProduct> updatedList,
      this.productname,
      this.price,
      this.description})
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
  final String? productname;
  @override
  final int? price;
  @override
  final String? description;

  @override
  String toString() {
    return 'UpdateProductState(isLoading: $isLoading, idUpdate: $idUpdate, updatedList: $updatedList, productname: $productname, price: $price, description: $description)';
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
                .equals(other._updatedList, _updatedList) &&
            (identical(other.productname, productname) ||
                other.productname == productname) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      idUpdate,
      const DeepCollectionEquality().hash(_updatedList),
      productname,
      price,
      description);

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
      required final List<UpdateProduct> updatedList,
      final String? productname,
      final int? price,
      final String? description}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get idUpdate;
  @override
  List<UpdateProduct> get updatedList;
  @override
  String? get productname;
  @override
  int? get price;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
