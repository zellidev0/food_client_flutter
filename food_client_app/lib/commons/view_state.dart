import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

typedef BinaryFunction<T, U, R> = R Function(T, U);
typedef TernaryFunction<T, U, V, R> = R Function(T, U, V);

@freezed
class AsyncData<T> with _$AsyncData<T> {
  const factory AsyncData.data(
    final T data,
  ) = AsyncDataData<T>;
  const factory AsyncData.error(
    final Object error,
  ) = AsyncDataError<T>;
  const factory AsyncData.loading() = AsyncDataLoading<T>;

  const AsyncData._();

  AsyncData<R> mapData<R>(final R Function(T data) transform) => when(
        data: (final T data) => AsyncData<R>.data(transform(data)),
        error: AsyncData<R>.error,
        loading: AsyncData<R>.loading,
      );

  AsyncData<R> flatMapData<R>(final AsyncData<R> Function(T data) transform) =>
      when(
        data: transform,
        error: AsyncData<R>.error,
        loading: AsyncData<R>.loading,
      );

  AsyncData<R> mapData2<U, R>(
    final AsyncData<U> otherData,
    final R Function(T data, U otherData) transform,
  ) =>
      flatMapData(
        (final T data) => otherData.mapData(
          (final U other) => transform(data, other),
        ),
      );

  AsyncData<R> mapData3<U, V, R>(
    final AsyncData<U> secondData,
    final AsyncData<V> thirdData,
    final R Function(T data, U secondData, V thirdData) transform,
  ) =>
      flatMapData(
        (final T data) => secondData.flatMapData(
          (final U second) => thirdData.mapData(
            (final V third) => transform(data, second, third),
          ),
        ),
      );
}

extension AsyncDataExtension<T extends Object> on T {
  AsyncData<T> toAsyncDataData() => AsyncData<T>.data(this);
  AsyncData<R> toAsyncDataError<R>() => AsyncData<R>.error(this);
}
