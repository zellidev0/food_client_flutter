// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logging_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loggingServiceHash() => r'62c10939ee18783afd1b9b8a20a48255fb29d9d8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [loggingService].
@ProviderFor(loggingService)
const loggingServiceProvider = LoggingServiceFamily();

/// See also [loggingService].
class LoggingServiceFamily extends Family<LoggingService> {
  /// See also [loggingService].
  const LoggingServiceFamily();

  /// See also [loggingService].
  LoggingServiceProvider call({
    required String loggerName,
  }) {
    return LoggingServiceProvider(
      loggerName: loggerName,
    );
  }

  @override
  LoggingServiceProvider getProviderOverride(
    covariant LoggingServiceProvider provider,
  ) {
    return call(
      loggerName: provider.loggerName,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'loggingServiceProvider';
}

/// See also [loggingService].
class LoggingServiceProvider extends AutoDisposeProvider<LoggingService> {
  /// See also [loggingService].
  LoggingServiceProvider({
    required String loggerName,
  }) : this._internal(
          (ref) => loggingService(
            ref as LoggingServiceRef,
            loggerName: loggerName,
          ),
          from: loggingServiceProvider,
          name: r'loggingServiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loggingServiceHash,
          dependencies: LoggingServiceFamily._dependencies,
          allTransitiveDependencies:
              LoggingServiceFamily._allTransitiveDependencies,
          loggerName: loggerName,
        );

  LoggingServiceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.loggerName,
  }) : super.internal();

  final String loggerName;

  @override
  Override overrideWith(
    LoggingService Function(LoggingServiceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoggingServiceProvider._internal(
        (ref) => create(ref as LoggingServiceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        loggerName: loggerName,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<LoggingService> createElement() {
    return _LoggingServiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoggingServiceProvider && other.loggerName == loggerName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, loggerName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LoggingServiceRef on AutoDisposeProviderRef<LoggingService> {
  /// The parameter `loggerName` of this provider.
  String get loggerName;
}

class _LoggingServiceProviderElement
    extends AutoDisposeProviderElement<LoggingService> with LoggingServiceRef {
  _LoggingServiceProviderElement(super.provider);

  @override
  String get loggerName => (origin as LoggingServiceProvider).loggerName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
