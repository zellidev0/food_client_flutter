import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    required final List<MainBottomTab> bottomTabs,
    required final int bottomNavigationBarIndex,
  }) = _MainState;
}

@freezed
class MainBottomTab with _$MainBottomTab {
  const factory MainBottomTab({
    required final String label,
    required final Uri route,
    required final Widget selectedIcon,
    required final Widget unselectedIcon,
  }) = _MainBottomTab;
}
