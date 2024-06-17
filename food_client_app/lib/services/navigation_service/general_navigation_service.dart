import 'package:flutter/material.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:fpdart/fpdart.dart';

abstract class GeneralNavigationService {
  void navigateToNamed({required final Uri uri});
  void goBack();
  void showSnackBar({
    required final String message,
  });
  void closeDialog<T>({final T? data});
  void pop<T>({final T? data});
  void push({required final Uri uri});
  void replaceWith({required final Uri uri});
  void replaceWithNamed({required final Uri uri});
  void reset({required final Uri uri});
  Future<void> showDialog({
    final Option<List<NavigationServiceDialogAction>> actions =
        const None<List<NavigationServiceDialogAction>>(),
    required final String title,
    required final String content,
  });
  Future<void> showModalBottomSheet({
    required final Widget child,
  });
}
