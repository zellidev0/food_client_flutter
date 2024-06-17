import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_model.freezed.dart';

@freezed
class MainModel with _$MainModel {
  const factory MainModel({
    required final List<MainBottomTab> bottomTabs,
    required final int bottomNavigationBarIndex,
  }) = _MainModel;
}

@freezed
class MainBottomTab with _$MainBottomTab {
  const factory MainBottomTab({
    required final String label,
    required final String routeLocation,
    required final Widget selectedIcon,
    required final Widget unselectedIcon,
  }) = _MainBottomTab;
}
