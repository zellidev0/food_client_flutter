import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

typedef BinaryFunction<T, U, R> = R Function(T, U);
typedef TernaryFunction<T, U, V, R> = R Function(T, U, V);

@freezed
class ViewState<T> with _$ViewState<T> {
  const factory ViewState.data(
    final T data,
  ) = ViewStateData<T>;
  const factory ViewState.error(
    final Object error,
  ) = ViewStateError<T>;
  const factory ViewState.loading() = ViewStateLoading<T>;

  const ViewState._();

  ViewState<R> mapData<R>(final R Function(T data) transform) => when(
        data: (final T data) => ViewState<R>.data(transform(data)),
        error: ViewState<R>.error,
        loading: ViewState<R>.loading,
      );

  ViewState<R> flatMapData<R>(final ViewState<R> Function(T data) transform) =>
      when(
        data: transform,
        error: ViewState<R>.error,
        loading: ViewState<R>.loading,
      );

  ViewState<R> mapData2<U, R>(
    final ViewState<U> otherData,
    final R Function(T data, U otherData) transform,
  ) =>
      flatMapData(
        (final T data) => otherData.mapData(
          (final U other) => transform(data, other),
        ),
      );

  ViewState<R> mapData3<U, V, R>(
    final ViewState<U> secondData,
    final ViewState<V> thirdData,
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

extension ViewStateExtension<T extends Object> on T {
  ViewState<T> toViewStateData() => ViewState<T>.data(this);
  ViewState<R> toViewStateError<R>() => ViewState<R>.error(this);
}
