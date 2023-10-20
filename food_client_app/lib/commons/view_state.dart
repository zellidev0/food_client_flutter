import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState<T> with _$ViewState<T> {
  const factory ViewState.data({
    required final T data,
  }) = ViewStateData<T>;
  const factory ViewState.error({
    required final Object error,
  }) = ViewStateError<T>;
  const factory ViewState.loading() = ViewStateLoading<T>;

  T dataOr({required T alt}) => map(
        data: (ViewStateData<T> data) => data.data,
        error: (Object error) => alt,
        loading: (_) => alt,
      );

  ViewState<R> mapData<R>(R Function(T t) transform) => map(
        data: (ViewStateData<T> data) => ViewState<R>.data(
          data: transform(data.data),
        ),
        error: (Object error) => ViewState<R>.error(error: error),
        loading: (_) => ViewState<R>.loading(),
      );
}

extension ViewStateExtensionData<T> on T {
  ViewState<T> get toViewStateData => ViewState<T>.data(data: this);
}

extension ViewStateExtensionEror<T> on Object {
  ViewState<T> get toViewStateError => ViewState<T>.error(error: this);
}
