class Input$Int_comparison_exp {
  factory Input$Int_comparison_exp({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_is_null,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  }) =>
      Input$Int_comparison_exp._({
        if ($_eq != null) r'_eq': $_eq,
        if ($_gt != null) r'_gt': $_gt,
        if ($_gte != null) r'_gte': $_gte,
        if ($_in != null) r'_in': $_in,
        if ($_is_null != null) r'_is_null': $_is_null,
        if ($_lt != null) r'_lt': $_lt,
        if ($_lte != null) r'_lte': $_lte,
        if ($_neq != null) r'_neq': $_neq,
        if ($_nin != null) r'_nin': $_nin,
      });

  Input$Int_comparison_exp._(this._$data);

  factory Input$Int_comparison_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as int?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as int?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as int?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] =
          (l$$_in as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('_is_null')) {
      final l$$_is_null = data['_is_null'];
      result$data['_is_null'] = (l$$_is_null as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as int?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as int?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as int?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] =
          (l$$_nin as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    return Input$Int_comparison_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get $_eq => (_$data['_eq'] as int?);
  int? get $_gt => (_$data['_gt'] as int?);
  int? get $_gte => (_$data['_gte'] as int?);
  List<int>? get $_in => (_$data['_in'] as List<int>?);
  bool? get $_is_null => (_$data['_is_null'] as bool?);
  int? get $_lt => (_$data['_lt'] as int?);
  int? get $_lte => (_$data['_lte'] as int?);
  int? get $_neq => (_$data['_neq'] as int?);
  List<int>? get $_nin => (_$data['_nin'] as List<int>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq;
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt;
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte;
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_is_null')) {
      final l$$_is_null = $_is_null;
      result$data['_is_null'] = l$$_is_null;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt;
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte;
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$Int_comparison_exp<Input$Int_comparison_exp> get copyWith =>
      CopyWith$Input$Int_comparison_exp(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Int_comparison_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (_$data.containsKey('_gt') != other._$data.containsKey('_gt')) {
      return false;
    }
    if (l$$_gt != lOther$$_gt) {
      return false;
    }
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (_$data.containsKey('_gte') != other._$data.containsKey('_gte')) {
      return false;
    }
    if (l$$_gte != lOther$$_gte) {
      return false;
    }
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (_$data.containsKey('_in') != other._$data.containsKey('_in')) {
      return false;
    }
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) {
        return false;
      }
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) {
          return false;
        }
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }
    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (_$data.containsKey('_is_null') !=
        other._$data.containsKey('_is_null')) {
      return false;
    }
    if (l$$_is_null != lOther$$_is_null) {
      return false;
    }
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (_$data.containsKey('_lt') != other._$data.containsKey('_lt')) {
      return false;
    }
    if (l$$_lt != lOther$$_lt) {
      return false;
    }
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (_$data.containsKey('_lte') != other._$data.containsKey('_lte')) {
      return false;
    }
    if (l$$_lte != lOther$$_lte) {
      return false;
    }
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (_$data.containsKey('_neq') != other._$data.containsKey('_neq')) {
      return false;
    }
    if (l$$_neq != lOther$$_neq) {
      return false;
    }
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (_$data.containsKey('_nin') != other._$data.containsKey('_nin')) {
      return false;
    }
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) {
        return false;
      }
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) {
          return false;
        }
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_is_null = $_is_null;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
              ? null
              : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_is_null') ? l$$_is_null : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
              ? null
              : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$Int_comparison_exp<TRes> {
  factory CopyWith$Input$Int_comparison_exp(
    Input$Int_comparison_exp instance,
    TRes Function(Input$Int_comparison_exp) then,
  ) = _CopyWithImpl$Input$Int_comparison_exp;

  factory CopyWith$Input$Int_comparison_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$Int_comparison_exp;

  TRes call({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_is_null,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  });
}

class _CopyWithImpl$Input$Int_comparison_exp<TRes>
    implements CopyWith$Input$Int_comparison_exp<TRes> {
  _CopyWithImpl$Input$Int_comparison_exp(
    this._instance,
    this._then,
  );

  final Input$Int_comparison_exp _instance;

  final TRes Function(Input$Int_comparison_exp) _then;

  static const _undefined = {};

  TRes call({
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_in = _undefined,
    Object? $_is_null = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
  }) =>
      _then(Input$Int_comparison_exp._({
        ..._instance._$data,
        if ($_eq != _undefined) '_eq': ($_eq as int?),
        if ($_gt != _undefined) '_gt': ($_gt as int?),
        if ($_gte != _undefined) '_gte': ($_gte as int?),
        if ($_in != _undefined) '_in': ($_in as List<int>?),
        if ($_is_null != _undefined) '_is_null': ($_is_null as bool?),
        if ($_lt != _undefined) '_lt': ($_lt as int?),
        if ($_lte != _undefined) '_lte': ($_lte as int?),
        if ($_neq != _undefined) '_neq': ($_neq as int?),
        if ($_nin != _undefined) '_nin': ($_nin as List<int>?),
      }));
}

class _CopyWithStubImpl$Input$Int_comparison_exp<TRes>
    implements CopyWith$Input$Int_comparison_exp<TRes> {
  _CopyWithStubImpl$Input$Int_comparison_exp(this._res);

  TRes _res;

  call({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_is_null,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  }) =>
      _res;
}

class Input$String_comparison_exp {
  factory Input$String_comparison_exp({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    String? $_ilike,
    List<String>? $_in,
    String? $_iregex,
    bool? $_is_null,
    String? $_like,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    String? $_nilike,
    List<String>? $_nin,
    String? $_niregex,
    String? $_nlike,
    String? $_nregex,
    String? $_nsimilar,
    String? $_regex,
    String? $_similar,
  }) =>
      Input$String_comparison_exp._({
        if ($_eq != null) r'_eq': $_eq,
        if ($_gt != null) r'_gt': $_gt,
        if ($_gte != null) r'_gte': $_gte,
        if ($_ilike != null) r'_ilike': $_ilike,
        if ($_in != null) r'_in': $_in,
        if ($_iregex != null) r'_iregex': $_iregex,
        if ($_is_null != null) r'_is_null': $_is_null,
        if ($_like != null) r'_like': $_like,
        if ($_lt != null) r'_lt': $_lt,
        if ($_lte != null) r'_lte': $_lte,
        if ($_neq != null) r'_neq': $_neq,
        if ($_nilike != null) r'_nilike': $_nilike,
        if ($_nin != null) r'_nin': $_nin,
        if ($_niregex != null) r'_niregex': $_niregex,
        if ($_nlike != null) r'_nlike': $_nlike,
        if ($_nregex != null) r'_nregex': $_nregex,
        if ($_nsimilar != null) r'_nsimilar': $_nsimilar,
        if ($_regex != null) r'_regex': $_regex,
        if ($_similar != null) r'_similar': $_similar,
      });

  Input$String_comparison_exp._(this._$data);

  factory Input$String_comparison_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as String?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as String?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as String?);
    }
    if (data.containsKey('_ilike')) {
      final l$$_ilike = data['_ilike'];
      result$data['_ilike'] = (l$$_ilike as String?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] =
          (l$$_in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('_iregex')) {
      final l$$_iregex = data['_iregex'];
      result$data['_iregex'] = (l$$_iregex as String?);
    }
    if (data.containsKey('_is_null')) {
      final l$$_is_null = data['_is_null'];
      result$data['_is_null'] = (l$$_is_null as bool?);
    }
    if (data.containsKey('_like')) {
      final l$$_like = data['_like'];
      result$data['_like'] = (l$$_like as String?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as String?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as String?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as String?);
    }
    if (data.containsKey('_nilike')) {
      final l$$_nilike = data['_nilike'];
      result$data['_nilike'] = (l$$_nilike as String?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] =
          (l$$_nin as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('_niregex')) {
      final l$$_niregex = data['_niregex'];
      result$data['_niregex'] = (l$$_niregex as String?);
    }
    if (data.containsKey('_nlike')) {
      final l$$_nlike = data['_nlike'];
      result$data['_nlike'] = (l$$_nlike as String?);
    }
    if (data.containsKey('_nregex')) {
      final l$$_nregex = data['_nregex'];
      result$data['_nregex'] = (l$$_nregex as String?);
    }
    if (data.containsKey('_nsimilar')) {
      final l$$_nsimilar = data['_nsimilar'];
      result$data['_nsimilar'] = (l$$_nsimilar as String?);
    }
    if (data.containsKey('_regex')) {
      final l$$_regex = data['_regex'];
      result$data['_regex'] = (l$$_regex as String?);
    }
    if (data.containsKey('_similar')) {
      final l$$_similar = data['_similar'];
      result$data['_similar'] = (l$$_similar as String?);
    }
    return Input$String_comparison_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_eq => (_$data['_eq'] as String?);
  String? get $_gt => (_$data['_gt'] as String?);
  String? get $_gte => (_$data['_gte'] as String?);
  String? get $_ilike => (_$data['_ilike'] as String?);
  List<String>? get $_in => (_$data['_in'] as List<String>?);
  String? get $_iregex => (_$data['_iregex'] as String?);
  bool? get $_is_null => (_$data['_is_null'] as bool?);
  String? get $_like => (_$data['_like'] as String?);
  String? get $_lt => (_$data['_lt'] as String?);
  String? get $_lte => (_$data['_lte'] as String?);
  String? get $_neq => (_$data['_neq'] as String?);
  String? get $_nilike => (_$data['_nilike'] as String?);
  List<String>? get $_nin => (_$data['_nin'] as List<String>?);
  String? get $_niregex => (_$data['_niregex'] as String?);
  String? get $_nlike => (_$data['_nlike'] as String?);
  String? get $_nregex => (_$data['_nregex'] as String?);
  String? get $_nsimilar => (_$data['_nsimilar'] as String?);
  String? get $_regex => (_$data['_regex'] as String?);
  String? get $_similar => (_$data['_similar'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq;
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt;
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte;
    }
    if (_$data.containsKey('_ilike')) {
      final l$$_ilike = $_ilike;
      result$data['_ilike'] = l$$_ilike;
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_iregex')) {
      final l$$_iregex = $_iregex;
      result$data['_iregex'] = l$$_iregex;
    }
    if (_$data.containsKey('_is_null')) {
      final l$$_is_null = $_is_null;
      result$data['_is_null'] = l$$_is_null;
    }
    if (_$data.containsKey('_like')) {
      final l$$_like = $_like;
      result$data['_like'] = l$$_like;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt;
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte;
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq;
    }
    if (_$data.containsKey('_nilike')) {
      final l$$_nilike = $_nilike;
      result$data['_nilike'] = l$$_nilike;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('_niregex')) {
      final l$$_niregex = $_niregex;
      result$data['_niregex'] = l$$_niregex;
    }
    if (_$data.containsKey('_nlike')) {
      final l$$_nlike = $_nlike;
      result$data['_nlike'] = l$$_nlike;
    }
    if (_$data.containsKey('_nregex')) {
      final l$$_nregex = $_nregex;
      result$data['_nregex'] = l$$_nregex;
    }
    if (_$data.containsKey('_nsimilar')) {
      final l$$_nsimilar = $_nsimilar;
      result$data['_nsimilar'] = l$$_nsimilar;
    }
    if (_$data.containsKey('_regex')) {
      final l$$_regex = $_regex;
      result$data['_regex'] = l$$_regex;
    }
    if (_$data.containsKey('_similar')) {
      final l$$_similar = $_similar;
      result$data['_similar'] = l$$_similar;
    }
    return result$data;
  }

  CopyWith$Input$String_comparison_exp<Input$String_comparison_exp>
      get copyWith => CopyWith$Input$String_comparison_exp(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$String_comparison_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (_$data.containsKey('_gt') != other._$data.containsKey('_gt')) {
      return false;
    }
    if (l$$_gt != lOther$$_gt) {
      return false;
    }
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (_$data.containsKey('_gte') != other._$data.containsKey('_gte')) {
      return false;
    }
    if (l$$_gte != lOther$$_gte) {
      return false;
    }
    final l$$_ilike = $_ilike;
    final lOther$$_ilike = other.$_ilike;
    if (_$data.containsKey('_ilike') != other._$data.containsKey('_ilike')) {
      return false;
    }
    if (l$$_ilike != lOther$$_ilike) {
      return false;
    }
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (_$data.containsKey('_in') != other._$data.containsKey('_in')) {
      return false;
    }
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) {
        return false;
      }
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) {
          return false;
        }
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }
    final l$$_iregex = $_iregex;
    final lOther$$_iregex = other.$_iregex;
    if (_$data.containsKey('_iregex') != other._$data.containsKey('_iregex')) {
      return false;
    }
    if (l$$_iregex != lOther$$_iregex) {
      return false;
    }
    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (_$data.containsKey('_is_null') !=
        other._$data.containsKey('_is_null')) {
      return false;
    }
    if (l$$_is_null != lOther$$_is_null) {
      return false;
    }
    final l$$_like = $_like;
    final lOther$$_like = other.$_like;
    if (_$data.containsKey('_like') != other._$data.containsKey('_like')) {
      return false;
    }
    if (l$$_like != lOther$$_like) {
      return false;
    }
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (_$data.containsKey('_lt') != other._$data.containsKey('_lt')) {
      return false;
    }
    if (l$$_lt != lOther$$_lt) {
      return false;
    }
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (_$data.containsKey('_lte') != other._$data.containsKey('_lte')) {
      return false;
    }
    if (l$$_lte != lOther$$_lte) {
      return false;
    }
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (_$data.containsKey('_neq') != other._$data.containsKey('_neq')) {
      return false;
    }
    if (l$$_neq != lOther$$_neq) {
      return false;
    }
    final l$$_nilike = $_nilike;
    final lOther$$_nilike = other.$_nilike;
    if (_$data.containsKey('_nilike') != other._$data.containsKey('_nilike')) {
      return false;
    }
    if (l$$_nilike != lOther$$_nilike) {
      return false;
    }
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (_$data.containsKey('_nin') != other._$data.containsKey('_nin')) {
      return false;
    }
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) {
        return false;
      }
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) {
          return false;
        }
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }
    final l$$_niregex = $_niregex;
    final lOther$$_niregex = other.$_niregex;
    if (_$data.containsKey('_niregex') !=
        other._$data.containsKey('_niregex')) {
      return false;
    }
    if (l$$_niregex != lOther$$_niregex) {
      return false;
    }
    final l$$_nlike = $_nlike;
    final lOther$$_nlike = other.$_nlike;
    if (_$data.containsKey('_nlike') != other._$data.containsKey('_nlike')) {
      return false;
    }
    if (l$$_nlike != lOther$$_nlike) {
      return false;
    }
    final l$$_nregex = $_nregex;
    final lOther$$_nregex = other.$_nregex;
    if (_$data.containsKey('_nregex') != other._$data.containsKey('_nregex')) {
      return false;
    }
    if (l$$_nregex != lOther$$_nregex) {
      return false;
    }
    final l$$_nsimilar = $_nsimilar;
    final lOther$$_nsimilar = other.$_nsimilar;
    if (_$data.containsKey('_nsimilar') !=
        other._$data.containsKey('_nsimilar')) {
      return false;
    }
    if (l$$_nsimilar != lOther$$_nsimilar) {
      return false;
    }
    final l$$_regex = $_regex;
    final lOther$$_regex = other.$_regex;
    if (_$data.containsKey('_regex') != other._$data.containsKey('_regex')) {
      return false;
    }
    if (l$$_regex != lOther$$_regex) {
      return false;
    }
    final l$$_similar = $_similar;
    final lOther$$_similar = other.$_similar;
    if (_$data.containsKey('_similar') !=
        other._$data.containsKey('_similar')) {
      return false;
    }
    if (l$$_similar != lOther$$_similar) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_ilike = $_ilike;
    final l$$_in = $_in;
    final l$$_iregex = $_iregex;
    final l$$_is_null = $_is_null;
    final l$$_like = $_like;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nilike = $_nilike;
    final l$$_nin = $_nin;
    final l$$_niregex = $_niregex;
    final l$$_nlike = $_nlike;
    final l$$_nregex = $_nregex;
    final l$$_nsimilar = $_nsimilar;
    final l$$_regex = $_regex;
    final l$$_similar = $_similar;
    return Object.hashAll([
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_ilike') ? l$$_ilike : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
              ? null
              : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_iregex') ? l$$_iregex : const {},
      _$data.containsKey('_is_null') ? l$$_is_null : const {},
      _$data.containsKey('_like') ? l$$_like : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nilike') ? l$$_nilike : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
              ? null
              : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
      _$data.containsKey('_niregex') ? l$$_niregex : const {},
      _$data.containsKey('_nlike') ? l$$_nlike : const {},
      _$data.containsKey('_nregex') ? l$$_nregex : const {},
      _$data.containsKey('_nsimilar') ? l$$_nsimilar : const {},
      _$data.containsKey('_regex') ? l$$_regex : const {},
      _$data.containsKey('_similar') ? l$$_similar : const {},
    ]);
  }
}

abstract class CopyWith$Input$String_comparison_exp<TRes> {
  factory CopyWith$Input$String_comparison_exp(
    Input$String_comparison_exp instance,
    TRes Function(Input$String_comparison_exp) then,
  ) = _CopyWithImpl$Input$String_comparison_exp;

  factory CopyWith$Input$String_comparison_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$String_comparison_exp;

  TRes call({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    String? $_ilike,
    List<String>? $_in,
    String? $_iregex,
    bool? $_is_null,
    String? $_like,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    String? $_nilike,
    List<String>? $_nin,
    String? $_niregex,
    String? $_nlike,
    String? $_nregex,
    String? $_nsimilar,
    String? $_regex,
    String? $_similar,
  });
}

class _CopyWithImpl$Input$String_comparison_exp<TRes>
    implements CopyWith$Input$String_comparison_exp<TRes> {
  _CopyWithImpl$Input$String_comparison_exp(
    this._instance,
    this._then,
  );

  final Input$String_comparison_exp _instance;

  final TRes Function(Input$String_comparison_exp) _then;

  static const _undefined = {};

  TRes call({
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_ilike = _undefined,
    Object? $_in = _undefined,
    Object? $_iregex = _undefined,
    Object? $_is_null = _undefined,
    Object? $_like = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nilike = _undefined,
    Object? $_nin = _undefined,
    Object? $_niregex = _undefined,
    Object? $_nlike = _undefined,
    Object? $_nregex = _undefined,
    Object? $_nsimilar = _undefined,
    Object? $_regex = _undefined,
    Object? $_similar = _undefined,
  }) =>
      _then(Input$String_comparison_exp._({
        ..._instance._$data,
        if ($_eq != _undefined) '_eq': ($_eq as String?),
        if ($_gt != _undefined) '_gt': ($_gt as String?),
        if ($_gte != _undefined) '_gte': ($_gte as String?),
        if ($_ilike != _undefined) '_ilike': ($_ilike as String?),
        if ($_in != _undefined) '_in': ($_in as List<String>?),
        if ($_iregex != _undefined) '_iregex': ($_iregex as String?),
        if ($_is_null != _undefined) '_is_null': ($_is_null as bool?),
        if ($_like != _undefined) '_like': ($_like as String?),
        if ($_lt != _undefined) '_lt': ($_lt as String?),
        if ($_lte != _undefined) '_lte': ($_lte as String?),
        if ($_neq != _undefined) '_neq': ($_neq as String?),
        if ($_nilike != _undefined) '_nilike': ($_nilike as String?),
        if ($_nin != _undefined) '_nin': ($_nin as List<String>?),
        if ($_niregex != _undefined) '_niregex': ($_niregex as String?),
        if ($_nlike != _undefined) '_nlike': ($_nlike as String?),
        if ($_nregex != _undefined) '_nregex': ($_nregex as String?),
        if ($_nsimilar != _undefined) '_nsimilar': ($_nsimilar as String?),
        if ($_regex != _undefined) '_regex': ($_regex as String?),
        if ($_similar != _undefined) '_similar': ($_similar as String?),
      }));
}

class _CopyWithStubImpl$Input$String_comparison_exp<TRes>
    implements CopyWith$Input$String_comparison_exp<TRes> {
  _CopyWithStubImpl$Input$String_comparison_exp(this._res);

  TRes _res;

  call({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    String? $_ilike,
    List<String>? $_in,
    String? $_iregex,
    bool? $_is_null,
    String? $_like,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    String? $_nilike,
    List<String>? $_nin,
    String? $_niregex,
    String? $_nlike,
    String? $_nregex,
    String? $_nsimilar,
    String? $_regex,
    String? $_similar,
  }) =>
      _res;
}

class Input$bridge_recipes_cuisines_aggregate_bool_exp {
  factory Input$bridge_recipes_cuisines_aggregate_bool_exp(
          {Input$bridge_recipes_cuisines_aggregate_bool_exp_count? count}) =>
      Input$bridge_recipes_cuisines_aggregate_bool_exp._({
        if (count != null) r'count': count,
      });

  Input$bridge_recipes_cuisines_aggregate_bool_exp._(this._$data);

  factory Input$bridge_recipes_cuisines_aggregate_bool_exp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input$bridge_recipes_cuisines_aggregate_bool_exp_count.fromJson(
              (l$count as Map<String, dynamic>));
    }
    return Input$bridge_recipes_cuisines_aggregate_bool_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_cuisines_aggregate_bool_exp_count? get count =>
      (_$data['count']
          as Input$bridge_recipes_cuisines_aggregate_bool_exp_count?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp<
          Input$bridge_recipes_cuisines_aggregate_bool_exp>
      get copyWith => CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_aggregate_bool_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (_$data.containsKey('count') != other._$data.containsKey('count')) {
      return false;
    }
    if (l$count != lOther$count) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    return Object.hashAll([_$data.containsKey('count') ? l$count : const {}]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp<TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp(
    Input$bridge_recipes_cuisines_aggregate_bool_exp instance,
    TRes Function(Input$bridge_recipes_cuisines_aggregate_bool_exp) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_aggregate_bool_exp;

  factory CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_aggregate_bool_exp;

  TRes call({Input$bridge_recipes_cuisines_aggregate_bool_exp_count? count});
  CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count<TRes>
      get count;
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_aggregate_bool_exp<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_aggregate_bool_exp(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_aggregate_bool_exp _instance;

  final TRes Function(Input$bridge_recipes_cuisines_aggregate_bool_exp) _then;

  static const _undefined = {};

  TRes call({Object? count = _undefined}) =>
      _then(Input$bridge_recipes_cuisines_aggregate_bool_exp._({
        ..._instance._$data,
        if (count != _undefined)
          'count': (count
              as Input$bridge_recipes_cuisines_aggregate_bool_exp_count?),
      }));
  CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count<TRes>
      get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count(
            local$count, (e) => call(count: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_aggregate_bool_exp<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_aggregate_bool_exp(this._res);

  TRes _res;

  call({Input$bridge_recipes_cuisines_aggregate_bool_exp_count? count}) => _res;
  CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count<TRes>
      get count =>
          CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count.stub(
              _res);
}

class Input$bridge_recipes_cuisines_aggregate_bool_exp_count {
  factory Input$bridge_recipes_cuisines_aggregate_bool_exp_count({
    List<Enum$bridge_recipes_cuisines_select_column>? arguments,
    bool? distinct,
    Input$bridge_recipes_cuisines_bool_exp? filter,
    required Input$Int_comparison_exp predicate,
  }) =>
      Input$bridge_recipes_cuisines_aggregate_bool_exp_count._({
        if (arguments != null) r'arguments': arguments,
        if (distinct != null) r'distinct': distinct,
        if (filter != null) r'filter': filter,
        r'predicate': predicate,
      });

  Input$bridge_recipes_cuisines_aggregate_bool_exp_count._(this._$data);

  factory Input$bridge_recipes_cuisines_aggregate_bool_exp_count.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) => fromJson$Enum$bridge_recipes_cuisines_select_column(
              (e as String)))
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$bridge_recipes_cuisines_bool_exp.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input$Int_comparison_exp.fromJson(
        (l$predicate as Map<String, dynamic>));
    return Input$bridge_recipes_cuisines_aggregate_bool_exp_count._(
        result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum$bridge_recipes_cuisines_select_column>? get arguments =>
      (_$data['arguments']
          as List<Enum$bridge_recipes_cuisines_select_column>?);
  bool? get distinct => (_$data['distinct'] as bool?);
  Input$bridge_recipes_cuisines_bool_exp? get filter =>
      (_$data['filter'] as Input$bridge_recipes_cuisines_bool_exp?);
  Input$Int_comparison_exp get predicate =>
      (_$data['predicate'] as Input$Int_comparison_exp);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson$Enum$bridge_recipes_cuisines_select_column(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count<
          Input$bridge_recipes_cuisines_aggregate_bool_exp_count>
      get copyWith =>
          CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_aggregate_bool_exp_count) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
              ? null
              : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count<
    TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count(
    Input$bridge_recipes_cuisines_aggregate_bool_exp_count instance,
    TRes Function(Input$bridge_recipes_cuisines_aggregate_bool_exp_count) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_aggregate_bool_exp_count;

  factory CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_aggregate_bool_exp_count;

  TRes call({
    List<Enum$bridge_recipes_cuisines_select_column>? arguments,
    bool? distinct,
    Input$bridge_recipes_cuisines_bool_exp? filter,
    Input$Int_comparison_exp? predicate,
  });
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> get filter;
  CopyWith$Input$Int_comparison_exp<TRes> get predicate;
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_aggregate_bool_exp_count<TRes>
    implements
        CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_aggregate_bool_exp_count(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_aggregate_bool_exp_count _instance;

  final TRes Function(Input$bridge_recipes_cuisines_aggregate_bool_exp_count)
      _then;

  static const _undefined = {};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_aggregate_bool_exp_count._({
        ..._instance._$data,
        if (arguments != _undefined)
          'arguments':
              (arguments as List<Enum$bridge_recipes_cuisines_select_column>?),
        if (distinct != _undefined) 'distinct': (distinct as bool?),
        if (filter != _undefined)
          'filter': (filter as Input$bridge_recipes_cuisines_bool_exp?),
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as Input$Int_comparison_exp),
      }));
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith$Input$bridge_recipes_cuisines_bool_exp.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_bool_exp(
            local$filter, (e) => call(filter: e));
  }

  CopyWith$Input$Int_comparison_exp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith$Input$Int_comparison_exp(
        local$predicate, (e) => call(predicate: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_aggregate_bool_exp_count<
        TRes>
    implements
        CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp_count<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_aggregate_bool_exp_count(
      this._res);

  TRes _res;

  call({
    List<Enum$bridge_recipes_cuisines_select_column>? arguments,
    bool? distinct,
    Input$bridge_recipes_cuisines_bool_exp? filter,
    Input$Int_comparison_exp? predicate,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> get filter =>
      CopyWith$Input$bridge_recipes_cuisines_bool_exp.stub(_res);
  CopyWith$Input$Int_comparison_exp<TRes> get predicate =>
      CopyWith$Input$Int_comparison_exp.stub(_res);
}

class Input$bridge_recipes_cuisines_aggregate_order_by {
  factory Input$bridge_recipes_cuisines_aggregate_order_by({
    Enum$order_by? count,
    Input$bridge_recipes_cuisines_max_order_by? max,
    Input$bridge_recipes_cuisines_min_order_by? min,
  }) =>
      Input$bridge_recipes_cuisines_aggregate_order_by._({
        if (count != null) r'count': count,
        if (max != null) r'max': max,
        if (min != null) r'min': min,
      });

  Input$bridge_recipes_cuisines_aggregate_order_by._(this._$data);

  factory Input$bridge_recipes_cuisines_aggregate_order_by.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] =
          l$count == null ? null : fromJson$Enum$order_by((l$count as String));
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = l$max == null
          ? null
          : Input$bridge_recipes_cuisines_max_order_by.fromJson(
              (l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input$bridge_recipes_cuisines_min_order_by.fromJson(
              (l$min as Map<String, dynamic>));
    }
    return Input$bridge_recipes_cuisines_aggregate_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get count => (_$data['count'] as Enum$order_by?);
  Input$bridge_recipes_cuisines_max_order_by? get max =>
      (_$data['max'] as Input$bridge_recipes_cuisines_max_order_by?);
  Input$bridge_recipes_cuisines_min_order_by? get min =>
      (_$data['min'] as Input$bridge_recipes_cuisines_min_order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] =
          l$count == null ? null : toJson$Enum$order_by(l$count);
    }
    if (_$data.containsKey('max')) {
      final l$max = max;
      result$data['max'] = l$max?.toJson();
    }
    if (_$data.containsKey('min')) {
      final l$min = min;
      result$data['min'] = l$min?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by<
          Input$bridge_recipes_cuisines_aggregate_order_by>
      get copyWith => CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_aggregate_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (_$data.containsKey('count') != other._$data.containsKey('count')) {
      return false;
    }
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (_$data.containsKey('max') != other._$data.containsKey('max')) {
      return false;
    }
    if (l$max != lOther$max) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (_$data.containsKey('min') != other._$data.containsKey('min')) {
      return false;
    }
    if (l$min != lOther$min) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$min = min;
    return Object.hashAll([
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('max') ? l$max : const {},
      _$data.containsKey('min') ? l$min : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by<TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by(
    Input$bridge_recipes_cuisines_aggregate_order_by instance,
    TRes Function(Input$bridge_recipes_cuisines_aggregate_order_by) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_aggregate_order_by;

  factory CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_aggregate_order_by;

  TRes call({
    Enum$order_by? count,
    Input$bridge_recipes_cuisines_max_order_by? max,
    Input$bridge_recipes_cuisines_min_order_by? min,
  });
  CopyWith$Input$bridge_recipes_cuisines_max_order_by<TRes> get max;
  CopyWith$Input$bridge_recipes_cuisines_min_order_by<TRes> get min;
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_aggregate_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_aggregate_order_by(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_aggregate_order_by _instance;

  final TRes Function(Input$bridge_recipes_cuisines_aggregate_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_aggregate_order_by._({
        ..._instance._$data,
        if (count != _undefined) 'count': (count as Enum$order_by?),
        if (max != _undefined)
          'max': (max as Input$bridge_recipes_cuisines_max_order_by?),
        if (min != _undefined)
          'min': (min as Input$bridge_recipes_cuisines_min_order_by?),
      }));
  CopyWith$Input$bridge_recipes_cuisines_max_order_by<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Input$bridge_recipes_cuisines_max_order_by.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_max_order_by(
            local$max, (e) => call(max: e));
  }

  CopyWith$Input$bridge_recipes_cuisines_min_order_by<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith$Input$bridge_recipes_cuisines_min_order_by.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_min_order_by(
            local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_aggregate_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_aggregate_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? count,
    Input$bridge_recipes_cuisines_max_order_by? max,
    Input$bridge_recipes_cuisines_min_order_by? min,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_cuisines_max_order_by<TRes> get max =>
      CopyWith$Input$bridge_recipes_cuisines_max_order_by.stub(_res);
  CopyWith$Input$bridge_recipes_cuisines_min_order_by<TRes> get min =>
      CopyWith$Input$bridge_recipes_cuisines_min_order_by.stub(_res);
}

class Input$bridge_recipes_cuisines_arr_rel_insert_input {
  factory Input$bridge_recipes_cuisines_arr_rel_insert_input({
    required List<Input$bridge_recipes_cuisines_insert_input> data,
    Input$bridge_recipes_cuisines_on_conflict? on_conflict,
  }) =>
      Input$bridge_recipes_cuisines_arr_rel_insert_input._({
        r'data': data,
        if (on_conflict != null) r'on_conflict': on_conflict,
      });

  Input$bridge_recipes_cuisines_arr_rel_insert_input._(this._$data);

  factory Input$bridge_recipes_cuisines_arr_rel_insert_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map((e) => Input$bridge_recipes_cuisines_insert_input.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('on_conflict')) {
      final l$on_conflict = data['on_conflict'];
      result$data['on_conflict'] = l$on_conflict == null
          ? null
          : Input$bridge_recipes_cuisines_on_conflict.fromJson(
              (l$on_conflict as Map<String, dynamic>));
    }
    return Input$bridge_recipes_cuisines_arr_rel_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$bridge_recipes_cuisines_insert_input> get data =>
      (_$data['data'] as List<Input$bridge_recipes_cuisines_insert_input>);
  Input$bridge_recipes_cuisines_on_conflict? get on_conflict =>
      (_$data['on_conflict'] as Input$bridge_recipes_cuisines_on_conflict?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.map((e) => e.toJson()).toList();
    if (_$data.containsKey('on_conflict')) {
      final l$on_conflict = on_conflict;
      result$data['on_conflict'] = l$on_conflict?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input<
          Input$bridge_recipes_cuisines_arr_rel_insert_input>
      get copyWith =>
          CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_arr_rel_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data.length != lOther$data.length) {
      return false;
    }
    for (int i = 0; i < l$data.length; i++) {
      final l$data$entry = l$data[i];
      final lOther$data$entry = lOther$data[i];
      if (l$data$entry != lOther$data$entry) {
        return false;
      }
    }
    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (_$data.containsKey('on_conflict') !=
        other._$data.containsKey('on_conflict')) {
      return false;
    }
    if (l$on_conflict != lOther$on_conflict) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll([
      Object.hashAll(l$data.map((v) => v)),
      _$data.containsKey('on_conflict') ? l$on_conflict : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input<
    TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input(
    Input$bridge_recipes_cuisines_arr_rel_insert_input instance,
    TRes Function(Input$bridge_recipes_cuisines_arr_rel_insert_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_arr_rel_insert_input;

  factory CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_arr_rel_insert_input;

  TRes call({
    List<Input$bridge_recipes_cuisines_insert_input>? data,
    Input$bridge_recipes_cuisines_on_conflict? on_conflict,
  });
  TRes data(
      Iterable<Input$bridge_recipes_cuisines_insert_input> Function(
              Iterable<
                  CopyWith$Input$bridge_recipes_cuisines_insert_input<
                      Input$bridge_recipes_cuisines_insert_input>>)
          _fn);
  CopyWith$Input$bridge_recipes_cuisines_on_conflict<TRes> get on_conflict;
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_arr_rel_insert_input<TRes>
    implements
        CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_arr_rel_insert_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_arr_rel_insert_input _instance;

  final TRes Function(Input$bridge_recipes_cuisines_arr_rel_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? data = _undefined,
    Object? on_conflict = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_arr_rel_insert_input._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as List<Input$bridge_recipes_cuisines_insert_input>),
        if (on_conflict != _undefined)
          'on_conflict':
              (on_conflict as Input$bridge_recipes_cuisines_on_conflict?),
      }));
  TRes data(
          Iterable<Input$bridge_recipes_cuisines_insert_input> Function(
                  Iterable<
                      CopyWith$Input$bridge_recipes_cuisines_insert_input<
                          Input$bridge_recipes_cuisines_insert_input>>)
              _fn) =>
      call(
          data: _fn(_instance.data
              .map((e) => CopyWith$Input$bridge_recipes_cuisines_insert_input(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Input$bridge_recipes_cuisines_on_conflict<TRes> get on_conflict {
    final local$on_conflict = _instance.on_conflict;
    return local$on_conflict == null
        ? CopyWith$Input$bridge_recipes_cuisines_on_conflict.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_on_conflict(
            local$on_conflict, (e) => call(on_conflict: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_arr_rel_insert_input<TRes>
    implements
        CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_arr_rel_insert_input(
      this._res);

  TRes _res;

  call({
    List<Input$bridge_recipes_cuisines_insert_input>? data,
    Input$bridge_recipes_cuisines_on_conflict? on_conflict,
  }) =>
      _res;
  data(_fn) => _res;
  CopyWith$Input$bridge_recipes_cuisines_on_conflict<TRes> get on_conflict =>
      CopyWith$Input$bridge_recipes_cuisines_on_conflict.stub(_res);
}

class Input$bridge_recipes_cuisines_bool_exp {
  factory Input$bridge_recipes_cuisines_bool_exp({
    List<Input$bridge_recipes_cuisines_bool_exp>? $_and,
    Input$String_comparison_exp? $_cuisine_id,
    Input$bridge_recipes_cuisines_bool_exp? $_not,
    List<Input$bridge_recipes_cuisines_bool_exp>? $_or,
    Input$String_comparison_exp? $_recipe_id,
    Input$cuisines_bool_exp? cuisines,
    Input$uuid_comparison_exp? id,
    Input$recipes_bool_exp? recipes,
  }) =>
      Input$bridge_recipes_cuisines_bool_exp._({
        if ($_and != null) r'_and': $_and,
        if ($_cuisine_id != null) r'_cuisine_id': $_cuisine_id,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if (cuisines != null) r'cuisines': cuisines,
        if (id != null) r'id': id,
        if (recipes != null) r'recipes': recipes,
      });

  Input$bridge_recipes_cuisines_bool_exp._(this._$data);

  factory Input$bridge_recipes_cuisines_bool_exp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input$bridge_recipes_cuisines_bool_exp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_cuisine_id')) {
      final l$$_cuisine_id = data['_cuisine_id'];
      result$data['_cuisine_id'] = l$$_cuisine_id == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$$_cuisine_id as Map<String, dynamic>));
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input$bridge_recipes_cuisines_bool_exp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input$bridge_recipes_cuisines_bool_exp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = l$$_recipe_id == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$$_recipe_id as Map<String, dynamic>));
    }
    if (data.containsKey('cuisines')) {
      final l$cuisines = data['cuisines'];
      result$data['cuisines'] = l$cuisines == null
          ? null
          : Input$cuisines_bool_exp.fromJson(
              (l$cuisines as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$uuid_comparison_exp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('recipes')) {
      final l$recipes = data['recipes'];
      result$data['recipes'] = l$recipes == null
          ? null
          : Input$recipes_bool_exp.fromJson(
              (l$recipes as Map<String, dynamic>));
    }
    return Input$bridge_recipes_cuisines_bool_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$bridge_recipes_cuisines_bool_exp>? get $_and =>
      (_$data['_and'] as List<Input$bridge_recipes_cuisines_bool_exp>?);
  Input$String_comparison_exp? get $_cuisine_id =>
      (_$data['_cuisine_id'] as Input$String_comparison_exp?);
  Input$bridge_recipes_cuisines_bool_exp? get $_not =>
      (_$data['_not'] as Input$bridge_recipes_cuisines_bool_exp?);
  List<Input$bridge_recipes_cuisines_bool_exp>? get $_or =>
      (_$data['_or'] as List<Input$bridge_recipes_cuisines_bool_exp>?);
  Input$String_comparison_exp? get $_recipe_id =>
      (_$data['_recipe_id'] as Input$String_comparison_exp?);
  Input$cuisines_bool_exp? get cuisines =>
      (_$data['cuisines'] as Input$cuisines_bool_exp?);
  Input$uuid_comparison_exp? get id =>
      (_$data['id'] as Input$uuid_comparison_exp?);
  Input$recipes_bool_exp? get recipes =>
      (_$data['recipes'] as Input$recipes_bool_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_cuisine_id')) {
      final l$$_cuisine_id = $_cuisine_id;
      result$data['_cuisine_id'] = l$$_cuisine_id?.toJson();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] = l$$_recipe_id?.toJson();
    }
    if (_$data.containsKey('cuisines')) {
      final l$cuisines = cuisines;
      result$data['cuisines'] = l$cuisines?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('recipes')) {
      final l$recipes = recipes;
      result$data['recipes'] = l$recipes?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_bool_exp<
          Input$bridge_recipes_cuisines_bool_exp>
      get copyWith => CopyWith$Input$bridge_recipes_cuisines_bool_exp(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_bool_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_cuisine_id = $_cuisine_id;
    final lOther$$_cuisine_id = other.$_cuisine_id;
    if (_$data.containsKey('_cuisine_id') !=
        other._$data.containsKey('_cuisine_id')) {
      return false;
    }
    if (l$$_cuisine_id != lOther$$_cuisine_id) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$cuisines = cuisines;
    final lOther$cuisines = other.cuisines;
    if (_$data.containsKey('cuisines') !=
        other._$data.containsKey('cuisines')) {
      return false;
    }
    if (l$cuisines != lOther$cuisines) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$recipes = recipes;
    final lOther$recipes = other.recipes;
    if (_$data.containsKey('recipes') != other._$data.containsKey('recipes')) {
      return false;
    }
    if (l$recipes != lOther$recipes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_cuisine_id = $_cuisine_id;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$$_recipe_id = $_recipe_id;
    final l$cuisines = cuisines;
    final l$id = id;
    final l$recipes = recipes;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
              ? null
              : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_cuisine_id') ? l$$_cuisine_id : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
              ? null
              : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('cuisines') ? l$cuisines : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('recipes') ? l$recipes : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_bool_exp(
    Input$bridge_recipes_cuisines_bool_exp instance,
    TRes Function(Input$bridge_recipes_cuisines_bool_exp) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_bool_exp;

  factory CopyWith$Input$bridge_recipes_cuisines_bool_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_bool_exp;

  TRes call({
    List<Input$bridge_recipes_cuisines_bool_exp>? $_and,
    Input$String_comparison_exp? $_cuisine_id,
    Input$bridge_recipes_cuisines_bool_exp? $_not,
    List<Input$bridge_recipes_cuisines_bool_exp>? $_or,
    Input$String_comparison_exp? $_recipe_id,
    Input$cuisines_bool_exp? cuisines,
    Input$uuid_comparison_exp? id,
    Input$recipes_bool_exp? recipes,
  });
  TRes $_and(
      Iterable<Input$bridge_recipes_cuisines_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$bridge_recipes_cuisines_bool_exp<
                      Input$bridge_recipes_cuisines_bool_exp>>?)
          _fn);
  CopyWith$Input$String_comparison_exp<TRes> get $_cuisine_id;
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> get $_not;
  TRes $_or(
      Iterable<Input$bridge_recipes_cuisines_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$bridge_recipes_cuisines_bool_exp<
                      Input$bridge_recipes_cuisines_bool_exp>>?)
          _fn);
  CopyWith$Input$String_comparison_exp<TRes> get $_recipe_id;
  CopyWith$Input$cuisines_bool_exp<TRes> get cuisines;
  CopyWith$Input$uuid_comparison_exp<TRes> get id;
  CopyWith$Input$recipes_bool_exp<TRes> get recipes;
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_bool_exp<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_bool_exp(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_bool_exp _instance;

  final TRes Function(Input$bridge_recipes_cuisines_bool_exp) _then;

  static const _undefined = {};

  TRes call({
    Object? $_and = _undefined,
    Object? $_cuisine_id = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? $_recipe_id = _undefined,
    Object? cuisines = _undefined,
    Object? id = _undefined,
    Object? recipes = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_bool_exp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input$bridge_recipes_cuisines_bool_exp>?),
        if ($_cuisine_id != _undefined)
          '_cuisine_id': ($_cuisine_id as Input$String_comparison_exp?),
        if ($_not != _undefined)
          '_not': ($_not as Input$bridge_recipes_cuisines_bool_exp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input$bridge_recipes_cuisines_bool_exp>?),
        if ($_recipe_id != _undefined)
          '_recipe_id': ($_recipe_id as Input$String_comparison_exp?),
        if (cuisines != _undefined)
          'cuisines': (cuisines as Input$cuisines_bool_exp?),
        if (id != _undefined) 'id': (id as Input$uuid_comparison_exp?),
        if (recipes != _undefined)
          'recipes': (recipes as Input$recipes_bool_exp?),
      }));
  TRes $_and(
          Iterable<Input$bridge_recipes_cuisines_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$bridge_recipes_cuisines_bool_exp<
                          Input$bridge_recipes_cuisines_bool_exp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and
              ?.map((e) => CopyWith$Input$bridge_recipes_cuisines_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$String_comparison_exp<TRes> get $_cuisine_id {
    final local$$_cuisine_id = _instance.$_cuisine_id;
    return local$$_cuisine_id == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$$_cuisine_id, (e) => call($_cuisine_id: e));
  }

  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith$Input$bridge_recipes_cuisines_bool_exp.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_bool_exp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input$bridge_recipes_cuisines_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$bridge_recipes_cuisines_bool_exp<
                          Input$bridge_recipes_cuisines_bool_exp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or
              ?.map((e) => CopyWith$Input$bridge_recipes_cuisines_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$String_comparison_exp<TRes> get $_recipe_id {
    final local$$_recipe_id = _instance.$_recipe_id;
    return local$$_recipe_id == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$$_recipe_id, (e) => call($_recipe_id: e));
  }

  CopyWith$Input$cuisines_bool_exp<TRes> get cuisines {
    final local$cuisines = _instance.cuisines;
    return local$cuisines == null
        ? CopyWith$Input$cuisines_bool_exp.stub(_then(_instance))
        : CopyWith$Input$cuisines_bool_exp(
            local$cuisines, (e) => call(cuisines: e));
  }

  CopyWith$Input$uuid_comparison_exp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$uuid_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$uuid_comparison_exp(local$id, (e) => call(id: e));
  }

  CopyWith$Input$recipes_bool_exp<TRes> get recipes {
    final local$recipes = _instance.recipes;
    return local$recipes == null
        ? CopyWith$Input$recipes_bool_exp.stub(_then(_instance))
        : CopyWith$Input$recipes_bool_exp(
            local$recipes, (e) => call(recipes: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_bool_exp<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_bool_exp(this._res);

  TRes _res;

  call({
    List<Input$bridge_recipes_cuisines_bool_exp>? $_and,
    Input$String_comparison_exp? $_cuisine_id,
    Input$bridge_recipes_cuisines_bool_exp? $_not,
    List<Input$bridge_recipes_cuisines_bool_exp>? $_or,
    Input$String_comparison_exp? $_recipe_id,
    Input$cuisines_bool_exp? cuisines,
    Input$uuid_comparison_exp? id,
    Input$recipes_bool_exp? recipes,
  }) =>
      _res;
  $_and(_fn) => _res;
  CopyWith$Input$String_comparison_exp<TRes> get $_cuisine_id =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> get $_not =>
      CopyWith$Input$bridge_recipes_cuisines_bool_exp.stub(_res);
  $_or(_fn) => _res;
  CopyWith$Input$String_comparison_exp<TRes> get $_recipe_id =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$cuisines_bool_exp<TRes> get cuisines =>
      CopyWith$Input$cuisines_bool_exp.stub(_res);
  CopyWith$Input$uuid_comparison_exp<TRes> get id =>
      CopyWith$Input$uuid_comparison_exp.stub(_res);
  CopyWith$Input$recipes_bool_exp<TRes> get recipes =>
      CopyWith$Input$recipes_bool_exp.stub(_res);
}

class Input$bridge_recipes_cuisines_insert_input {
  factory Input$bridge_recipes_cuisines_insert_input({
    required String $_cuisine_id,
    required String $_recipe_id,
    Input$cuisines_obj_rel_insert_input? cuisines,
    String? id,
    Input$recipes_obj_rel_insert_input? recipes,
  }) =>
      Input$bridge_recipes_cuisines_insert_input._({
        r'_cuisine_id': $_cuisine_id,
        r'_recipe_id': $_recipe_id,
        if (cuisines != null) r'cuisines': cuisines,
        if (id != null) r'id': id,
        if (recipes != null) r'recipes': recipes,
      });

  Input$bridge_recipes_cuisines_insert_input._(this._$data);

  factory Input$bridge_recipes_cuisines_insert_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$_cuisine_id = data['_cuisine_id'];
    result$data['_cuisine_id'] = (l$$_cuisine_id as String);
    final l$$_recipe_id = data['_recipe_id'];
    result$data['_recipe_id'] = (l$$_recipe_id as String);
    if (data.containsKey('cuisines')) {
      final l$cuisines = data['cuisines'];
      result$data['cuisines'] = l$cuisines == null
          ? null
          : Input$cuisines_obj_rel_insert_input.fromJson(
              (l$cuisines as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('recipes')) {
      final l$recipes = data['recipes'];
      result$data['recipes'] = l$recipes == null
          ? null
          : Input$recipes_obj_rel_insert_input.fromJson(
              (l$recipes as Map<String, dynamic>));
    }
    return Input$bridge_recipes_cuisines_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String get $_cuisine_id => (_$data['_cuisine_id'] as String);
  String get $_recipe_id => (_$data['_recipe_id'] as String);
  Input$cuisines_obj_rel_insert_input? get cuisines =>
      (_$data['cuisines'] as Input$cuisines_obj_rel_insert_input?);
  String? get id => (_$data['id'] as String?);
  Input$recipes_obj_rel_insert_input? get recipes =>
      (_$data['recipes'] as Input$recipes_obj_rel_insert_input?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$_cuisine_id = $_cuisine_id;
    result$data['_cuisine_id'] = l$$_cuisine_id;
    final l$$_recipe_id = $_recipe_id;
    result$data['_recipe_id'] = l$$_recipe_id;
    if (_$data.containsKey('cuisines')) {
      final l$cuisines = cuisines;
      result$data['cuisines'] = l$cuisines?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('recipes')) {
      final l$recipes = recipes;
      result$data['recipes'] = l$recipes?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_insert_input<
          Input$bridge_recipes_cuisines_insert_input>
      get copyWith => CopyWith$Input$bridge_recipes_cuisines_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_cuisine_id = $_cuisine_id;
    final lOther$$_cuisine_id = other.$_cuisine_id;
    if (l$$_cuisine_id != lOther$$_cuisine_id) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$cuisines = cuisines;
    final lOther$cuisines = other.cuisines;
    if (_$data.containsKey('cuisines') !=
        other._$data.containsKey('cuisines')) {
      return false;
    }
    if (l$cuisines != lOther$cuisines) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$recipes = recipes;
    final lOther$recipes = other.recipes;
    if (_$data.containsKey('recipes') != other._$data.containsKey('recipes')) {
      return false;
    }
    if (l$recipes != lOther$recipes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_cuisine_id = $_cuisine_id;
    final l$$_recipe_id = $_recipe_id;
    final l$cuisines = cuisines;
    final l$id = id;
    final l$recipes = recipes;
    return Object.hashAll([
      l$$_cuisine_id,
      l$$_recipe_id,
      _$data.containsKey('cuisines') ? l$cuisines : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('recipes') ? l$recipes : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_insert_input<TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_insert_input(
    Input$bridge_recipes_cuisines_insert_input instance,
    TRes Function(Input$bridge_recipes_cuisines_insert_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_insert_input;

  factory CopyWith$Input$bridge_recipes_cuisines_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_insert_input;

  TRes call({
    String? $_cuisine_id,
    String? $_recipe_id,
    Input$cuisines_obj_rel_insert_input? cuisines,
    String? id,
    Input$recipes_obj_rel_insert_input? recipes,
  });
  CopyWith$Input$cuisines_obj_rel_insert_input<TRes> get cuisines;
  CopyWith$Input$recipes_obj_rel_insert_input<TRes> get recipes;
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_insert_input<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_insert_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_insert_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_insert_input _instance;

  final TRes Function(Input$bridge_recipes_cuisines_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? $_cuisine_id = _undefined,
    Object? $_recipe_id = _undefined,
    Object? cuisines = _undefined,
    Object? id = _undefined,
    Object? recipes = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_insert_input._({
        ..._instance._$data,
        if ($_cuisine_id != _undefined && $_cuisine_id != null)
          '_cuisine_id': ($_cuisine_id as String),
        if ($_recipe_id != _undefined && $_recipe_id != null)
          '_recipe_id': ($_recipe_id as String),
        if (cuisines != _undefined)
          'cuisines': (cuisines as Input$cuisines_obj_rel_insert_input?),
        if (id != _undefined) 'id': (id as String?),
        if (recipes != _undefined)
          'recipes': (recipes as Input$recipes_obj_rel_insert_input?),
      }));
  CopyWith$Input$cuisines_obj_rel_insert_input<TRes> get cuisines {
    final local$cuisines = _instance.cuisines;
    return local$cuisines == null
        ? CopyWith$Input$cuisines_obj_rel_insert_input.stub(_then(_instance))
        : CopyWith$Input$cuisines_obj_rel_insert_input(
            local$cuisines, (e) => call(cuisines: e));
  }

  CopyWith$Input$recipes_obj_rel_insert_input<TRes> get recipes {
    final local$recipes = _instance.recipes;
    return local$recipes == null
        ? CopyWith$Input$recipes_obj_rel_insert_input.stub(_then(_instance))
        : CopyWith$Input$recipes_obj_rel_insert_input(
            local$recipes, (e) => call(recipes: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_insert_input<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_insert_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_insert_input(this._res);

  TRes _res;

  call({
    String? $_cuisine_id,
    String? $_recipe_id,
    Input$cuisines_obj_rel_insert_input? cuisines,
    String? id,
    Input$recipes_obj_rel_insert_input? recipes,
  }) =>
      _res;
  CopyWith$Input$cuisines_obj_rel_insert_input<TRes> get cuisines =>
      CopyWith$Input$cuisines_obj_rel_insert_input.stub(_res);
  CopyWith$Input$recipes_obj_rel_insert_input<TRes> get recipes =>
      CopyWith$Input$recipes_obj_rel_insert_input.stub(_res);
}

class Input$bridge_recipes_cuisines_max_order_by {
  factory Input$bridge_recipes_cuisines_max_order_by({
    Enum$order_by? $_cuisine_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
  }) =>
      Input$bridge_recipes_cuisines_max_order_by._({
        if ($_cuisine_id != null) r'_cuisine_id': $_cuisine_id,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if (id != null) r'id': id,
      });

  Input$bridge_recipes_cuisines_max_order_by._(this._$data);

  factory Input$bridge_recipes_cuisines_max_order_by.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_cuisine_id')) {
      final l$$_cuisine_id = data['_cuisine_id'];
      result$data['_cuisine_id'] = l$$_cuisine_id == null
          ? null
          : fromJson$Enum$order_by((l$$_cuisine_id as String));
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = l$$_recipe_id == null
          ? null
          : fromJson$Enum$order_by((l$$_recipe_id as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    return Input$bridge_recipes_cuisines_max_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get $_cuisine_id => (_$data['_cuisine_id'] as Enum$order_by?);
  Enum$order_by? get $_recipe_id => (_$data['_recipe_id'] as Enum$order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_cuisine_id')) {
      final l$$_cuisine_id = $_cuisine_id;
      result$data['_cuisine_id'] =
          l$$_cuisine_id == null ? null : toJson$Enum$order_by(l$$_cuisine_id);
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] =
          l$$_recipe_id == null ? null : toJson$Enum$order_by(l$$_recipe_id);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_max_order_by<
          Input$bridge_recipes_cuisines_max_order_by>
      get copyWith => CopyWith$Input$bridge_recipes_cuisines_max_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_max_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_cuisine_id = $_cuisine_id;
    final lOther$$_cuisine_id = other.$_cuisine_id;
    if (_$data.containsKey('_cuisine_id') !=
        other._$data.containsKey('_cuisine_id')) {
      return false;
    }
    if (l$$_cuisine_id != lOther$$_cuisine_id) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_cuisine_id = $_cuisine_id;
    final l$$_recipe_id = $_recipe_id;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('_cuisine_id') ? l$$_cuisine_id : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_max_order_by<TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_max_order_by(
    Input$bridge_recipes_cuisines_max_order_by instance,
    TRes Function(Input$bridge_recipes_cuisines_max_order_by) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_max_order_by;

  factory CopyWith$Input$bridge_recipes_cuisines_max_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_max_order_by;

  TRes call({
    Enum$order_by? $_cuisine_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
  });
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_max_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_max_order_by<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_max_order_by(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_max_order_by _instance;

  final TRes Function(Input$bridge_recipes_cuisines_max_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? $_cuisine_id = _undefined,
    Object? $_recipe_id = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_max_order_by._({
        ..._instance._$data,
        if ($_cuisine_id != _undefined)
          '_cuisine_id': ($_cuisine_id as Enum$order_by?),
        if ($_recipe_id != _undefined)
          '_recipe_id': ($_recipe_id as Enum$order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_max_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_max_order_by<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_max_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? $_cuisine_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
  }) =>
      _res;
}

class Input$bridge_recipes_cuisines_min_order_by {
  factory Input$bridge_recipes_cuisines_min_order_by({
    Enum$order_by? $_cuisine_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
  }) =>
      Input$bridge_recipes_cuisines_min_order_by._({
        if ($_cuisine_id != null) r'_cuisine_id': $_cuisine_id,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if (id != null) r'id': id,
      });

  Input$bridge_recipes_cuisines_min_order_by._(this._$data);

  factory Input$bridge_recipes_cuisines_min_order_by.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_cuisine_id')) {
      final l$$_cuisine_id = data['_cuisine_id'];
      result$data['_cuisine_id'] = l$$_cuisine_id == null
          ? null
          : fromJson$Enum$order_by((l$$_cuisine_id as String));
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = l$$_recipe_id == null
          ? null
          : fromJson$Enum$order_by((l$$_recipe_id as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    return Input$bridge_recipes_cuisines_min_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get $_cuisine_id => (_$data['_cuisine_id'] as Enum$order_by?);
  Enum$order_by? get $_recipe_id => (_$data['_recipe_id'] as Enum$order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_cuisine_id')) {
      final l$$_cuisine_id = $_cuisine_id;
      result$data['_cuisine_id'] =
          l$$_cuisine_id == null ? null : toJson$Enum$order_by(l$$_cuisine_id);
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] =
          l$$_recipe_id == null ? null : toJson$Enum$order_by(l$$_recipe_id);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_min_order_by<
          Input$bridge_recipes_cuisines_min_order_by>
      get copyWith => CopyWith$Input$bridge_recipes_cuisines_min_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_min_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_cuisine_id = $_cuisine_id;
    final lOther$$_cuisine_id = other.$_cuisine_id;
    if (_$data.containsKey('_cuisine_id') !=
        other._$data.containsKey('_cuisine_id')) {
      return false;
    }
    if (l$$_cuisine_id != lOther$$_cuisine_id) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_cuisine_id = $_cuisine_id;
    final l$$_recipe_id = $_recipe_id;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('_cuisine_id') ? l$$_cuisine_id : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_min_order_by<TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_min_order_by(
    Input$bridge_recipes_cuisines_min_order_by instance,
    TRes Function(Input$bridge_recipes_cuisines_min_order_by) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_min_order_by;

  factory CopyWith$Input$bridge_recipes_cuisines_min_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_min_order_by;

  TRes call({
    Enum$order_by? $_cuisine_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
  });
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_min_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_min_order_by<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_min_order_by(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_min_order_by _instance;

  final TRes Function(Input$bridge_recipes_cuisines_min_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? $_cuisine_id = _undefined,
    Object? $_recipe_id = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_min_order_by._({
        ..._instance._$data,
        if ($_cuisine_id != _undefined)
          '_cuisine_id': ($_cuisine_id as Enum$order_by?),
        if ($_recipe_id != _undefined)
          '_recipe_id': ($_recipe_id as Enum$order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_min_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_min_order_by<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_min_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? $_cuisine_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
  }) =>
      _res;
}

class Input$bridge_recipes_cuisines_on_conflict {
  factory Input$bridge_recipes_cuisines_on_conflict({
    required Enum$bridge_recipes_cuisines_constraint constraint,
    required List<Enum$bridge_recipes_cuisines_update_column> update_columns,
    Input$bridge_recipes_cuisines_bool_exp? where,
  }) =>
      Input$bridge_recipes_cuisines_on_conflict._({
        r'constraint': constraint,
        r'update_columns': update_columns,
        if (where != null) r'where': where,
      });

  Input$bridge_recipes_cuisines_on_conflict._(this._$data);

  factory Input$bridge_recipes_cuisines_on_conflict.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson$Enum$bridge_recipes_cuisines_constraint(
            (l$constraint as String));
    final l$update_columns = data['update_columns'];
    result$data['update_columns'] = (l$update_columns as List<dynamic>)
        .map((e) =>
            fromJson$Enum$bridge_recipes_cuisines_update_column((e as String)))
        .toList();
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$bridge_recipes_cuisines_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input$bridge_recipes_cuisines_on_conflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$bridge_recipes_cuisines_constraint get constraint =>
      (_$data['constraint'] as Enum$bridge_recipes_cuisines_constraint);
  List<Enum$bridge_recipes_cuisines_update_column> get update_columns =>
      (_$data['update_columns']
          as List<Enum$bridge_recipes_cuisines_update_column>);
  Input$bridge_recipes_cuisines_bool_exp? get where =>
      (_$data['where'] as Input$bridge_recipes_cuisines_bool_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson$Enum$bridge_recipes_cuisines_constraint(l$constraint);
    final l$update_columns = update_columns;
    result$data['update_columns'] = l$update_columns
        .map((e) => toJson$Enum$bridge_recipes_cuisines_update_column(e))
        .toList();
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_on_conflict<
          Input$bridge_recipes_cuisines_on_conflict>
      get copyWith => CopyWith$Input$bridge_recipes_cuisines_on_conflict(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_on_conflict) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) {
      return false;
    }
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) {
        return false;
      }
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_on_conflict<TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_on_conflict(
    Input$bridge_recipes_cuisines_on_conflict instance,
    TRes Function(Input$bridge_recipes_cuisines_on_conflict) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_on_conflict;

  factory CopyWith$Input$bridge_recipes_cuisines_on_conflict.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_on_conflict;

  TRes call({
    Enum$bridge_recipes_cuisines_constraint? constraint,
    List<Enum$bridge_recipes_cuisines_update_column>? update_columns,
    Input$bridge_recipes_cuisines_bool_exp? where,
  });
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_on_conflict<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_on_conflict<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_on_conflict(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_on_conflict _instance;

  final TRes Function(Input$bridge_recipes_cuisines_on_conflict) _then;

  static const _undefined = {};

  TRes call({
    Object? constraint = _undefined,
    Object? update_columns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_on_conflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum$bridge_recipes_cuisines_constraint),
        if (update_columns != _undefined && update_columns != null)
          'update_columns': (update_columns
              as List<Enum$bridge_recipes_cuisines_update_column>),
        if (where != _undefined)
          'where': (where as Input$bridge_recipes_cuisines_bool_exp?),
      }));
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith$Input$bridge_recipes_cuisines_bool_exp.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_bool_exp(
            local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_on_conflict<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_on_conflict<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_on_conflict(this._res);

  TRes _res;

  call({
    Enum$bridge_recipes_cuisines_constraint? constraint,
    List<Enum$bridge_recipes_cuisines_update_column>? update_columns,
    Input$bridge_recipes_cuisines_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> get where =>
      CopyWith$Input$bridge_recipes_cuisines_bool_exp.stub(_res);
}

class Input$bridge_recipes_cuisines_order_by {
  factory Input$bridge_recipes_cuisines_order_by({
    Enum$order_by? $_cuisine_id,
    Enum$order_by? $_recipe_id,
    Input$cuisines_order_by? cuisines,
    Enum$order_by? id,
    Input$recipes_order_by? recipes,
  }) =>
      Input$bridge_recipes_cuisines_order_by._({
        if ($_cuisine_id != null) r'_cuisine_id': $_cuisine_id,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if (cuisines != null) r'cuisines': cuisines,
        if (id != null) r'id': id,
        if (recipes != null) r'recipes': recipes,
      });

  Input$bridge_recipes_cuisines_order_by._(this._$data);

  factory Input$bridge_recipes_cuisines_order_by.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_cuisine_id')) {
      final l$$_cuisine_id = data['_cuisine_id'];
      result$data['_cuisine_id'] = l$$_cuisine_id == null
          ? null
          : fromJson$Enum$order_by((l$$_cuisine_id as String));
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = l$$_recipe_id == null
          ? null
          : fromJson$Enum$order_by((l$$_recipe_id as String));
    }
    if (data.containsKey('cuisines')) {
      final l$cuisines = data['cuisines'];
      result$data['cuisines'] = l$cuisines == null
          ? null
          : Input$cuisines_order_by.fromJson(
              (l$cuisines as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    if (data.containsKey('recipes')) {
      final l$recipes = data['recipes'];
      result$data['recipes'] = l$recipes == null
          ? null
          : Input$recipes_order_by.fromJson(
              (l$recipes as Map<String, dynamic>));
    }
    return Input$bridge_recipes_cuisines_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get $_cuisine_id => (_$data['_cuisine_id'] as Enum$order_by?);
  Enum$order_by? get $_recipe_id => (_$data['_recipe_id'] as Enum$order_by?);
  Input$cuisines_order_by? get cuisines =>
      (_$data['cuisines'] as Input$cuisines_order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Input$recipes_order_by? get recipes =>
      (_$data['recipes'] as Input$recipes_order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_cuisine_id')) {
      final l$$_cuisine_id = $_cuisine_id;
      result$data['_cuisine_id'] =
          l$$_cuisine_id == null ? null : toJson$Enum$order_by(l$$_cuisine_id);
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] =
          l$$_recipe_id == null ? null : toJson$Enum$order_by(l$$_recipe_id);
    }
    if (_$data.containsKey('cuisines')) {
      final l$cuisines = cuisines;
      result$data['cuisines'] = l$cuisines?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    if (_$data.containsKey('recipes')) {
      final l$recipes = recipes;
      result$data['recipes'] = l$recipes?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_order_by<
          Input$bridge_recipes_cuisines_order_by>
      get copyWith => CopyWith$Input$bridge_recipes_cuisines_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_cuisine_id = $_cuisine_id;
    final lOther$$_cuisine_id = other.$_cuisine_id;
    if (_$data.containsKey('_cuisine_id') !=
        other._$data.containsKey('_cuisine_id')) {
      return false;
    }
    if (l$$_cuisine_id != lOther$$_cuisine_id) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$cuisines = cuisines;
    final lOther$cuisines = other.cuisines;
    if (_$data.containsKey('cuisines') !=
        other._$data.containsKey('cuisines')) {
      return false;
    }
    if (l$cuisines != lOther$cuisines) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$recipes = recipes;
    final lOther$recipes = other.recipes;
    if (_$data.containsKey('recipes') != other._$data.containsKey('recipes')) {
      return false;
    }
    if (l$recipes != lOther$recipes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_cuisine_id = $_cuisine_id;
    final l$$_recipe_id = $_recipe_id;
    final l$cuisines = cuisines;
    final l$id = id;
    final l$recipes = recipes;
    return Object.hashAll([
      _$data.containsKey('_cuisine_id') ? l$$_cuisine_id : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('cuisines') ? l$cuisines : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('recipes') ? l$recipes : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_order_by<TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_order_by(
    Input$bridge_recipes_cuisines_order_by instance,
    TRes Function(Input$bridge_recipes_cuisines_order_by) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_order_by;

  factory CopyWith$Input$bridge_recipes_cuisines_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_order_by;

  TRes call({
    Enum$order_by? $_cuisine_id,
    Enum$order_by? $_recipe_id,
    Input$cuisines_order_by? cuisines,
    Enum$order_by? id,
    Input$recipes_order_by? recipes,
  });
  CopyWith$Input$cuisines_order_by<TRes> get cuisines;
  CopyWith$Input$recipes_order_by<TRes> get recipes;
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_order_by<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_order_by(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_order_by _instance;

  final TRes Function(Input$bridge_recipes_cuisines_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? $_cuisine_id = _undefined,
    Object? $_recipe_id = _undefined,
    Object? cuisines = _undefined,
    Object? id = _undefined,
    Object? recipes = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_order_by._({
        ..._instance._$data,
        if ($_cuisine_id != _undefined)
          '_cuisine_id': ($_cuisine_id as Enum$order_by?),
        if ($_recipe_id != _undefined)
          '_recipe_id': ($_recipe_id as Enum$order_by?),
        if (cuisines != _undefined)
          'cuisines': (cuisines as Input$cuisines_order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
        if (recipes != _undefined)
          'recipes': (recipes as Input$recipes_order_by?),
      }));
  CopyWith$Input$cuisines_order_by<TRes> get cuisines {
    final local$cuisines = _instance.cuisines;
    return local$cuisines == null
        ? CopyWith$Input$cuisines_order_by.stub(_then(_instance))
        : CopyWith$Input$cuisines_order_by(
            local$cuisines, (e) => call(cuisines: e));
  }

  CopyWith$Input$recipes_order_by<TRes> get recipes {
    final local$recipes = _instance.recipes;
    return local$recipes == null
        ? CopyWith$Input$recipes_order_by.stub(_then(_instance))
        : CopyWith$Input$recipes_order_by(
            local$recipes, (e) => call(recipes: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_order_by<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? $_cuisine_id,
    Enum$order_by? $_recipe_id,
    Input$cuisines_order_by? cuisines,
    Enum$order_by? id,
    Input$recipes_order_by? recipes,
  }) =>
      _res;
  CopyWith$Input$cuisines_order_by<TRes> get cuisines =>
      CopyWith$Input$cuisines_order_by.stub(_res);
  CopyWith$Input$recipes_order_by<TRes> get recipes =>
      CopyWith$Input$recipes_order_by.stub(_res);
}

class Input$bridge_recipes_cuisines_pk_columns_input {
  factory Input$bridge_recipes_cuisines_pk_columns_input(
          {required String id}) =>
      Input$bridge_recipes_cuisines_pk_columns_input._({
        r'id': id,
      });

  Input$bridge_recipes_cuisines_pk_columns_input._(this._$data);

  factory Input$bridge_recipes_cuisines_pk_columns_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$bridge_recipes_cuisines_pk_columns_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_pk_columns_input<
          Input$bridge_recipes_cuisines_pk_columns_input>
      get copyWith => CopyWith$Input$bridge_recipes_cuisines_pk_columns_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_pk_columns_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_pk_columns_input<TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_pk_columns_input(
    Input$bridge_recipes_cuisines_pk_columns_input instance,
    TRes Function(Input$bridge_recipes_cuisines_pk_columns_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_pk_columns_input;

  factory CopyWith$Input$bridge_recipes_cuisines_pk_columns_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_pk_columns_input;

  TRes call({String? id});
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_pk_columns_input<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_pk_columns_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_pk_columns_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_pk_columns_input _instance;

  final TRes Function(Input$bridge_recipes_cuisines_pk_columns_input) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Input$bridge_recipes_cuisines_pk_columns_input._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_pk_columns_input<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_pk_columns_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_pk_columns_input(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$bridge_recipes_cuisines_set_input {
  factory Input$bridge_recipes_cuisines_set_input({
    String? $_cuisine_id,
    String? $_recipe_id,
    String? id,
  }) =>
      Input$bridge_recipes_cuisines_set_input._({
        if ($_cuisine_id != null) r'_cuisine_id': $_cuisine_id,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if (id != null) r'id': id,
      });

  Input$bridge_recipes_cuisines_set_input._(this._$data);

  factory Input$bridge_recipes_cuisines_set_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_cuisine_id')) {
      final l$$_cuisine_id = data['_cuisine_id'];
      result$data['_cuisine_id'] = (l$$_cuisine_id as String?);
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = (l$$_recipe_id as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$bridge_recipes_cuisines_set_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_cuisine_id => (_$data['_cuisine_id'] as String?);
  String? get $_recipe_id => (_$data['_recipe_id'] as String?);
  String? get id => (_$data['id'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_cuisine_id')) {
      final l$$_cuisine_id = $_cuisine_id;
      result$data['_cuisine_id'] = l$$_cuisine_id;
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] = l$$_recipe_id;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_set_input<
          Input$bridge_recipes_cuisines_set_input>
      get copyWith => CopyWith$Input$bridge_recipes_cuisines_set_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_set_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_cuisine_id = $_cuisine_id;
    final lOther$$_cuisine_id = other.$_cuisine_id;
    if (_$data.containsKey('_cuisine_id') !=
        other._$data.containsKey('_cuisine_id')) {
      return false;
    }
    if (l$$_cuisine_id != lOther$$_cuisine_id) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_cuisine_id = $_cuisine_id;
    final l$$_recipe_id = $_recipe_id;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('_cuisine_id') ? l$$_cuisine_id : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_set_input<TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_set_input(
    Input$bridge_recipes_cuisines_set_input instance,
    TRes Function(Input$bridge_recipes_cuisines_set_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_set_input;

  factory CopyWith$Input$bridge_recipes_cuisines_set_input.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_set_input;

  TRes call({
    String? $_cuisine_id,
    String? $_recipe_id,
    String? id,
  });
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_set_input<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_set_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_set_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_set_input _instance;

  final TRes Function(Input$bridge_recipes_cuisines_set_input) _then;

  static const _undefined = {};

  TRes call({
    Object? $_cuisine_id = _undefined,
    Object? $_recipe_id = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_set_input._({
        ..._instance._$data,
        if ($_cuisine_id != _undefined)
          '_cuisine_id': ($_cuisine_id as String?),
        if ($_recipe_id != _undefined) '_recipe_id': ($_recipe_id as String?),
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_set_input<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_set_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_set_input(this._res);

  TRes _res;

  call({
    String? $_cuisine_id,
    String? $_recipe_id,
    String? id,
  }) =>
      _res;
}

class Input$bridge_recipes_cuisines_stream_cursor_input {
  factory Input$bridge_recipes_cuisines_stream_cursor_input({
    required Input$bridge_recipes_cuisines_stream_cursor_value_input
        initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      Input$bridge_recipes_cuisines_stream_cursor_input._({
        r'initial_value': initial_value,
        if (ordering != null) r'ordering': ordering,
      });

  Input$bridge_recipes_cuisines_stream_cursor_input._(this._$data);

  factory Input$bridge_recipes_cuisines_stream_cursor_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initial_value = data['initial_value'];
    result$data['initial_value'] =
        Input$bridge_recipes_cuisines_stream_cursor_value_input.fromJson(
            (l$initial_value as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson$Enum$cursor_ordering((l$ordering as String));
    }
    return Input$bridge_recipes_cuisines_stream_cursor_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_cuisines_stream_cursor_value_input get initial_value =>
      (_$data['initial_value']
          as Input$bridge_recipes_cuisines_stream_cursor_value_input);
  Enum$cursor_ordering? get ordering =>
      (_$data['ordering'] as Enum$cursor_ordering?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initial_value = initial_value;
    result$data['initial_value'] = l$initial_value.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson$Enum$cursor_ordering(l$ordering);
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_stream_cursor_input<
          Input$bridge_recipes_cuisines_stream_cursor_input>
      get copyWith =>
          CopyWith$Input$bridge_recipes_cuisines_stream_cursor_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_stream_cursor_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initial_value = initial_value;
    final lOther$initial_value = other.initial_value;
    if (l$initial_value != lOther$initial_value) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initial_value = initial_value;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initial_value,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_stream_cursor_input<
    TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_stream_cursor_input(
    Input$bridge_recipes_cuisines_stream_cursor_input instance,
    TRes Function(Input$bridge_recipes_cuisines_stream_cursor_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_stream_cursor_input;

  factory CopyWith$Input$bridge_recipes_cuisines_stream_cursor_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_stream_cursor_input;

  TRes call({
    Input$bridge_recipes_cuisines_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  });
  CopyWith$Input$bridge_recipes_cuisines_stream_cursor_value_input<TRes>
      get initial_value;
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_stream_cursor_input<TRes>
    implements
        CopyWith$Input$bridge_recipes_cuisines_stream_cursor_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_stream_cursor_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_stream_cursor_input _instance;

  final TRes Function(Input$bridge_recipes_cuisines_stream_cursor_input) _then;

  static const _undefined = {};

  TRes call({
    Object? initial_value = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_stream_cursor_input._({
        ..._instance._$data,
        if (initial_value != _undefined && initial_value != null)
          'initial_value': (initial_value
              as Input$bridge_recipes_cuisines_stream_cursor_value_input),
        if (ordering != _undefined)
          'ordering': (ordering as Enum$cursor_ordering?),
      }));
  CopyWith$Input$bridge_recipes_cuisines_stream_cursor_value_input<TRes>
      get initial_value {
    final local$initial_value = _instance.initial_value;
    return CopyWith$Input$bridge_recipes_cuisines_stream_cursor_value_input(
        local$initial_value, (e) => call(initial_value: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_stream_cursor_input<TRes>
    implements
        CopyWith$Input$bridge_recipes_cuisines_stream_cursor_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_stream_cursor_input(
      this._res);

  TRes _res;

  call({
    Input$bridge_recipes_cuisines_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_cuisines_stream_cursor_value_input<TRes>
      get initial_value =>
          CopyWith$Input$bridge_recipes_cuisines_stream_cursor_value_input.stub(
              _res);
}

class Input$bridge_recipes_cuisines_stream_cursor_value_input {
  factory Input$bridge_recipes_cuisines_stream_cursor_value_input({
    String? $_cuisine_id,
    String? $_recipe_id,
    String? id,
  }) =>
      Input$bridge_recipes_cuisines_stream_cursor_value_input._({
        if ($_cuisine_id != null) r'_cuisine_id': $_cuisine_id,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if (id != null) r'id': id,
      });

  Input$bridge_recipes_cuisines_stream_cursor_value_input._(this._$data);

  factory Input$bridge_recipes_cuisines_stream_cursor_value_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_cuisine_id')) {
      final l$$_cuisine_id = data['_cuisine_id'];
      result$data['_cuisine_id'] = (l$$_cuisine_id as String?);
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = (l$$_recipe_id as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$bridge_recipes_cuisines_stream_cursor_value_input._(
        result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_cuisine_id => (_$data['_cuisine_id'] as String?);
  String? get $_recipe_id => (_$data['_recipe_id'] as String?);
  String? get id => (_$data['id'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_cuisine_id')) {
      final l$$_cuisine_id = $_cuisine_id;
      result$data['_cuisine_id'] = l$$_cuisine_id;
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] = l$$_recipe_id;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_stream_cursor_value_input<
          Input$bridge_recipes_cuisines_stream_cursor_value_input>
      get copyWith =>
          CopyWith$Input$bridge_recipes_cuisines_stream_cursor_value_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_stream_cursor_value_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_cuisine_id = $_cuisine_id;
    final lOther$$_cuisine_id = other.$_cuisine_id;
    if (_$data.containsKey('_cuisine_id') !=
        other._$data.containsKey('_cuisine_id')) {
      return false;
    }
    if (l$$_cuisine_id != lOther$$_cuisine_id) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_cuisine_id = $_cuisine_id;
    final l$$_recipe_id = $_recipe_id;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('_cuisine_id') ? l$$_cuisine_id : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_stream_cursor_value_input<
    TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_stream_cursor_value_input(
    Input$bridge_recipes_cuisines_stream_cursor_value_input instance,
    TRes Function(Input$bridge_recipes_cuisines_stream_cursor_value_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_stream_cursor_value_input;

  factory CopyWith$Input$bridge_recipes_cuisines_stream_cursor_value_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_stream_cursor_value_input;

  TRes call({
    String? $_cuisine_id,
    String? $_recipe_id,
    String? id,
  });
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_stream_cursor_value_input<
        TRes>
    implements
        CopyWith$Input$bridge_recipes_cuisines_stream_cursor_value_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_stream_cursor_value_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_stream_cursor_value_input _instance;

  final TRes Function(Input$bridge_recipes_cuisines_stream_cursor_value_input)
      _then;

  static const _undefined = {};

  TRes call({
    Object? $_cuisine_id = _undefined,
    Object? $_recipe_id = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_stream_cursor_value_input._({
        ..._instance._$data,
        if ($_cuisine_id != _undefined)
          '_cuisine_id': ($_cuisine_id as String?),
        if ($_recipe_id != _undefined) '_recipe_id': ($_recipe_id as String?),
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_stream_cursor_value_input<
        TRes>
    implements
        CopyWith$Input$bridge_recipes_cuisines_stream_cursor_value_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_stream_cursor_value_input(
      this._res);

  TRes _res;

  call({
    String? $_cuisine_id,
    String? $_recipe_id,
    String? id,
  }) =>
      _res;
}

class Input$bridge_recipes_cuisines_updates {
  factory Input$bridge_recipes_cuisines_updates({
    Input$bridge_recipes_cuisines_set_input? $_set,
    required Input$bridge_recipes_cuisines_bool_exp where,
  }) =>
      Input$bridge_recipes_cuisines_updates._({
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input$bridge_recipes_cuisines_updates._(this._$data);

  factory Input$bridge_recipes_cuisines_updates.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input$bridge_recipes_cuisines_set_input.fromJson(
              (l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input$bridge_recipes_cuisines_bool_exp.fromJson(
        (l$where as Map<String, dynamic>));
    return Input$bridge_recipes_cuisines_updates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_cuisines_set_input? get $_set =>
      (_$data['_set'] as Input$bridge_recipes_cuisines_set_input?);
  Input$bridge_recipes_cuisines_bool_exp get where =>
      (_$data['where'] as Input$bridge_recipes_cuisines_bool_exp);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Input$bridge_recipes_cuisines_updates<
          Input$bridge_recipes_cuisines_updates>
      get copyWith => CopyWith$Input$bridge_recipes_cuisines_updates(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_cuisines_updates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_cuisines_updates<TRes> {
  factory CopyWith$Input$bridge_recipes_cuisines_updates(
    Input$bridge_recipes_cuisines_updates instance,
    TRes Function(Input$bridge_recipes_cuisines_updates) then,
  ) = _CopyWithImpl$Input$bridge_recipes_cuisines_updates;

  factory CopyWith$Input$bridge_recipes_cuisines_updates.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_cuisines_updates;

  TRes call({
    Input$bridge_recipes_cuisines_set_input? $_set,
    Input$bridge_recipes_cuisines_bool_exp? where,
  });
  CopyWith$Input$bridge_recipes_cuisines_set_input<TRes> get $_set;
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$bridge_recipes_cuisines_updates<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_updates<TRes> {
  _CopyWithImpl$Input$bridge_recipes_cuisines_updates(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_cuisines_updates _instance;

  final TRes Function(Input$bridge_recipes_cuisines_updates) _then;

  static const _undefined = {};

  TRes call({
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$bridge_recipes_cuisines_updates._({
        ..._instance._$data,
        if ($_set != _undefined)
          '_set': ($_set as Input$bridge_recipes_cuisines_set_input?),
        if (where != _undefined && where != null)
          'where': (where as Input$bridge_recipes_cuisines_bool_exp),
      }));
  CopyWith$Input$bridge_recipes_cuisines_set_input<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith$Input$bridge_recipes_cuisines_set_input.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_set_input(
            local$$_set, (e) => call($_set: e));
  }

  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$bridge_recipes_cuisines_bool_exp(
        local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_cuisines_updates<TRes>
    implements CopyWith$Input$bridge_recipes_cuisines_updates<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_cuisines_updates(this._res);

  TRes _res;

  call({
    Input$bridge_recipes_cuisines_set_input? $_set,
    Input$bridge_recipes_cuisines_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_cuisines_set_input<TRes> get $_set =>
      CopyWith$Input$bridge_recipes_cuisines_set_input.stub(_res);
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes> get where =>
      CopyWith$Input$bridge_recipes_cuisines_bool_exp.stub(_res);
}

class Input$bridge_recipes_ingredients_aggregate_bool_exp {
  factory Input$bridge_recipes_ingredients_aggregate_bool_exp(
          {Input$bridge_recipes_ingredients_aggregate_bool_exp_count? count}) =>
      Input$bridge_recipes_ingredients_aggregate_bool_exp._({
        if (count != null) r'count': count,
      });

  Input$bridge_recipes_ingredients_aggregate_bool_exp._(this._$data);

  factory Input$bridge_recipes_ingredients_aggregate_bool_exp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input$bridge_recipes_ingredients_aggregate_bool_exp_count.fromJson(
              (l$count as Map<String, dynamic>));
    }
    return Input$bridge_recipes_ingredients_aggregate_bool_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_ingredients_aggregate_bool_exp_count? get count =>
      (_$data['count']
          as Input$bridge_recipes_ingredients_aggregate_bool_exp_count?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp<
          Input$bridge_recipes_ingredients_aggregate_bool_exp>
      get copyWith =>
          CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_aggregate_bool_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (_$data.containsKey('count') != other._$data.containsKey('count')) {
      return false;
    }
    if (l$count != lOther$count) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    return Object.hashAll([_$data.containsKey('count') ? l$count : const {}]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp<
    TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp(
    Input$bridge_recipes_ingredients_aggregate_bool_exp instance,
    TRes Function(Input$bridge_recipes_ingredients_aggregate_bool_exp) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_aggregate_bool_exp;

  factory CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_aggregate_bool_exp;

  TRes call({Input$bridge_recipes_ingredients_aggregate_bool_exp_count? count});
  CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count<TRes>
      get count;
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_aggregate_bool_exp<TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_aggregate_bool_exp(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_aggregate_bool_exp _instance;

  final TRes Function(Input$bridge_recipes_ingredients_aggregate_bool_exp)
      _then;

  static const _undefined = {};

  TRes call({Object? count = _undefined}) =>
      _then(Input$bridge_recipes_ingredients_aggregate_bool_exp._({
        ..._instance._$data,
        if (count != _undefined)
          'count': (count
              as Input$bridge_recipes_ingredients_aggregate_bool_exp_count?),
      }));
  CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count<TRes>
      get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count
            .stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count(
            local$count, (e) => call(count: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_aggregate_bool_exp<
        TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_aggregate_bool_exp(
      this._res);

  TRes _res;

  call({Input$bridge_recipes_ingredients_aggregate_bool_exp_count? count}) =>
      _res;
  CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count<TRes>
      get count =>
          CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count
              .stub(_res);
}

class Input$bridge_recipes_ingredients_aggregate_bool_exp_count {
  factory Input$bridge_recipes_ingredients_aggregate_bool_exp_count({
    List<Enum$bridge_recipes_ingredients_select_column>? arguments,
    bool? distinct,
    Input$bridge_recipes_ingredients_bool_exp? filter,
    required Input$Int_comparison_exp predicate,
  }) =>
      Input$bridge_recipes_ingredients_aggregate_bool_exp_count._({
        if (arguments != null) r'arguments': arguments,
        if (distinct != null) r'distinct': distinct,
        if (filter != null) r'filter': filter,
        r'predicate': predicate,
      });

  Input$bridge_recipes_ingredients_aggregate_bool_exp_count._(this._$data);

  factory Input$bridge_recipes_ingredients_aggregate_bool_exp_count.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) => fromJson$Enum$bridge_recipes_ingredients_select_column(
              (e as String)))
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$bridge_recipes_ingredients_bool_exp.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input$Int_comparison_exp.fromJson(
        (l$predicate as Map<String, dynamic>));
    return Input$bridge_recipes_ingredients_aggregate_bool_exp_count._(
        result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum$bridge_recipes_ingredients_select_column>? get arguments =>
      (_$data['arguments']
          as List<Enum$bridge_recipes_ingredients_select_column>?);
  bool? get distinct => (_$data['distinct'] as bool?);
  Input$bridge_recipes_ingredients_bool_exp? get filter =>
      (_$data['filter'] as Input$bridge_recipes_ingredients_bool_exp?);
  Input$Int_comparison_exp get predicate =>
      (_$data['predicate'] as Input$Int_comparison_exp);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson$Enum$bridge_recipes_ingredients_select_column(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count<
          Input$bridge_recipes_ingredients_aggregate_bool_exp_count>
      get copyWith =>
          CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_aggregate_bool_exp_count) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
              ? null
              : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count<
    TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count(
    Input$bridge_recipes_ingredients_aggregate_bool_exp_count instance,
    TRes Function(Input$bridge_recipes_ingredients_aggregate_bool_exp_count)
        then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_aggregate_bool_exp_count;

  factory CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_aggregate_bool_exp_count;

  TRes call({
    List<Enum$bridge_recipes_ingredients_select_column>? arguments,
    bool? distinct,
    Input$bridge_recipes_ingredients_bool_exp? filter,
    Input$Int_comparison_exp? predicate,
  });
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> get filter;
  CopyWith$Input$Int_comparison_exp<TRes> get predicate;
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_aggregate_bool_exp_count<
        TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count<
            TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_aggregate_bool_exp_count(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_aggregate_bool_exp_count _instance;

  final TRes Function(Input$bridge_recipes_ingredients_aggregate_bool_exp_count)
      _then;

  static const _undefined = {};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_aggregate_bool_exp_count._({
        ..._instance._$data,
        if (arguments != _undefined)
          'arguments': (arguments
              as List<Enum$bridge_recipes_ingredients_select_column>?),
        if (distinct != _undefined) 'distinct': (distinct as bool?),
        if (filter != _undefined)
          'filter': (filter as Input$bridge_recipes_ingredients_bool_exp?),
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as Input$Int_comparison_exp),
      }));
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith$Input$bridge_recipes_ingredients_bool_exp.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_bool_exp(
            local$filter, (e) => call(filter: e));
  }

  CopyWith$Input$Int_comparison_exp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith$Input$Int_comparison_exp(
        local$predicate, (e) => call(predicate: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_aggregate_bool_exp_count<
        TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp_count<
            TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_aggregate_bool_exp_count(
      this._res);

  TRes _res;

  call({
    List<Enum$bridge_recipes_ingredients_select_column>? arguments,
    bool? distinct,
    Input$bridge_recipes_ingredients_bool_exp? filter,
    Input$Int_comparison_exp? predicate,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> get filter =>
      CopyWith$Input$bridge_recipes_ingredients_bool_exp.stub(_res);
  CopyWith$Input$Int_comparison_exp<TRes> get predicate =>
      CopyWith$Input$Int_comparison_exp.stub(_res);
}

class Input$bridge_recipes_ingredients_aggregate_order_by {
  factory Input$bridge_recipes_ingredients_aggregate_order_by({
    Enum$order_by? count,
    Input$bridge_recipes_ingredients_max_order_by? max,
    Input$bridge_recipes_ingredients_min_order_by? min,
  }) =>
      Input$bridge_recipes_ingredients_aggregate_order_by._({
        if (count != null) r'count': count,
        if (max != null) r'max': max,
        if (min != null) r'min': min,
      });

  Input$bridge_recipes_ingredients_aggregate_order_by._(this._$data);

  factory Input$bridge_recipes_ingredients_aggregate_order_by.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] =
          l$count == null ? null : fromJson$Enum$order_by((l$count as String));
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = l$max == null
          ? null
          : Input$bridge_recipes_ingredients_max_order_by.fromJson(
              (l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input$bridge_recipes_ingredients_min_order_by.fromJson(
              (l$min as Map<String, dynamic>));
    }
    return Input$bridge_recipes_ingredients_aggregate_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get count => (_$data['count'] as Enum$order_by?);
  Input$bridge_recipes_ingredients_max_order_by? get max =>
      (_$data['max'] as Input$bridge_recipes_ingredients_max_order_by?);
  Input$bridge_recipes_ingredients_min_order_by? get min =>
      (_$data['min'] as Input$bridge_recipes_ingredients_min_order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] =
          l$count == null ? null : toJson$Enum$order_by(l$count);
    }
    if (_$data.containsKey('max')) {
      final l$max = max;
      result$data['max'] = l$max?.toJson();
    }
    if (_$data.containsKey('min')) {
      final l$min = min;
      result$data['min'] = l$min?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by<
          Input$bridge_recipes_ingredients_aggregate_order_by>
      get copyWith =>
          CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_aggregate_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (_$data.containsKey('count') != other._$data.containsKey('count')) {
      return false;
    }
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (_$data.containsKey('max') != other._$data.containsKey('max')) {
      return false;
    }
    if (l$max != lOther$max) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (_$data.containsKey('min') != other._$data.containsKey('min')) {
      return false;
    }
    if (l$min != lOther$min) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$min = min;
    return Object.hashAll([
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('max') ? l$max : const {},
      _$data.containsKey('min') ? l$min : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by<
    TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by(
    Input$bridge_recipes_ingredients_aggregate_order_by instance,
    TRes Function(Input$bridge_recipes_ingredients_aggregate_order_by) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_aggregate_order_by;

  factory CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_aggregate_order_by;

  TRes call({
    Enum$order_by? count,
    Input$bridge_recipes_ingredients_max_order_by? max,
    Input$bridge_recipes_ingredients_min_order_by? min,
  });
  CopyWith$Input$bridge_recipes_ingredients_max_order_by<TRes> get max;
  CopyWith$Input$bridge_recipes_ingredients_min_order_by<TRes> get min;
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_aggregate_order_by<TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_aggregate_order_by(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_aggregate_order_by _instance;

  final TRes Function(Input$bridge_recipes_ingredients_aggregate_order_by)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_aggregate_order_by._({
        ..._instance._$data,
        if (count != _undefined) 'count': (count as Enum$order_by?),
        if (max != _undefined)
          'max': (max as Input$bridge_recipes_ingredients_max_order_by?),
        if (min != _undefined)
          'min': (min as Input$bridge_recipes_ingredients_min_order_by?),
      }));
  CopyWith$Input$bridge_recipes_ingredients_max_order_by<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Input$bridge_recipes_ingredients_max_order_by.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_max_order_by(
            local$max, (e) => call(max: e));
  }

  CopyWith$Input$bridge_recipes_ingredients_min_order_by<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith$Input$bridge_recipes_ingredients_min_order_by.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_min_order_by(
            local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_aggregate_order_by<
        TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_aggregate_order_by(
      this._res);

  TRes _res;

  call({
    Enum$order_by? count,
    Input$bridge_recipes_ingredients_max_order_by? max,
    Input$bridge_recipes_ingredients_min_order_by? min,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_ingredients_max_order_by<TRes> get max =>
      CopyWith$Input$bridge_recipes_ingredients_max_order_by.stub(_res);
  CopyWith$Input$bridge_recipes_ingredients_min_order_by<TRes> get min =>
      CopyWith$Input$bridge_recipes_ingredients_min_order_by.stub(_res);
}

class Input$bridge_recipes_ingredients_arr_rel_insert_input {
  factory Input$bridge_recipes_ingredients_arr_rel_insert_input({
    required List<Input$bridge_recipes_ingredients_insert_input> data,
    Input$bridge_recipes_ingredients_on_conflict? on_conflict,
  }) =>
      Input$bridge_recipes_ingredients_arr_rel_insert_input._({
        r'data': data,
        if (on_conflict != null) r'on_conflict': on_conflict,
      });

  Input$bridge_recipes_ingredients_arr_rel_insert_input._(this._$data);

  factory Input$bridge_recipes_ingredients_arr_rel_insert_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map((e) => Input$bridge_recipes_ingredients_insert_input.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('on_conflict')) {
      final l$on_conflict = data['on_conflict'];
      result$data['on_conflict'] = l$on_conflict == null
          ? null
          : Input$bridge_recipes_ingredients_on_conflict.fromJson(
              (l$on_conflict as Map<String, dynamic>));
    }
    return Input$bridge_recipes_ingredients_arr_rel_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$bridge_recipes_ingredients_insert_input> get data =>
      (_$data['data'] as List<Input$bridge_recipes_ingredients_insert_input>);
  Input$bridge_recipes_ingredients_on_conflict? get on_conflict =>
      (_$data['on_conflict'] as Input$bridge_recipes_ingredients_on_conflict?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.map((e) => e.toJson()).toList();
    if (_$data.containsKey('on_conflict')) {
      final l$on_conflict = on_conflict;
      result$data['on_conflict'] = l$on_conflict?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input<
          Input$bridge_recipes_ingredients_arr_rel_insert_input>
      get copyWith =>
          CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_arr_rel_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data.length != lOther$data.length) {
      return false;
    }
    for (int i = 0; i < l$data.length; i++) {
      final l$data$entry = l$data[i];
      final lOther$data$entry = lOther$data[i];
      if (l$data$entry != lOther$data$entry) {
        return false;
      }
    }
    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (_$data.containsKey('on_conflict') !=
        other._$data.containsKey('on_conflict')) {
      return false;
    }
    if (l$on_conflict != lOther$on_conflict) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll([
      Object.hashAll(l$data.map((v) => v)),
      _$data.containsKey('on_conflict') ? l$on_conflict : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input<
    TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input(
    Input$bridge_recipes_ingredients_arr_rel_insert_input instance,
    TRes Function(Input$bridge_recipes_ingredients_arr_rel_insert_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_arr_rel_insert_input;

  factory CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_arr_rel_insert_input;

  TRes call({
    List<Input$bridge_recipes_ingredients_insert_input>? data,
    Input$bridge_recipes_ingredients_on_conflict? on_conflict,
  });
  TRes data(
      Iterable<Input$bridge_recipes_ingredients_insert_input> Function(
              Iterable<
                  CopyWith$Input$bridge_recipes_ingredients_insert_input<
                      Input$bridge_recipes_ingredients_insert_input>>)
          _fn);
  CopyWith$Input$bridge_recipes_ingredients_on_conflict<TRes> get on_conflict;
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_arr_rel_insert_input<TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_arr_rel_insert_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_arr_rel_insert_input _instance;

  final TRes Function(Input$bridge_recipes_ingredients_arr_rel_insert_input)
      _then;

  static const _undefined = {};

  TRes call({
    Object? data = _undefined,
    Object? on_conflict = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_arr_rel_insert_input._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as List<Input$bridge_recipes_ingredients_insert_input>),
        if (on_conflict != _undefined)
          'on_conflict':
              (on_conflict as Input$bridge_recipes_ingredients_on_conflict?),
      }));
  TRes data(
          Iterable<Input$bridge_recipes_ingredients_insert_input> Function(
                  Iterable<
                      CopyWith$Input$bridge_recipes_ingredients_insert_input<
                          Input$bridge_recipes_ingredients_insert_input>>)
              _fn) =>
      call(
          data: _fn(_instance.data.map(
              (e) => CopyWith$Input$bridge_recipes_ingredients_insert_input(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Input$bridge_recipes_ingredients_on_conflict<TRes> get on_conflict {
    final local$on_conflict = _instance.on_conflict;
    return local$on_conflict == null
        ? CopyWith$Input$bridge_recipes_ingredients_on_conflict.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_on_conflict(
            local$on_conflict, (e) => call(on_conflict: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_arr_rel_insert_input<
        TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_arr_rel_insert_input(
      this._res);

  TRes _res;

  call({
    List<Input$bridge_recipes_ingredients_insert_input>? data,
    Input$bridge_recipes_ingredients_on_conflict? on_conflict,
  }) =>
      _res;
  data(_fn) => _res;
  CopyWith$Input$bridge_recipes_ingredients_on_conflict<TRes> get on_conflict =>
      CopyWith$Input$bridge_recipes_ingredients_on_conflict.stub(_res);
}

class Input$bridge_recipes_ingredients_bool_exp {
  factory Input$bridge_recipes_ingredients_bool_exp({
    List<Input$bridge_recipes_ingredients_bool_exp>? $_and,
    Input$String_comparison_exp? $_ingredient_id,
    Input$bridge_recipes_ingredients_bool_exp? $_not,
    List<Input$bridge_recipes_ingredients_bool_exp>? $_or,
    Input$String_comparison_exp? $_recipe_id,
    Input$uuid_comparison_exp? id,
    Input$ingredients_bool_exp? ingredients,
    Input$recipes_bool_exp? recipes,
  }) =>
      Input$bridge_recipes_ingredients_bool_exp._({
        if ($_and != null) r'_and': $_and,
        if ($_ingredient_id != null) r'_ingredient_id': $_ingredient_id,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if (id != null) r'id': id,
        if (ingredients != null) r'ingredients': ingredients,
        if (recipes != null) r'recipes': recipes,
      });

  Input$bridge_recipes_ingredients_bool_exp._(this._$data);

  factory Input$bridge_recipes_ingredients_bool_exp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input$bridge_recipes_ingredients_bool_exp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_ingredient_id')) {
      final l$$_ingredient_id = data['_ingredient_id'];
      result$data['_ingredient_id'] = l$$_ingredient_id == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$$_ingredient_id as Map<String, dynamic>));
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input$bridge_recipes_ingredients_bool_exp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input$bridge_recipes_ingredients_bool_exp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = l$$_recipe_id == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$$_recipe_id as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$uuid_comparison_exp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('ingredients')) {
      final l$ingredients = data['ingredients'];
      result$data['ingredients'] = l$ingredients == null
          ? null
          : Input$ingredients_bool_exp.fromJson(
              (l$ingredients as Map<String, dynamic>));
    }
    if (data.containsKey('recipes')) {
      final l$recipes = data['recipes'];
      result$data['recipes'] = l$recipes == null
          ? null
          : Input$recipes_bool_exp.fromJson(
              (l$recipes as Map<String, dynamic>));
    }
    return Input$bridge_recipes_ingredients_bool_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$bridge_recipes_ingredients_bool_exp>? get $_and =>
      (_$data['_and'] as List<Input$bridge_recipes_ingredients_bool_exp>?);
  Input$String_comparison_exp? get $_ingredient_id =>
      (_$data['_ingredient_id'] as Input$String_comparison_exp?);
  Input$bridge_recipes_ingredients_bool_exp? get $_not =>
      (_$data['_not'] as Input$bridge_recipes_ingredients_bool_exp?);
  List<Input$bridge_recipes_ingredients_bool_exp>? get $_or =>
      (_$data['_or'] as List<Input$bridge_recipes_ingredients_bool_exp>?);
  Input$String_comparison_exp? get $_recipe_id =>
      (_$data['_recipe_id'] as Input$String_comparison_exp?);
  Input$uuid_comparison_exp? get id =>
      (_$data['id'] as Input$uuid_comparison_exp?);
  Input$ingredients_bool_exp? get ingredients =>
      (_$data['ingredients'] as Input$ingredients_bool_exp?);
  Input$recipes_bool_exp? get recipes =>
      (_$data['recipes'] as Input$recipes_bool_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_ingredient_id')) {
      final l$$_ingredient_id = $_ingredient_id;
      result$data['_ingredient_id'] = l$$_ingredient_id?.toJson();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] = l$$_recipe_id?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('ingredients')) {
      final l$ingredients = ingredients;
      result$data['ingredients'] = l$ingredients?.toJson();
    }
    if (_$data.containsKey('recipes')) {
      final l$recipes = recipes;
      result$data['recipes'] = l$recipes?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_bool_exp<
          Input$bridge_recipes_ingredients_bool_exp>
      get copyWith => CopyWith$Input$bridge_recipes_ingredients_bool_exp(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_bool_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_ingredient_id = $_ingredient_id;
    final lOther$$_ingredient_id = other.$_ingredient_id;
    if (_$data.containsKey('_ingredient_id') !=
        other._$data.containsKey('_ingredient_id')) {
      return false;
    }
    if (l$$_ingredient_id != lOther$$_ingredient_id) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (_$data.containsKey('ingredients') !=
        other._$data.containsKey('ingredients')) {
      return false;
    }
    if (l$ingredients != lOther$ingredients) {
      return false;
    }
    final l$recipes = recipes;
    final lOther$recipes = other.recipes;
    if (_$data.containsKey('recipes') != other._$data.containsKey('recipes')) {
      return false;
    }
    if (l$recipes != lOther$recipes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_ingredient_id = $_ingredient_id;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$$_recipe_id = $_recipe_id;
    final l$id = id;
    final l$ingredients = ingredients;
    final l$recipes = recipes;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
              ? null
              : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_ingredient_id') ? l$$_ingredient_id : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
              ? null
              : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('ingredients') ? l$ingredients : const {},
      _$data.containsKey('recipes') ? l$recipes : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_bool_exp(
    Input$bridge_recipes_ingredients_bool_exp instance,
    TRes Function(Input$bridge_recipes_ingredients_bool_exp) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_bool_exp;

  factory CopyWith$Input$bridge_recipes_ingredients_bool_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_bool_exp;

  TRes call({
    List<Input$bridge_recipes_ingredients_bool_exp>? $_and,
    Input$String_comparison_exp? $_ingredient_id,
    Input$bridge_recipes_ingredients_bool_exp? $_not,
    List<Input$bridge_recipes_ingredients_bool_exp>? $_or,
    Input$String_comparison_exp? $_recipe_id,
    Input$uuid_comparison_exp? id,
    Input$ingredients_bool_exp? ingredients,
    Input$recipes_bool_exp? recipes,
  });
  TRes $_and(
      Iterable<Input$bridge_recipes_ingredients_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$bridge_recipes_ingredients_bool_exp<
                      Input$bridge_recipes_ingredients_bool_exp>>?)
          _fn);
  CopyWith$Input$String_comparison_exp<TRes> get $_ingredient_id;
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> get $_not;
  TRes $_or(
      Iterable<Input$bridge_recipes_ingredients_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$bridge_recipes_ingredients_bool_exp<
                      Input$bridge_recipes_ingredients_bool_exp>>?)
          _fn);
  CopyWith$Input$String_comparison_exp<TRes> get $_recipe_id;
  CopyWith$Input$uuid_comparison_exp<TRes> get id;
  CopyWith$Input$ingredients_bool_exp<TRes> get ingredients;
  CopyWith$Input$recipes_bool_exp<TRes> get recipes;
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_bool_exp<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_bool_exp(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_bool_exp _instance;

  final TRes Function(Input$bridge_recipes_ingredients_bool_exp) _then;

  static const _undefined = {};

  TRes call({
    Object? $_and = _undefined,
    Object? $_ingredient_id = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? $_recipe_id = _undefined,
    Object? id = _undefined,
    Object? ingredients = _undefined,
    Object? recipes = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_bool_exp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input$bridge_recipes_ingredients_bool_exp>?),
        if ($_ingredient_id != _undefined)
          '_ingredient_id': ($_ingredient_id as Input$String_comparison_exp?),
        if ($_not != _undefined)
          '_not': ($_not as Input$bridge_recipes_ingredients_bool_exp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input$bridge_recipes_ingredients_bool_exp>?),
        if ($_recipe_id != _undefined)
          '_recipe_id': ($_recipe_id as Input$String_comparison_exp?),
        if (id != _undefined) 'id': (id as Input$uuid_comparison_exp?),
        if (ingredients != _undefined)
          'ingredients': (ingredients as Input$ingredients_bool_exp?),
        if (recipes != _undefined)
          'recipes': (recipes as Input$recipes_bool_exp?),
      }));
  TRes $_and(
          Iterable<Input$bridge_recipes_ingredients_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$bridge_recipes_ingredients_bool_exp<
                          Input$bridge_recipes_ingredients_bool_exp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and
              ?.map((e) => CopyWith$Input$bridge_recipes_ingredients_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$String_comparison_exp<TRes> get $_ingredient_id {
    final local$$_ingredient_id = _instance.$_ingredient_id;
    return local$$_ingredient_id == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$$_ingredient_id, (e) => call($_ingredient_id: e));
  }

  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith$Input$bridge_recipes_ingredients_bool_exp.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_bool_exp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input$bridge_recipes_ingredients_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$bridge_recipes_ingredients_bool_exp<
                          Input$bridge_recipes_ingredients_bool_exp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or
              ?.map((e) => CopyWith$Input$bridge_recipes_ingredients_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$String_comparison_exp<TRes> get $_recipe_id {
    final local$$_recipe_id = _instance.$_recipe_id;
    return local$$_recipe_id == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$$_recipe_id, (e) => call($_recipe_id: e));
  }

  CopyWith$Input$uuid_comparison_exp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$uuid_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$uuid_comparison_exp(local$id, (e) => call(id: e));
  }

  CopyWith$Input$ingredients_bool_exp<TRes> get ingredients {
    final local$ingredients = _instance.ingredients;
    return local$ingredients == null
        ? CopyWith$Input$ingredients_bool_exp.stub(_then(_instance))
        : CopyWith$Input$ingredients_bool_exp(
            local$ingredients, (e) => call(ingredients: e));
  }

  CopyWith$Input$recipes_bool_exp<TRes> get recipes {
    final local$recipes = _instance.recipes;
    return local$recipes == null
        ? CopyWith$Input$recipes_bool_exp.stub(_then(_instance))
        : CopyWith$Input$recipes_bool_exp(
            local$recipes, (e) => call(recipes: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_bool_exp<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_bool_exp(this._res);

  TRes _res;

  call({
    List<Input$bridge_recipes_ingredients_bool_exp>? $_and,
    Input$String_comparison_exp? $_ingredient_id,
    Input$bridge_recipes_ingredients_bool_exp? $_not,
    List<Input$bridge_recipes_ingredients_bool_exp>? $_or,
    Input$String_comparison_exp? $_recipe_id,
    Input$uuid_comparison_exp? id,
    Input$ingredients_bool_exp? ingredients,
    Input$recipes_bool_exp? recipes,
  }) =>
      _res;
  $_and(_fn) => _res;
  CopyWith$Input$String_comparison_exp<TRes> get $_ingredient_id =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> get $_not =>
      CopyWith$Input$bridge_recipes_ingredients_bool_exp.stub(_res);
  $_or(_fn) => _res;
  CopyWith$Input$String_comparison_exp<TRes> get $_recipe_id =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$uuid_comparison_exp<TRes> get id =>
      CopyWith$Input$uuid_comparison_exp.stub(_res);
  CopyWith$Input$ingredients_bool_exp<TRes> get ingredients =>
      CopyWith$Input$ingredients_bool_exp.stub(_res);
  CopyWith$Input$recipes_bool_exp<TRes> get recipes =>
      CopyWith$Input$recipes_bool_exp.stub(_res);
}

class Input$bridge_recipes_ingredients_insert_input {
  factory Input$bridge_recipes_ingredients_insert_input({
    required String $_ingredient_id,
    required String $_recipe_id,
    String? id,
    Input$ingredients_obj_rel_insert_input? ingredients,
    Input$recipes_obj_rel_insert_input? recipes,
  }) =>
      Input$bridge_recipes_ingredients_insert_input._({
        r'_ingredient_id': $_ingredient_id,
        r'_recipe_id': $_recipe_id,
        if (id != null) r'id': id,
        if (ingredients != null) r'ingredients': ingredients,
        if (recipes != null) r'recipes': recipes,
      });

  Input$bridge_recipes_ingredients_insert_input._(this._$data);

  factory Input$bridge_recipes_ingredients_insert_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$_ingredient_id = data['_ingredient_id'];
    result$data['_ingredient_id'] = (l$$_ingredient_id as String);
    final l$$_recipe_id = data['_recipe_id'];
    result$data['_recipe_id'] = (l$$_recipe_id as String);
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('ingredients')) {
      final l$ingredients = data['ingredients'];
      result$data['ingredients'] = l$ingredients == null
          ? null
          : Input$ingredients_obj_rel_insert_input.fromJson(
              (l$ingredients as Map<String, dynamic>));
    }
    if (data.containsKey('recipes')) {
      final l$recipes = data['recipes'];
      result$data['recipes'] = l$recipes == null
          ? null
          : Input$recipes_obj_rel_insert_input.fromJson(
              (l$recipes as Map<String, dynamic>));
    }
    return Input$bridge_recipes_ingredients_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String get $_ingredient_id => (_$data['_ingredient_id'] as String);
  String get $_recipe_id => (_$data['_recipe_id'] as String);
  String? get id => (_$data['id'] as String?);
  Input$ingredients_obj_rel_insert_input? get ingredients =>
      (_$data['ingredients'] as Input$ingredients_obj_rel_insert_input?);
  Input$recipes_obj_rel_insert_input? get recipes =>
      (_$data['recipes'] as Input$recipes_obj_rel_insert_input?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$_ingredient_id = $_ingredient_id;
    result$data['_ingredient_id'] = l$$_ingredient_id;
    final l$$_recipe_id = $_recipe_id;
    result$data['_recipe_id'] = l$$_recipe_id;
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('ingredients')) {
      final l$ingredients = ingredients;
      result$data['ingredients'] = l$ingredients?.toJson();
    }
    if (_$data.containsKey('recipes')) {
      final l$recipes = recipes;
      result$data['recipes'] = l$recipes?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_insert_input<
          Input$bridge_recipes_ingredients_insert_input>
      get copyWith => CopyWith$Input$bridge_recipes_ingredients_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_ingredient_id = $_ingredient_id;
    final lOther$$_ingredient_id = other.$_ingredient_id;
    if (l$$_ingredient_id != lOther$$_ingredient_id) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (_$data.containsKey('ingredients') !=
        other._$data.containsKey('ingredients')) {
      return false;
    }
    if (l$ingredients != lOther$ingredients) {
      return false;
    }
    final l$recipes = recipes;
    final lOther$recipes = other.recipes;
    if (_$data.containsKey('recipes') != other._$data.containsKey('recipes')) {
      return false;
    }
    if (l$recipes != lOther$recipes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_ingredient_id = $_ingredient_id;
    final l$$_recipe_id = $_recipe_id;
    final l$id = id;
    final l$ingredients = ingredients;
    final l$recipes = recipes;
    return Object.hashAll([
      l$$_ingredient_id,
      l$$_recipe_id,
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('ingredients') ? l$ingredients : const {},
      _$data.containsKey('recipes') ? l$recipes : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_insert_input<TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_insert_input(
    Input$bridge_recipes_ingredients_insert_input instance,
    TRes Function(Input$bridge_recipes_ingredients_insert_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_insert_input;

  factory CopyWith$Input$bridge_recipes_ingredients_insert_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_insert_input;

  TRes call({
    String? $_ingredient_id,
    String? $_recipe_id,
    String? id,
    Input$ingredients_obj_rel_insert_input? ingredients,
    Input$recipes_obj_rel_insert_input? recipes,
  });
  CopyWith$Input$ingredients_obj_rel_insert_input<TRes> get ingredients;
  CopyWith$Input$recipes_obj_rel_insert_input<TRes> get recipes;
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_insert_input<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_insert_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_insert_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_insert_input _instance;

  final TRes Function(Input$bridge_recipes_ingredients_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? $_ingredient_id = _undefined,
    Object? $_recipe_id = _undefined,
    Object? id = _undefined,
    Object? ingredients = _undefined,
    Object? recipes = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_insert_input._({
        ..._instance._$data,
        if ($_ingredient_id != _undefined && $_ingredient_id != null)
          '_ingredient_id': ($_ingredient_id as String),
        if ($_recipe_id != _undefined && $_recipe_id != null)
          '_recipe_id': ($_recipe_id as String),
        if (id != _undefined) 'id': (id as String?),
        if (ingredients != _undefined)
          'ingredients':
              (ingredients as Input$ingredients_obj_rel_insert_input?),
        if (recipes != _undefined)
          'recipes': (recipes as Input$recipes_obj_rel_insert_input?),
      }));
  CopyWith$Input$ingredients_obj_rel_insert_input<TRes> get ingredients {
    final local$ingredients = _instance.ingredients;
    return local$ingredients == null
        ? CopyWith$Input$ingredients_obj_rel_insert_input.stub(_then(_instance))
        : CopyWith$Input$ingredients_obj_rel_insert_input(
            local$ingredients, (e) => call(ingredients: e));
  }

  CopyWith$Input$recipes_obj_rel_insert_input<TRes> get recipes {
    final local$recipes = _instance.recipes;
    return local$recipes == null
        ? CopyWith$Input$recipes_obj_rel_insert_input.stub(_then(_instance))
        : CopyWith$Input$recipes_obj_rel_insert_input(
            local$recipes, (e) => call(recipes: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_insert_input<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_insert_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_insert_input(this._res);

  TRes _res;

  call({
    String? $_ingredient_id,
    String? $_recipe_id,
    String? id,
    Input$ingredients_obj_rel_insert_input? ingredients,
    Input$recipes_obj_rel_insert_input? recipes,
  }) =>
      _res;
  CopyWith$Input$ingredients_obj_rel_insert_input<TRes> get ingredients =>
      CopyWith$Input$ingredients_obj_rel_insert_input.stub(_res);
  CopyWith$Input$recipes_obj_rel_insert_input<TRes> get recipes =>
      CopyWith$Input$recipes_obj_rel_insert_input.stub(_res);
}

class Input$bridge_recipes_ingredients_max_order_by {
  factory Input$bridge_recipes_ingredients_max_order_by({
    Enum$order_by? $_ingredient_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
  }) =>
      Input$bridge_recipes_ingredients_max_order_by._({
        if ($_ingredient_id != null) r'_ingredient_id': $_ingredient_id,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if (id != null) r'id': id,
      });

  Input$bridge_recipes_ingredients_max_order_by._(this._$data);

  factory Input$bridge_recipes_ingredients_max_order_by.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_ingredient_id')) {
      final l$$_ingredient_id = data['_ingredient_id'];
      result$data['_ingredient_id'] = l$$_ingredient_id == null
          ? null
          : fromJson$Enum$order_by((l$$_ingredient_id as String));
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = l$$_recipe_id == null
          ? null
          : fromJson$Enum$order_by((l$$_recipe_id as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    return Input$bridge_recipes_ingredients_max_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get $_ingredient_id =>
      (_$data['_ingredient_id'] as Enum$order_by?);
  Enum$order_by? get $_recipe_id => (_$data['_recipe_id'] as Enum$order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_ingredient_id')) {
      final l$$_ingredient_id = $_ingredient_id;
      result$data['_ingredient_id'] = l$$_ingredient_id == null
          ? null
          : toJson$Enum$order_by(l$$_ingredient_id);
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] =
          l$$_recipe_id == null ? null : toJson$Enum$order_by(l$$_recipe_id);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_max_order_by<
          Input$bridge_recipes_ingredients_max_order_by>
      get copyWith => CopyWith$Input$bridge_recipes_ingredients_max_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_max_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_ingredient_id = $_ingredient_id;
    final lOther$$_ingredient_id = other.$_ingredient_id;
    if (_$data.containsKey('_ingredient_id') !=
        other._$data.containsKey('_ingredient_id')) {
      return false;
    }
    if (l$$_ingredient_id != lOther$$_ingredient_id) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_ingredient_id = $_ingredient_id;
    final l$$_recipe_id = $_recipe_id;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('_ingredient_id') ? l$$_ingredient_id : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_max_order_by<TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_max_order_by(
    Input$bridge_recipes_ingredients_max_order_by instance,
    TRes Function(Input$bridge_recipes_ingredients_max_order_by) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_max_order_by;

  factory CopyWith$Input$bridge_recipes_ingredients_max_order_by.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_max_order_by;

  TRes call({
    Enum$order_by? $_ingredient_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
  });
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_max_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_max_order_by<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_max_order_by(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_max_order_by _instance;

  final TRes Function(Input$bridge_recipes_ingredients_max_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? $_ingredient_id = _undefined,
    Object? $_recipe_id = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_max_order_by._({
        ..._instance._$data,
        if ($_ingredient_id != _undefined)
          '_ingredient_id': ($_ingredient_id as Enum$order_by?),
        if ($_recipe_id != _undefined)
          '_recipe_id': ($_recipe_id as Enum$order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_max_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_max_order_by<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_max_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? $_ingredient_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
  }) =>
      _res;
}

class Input$bridge_recipes_ingredients_min_order_by {
  factory Input$bridge_recipes_ingredients_min_order_by({
    Enum$order_by? $_ingredient_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
  }) =>
      Input$bridge_recipes_ingredients_min_order_by._({
        if ($_ingredient_id != null) r'_ingredient_id': $_ingredient_id,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if (id != null) r'id': id,
      });

  Input$bridge_recipes_ingredients_min_order_by._(this._$data);

  factory Input$bridge_recipes_ingredients_min_order_by.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_ingredient_id')) {
      final l$$_ingredient_id = data['_ingredient_id'];
      result$data['_ingredient_id'] = l$$_ingredient_id == null
          ? null
          : fromJson$Enum$order_by((l$$_ingredient_id as String));
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = l$$_recipe_id == null
          ? null
          : fromJson$Enum$order_by((l$$_recipe_id as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    return Input$bridge_recipes_ingredients_min_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get $_ingredient_id =>
      (_$data['_ingredient_id'] as Enum$order_by?);
  Enum$order_by? get $_recipe_id => (_$data['_recipe_id'] as Enum$order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_ingredient_id')) {
      final l$$_ingredient_id = $_ingredient_id;
      result$data['_ingredient_id'] = l$$_ingredient_id == null
          ? null
          : toJson$Enum$order_by(l$$_ingredient_id);
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] =
          l$$_recipe_id == null ? null : toJson$Enum$order_by(l$$_recipe_id);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_min_order_by<
          Input$bridge_recipes_ingredients_min_order_by>
      get copyWith => CopyWith$Input$bridge_recipes_ingredients_min_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_min_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_ingredient_id = $_ingredient_id;
    final lOther$$_ingredient_id = other.$_ingredient_id;
    if (_$data.containsKey('_ingredient_id') !=
        other._$data.containsKey('_ingredient_id')) {
      return false;
    }
    if (l$$_ingredient_id != lOther$$_ingredient_id) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_ingredient_id = $_ingredient_id;
    final l$$_recipe_id = $_recipe_id;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('_ingredient_id') ? l$$_ingredient_id : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_min_order_by<TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_min_order_by(
    Input$bridge_recipes_ingredients_min_order_by instance,
    TRes Function(Input$bridge_recipes_ingredients_min_order_by) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_min_order_by;

  factory CopyWith$Input$bridge_recipes_ingredients_min_order_by.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_min_order_by;

  TRes call({
    Enum$order_by? $_ingredient_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
  });
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_min_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_min_order_by<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_min_order_by(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_min_order_by _instance;

  final TRes Function(Input$bridge_recipes_ingredients_min_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? $_ingredient_id = _undefined,
    Object? $_recipe_id = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_min_order_by._({
        ..._instance._$data,
        if ($_ingredient_id != _undefined)
          '_ingredient_id': ($_ingredient_id as Enum$order_by?),
        if ($_recipe_id != _undefined)
          '_recipe_id': ($_recipe_id as Enum$order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_min_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_min_order_by<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_min_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? $_ingredient_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
  }) =>
      _res;
}

class Input$bridge_recipes_ingredients_on_conflict {
  factory Input$bridge_recipes_ingredients_on_conflict({
    required Enum$bridge_recipes_ingredients_constraint constraint,
    required List<Enum$bridge_recipes_ingredients_update_column> update_columns,
    Input$bridge_recipes_ingredients_bool_exp? where,
  }) =>
      Input$bridge_recipes_ingredients_on_conflict._({
        r'constraint': constraint,
        r'update_columns': update_columns,
        if (where != null) r'where': where,
      });

  Input$bridge_recipes_ingredients_on_conflict._(this._$data);

  factory Input$bridge_recipes_ingredients_on_conflict.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson$Enum$bridge_recipes_ingredients_constraint(
            (l$constraint as String));
    final l$update_columns = data['update_columns'];
    result$data['update_columns'] = (l$update_columns as List<dynamic>)
        .map((e) => fromJson$Enum$bridge_recipes_ingredients_update_column(
            (e as String)))
        .toList();
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$bridge_recipes_ingredients_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input$bridge_recipes_ingredients_on_conflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$bridge_recipes_ingredients_constraint get constraint =>
      (_$data['constraint'] as Enum$bridge_recipes_ingredients_constraint);
  List<Enum$bridge_recipes_ingredients_update_column> get update_columns =>
      (_$data['update_columns']
          as List<Enum$bridge_recipes_ingredients_update_column>);
  Input$bridge_recipes_ingredients_bool_exp? get where =>
      (_$data['where'] as Input$bridge_recipes_ingredients_bool_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson$Enum$bridge_recipes_ingredients_constraint(l$constraint);
    final l$update_columns = update_columns;
    result$data['update_columns'] = l$update_columns
        .map((e) => toJson$Enum$bridge_recipes_ingredients_update_column(e))
        .toList();
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_on_conflict<
          Input$bridge_recipes_ingredients_on_conflict>
      get copyWith => CopyWith$Input$bridge_recipes_ingredients_on_conflict(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_on_conflict) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) {
      return false;
    }
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) {
        return false;
      }
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_on_conflict<TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_on_conflict(
    Input$bridge_recipes_ingredients_on_conflict instance,
    TRes Function(Input$bridge_recipes_ingredients_on_conflict) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_on_conflict;

  factory CopyWith$Input$bridge_recipes_ingredients_on_conflict.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_on_conflict;

  TRes call({
    Enum$bridge_recipes_ingredients_constraint? constraint,
    List<Enum$bridge_recipes_ingredients_update_column>? update_columns,
    Input$bridge_recipes_ingredients_bool_exp? where,
  });
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_on_conflict<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_on_conflict<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_on_conflict(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_on_conflict _instance;

  final TRes Function(Input$bridge_recipes_ingredients_on_conflict) _then;

  static const _undefined = {};

  TRes call({
    Object? constraint = _undefined,
    Object? update_columns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_on_conflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint':
              (constraint as Enum$bridge_recipes_ingredients_constraint),
        if (update_columns != _undefined && update_columns != null)
          'update_columns': (update_columns
              as List<Enum$bridge_recipes_ingredients_update_column>),
        if (where != _undefined)
          'where': (where as Input$bridge_recipes_ingredients_bool_exp?),
      }));
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith$Input$bridge_recipes_ingredients_bool_exp.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_bool_exp(
            local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_on_conflict<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_on_conflict<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_on_conflict(this._res);

  TRes _res;

  call({
    Enum$bridge_recipes_ingredients_constraint? constraint,
    List<Enum$bridge_recipes_ingredients_update_column>? update_columns,
    Input$bridge_recipes_ingredients_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> get where =>
      CopyWith$Input$bridge_recipes_ingredients_bool_exp.stub(_res);
}

class Input$bridge_recipes_ingredients_order_by {
  factory Input$bridge_recipes_ingredients_order_by({
    Enum$order_by? $_ingredient_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
    Input$ingredients_order_by? ingredients,
    Input$recipes_order_by? recipes,
  }) =>
      Input$bridge_recipes_ingredients_order_by._({
        if ($_ingredient_id != null) r'_ingredient_id': $_ingredient_id,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if (id != null) r'id': id,
        if (ingredients != null) r'ingredients': ingredients,
        if (recipes != null) r'recipes': recipes,
      });

  Input$bridge_recipes_ingredients_order_by._(this._$data);

  factory Input$bridge_recipes_ingredients_order_by.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_ingredient_id')) {
      final l$$_ingredient_id = data['_ingredient_id'];
      result$data['_ingredient_id'] = l$$_ingredient_id == null
          ? null
          : fromJson$Enum$order_by((l$$_ingredient_id as String));
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = l$$_recipe_id == null
          ? null
          : fromJson$Enum$order_by((l$$_recipe_id as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    if (data.containsKey('ingredients')) {
      final l$ingredients = data['ingredients'];
      result$data['ingredients'] = l$ingredients == null
          ? null
          : Input$ingredients_order_by.fromJson(
              (l$ingredients as Map<String, dynamic>));
    }
    if (data.containsKey('recipes')) {
      final l$recipes = data['recipes'];
      result$data['recipes'] = l$recipes == null
          ? null
          : Input$recipes_order_by.fromJson(
              (l$recipes as Map<String, dynamic>));
    }
    return Input$bridge_recipes_ingredients_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get $_ingredient_id =>
      (_$data['_ingredient_id'] as Enum$order_by?);
  Enum$order_by? get $_recipe_id => (_$data['_recipe_id'] as Enum$order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Input$ingredients_order_by? get ingredients =>
      (_$data['ingredients'] as Input$ingredients_order_by?);
  Input$recipes_order_by? get recipes =>
      (_$data['recipes'] as Input$recipes_order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_ingredient_id')) {
      final l$$_ingredient_id = $_ingredient_id;
      result$data['_ingredient_id'] = l$$_ingredient_id == null
          ? null
          : toJson$Enum$order_by(l$$_ingredient_id);
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] =
          l$$_recipe_id == null ? null : toJson$Enum$order_by(l$$_recipe_id);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    if (_$data.containsKey('ingredients')) {
      final l$ingredients = ingredients;
      result$data['ingredients'] = l$ingredients?.toJson();
    }
    if (_$data.containsKey('recipes')) {
      final l$recipes = recipes;
      result$data['recipes'] = l$recipes?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_order_by<
          Input$bridge_recipes_ingredients_order_by>
      get copyWith => CopyWith$Input$bridge_recipes_ingredients_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_ingredient_id = $_ingredient_id;
    final lOther$$_ingredient_id = other.$_ingredient_id;
    if (_$data.containsKey('_ingredient_id') !=
        other._$data.containsKey('_ingredient_id')) {
      return false;
    }
    if (l$$_ingredient_id != lOther$$_ingredient_id) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (_$data.containsKey('ingredients') !=
        other._$data.containsKey('ingredients')) {
      return false;
    }
    if (l$ingredients != lOther$ingredients) {
      return false;
    }
    final l$recipes = recipes;
    final lOther$recipes = other.recipes;
    if (_$data.containsKey('recipes') != other._$data.containsKey('recipes')) {
      return false;
    }
    if (l$recipes != lOther$recipes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_ingredient_id = $_ingredient_id;
    final l$$_recipe_id = $_recipe_id;
    final l$id = id;
    final l$ingredients = ingredients;
    final l$recipes = recipes;
    return Object.hashAll([
      _$data.containsKey('_ingredient_id') ? l$$_ingredient_id : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('ingredients') ? l$ingredients : const {},
      _$data.containsKey('recipes') ? l$recipes : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_order_by<TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_order_by(
    Input$bridge_recipes_ingredients_order_by instance,
    TRes Function(Input$bridge_recipes_ingredients_order_by) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_order_by;

  factory CopyWith$Input$bridge_recipes_ingredients_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_order_by;

  TRes call({
    Enum$order_by? $_ingredient_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
    Input$ingredients_order_by? ingredients,
    Input$recipes_order_by? recipes,
  });
  CopyWith$Input$ingredients_order_by<TRes> get ingredients;
  CopyWith$Input$recipes_order_by<TRes> get recipes;
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_order_by<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_order_by(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_order_by _instance;

  final TRes Function(Input$bridge_recipes_ingredients_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? $_ingredient_id = _undefined,
    Object? $_recipe_id = _undefined,
    Object? id = _undefined,
    Object? ingredients = _undefined,
    Object? recipes = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_order_by._({
        ..._instance._$data,
        if ($_ingredient_id != _undefined)
          '_ingredient_id': ($_ingredient_id as Enum$order_by?),
        if ($_recipe_id != _undefined)
          '_recipe_id': ($_recipe_id as Enum$order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
        if (ingredients != _undefined)
          'ingredients': (ingredients as Input$ingredients_order_by?),
        if (recipes != _undefined)
          'recipes': (recipes as Input$recipes_order_by?),
      }));
  CopyWith$Input$ingredients_order_by<TRes> get ingredients {
    final local$ingredients = _instance.ingredients;
    return local$ingredients == null
        ? CopyWith$Input$ingredients_order_by.stub(_then(_instance))
        : CopyWith$Input$ingredients_order_by(
            local$ingredients, (e) => call(ingredients: e));
  }

  CopyWith$Input$recipes_order_by<TRes> get recipes {
    final local$recipes = _instance.recipes;
    return local$recipes == null
        ? CopyWith$Input$recipes_order_by.stub(_then(_instance))
        : CopyWith$Input$recipes_order_by(
            local$recipes, (e) => call(recipes: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_order_by<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? $_ingredient_id,
    Enum$order_by? $_recipe_id,
    Enum$order_by? id,
    Input$ingredients_order_by? ingredients,
    Input$recipes_order_by? recipes,
  }) =>
      _res;
  CopyWith$Input$ingredients_order_by<TRes> get ingredients =>
      CopyWith$Input$ingredients_order_by.stub(_res);
  CopyWith$Input$recipes_order_by<TRes> get recipes =>
      CopyWith$Input$recipes_order_by.stub(_res);
}

class Input$bridge_recipes_ingredients_pk_columns_input {
  factory Input$bridge_recipes_ingredients_pk_columns_input(
          {required String id}) =>
      Input$bridge_recipes_ingredients_pk_columns_input._({
        r'id': id,
      });

  Input$bridge_recipes_ingredients_pk_columns_input._(this._$data);

  factory Input$bridge_recipes_ingredients_pk_columns_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$bridge_recipes_ingredients_pk_columns_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_pk_columns_input<
          Input$bridge_recipes_ingredients_pk_columns_input>
      get copyWith =>
          CopyWith$Input$bridge_recipes_ingredients_pk_columns_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_pk_columns_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_pk_columns_input<
    TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_pk_columns_input(
    Input$bridge_recipes_ingredients_pk_columns_input instance,
    TRes Function(Input$bridge_recipes_ingredients_pk_columns_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_pk_columns_input;

  factory CopyWith$Input$bridge_recipes_ingredients_pk_columns_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_pk_columns_input;

  TRes call({String? id});
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_pk_columns_input<TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_pk_columns_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_pk_columns_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_pk_columns_input _instance;

  final TRes Function(Input$bridge_recipes_ingredients_pk_columns_input) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Input$bridge_recipes_ingredients_pk_columns_input._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_pk_columns_input<TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_pk_columns_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_pk_columns_input(
      this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$bridge_recipes_ingredients_set_input {
  factory Input$bridge_recipes_ingredients_set_input({
    String? $_ingredient_id,
    String? $_recipe_id,
    String? id,
  }) =>
      Input$bridge_recipes_ingredients_set_input._({
        if ($_ingredient_id != null) r'_ingredient_id': $_ingredient_id,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if (id != null) r'id': id,
      });

  Input$bridge_recipes_ingredients_set_input._(this._$data);

  factory Input$bridge_recipes_ingredients_set_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_ingredient_id')) {
      final l$$_ingredient_id = data['_ingredient_id'];
      result$data['_ingredient_id'] = (l$$_ingredient_id as String?);
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = (l$$_recipe_id as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$bridge_recipes_ingredients_set_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_ingredient_id => (_$data['_ingredient_id'] as String?);
  String? get $_recipe_id => (_$data['_recipe_id'] as String?);
  String? get id => (_$data['id'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_ingredient_id')) {
      final l$$_ingredient_id = $_ingredient_id;
      result$data['_ingredient_id'] = l$$_ingredient_id;
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] = l$$_recipe_id;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_set_input<
          Input$bridge_recipes_ingredients_set_input>
      get copyWith => CopyWith$Input$bridge_recipes_ingredients_set_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_set_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_ingredient_id = $_ingredient_id;
    final lOther$$_ingredient_id = other.$_ingredient_id;
    if (_$data.containsKey('_ingredient_id') !=
        other._$data.containsKey('_ingredient_id')) {
      return false;
    }
    if (l$$_ingredient_id != lOther$$_ingredient_id) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_ingredient_id = $_ingredient_id;
    final l$$_recipe_id = $_recipe_id;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('_ingredient_id') ? l$$_ingredient_id : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_set_input<TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_set_input(
    Input$bridge_recipes_ingredients_set_input instance,
    TRes Function(Input$bridge_recipes_ingredients_set_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_set_input;

  factory CopyWith$Input$bridge_recipes_ingredients_set_input.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_set_input;

  TRes call({
    String? $_ingredient_id,
    String? $_recipe_id,
    String? id,
  });
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_set_input<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_set_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_set_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_set_input _instance;

  final TRes Function(Input$bridge_recipes_ingredients_set_input) _then;

  static const _undefined = {};

  TRes call({
    Object? $_ingredient_id = _undefined,
    Object? $_recipe_id = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_set_input._({
        ..._instance._$data,
        if ($_ingredient_id != _undefined)
          '_ingredient_id': ($_ingredient_id as String?),
        if ($_recipe_id != _undefined) '_recipe_id': ($_recipe_id as String?),
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_set_input<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_set_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_set_input(this._res);

  TRes _res;

  call({
    String? $_ingredient_id,
    String? $_recipe_id,
    String? id,
  }) =>
      _res;
}

class Input$bridge_recipes_ingredients_stream_cursor_input {
  factory Input$bridge_recipes_ingredients_stream_cursor_input({
    required Input$bridge_recipes_ingredients_stream_cursor_value_input
        initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      Input$bridge_recipes_ingredients_stream_cursor_input._({
        r'initial_value': initial_value,
        if (ordering != null) r'ordering': ordering,
      });

  Input$bridge_recipes_ingredients_stream_cursor_input._(this._$data);

  factory Input$bridge_recipes_ingredients_stream_cursor_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initial_value = data['initial_value'];
    result$data['initial_value'] =
        Input$bridge_recipes_ingredients_stream_cursor_value_input.fromJson(
            (l$initial_value as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson$Enum$cursor_ordering((l$ordering as String));
    }
    return Input$bridge_recipes_ingredients_stream_cursor_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_ingredients_stream_cursor_value_input
      get initial_value => (_$data['initial_value']
          as Input$bridge_recipes_ingredients_stream_cursor_value_input);
  Enum$cursor_ordering? get ordering =>
      (_$data['ordering'] as Enum$cursor_ordering?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initial_value = initial_value;
    result$data['initial_value'] = l$initial_value.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson$Enum$cursor_ordering(l$ordering);
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_stream_cursor_input<
          Input$bridge_recipes_ingredients_stream_cursor_input>
      get copyWith =>
          CopyWith$Input$bridge_recipes_ingredients_stream_cursor_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_stream_cursor_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initial_value = initial_value;
    final lOther$initial_value = other.initial_value;
    if (l$initial_value != lOther$initial_value) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initial_value = initial_value;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initial_value,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_stream_cursor_input<
    TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_stream_cursor_input(
    Input$bridge_recipes_ingredients_stream_cursor_input instance,
    TRes Function(Input$bridge_recipes_ingredients_stream_cursor_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_stream_cursor_input;

  factory CopyWith$Input$bridge_recipes_ingredients_stream_cursor_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_stream_cursor_input;

  TRes call({
    Input$bridge_recipes_ingredients_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  });
  CopyWith$Input$bridge_recipes_ingredients_stream_cursor_value_input<TRes>
      get initial_value;
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_stream_cursor_input<TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_stream_cursor_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_stream_cursor_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_stream_cursor_input _instance;

  final TRes Function(Input$bridge_recipes_ingredients_stream_cursor_input)
      _then;

  static const _undefined = {};

  TRes call({
    Object? initial_value = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_stream_cursor_input._({
        ..._instance._$data,
        if (initial_value != _undefined && initial_value != null)
          'initial_value': (initial_value
              as Input$bridge_recipes_ingredients_stream_cursor_value_input),
        if (ordering != _undefined)
          'ordering': (ordering as Enum$cursor_ordering?),
      }));
  CopyWith$Input$bridge_recipes_ingredients_stream_cursor_value_input<TRes>
      get initial_value {
    final local$initial_value = _instance.initial_value;
    return CopyWith$Input$bridge_recipes_ingredients_stream_cursor_value_input(
        local$initial_value, (e) => call(initial_value: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_stream_cursor_input<
        TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_stream_cursor_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_stream_cursor_input(
      this._res);

  TRes _res;

  call({
    Input$bridge_recipes_ingredients_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_ingredients_stream_cursor_value_input<TRes>
      get initial_value =>
          CopyWith$Input$bridge_recipes_ingredients_stream_cursor_value_input
              .stub(_res);
}

class Input$bridge_recipes_ingredients_stream_cursor_value_input {
  factory Input$bridge_recipes_ingredients_stream_cursor_value_input({
    String? $_ingredient_id,
    String? $_recipe_id,
    String? id,
  }) =>
      Input$bridge_recipes_ingredients_stream_cursor_value_input._({
        if ($_ingredient_id != null) r'_ingredient_id': $_ingredient_id,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if (id != null) r'id': id,
      });

  Input$bridge_recipes_ingredients_stream_cursor_value_input._(this._$data);

  factory Input$bridge_recipes_ingredients_stream_cursor_value_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_ingredient_id')) {
      final l$$_ingredient_id = data['_ingredient_id'];
      result$data['_ingredient_id'] = (l$$_ingredient_id as String?);
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = (l$$_recipe_id as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$bridge_recipes_ingredients_stream_cursor_value_input._(
        result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_ingredient_id => (_$data['_ingredient_id'] as String?);
  String? get $_recipe_id => (_$data['_recipe_id'] as String?);
  String? get id => (_$data['id'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_ingredient_id')) {
      final l$$_ingredient_id = $_ingredient_id;
      result$data['_ingredient_id'] = l$$_ingredient_id;
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] = l$$_recipe_id;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_stream_cursor_value_input<
          Input$bridge_recipes_ingredients_stream_cursor_value_input>
      get copyWith =>
          CopyWith$Input$bridge_recipes_ingredients_stream_cursor_value_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$bridge_recipes_ingredients_stream_cursor_value_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_ingredient_id = $_ingredient_id;
    final lOther$$_ingredient_id = other.$_ingredient_id;
    if (_$data.containsKey('_ingredient_id') !=
        other._$data.containsKey('_ingredient_id')) {
      return false;
    }
    if (l$$_ingredient_id != lOther$$_ingredient_id) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_ingredient_id = $_ingredient_id;
    final l$$_recipe_id = $_recipe_id;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('_ingredient_id') ? l$$_ingredient_id : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_stream_cursor_value_input<
    TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_stream_cursor_value_input(
    Input$bridge_recipes_ingredients_stream_cursor_value_input instance,
    TRes Function(Input$bridge_recipes_ingredients_stream_cursor_value_input)
        then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_stream_cursor_value_input;

  factory CopyWith$Input$bridge_recipes_ingredients_stream_cursor_value_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_stream_cursor_value_input;

  TRes call({
    String? $_ingredient_id,
    String? $_recipe_id,
    String? id,
  });
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_stream_cursor_value_input<
        TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_stream_cursor_value_input<
            TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_stream_cursor_value_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_stream_cursor_value_input _instance;

  final TRes Function(
      Input$bridge_recipes_ingredients_stream_cursor_value_input) _then;

  static const _undefined = {};

  TRes call({
    Object? $_ingredient_id = _undefined,
    Object? $_recipe_id = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_stream_cursor_value_input._({
        ..._instance._$data,
        if ($_ingredient_id != _undefined)
          '_ingredient_id': ($_ingredient_id as String?),
        if ($_recipe_id != _undefined) '_recipe_id': ($_recipe_id as String?),
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_stream_cursor_value_input<
        TRes>
    implements
        CopyWith$Input$bridge_recipes_ingredients_stream_cursor_value_input<
            TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_stream_cursor_value_input(
      this._res);

  TRes _res;

  call({
    String? $_ingredient_id,
    String? $_recipe_id,
    String? id,
  }) =>
      _res;
}

class Input$bridge_recipes_ingredients_updates {
  factory Input$bridge_recipes_ingredients_updates({
    Input$bridge_recipes_ingredients_set_input? $_set,
    required Input$bridge_recipes_ingredients_bool_exp where,
  }) =>
      Input$bridge_recipes_ingredients_updates._({
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input$bridge_recipes_ingredients_updates._(this._$data);

  factory Input$bridge_recipes_ingredients_updates.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input$bridge_recipes_ingredients_set_input.fromJson(
              (l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input$bridge_recipes_ingredients_bool_exp.fromJson(
        (l$where as Map<String, dynamic>));
    return Input$bridge_recipes_ingredients_updates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_ingredients_set_input? get $_set =>
      (_$data['_set'] as Input$bridge_recipes_ingredients_set_input?);
  Input$bridge_recipes_ingredients_bool_exp get where =>
      (_$data['where'] as Input$bridge_recipes_ingredients_bool_exp);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Input$bridge_recipes_ingredients_updates<
          Input$bridge_recipes_ingredients_updates>
      get copyWith => CopyWith$Input$bridge_recipes_ingredients_updates(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_ingredients_updates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_ingredients_updates<TRes> {
  factory CopyWith$Input$bridge_recipes_ingredients_updates(
    Input$bridge_recipes_ingredients_updates instance,
    TRes Function(Input$bridge_recipes_ingredients_updates) then,
  ) = _CopyWithImpl$Input$bridge_recipes_ingredients_updates;

  factory CopyWith$Input$bridge_recipes_ingredients_updates.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_ingredients_updates;

  TRes call({
    Input$bridge_recipes_ingredients_set_input? $_set,
    Input$bridge_recipes_ingredients_bool_exp? where,
  });
  CopyWith$Input$bridge_recipes_ingredients_set_input<TRes> get $_set;
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$bridge_recipes_ingredients_updates<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_updates<TRes> {
  _CopyWithImpl$Input$bridge_recipes_ingredients_updates(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_ingredients_updates _instance;

  final TRes Function(Input$bridge_recipes_ingredients_updates) _then;

  static const _undefined = {};

  TRes call({
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$bridge_recipes_ingredients_updates._({
        ..._instance._$data,
        if ($_set != _undefined)
          '_set': ($_set as Input$bridge_recipes_ingredients_set_input?),
        if (where != _undefined && where != null)
          'where': (where as Input$bridge_recipes_ingredients_bool_exp),
      }));
  CopyWith$Input$bridge_recipes_ingredients_set_input<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith$Input$bridge_recipes_ingredients_set_input.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_set_input(
            local$$_set, (e) => call($_set: e));
  }

  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$bridge_recipes_ingredients_bool_exp(
        local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_ingredients_updates<TRes>
    implements CopyWith$Input$bridge_recipes_ingredients_updates<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_ingredients_updates(this._res);

  TRes _res;

  call({
    Input$bridge_recipes_ingredients_set_input? $_set,
    Input$bridge_recipes_ingredients_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_ingredients_set_input<TRes> get $_set =>
      CopyWith$Input$bridge_recipes_ingredients_set_input.stub(_res);
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes> get where =>
      CopyWith$Input$bridge_recipes_ingredients_bool_exp.stub(_res);
}

class Input$bridge_recipes_tags_aggregate_bool_exp {
  factory Input$bridge_recipes_tags_aggregate_bool_exp(
          {Input$bridge_recipes_tags_aggregate_bool_exp_count? count}) =>
      Input$bridge_recipes_tags_aggregate_bool_exp._({
        if (count != null) r'count': count,
      });

  Input$bridge_recipes_tags_aggregate_bool_exp._(this._$data);

  factory Input$bridge_recipes_tags_aggregate_bool_exp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input$bridge_recipes_tags_aggregate_bool_exp_count.fromJson(
              (l$count as Map<String, dynamic>));
    }
    return Input$bridge_recipes_tags_aggregate_bool_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_tags_aggregate_bool_exp_count? get count =>
      (_$data['count'] as Input$bridge_recipes_tags_aggregate_bool_exp_count?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp<
          Input$bridge_recipes_tags_aggregate_bool_exp>
      get copyWith => CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_aggregate_bool_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (_$data.containsKey('count') != other._$data.containsKey('count')) {
      return false;
    }
    if (l$count != lOther$count) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    return Object.hashAll([_$data.containsKey('count') ? l$count : const {}]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp(
    Input$bridge_recipes_tags_aggregate_bool_exp instance,
    TRes Function(Input$bridge_recipes_tags_aggregate_bool_exp) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_aggregate_bool_exp;

  factory CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_aggregate_bool_exp;

  TRes call({Input$bridge_recipes_tags_aggregate_bool_exp_count? count});
  CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count<TRes> get count;
}

class _CopyWithImpl$Input$bridge_recipes_tags_aggregate_bool_exp<TRes>
    implements CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_aggregate_bool_exp(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_aggregate_bool_exp _instance;

  final TRes Function(Input$bridge_recipes_tags_aggregate_bool_exp) _then;

  static const _undefined = {};

  TRes call({Object? count = _undefined}) =>
      _then(Input$bridge_recipes_tags_aggregate_bool_exp._({
        ..._instance._$data,
        if (count != _undefined)
          'count':
              (count as Input$bridge_recipes_tags_aggregate_bool_exp_count?),
      }));
  CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count(
            local$count, (e) => call(count: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_aggregate_bool_exp<TRes>
    implements CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_aggregate_bool_exp(this._res);

  TRes _res;

  call({Input$bridge_recipes_tags_aggregate_bool_exp_count? count}) => _res;
  CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count<TRes> get count =>
      CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count.stub(_res);
}

class Input$bridge_recipes_tags_aggregate_bool_exp_count {
  factory Input$bridge_recipes_tags_aggregate_bool_exp_count({
    List<Enum$bridge_recipes_tags_select_column>? arguments,
    bool? distinct,
    Input$bridge_recipes_tags_bool_exp? filter,
    required Input$Int_comparison_exp predicate,
  }) =>
      Input$bridge_recipes_tags_aggregate_bool_exp_count._({
        if (arguments != null) r'arguments': arguments,
        if (distinct != null) r'distinct': distinct,
        if (filter != null) r'filter': filter,
        r'predicate': predicate,
      });

  Input$bridge_recipes_tags_aggregate_bool_exp_count._(this._$data);

  factory Input$bridge_recipes_tags_aggregate_bool_exp_count.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) =>
              fromJson$Enum$bridge_recipes_tags_select_column((e as String)))
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$bridge_recipes_tags_bool_exp.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input$Int_comparison_exp.fromJson(
        (l$predicate as Map<String, dynamic>));
    return Input$bridge_recipes_tags_aggregate_bool_exp_count._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum$bridge_recipes_tags_select_column>? get arguments =>
      (_$data['arguments'] as List<Enum$bridge_recipes_tags_select_column>?);
  bool? get distinct => (_$data['distinct'] as bool?);
  Input$bridge_recipes_tags_bool_exp? get filter =>
      (_$data['filter'] as Input$bridge_recipes_tags_bool_exp?);
  Input$Int_comparison_exp get predicate =>
      (_$data['predicate'] as Input$Int_comparison_exp);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson$Enum$bridge_recipes_tags_select_column(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count<
          Input$bridge_recipes_tags_aggregate_bool_exp_count>
      get copyWith =>
          CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_aggregate_bool_exp_count) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
              ? null
              : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count<
    TRes> {
  factory CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count(
    Input$bridge_recipes_tags_aggregate_bool_exp_count instance,
    TRes Function(Input$bridge_recipes_tags_aggregate_bool_exp_count) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_aggregate_bool_exp_count;

  factory CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_aggregate_bool_exp_count;

  TRes call({
    List<Enum$bridge_recipes_tags_select_column>? arguments,
    bool? distinct,
    Input$bridge_recipes_tags_bool_exp? filter,
    Input$Int_comparison_exp? predicate,
  });
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get filter;
  CopyWith$Input$Int_comparison_exp<TRes> get predicate;
}

class _CopyWithImpl$Input$bridge_recipes_tags_aggregate_bool_exp_count<TRes>
    implements
        CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_aggregate_bool_exp_count(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_aggregate_bool_exp_count _instance;

  final TRes Function(Input$bridge_recipes_tags_aggregate_bool_exp_count) _then;

  static const _undefined = {};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_aggregate_bool_exp_count._({
        ..._instance._$data,
        if (arguments != _undefined)
          'arguments':
              (arguments as List<Enum$bridge_recipes_tags_select_column>?),
        if (distinct != _undefined) 'distinct': (distinct as bool?),
        if (filter != _undefined)
          'filter': (filter as Input$bridge_recipes_tags_bool_exp?),
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as Input$Int_comparison_exp),
      }));
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith$Input$bridge_recipes_tags_bool_exp.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_tags_bool_exp(
            local$filter, (e) => call(filter: e));
  }

  CopyWith$Input$Int_comparison_exp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith$Input$Int_comparison_exp(
        local$predicate, (e) => call(predicate: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_aggregate_bool_exp_count<TRes>
    implements
        CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp_count<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_aggregate_bool_exp_count(
      this._res);

  TRes _res;

  call({
    List<Enum$bridge_recipes_tags_select_column>? arguments,
    bool? distinct,
    Input$bridge_recipes_tags_bool_exp? filter,
    Input$Int_comparison_exp? predicate,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get filter =>
      CopyWith$Input$bridge_recipes_tags_bool_exp.stub(_res);
  CopyWith$Input$Int_comparison_exp<TRes> get predicate =>
      CopyWith$Input$Int_comparison_exp.stub(_res);
}

class Input$bridge_recipes_tags_aggregate_order_by {
  factory Input$bridge_recipes_tags_aggregate_order_by({
    Enum$order_by? count,
    Input$bridge_recipes_tags_max_order_by? max,
    Input$bridge_recipes_tags_min_order_by? min,
  }) =>
      Input$bridge_recipes_tags_aggregate_order_by._({
        if (count != null) r'count': count,
        if (max != null) r'max': max,
        if (min != null) r'min': min,
      });

  Input$bridge_recipes_tags_aggregate_order_by._(this._$data);

  factory Input$bridge_recipes_tags_aggregate_order_by.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] =
          l$count == null ? null : fromJson$Enum$order_by((l$count as String));
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = l$max == null
          ? null
          : Input$bridge_recipes_tags_max_order_by.fromJson(
              (l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input$bridge_recipes_tags_min_order_by.fromJson(
              (l$min as Map<String, dynamic>));
    }
    return Input$bridge_recipes_tags_aggregate_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get count => (_$data['count'] as Enum$order_by?);
  Input$bridge_recipes_tags_max_order_by? get max =>
      (_$data['max'] as Input$bridge_recipes_tags_max_order_by?);
  Input$bridge_recipes_tags_min_order_by? get min =>
      (_$data['min'] as Input$bridge_recipes_tags_min_order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] =
          l$count == null ? null : toJson$Enum$order_by(l$count);
    }
    if (_$data.containsKey('max')) {
      final l$max = max;
      result$data['max'] = l$max?.toJson();
    }
    if (_$data.containsKey('min')) {
      final l$min = min;
      result$data['min'] = l$min?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_aggregate_order_by<
          Input$bridge_recipes_tags_aggregate_order_by>
      get copyWith => CopyWith$Input$bridge_recipes_tags_aggregate_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_aggregate_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (_$data.containsKey('count') != other._$data.containsKey('count')) {
      return false;
    }
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (_$data.containsKey('max') != other._$data.containsKey('max')) {
      return false;
    }
    if (l$max != lOther$max) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (_$data.containsKey('min') != other._$data.containsKey('min')) {
      return false;
    }
    if (l$min != lOther$min) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$min = min;
    return Object.hashAll([
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('max') ? l$max : const {},
      _$data.containsKey('min') ? l$min : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_aggregate_order_by<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_aggregate_order_by(
    Input$bridge_recipes_tags_aggregate_order_by instance,
    TRes Function(Input$bridge_recipes_tags_aggregate_order_by) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_aggregate_order_by;

  factory CopyWith$Input$bridge_recipes_tags_aggregate_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_aggregate_order_by;

  TRes call({
    Enum$order_by? count,
    Input$bridge_recipes_tags_max_order_by? max,
    Input$bridge_recipes_tags_min_order_by? min,
  });
  CopyWith$Input$bridge_recipes_tags_max_order_by<TRes> get max;
  CopyWith$Input$bridge_recipes_tags_min_order_by<TRes> get min;
}

class _CopyWithImpl$Input$bridge_recipes_tags_aggregate_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_tags_aggregate_order_by<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_aggregate_order_by(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_aggregate_order_by _instance;

  final TRes Function(Input$bridge_recipes_tags_aggregate_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_aggregate_order_by._({
        ..._instance._$data,
        if (count != _undefined) 'count': (count as Enum$order_by?),
        if (max != _undefined)
          'max': (max as Input$bridge_recipes_tags_max_order_by?),
        if (min != _undefined)
          'min': (min as Input$bridge_recipes_tags_min_order_by?),
      }));
  CopyWith$Input$bridge_recipes_tags_max_order_by<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Input$bridge_recipes_tags_max_order_by.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_tags_max_order_by(
            local$max, (e) => call(max: e));
  }

  CopyWith$Input$bridge_recipes_tags_min_order_by<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith$Input$bridge_recipes_tags_min_order_by.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_tags_min_order_by(
            local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_aggregate_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_tags_aggregate_order_by<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_aggregate_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? count,
    Input$bridge_recipes_tags_max_order_by? max,
    Input$bridge_recipes_tags_min_order_by? min,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_tags_max_order_by<TRes> get max =>
      CopyWith$Input$bridge_recipes_tags_max_order_by.stub(_res);
  CopyWith$Input$bridge_recipes_tags_min_order_by<TRes> get min =>
      CopyWith$Input$bridge_recipes_tags_min_order_by.stub(_res);
}

class Input$bridge_recipes_tags_arr_rel_insert_input {
  factory Input$bridge_recipes_tags_arr_rel_insert_input({
    required List<Input$bridge_recipes_tags_insert_input> data,
    Input$bridge_recipes_tags_on_conflict? on_conflict,
  }) =>
      Input$bridge_recipes_tags_arr_rel_insert_input._({
        r'data': data,
        if (on_conflict != null) r'on_conflict': on_conflict,
      });

  Input$bridge_recipes_tags_arr_rel_insert_input._(this._$data);

  factory Input$bridge_recipes_tags_arr_rel_insert_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map((e) => Input$bridge_recipes_tags_insert_input.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('on_conflict')) {
      final l$on_conflict = data['on_conflict'];
      result$data['on_conflict'] = l$on_conflict == null
          ? null
          : Input$bridge_recipes_tags_on_conflict.fromJson(
              (l$on_conflict as Map<String, dynamic>));
    }
    return Input$bridge_recipes_tags_arr_rel_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$bridge_recipes_tags_insert_input> get data =>
      (_$data['data'] as List<Input$bridge_recipes_tags_insert_input>);
  Input$bridge_recipes_tags_on_conflict? get on_conflict =>
      (_$data['on_conflict'] as Input$bridge_recipes_tags_on_conflict?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.map((e) => e.toJson()).toList();
    if (_$data.containsKey('on_conflict')) {
      final l$on_conflict = on_conflict;
      result$data['on_conflict'] = l$on_conflict?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input<
          Input$bridge_recipes_tags_arr_rel_insert_input>
      get copyWith => CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_arr_rel_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data.length != lOther$data.length) {
      return false;
    }
    for (int i = 0; i < l$data.length; i++) {
      final l$data$entry = l$data[i];
      final lOther$data$entry = lOther$data[i];
      if (l$data$entry != lOther$data$entry) {
        return false;
      }
    }
    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (_$data.containsKey('on_conflict') !=
        other._$data.containsKey('on_conflict')) {
      return false;
    }
    if (l$on_conflict != lOther$on_conflict) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll([
      Object.hashAll(l$data.map((v) => v)),
      _$data.containsKey('on_conflict') ? l$on_conflict : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input(
    Input$bridge_recipes_tags_arr_rel_insert_input instance,
    TRes Function(Input$bridge_recipes_tags_arr_rel_insert_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_arr_rel_insert_input;

  factory CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_arr_rel_insert_input;

  TRes call({
    List<Input$bridge_recipes_tags_insert_input>? data,
    Input$bridge_recipes_tags_on_conflict? on_conflict,
  });
  TRes data(
      Iterable<Input$bridge_recipes_tags_insert_input> Function(
              Iterable<
                  CopyWith$Input$bridge_recipes_tags_insert_input<
                      Input$bridge_recipes_tags_insert_input>>)
          _fn);
  CopyWith$Input$bridge_recipes_tags_on_conflict<TRes> get on_conflict;
}

class _CopyWithImpl$Input$bridge_recipes_tags_arr_rel_insert_input<TRes>
    implements CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_arr_rel_insert_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_arr_rel_insert_input _instance;

  final TRes Function(Input$bridge_recipes_tags_arr_rel_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? data = _undefined,
    Object? on_conflict = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_arr_rel_insert_input._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as List<Input$bridge_recipes_tags_insert_input>),
        if (on_conflict != _undefined)
          'on_conflict':
              (on_conflict as Input$bridge_recipes_tags_on_conflict?),
      }));
  TRes data(
          Iterable<Input$bridge_recipes_tags_insert_input> Function(
                  Iterable<
                      CopyWith$Input$bridge_recipes_tags_insert_input<
                          Input$bridge_recipes_tags_insert_input>>)
              _fn) =>
      call(
          data: _fn(_instance.data
              .map((e) => CopyWith$Input$bridge_recipes_tags_insert_input(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Input$bridge_recipes_tags_on_conflict<TRes> get on_conflict {
    final local$on_conflict = _instance.on_conflict;
    return local$on_conflict == null
        ? CopyWith$Input$bridge_recipes_tags_on_conflict.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_tags_on_conflict(
            local$on_conflict, (e) => call(on_conflict: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_arr_rel_insert_input<TRes>
    implements CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_arr_rel_insert_input(this._res);

  TRes _res;

  call({
    List<Input$bridge_recipes_tags_insert_input>? data,
    Input$bridge_recipes_tags_on_conflict? on_conflict,
  }) =>
      _res;
  data(_fn) => _res;
  CopyWith$Input$bridge_recipes_tags_on_conflict<TRes> get on_conflict =>
      CopyWith$Input$bridge_recipes_tags_on_conflict.stub(_res);
}

class Input$bridge_recipes_tags_bool_exp {
  factory Input$bridge_recipes_tags_bool_exp({
    List<Input$bridge_recipes_tags_bool_exp>? $_and,
    Input$bridge_recipes_tags_bool_exp? $_not,
    List<Input$bridge_recipes_tags_bool_exp>? $_or,
    Input$String_comparison_exp? $_recipe_id,
    Input$String_comparison_exp? $_tag_id,
    Input$uuid_comparison_exp? id,
    Input$recipes_bool_exp? recipes,
    Input$tags_bool_exp? tags,
  }) =>
      Input$bridge_recipes_tags_bool_exp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if ($_tag_id != null) r'_tag_id': $_tag_id,
        if (id != null) r'id': id,
        if (recipes != null) r'recipes': recipes,
        if (tags != null) r'tags': tags,
      });

  Input$bridge_recipes_tags_bool_exp._(this._$data);

  factory Input$bridge_recipes_tags_bool_exp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input$bridge_recipes_tags_bool_exp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input$bridge_recipes_tags_bool_exp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input$bridge_recipes_tags_bool_exp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = l$$_recipe_id == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$$_recipe_id as Map<String, dynamic>));
    }
    if (data.containsKey('_tag_id')) {
      final l$$_tag_id = data['_tag_id'];
      result$data['_tag_id'] = l$$_tag_id == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$$_tag_id as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$uuid_comparison_exp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('recipes')) {
      final l$recipes = data['recipes'];
      result$data['recipes'] = l$recipes == null
          ? null
          : Input$recipes_bool_exp.fromJson(
              (l$recipes as Map<String, dynamic>));
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] = l$tags == null
          ? null
          : Input$tags_bool_exp.fromJson((l$tags as Map<String, dynamic>));
    }
    return Input$bridge_recipes_tags_bool_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$bridge_recipes_tags_bool_exp>? get $_and =>
      (_$data['_and'] as List<Input$bridge_recipes_tags_bool_exp>?);
  Input$bridge_recipes_tags_bool_exp? get $_not =>
      (_$data['_not'] as Input$bridge_recipes_tags_bool_exp?);
  List<Input$bridge_recipes_tags_bool_exp>? get $_or =>
      (_$data['_or'] as List<Input$bridge_recipes_tags_bool_exp>?);
  Input$String_comparison_exp? get $_recipe_id =>
      (_$data['_recipe_id'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get $_tag_id =>
      (_$data['_tag_id'] as Input$String_comparison_exp?);
  Input$uuid_comparison_exp? get id =>
      (_$data['id'] as Input$uuid_comparison_exp?);
  Input$recipes_bool_exp? get recipes =>
      (_$data['recipes'] as Input$recipes_bool_exp?);
  Input$tags_bool_exp? get tags => (_$data['tags'] as Input$tags_bool_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] = l$$_recipe_id?.toJson();
    }
    if (_$data.containsKey('_tag_id')) {
      final l$$_tag_id = $_tag_id;
      result$data['_tag_id'] = l$$_tag_id?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('recipes')) {
      final l$recipes = recipes;
      result$data['recipes'] = l$recipes?.toJson();
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_bool_exp<
          Input$bridge_recipes_tags_bool_exp>
      get copyWith => CopyWith$Input$bridge_recipes_tags_bool_exp(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_bool_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$$_tag_id = $_tag_id;
    final lOther$$_tag_id = other.$_tag_id;
    if (_$data.containsKey('_tag_id') != other._$data.containsKey('_tag_id')) {
      return false;
    }
    if (l$$_tag_id != lOther$$_tag_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$recipes = recipes;
    final lOther$recipes = other.recipes;
    if (_$data.containsKey('recipes') != other._$data.containsKey('recipes')) {
      return false;
    }
    if (l$recipes != lOther$recipes) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != lOther$tags) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$$_recipe_id = $_recipe_id;
    final l$$_tag_id = $_tag_id;
    final l$id = id;
    final l$recipes = recipes;
    final l$tags = tags;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
              ? null
              : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
              ? null
              : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('_tag_id') ? l$$_tag_id : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('recipes') ? l$recipes : const {},
      _$data.containsKey('tags') ? l$tags : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_bool_exp(
    Input$bridge_recipes_tags_bool_exp instance,
    TRes Function(Input$bridge_recipes_tags_bool_exp) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_bool_exp;

  factory CopyWith$Input$bridge_recipes_tags_bool_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_bool_exp;

  TRes call({
    List<Input$bridge_recipes_tags_bool_exp>? $_and,
    Input$bridge_recipes_tags_bool_exp? $_not,
    List<Input$bridge_recipes_tags_bool_exp>? $_or,
    Input$String_comparison_exp? $_recipe_id,
    Input$String_comparison_exp? $_tag_id,
    Input$uuid_comparison_exp? id,
    Input$recipes_bool_exp? recipes,
    Input$tags_bool_exp? tags,
  });
  TRes $_and(
      Iterable<Input$bridge_recipes_tags_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$bridge_recipes_tags_bool_exp<
                      Input$bridge_recipes_tags_bool_exp>>?)
          _fn);
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get $_not;
  TRes $_or(
      Iterable<Input$bridge_recipes_tags_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$bridge_recipes_tags_bool_exp<
                      Input$bridge_recipes_tags_bool_exp>>?)
          _fn);
  CopyWith$Input$String_comparison_exp<TRes> get $_recipe_id;
  CopyWith$Input$String_comparison_exp<TRes> get $_tag_id;
  CopyWith$Input$uuid_comparison_exp<TRes> get id;
  CopyWith$Input$recipes_bool_exp<TRes> get recipes;
  CopyWith$Input$tags_bool_exp<TRes> get tags;
}

class _CopyWithImpl$Input$bridge_recipes_tags_bool_exp<TRes>
    implements CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_bool_exp(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_bool_exp _instance;

  final TRes Function(Input$bridge_recipes_tags_bool_exp) _then;

  static const _undefined = {};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? $_recipe_id = _undefined,
    Object? $_tag_id = _undefined,
    Object? id = _undefined,
    Object? recipes = _undefined,
    Object? tags = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_bool_exp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input$bridge_recipes_tags_bool_exp>?),
        if ($_not != _undefined)
          '_not': ($_not as Input$bridge_recipes_tags_bool_exp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input$bridge_recipes_tags_bool_exp>?),
        if ($_recipe_id != _undefined)
          '_recipe_id': ($_recipe_id as Input$String_comparison_exp?),
        if ($_tag_id != _undefined)
          '_tag_id': ($_tag_id as Input$String_comparison_exp?),
        if (id != _undefined) 'id': (id as Input$uuid_comparison_exp?),
        if (recipes != _undefined)
          'recipes': (recipes as Input$recipes_bool_exp?),
        if (tags != _undefined) 'tags': (tags as Input$tags_bool_exp?),
      }));
  TRes $_and(
          Iterable<Input$bridge_recipes_tags_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$bridge_recipes_tags_bool_exp<
                          Input$bridge_recipes_tags_bool_exp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and
              ?.map((e) => CopyWith$Input$bridge_recipes_tags_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith$Input$bridge_recipes_tags_bool_exp.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_tags_bool_exp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input$bridge_recipes_tags_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$bridge_recipes_tags_bool_exp<
                          Input$bridge_recipes_tags_bool_exp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or
              ?.map((e) => CopyWith$Input$bridge_recipes_tags_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$String_comparison_exp<TRes> get $_recipe_id {
    final local$$_recipe_id = _instance.$_recipe_id;
    return local$$_recipe_id == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$$_recipe_id, (e) => call($_recipe_id: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get $_tag_id {
    final local$$_tag_id = _instance.$_tag_id;
    return local$$_tag_id == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$$_tag_id, (e) => call($_tag_id: e));
  }

  CopyWith$Input$uuid_comparison_exp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$uuid_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$uuid_comparison_exp(local$id, (e) => call(id: e));
  }

  CopyWith$Input$recipes_bool_exp<TRes> get recipes {
    final local$recipes = _instance.recipes;
    return local$recipes == null
        ? CopyWith$Input$recipes_bool_exp.stub(_then(_instance))
        : CopyWith$Input$recipes_bool_exp(
            local$recipes, (e) => call(recipes: e));
  }

  CopyWith$Input$tags_bool_exp<TRes> get tags {
    final local$tags = _instance.tags;
    return local$tags == null
        ? CopyWith$Input$tags_bool_exp.stub(_then(_instance))
        : CopyWith$Input$tags_bool_exp(local$tags, (e) => call(tags: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_bool_exp<TRes>
    implements CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_bool_exp(this._res);

  TRes _res;

  call({
    List<Input$bridge_recipes_tags_bool_exp>? $_and,
    Input$bridge_recipes_tags_bool_exp? $_not,
    List<Input$bridge_recipes_tags_bool_exp>? $_or,
    Input$String_comparison_exp? $_recipe_id,
    Input$String_comparison_exp? $_tag_id,
    Input$uuid_comparison_exp? id,
    Input$recipes_bool_exp? recipes,
    Input$tags_bool_exp? tags,
  }) =>
      _res;
  $_and(_fn) => _res;
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get $_not =>
      CopyWith$Input$bridge_recipes_tags_bool_exp.stub(_res);
  $_or(_fn) => _res;
  CopyWith$Input$String_comparison_exp<TRes> get $_recipe_id =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get $_tag_id =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$uuid_comparison_exp<TRes> get id =>
      CopyWith$Input$uuid_comparison_exp.stub(_res);
  CopyWith$Input$recipes_bool_exp<TRes> get recipes =>
      CopyWith$Input$recipes_bool_exp.stub(_res);
  CopyWith$Input$tags_bool_exp<TRes> get tags =>
      CopyWith$Input$tags_bool_exp.stub(_res);
}

class Input$bridge_recipes_tags_insert_input {
  factory Input$bridge_recipes_tags_insert_input({
    required String $_recipe_id,
    required String $_tag_id,
    String? id,
    Input$recipes_obj_rel_insert_input? recipes,
    Input$tags_obj_rel_insert_input? tags,
  }) =>
      Input$bridge_recipes_tags_insert_input._({
        r'_recipe_id': $_recipe_id,
        r'_tag_id': $_tag_id,
        if (id != null) r'id': id,
        if (recipes != null) r'recipes': recipes,
        if (tags != null) r'tags': tags,
      });

  Input$bridge_recipes_tags_insert_input._(this._$data);

  factory Input$bridge_recipes_tags_insert_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$_recipe_id = data['_recipe_id'];
    result$data['_recipe_id'] = (l$$_recipe_id as String);
    final l$$_tag_id = data['_tag_id'];
    result$data['_tag_id'] = (l$$_tag_id as String);
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('recipes')) {
      final l$recipes = data['recipes'];
      result$data['recipes'] = l$recipes == null
          ? null
          : Input$recipes_obj_rel_insert_input.fromJson(
              (l$recipes as Map<String, dynamic>));
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] = l$tags == null
          ? null
          : Input$tags_obj_rel_insert_input.fromJson(
              (l$tags as Map<String, dynamic>));
    }
    return Input$bridge_recipes_tags_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String get $_recipe_id => (_$data['_recipe_id'] as String);
  String get $_tag_id => (_$data['_tag_id'] as String);
  String? get id => (_$data['id'] as String?);
  Input$recipes_obj_rel_insert_input? get recipes =>
      (_$data['recipes'] as Input$recipes_obj_rel_insert_input?);
  Input$tags_obj_rel_insert_input? get tags =>
      (_$data['tags'] as Input$tags_obj_rel_insert_input?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$_recipe_id = $_recipe_id;
    result$data['_recipe_id'] = l$$_recipe_id;
    final l$$_tag_id = $_tag_id;
    result$data['_tag_id'] = l$$_tag_id;
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('recipes')) {
      final l$recipes = recipes;
      result$data['recipes'] = l$recipes?.toJson();
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_insert_input<
          Input$bridge_recipes_tags_insert_input>
      get copyWith => CopyWith$Input$bridge_recipes_tags_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$$_tag_id = $_tag_id;
    final lOther$$_tag_id = other.$_tag_id;
    if (l$$_tag_id != lOther$$_tag_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$recipes = recipes;
    final lOther$recipes = other.recipes;
    if (_$data.containsKey('recipes') != other._$data.containsKey('recipes')) {
      return false;
    }
    if (l$recipes != lOther$recipes) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != lOther$tags) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_recipe_id = $_recipe_id;
    final l$$_tag_id = $_tag_id;
    final l$id = id;
    final l$recipes = recipes;
    final l$tags = tags;
    return Object.hashAll([
      l$$_recipe_id,
      l$$_tag_id,
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('recipes') ? l$recipes : const {},
      _$data.containsKey('tags') ? l$tags : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_insert_input<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_insert_input(
    Input$bridge_recipes_tags_insert_input instance,
    TRes Function(Input$bridge_recipes_tags_insert_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_insert_input;

  factory CopyWith$Input$bridge_recipes_tags_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_insert_input;

  TRes call({
    String? $_recipe_id,
    String? $_tag_id,
    String? id,
    Input$recipes_obj_rel_insert_input? recipes,
    Input$tags_obj_rel_insert_input? tags,
  });
  CopyWith$Input$recipes_obj_rel_insert_input<TRes> get recipes;
  CopyWith$Input$tags_obj_rel_insert_input<TRes> get tags;
}

class _CopyWithImpl$Input$bridge_recipes_tags_insert_input<TRes>
    implements CopyWith$Input$bridge_recipes_tags_insert_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_insert_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_insert_input _instance;

  final TRes Function(Input$bridge_recipes_tags_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? $_recipe_id = _undefined,
    Object? $_tag_id = _undefined,
    Object? id = _undefined,
    Object? recipes = _undefined,
    Object? tags = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_insert_input._({
        ..._instance._$data,
        if ($_recipe_id != _undefined && $_recipe_id != null)
          '_recipe_id': ($_recipe_id as String),
        if ($_tag_id != _undefined && $_tag_id != null)
          '_tag_id': ($_tag_id as String),
        if (id != _undefined) 'id': (id as String?),
        if (recipes != _undefined)
          'recipes': (recipes as Input$recipes_obj_rel_insert_input?),
        if (tags != _undefined)
          'tags': (tags as Input$tags_obj_rel_insert_input?),
      }));
  CopyWith$Input$recipes_obj_rel_insert_input<TRes> get recipes {
    final local$recipes = _instance.recipes;
    return local$recipes == null
        ? CopyWith$Input$recipes_obj_rel_insert_input.stub(_then(_instance))
        : CopyWith$Input$recipes_obj_rel_insert_input(
            local$recipes, (e) => call(recipes: e));
  }

  CopyWith$Input$tags_obj_rel_insert_input<TRes> get tags {
    final local$tags = _instance.tags;
    return local$tags == null
        ? CopyWith$Input$tags_obj_rel_insert_input.stub(_then(_instance))
        : CopyWith$Input$tags_obj_rel_insert_input(
            local$tags, (e) => call(tags: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_insert_input<TRes>
    implements CopyWith$Input$bridge_recipes_tags_insert_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_insert_input(this._res);

  TRes _res;

  call({
    String? $_recipe_id,
    String? $_tag_id,
    String? id,
    Input$recipes_obj_rel_insert_input? recipes,
    Input$tags_obj_rel_insert_input? tags,
  }) =>
      _res;
  CopyWith$Input$recipes_obj_rel_insert_input<TRes> get recipes =>
      CopyWith$Input$recipes_obj_rel_insert_input.stub(_res);
  CopyWith$Input$tags_obj_rel_insert_input<TRes> get tags =>
      CopyWith$Input$tags_obj_rel_insert_input.stub(_res);
}

class Input$bridge_recipes_tags_max_order_by {
  factory Input$bridge_recipes_tags_max_order_by({
    Enum$order_by? $_recipe_id,
    Enum$order_by? $_tag_id,
    Enum$order_by? id,
  }) =>
      Input$bridge_recipes_tags_max_order_by._({
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if ($_tag_id != null) r'_tag_id': $_tag_id,
        if (id != null) r'id': id,
      });

  Input$bridge_recipes_tags_max_order_by._(this._$data);

  factory Input$bridge_recipes_tags_max_order_by.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = l$$_recipe_id == null
          ? null
          : fromJson$Enum$order_by((l$$_recipe_id as String));
    }
    if (data.containsKey('_tag_id')) {
      final l$$_tag_id = data['_tag_id'];
      result$data['_tag_id'] = l$$_tag_id == null
          ? null
          : fromJson$Enum$order_by((l$$_tag_id as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    return Input$bridge_recipes_tags_max_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get $_recipe_id => (_$data['_recipe_id'] as Enum$order_by?);
  Enum$order_by? get $_tag_id => (_$data['_tag_id'] as Enum$order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] =
          l$$_recipe_id == null ? null : toJson$Enum$order_by(l$$_recipe_id);
    }
    if (_$data.containsKey('_tag_id')) {
      final l$$_tag_id = $_tag_id;
      result$data['_tag_id'] =
          l$$_tag_id == null ? null : toJson$Enum$order_by(l$$_tag_id);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_max_order_by<
          Input$bridge_recipes_tags_max_order_by>
      get copyWith => CopyWith$Input$bridge_recipes_tags_max_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_max_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$$_tag_id = $_tag_id;
    final lOther$$_tag_id = other.$_tag_id;
    if (_$data.containsKey('_tag_id') != other._$data.containsKey('_tag_id')) {
      return false;
    }
    if (l$$_tag_id != lOther$$_tag_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_recipe_id = $_recipe_id;
    final l$$_tag_id = $_tag_id;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('_tag_id') ? l$$_tag_id : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_max_order_by<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_max_order_by(
    Input$bridge_recipes_tags_max_order_by instance,
    TRes Function(Input$bridge_recipes_tags_max_order_by) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_max_order_by;

  factory CopyWith$Input$bridge_recipes_tags_max_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_max_order_by;

  TRes call({
    Enum$order_by? $_recipe_id,
    Enum$order_by? $_tag_id,
    Enum$order_by? id,
  });
}

class _CopyWithImpl$Input$bridge_recipes_tags_max_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_tags_max_order_by<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_max_order_by(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_max_order_by _instance;

  final TRes Function(Input$bridge_recipes_tags_max_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? $_recipe_id = _undefined,
    Object? $_tag_id = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_max_order_by._({
        ..._instance._$data,
        if ($_recipe_id != _undefined)
          '_recipe_id': ($_recipe_id as Enum$order_by?),
        if ($_tag_id != _undefined) '_tag_id': ($_tag_id as Enum$order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_max_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_tags_max_order_by<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_max_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? $_recipe_id,
    Enum$order_by? $_tag_id,
    Enum$order_by? id,
  }) =>
      _res;
}

class Input$bridge_recipes_tags_min_order_by {
  factory Input$bridge_recipes_tags_min_order_by({
    Enum$order_by? $_recipe_id,
    Enum$order_by? $_tag_id,
    Enum$order_by? id,
  }) =>
      Input$bridge_recipes_tags_min_order_by._({
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if ($_tag_id != null) r'_tag_id': $_tag_id,
        if (id != null) r'id': id,
      });

  Input$bridge_recipes_tags_min_order_by._(this._$data);

  factory Input$bridge_recipes_tags_min_order_by.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = l$$_recipe_id == null
          ? null
          : fromJson$Enum$order_by((l$$_recipe_id as String));
    }
    if (data.containsKey('_tag_id')) {
      final l$$_tag_id = data['_tag_id'];
      result$data['_tag_id'] = l$$_tag_id == null
          ? null
          : fromJson$Enum$order_by((l$$_tag_id as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    return Input$bridge_recipes_tags_min_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get $_recipe_id => (_$data['_recipe_id'] as Enum$order_by?);
  Enum$order_by? get $_tag_id => (_$data['_tag_id'] as Enum$order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] =
          l$$_recipe_id == null ? null : toJson$Enum$order_by(l$$_recipe_id);
    }
    if (_$data.containsKey('_tag_id')) {
      final l$$_tag_id = $_tag_id;
      result$data['_tag_id'] =
          l$$_tag_id == null ? null : toJson$Enum$order_by(l$$_tag_id);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_min_order_by<
          Input$bridge_recipes_tags_min_order_by>
      get copyWith => CopyWith$Input$bridge_recipes_tags_min_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_min_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$$_tag_id = $_tag_id;
    final lOther$$_tag_id = other.$_tag_id;
    if (_$data.containsKey('_tag_id') != other._$data.containsKey('_tag_id')) {
      return false;
    }
    if (l$$_tag_id != lOther$$_tag_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_recipe_id = $_recipe_id;
    final l$$_tag_id = $_tag_id;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('_tag_id') ? l$$_tag_id : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_min_order_by<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_min_order_by(
    Input$bridge_recipes_tags_min_order_by instance,
    TRes Function(Input$bridge_recipes_tags_min_order_by) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_min_order_by;

  factory CopyWith$Input$bridge_recipes_tags_min_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_min_order_by;

  TRes call({
    Enum$order_by? $_recipe_id,
    Enum$order_by? $_tag_id,
    Enum$order_by? id,
  });
}

class _CopyWithImpl$Input$bridge_recipes_tags_min_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_tags_min_order_by<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_min_order_by(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_min_order_by _instance;

  final TRes Function(Input$bridge_recipes_tags_min_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? $_recipe_id = _undefined,
    Object? $_tag_id = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_min_order_by._({
        ..._instance._$data,
        if ($_recipe_id != _undefined)
          '_recipe_id': ($_recipe_id as Enum$order_by?),
        if ($_tag_id != _undefined) '_tag_id': ($_tag_id as Enum$order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_min_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_tags_min_order_by<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_min_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? $_recipe_id,
    Enum$order_by? $_tag_id,
    Enum$order_by? id,
  }) =>
      _res;
}

class Input$bridge_recipes_tags_on_conflict {
  factory Input$bridge_recipes_tags_on_conflict({
    required Enum$bridge_recipes_tags_constraint constraint,
    required List<Enum$bridge_recipes_tags_update_column> update_columns,
    Input$bridge_recipes_tags_bool_exp? where,
  }) =>
      Input$bridge_recipes_tags_on_conflict._({
        r'constraint': constraint,
        r'update_columns': update_columns,
        if (where != null) r'where': where,
      });

  Input$bridge_recipes_tags_on_conflict._(this._$data);

  factory Input$bridge_recipes_tags_on_conflict.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson$Enum$bridge_recipes_tags_constraint((l$constraint as String));
    final l$update_columns = data['update_columns'];
    result$data['update_columns'] = (l$update_columns as List<dynamic>)
        .map((e) =>
            fromJson$Enum$bridge_recipes_tags_update_column((e as String)))
        .toList();
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$bridge_recipes_tags_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input$bridge_recipes_tags_on_conflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$bridge_recipes_tags_constraint get constraint =>
      (_$data['constraint'] as Enum$bridge_recipes_tags_constraint);
  List<Enum$bridge_recipes_tags_update_column> get update_columns =>
      (_$data['update_columns']
          as List<Enum$bridge_recipes_tags_update_column>);
  Input$bridge_recipes_tags_bool_exp? get where =>
      (_$data['where'] as Input$bridge_recipes_tags_bool_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson$Enum$bridge_recipes_tags_constraint(l$constraint);
    final l$update_columns = update_columns;
    result$data['update_columns'] = l$update_columns
        .map((e) => toJson$Enum$bridge_recipes_tags_update_column(e))
        .toList();
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_on_conflict<
          Input$bridge_recipes_tags_on_conflict>
      get copyWith => CopyWith$Input$bridge_recipes_tags_on_conflict(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_on_conflict) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) {
      return false;
    }
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) {
        return false;
      }
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_on_conflict<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_on_conflict(
    Input$bridge_recipes_tags_on_conflict instance,
    TRes Function(Input$bridge_recipes_tags_on_conflict) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_on_conflict;

  factory CopyWith$Input$bridge_recipes_tags_on_conflict.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_on_conflict;

  TRes call({
    Enum$bridge_recipes_tags_constraint? constraint,
    List<Enum$bridge_recipes_tags_update_column>? update_columns,
    Input$bridge_recipes_tags_bool_exp? where,
  });
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$bridge_recipes_tags_on_conflict<TRes>
    implements CopyWith$Input$bridge_recipes_tags_on_conflict<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_on_conflict(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_on_conflict _instance;

  final TRes Function(Input$bridge_recipes_tags_on_conflict) _then;

  static const _undefined = {};

  TRes call({
    Object? constraint = _undefined,
    Object? update_columns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_on_conflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum$bridge_recipes_tags_constraint),
        if (update_columns != _undefined && update_columns != null)
          'update_columns':
              (update_columns as List<Enum$bridge_recipes_tags_update_column>),
        if (where != _undefined)
          'where': (where as Input$bridge_recipes_tags_bool_exp?),
      }));
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith$Input$bridge_recipes_tags_bool_exp.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_tags_bool_exp(
            local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_on_conflict<TRes>
    implements CopyWith$Input$bridge_recipes_tags_on_conflict<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_on_conflict(this._res);

  TRes _res;

  call({
    Enum$bridge_recipes_tags_constraint? constraint,
    List<Enum$bridge_recipes_tags_update_column>? update_columns,
    Input$bridge_recipes_tags_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get where =>
      CopyWith$Input$bridge_recipes_tags_bool_exp.stub(_res);
}

class Input$bridge_recipes_tags_order_by {
  factory Input$bridge_recipes_tags_order_by({
    Enum$order_by? $_recipe_id,
    Enum$order_by? $_tag_id,
    Enum$order_by? id,
    Input$recipes_order_by? recipes,
    Input$tags_order_by? tags,
  }) =>
      Input$bridge_recipes_tags_order_by._({
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if ($_tag_id != null) r'_tag_id': $_tag_id,
        if (id != null) r'id': id,
        if (recipes != null) r'recipes': recipes,
        if (tags != null) r'tags': tags,
      });

  Input$bridge_recipes_tags_order_by._(this._$data);

  factory Input$bridge_recipes_tags_order_by.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = l$$_recipe_id == null
          ? null
          : fromJson$Enum$order_by((l$$_recipe_id as String));
    }
    if (data.containsKey('_tag_id')) {
      final l$$_tag_id = data['_tag_id'];
      result$data['_tag_id'] = l$$_tag_id == null
          ? null
          : fromJson$Enum$order_by((l$$_tag_id as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    if (data.containsKey('recipes')) {
      final l$recipes = data['recipes'];
      result$data['recipes'] = l$recipes == null
          ? null
          : Input$recipes_order_by.fromJson(
              (l$recipes as Map<String, dynamic>));
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] = l$tags == null
          ? null
          : Input$tags_order_by.fromJson((l$tags as Map<String, dynamic>));
    }
    return Input$bridge_recipes_tags_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get $_recipe_id => (_$data['_recipe_id'] as Enum$order_by?);
  Enum$order_by? get $_tag_id => (_$data['_tag_id'] as Enum$order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Input$recipes_order_by? get recipes =>
      (_$data['recipes'] as Input$recipes_order_by?);
  Input$tags_order_by? get tags => (_$data['tags'] as Input$tags_order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] =
          l$$_recipe_id == null ? null : toJson$Enum$order_by(l$$_recipe_id);
    }
    if (_$data.containsKey('_tag_id')) {
      final l$$_tag_id = $_tag_id;
      result$data['_tag_id'] =
          l$$_tag_id == null ? null : toJson$Enum$order_by(l$$_tag_id);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    if (_$data.containsKey('recipes')) {
      final l$recipes = recipes;
      result$data['recipes'] = l$recipes?.toJson();
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_order_by<
          Input$bridge_recipes_tags_order_by>
      get copyWith => CopyWith$Input$bridge_recipes_tags_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$$_tag_id = $_tag_id;
    final lOther$$_tag_id = other.$_tag_id;
    if (_$data.containsKey('_tag_id') != other._$data.containsKey('_tag_id')) {
      return false;
    }
    if (l$$_tag_id != lOther$$_tag_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$recipes = recipes;
    final lOther$recipes = other.recipes;
    if (_$data.containsKey('recipes') != other._$data.containsKey('recipes')) {
      return false;
    }
    if (l$recipes != lOther$recipes) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != lOther$tags) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_recipe_id = $_recipe_id;
    final l$$_tag_id = $_tag_id;
    final l$id = id;
    final l$recipes = recipes;
    final l$tags = tags;
    return Object.hashAll([
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('_tag_id') ? l$$_tag_id : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('recipes') ? l$recipes : const {},
      _$data.containsKey('tags') ? l$tags : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_order_by<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_order_by(
    Input$bridge_recipes_tags_order_by instance,
    TRes Function(Input$bridge_recipes_tags_order_by) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_order_by;

  factory CopyWith$Input$bridge_recipes_tags_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_order_by;

  TRes call({
    Enum$order_by? $_recipe_id,
    Enum$order_by? $_tag_id,
    Enum$order_by? id,
    Input$recipes_order_by? recipes,
    Input$tags_order_by? tags,
  });
  CopyWith$Input$recipes_order_by<TRes> get recipes;
  CopyWith$Input$tags_order_by<TRes> get tags;
}

class _CopyWithImpl$Input$bridge_recipes_tags_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_tags_order_by<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_order_by(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_order_by _instance;

  final TRes Function(Input$bridge_recipes_tags_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? $_recipe_id = _undefined,
    Object? $_tag_id = _undefined,
    Object? id = _undefined,
    Object? recipes = _undefined,
    Object? tags = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_order_by._({
        ..._instance._$data,
        if ($_recipe_id != _undefined)
          '_recipe_id': ($_recipe_id as Enum$order_by?),
        if ($_tag_id != _undefined) '_tag_id': ($_tag_id as Enum$order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
        if (recipes != _undefined)
          'recipes': (recipes as Input$recipes_order_by?),
        if (tags != _undefined) 'tags': (tags as Input$tags_order_by?),
      }));
  CopyWith$Input$recipes_order_by<TRes> get recipes {
    final local$recipes = _instance.recipes;
    return local$recipes == null
        ? CopyWith$Input$recipes_order_by.stub(_then(_instance))
        : CopyWith$Input$recipes_order_by(
            local$recipes, (e) => call(recipes: e));
  }

  CopyWith$Input$tags_order_by<TRes> get tags {
    final local$tags = _instance.tags;
    return local$tags == null
        ? CopyWith$Input$tags_order_by.stub(_then(_instance))
        : CopyWith$Input$tags_order_by(local$tags, (e) => call(tags: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_order_by<TRes>
    implements CopyWith$Input$bridge_recipes_tags_order_by<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? $_recipe_id,
    Enum$order_by? $_tag_id,
    Enum$order_by? id,
    Input$recipes_order_by? recipes,
    Input$tags_order_by? tags,
  }) =>
      _res;
  CopyWith$Input$recipes_order_by<TRes> get recipes =>
      CopyWith$Input$recipes_order_by.stub(_res);
  CopyWith$Input$tags_order_by<TRes> get tags =>
      CopyWith$Input$tags_order_by.stub(_res);
}

class Input$bridge_recipes_tags_pk_columns_input {
  factory Input$bridge_recipes_tags_pk_columns_input({required String id}) =>
      Input$bridge_recipes_tags_pk_columns_input._({
        r'id': id,
      });

  Input$bridge_recipes_tags_pk_columns_input._(this._$data);

  factory Input$bridge_recipes_tags_pk_columns_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$bridge_recipes_tags_pk_columns_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_pk_columns_input<
          Input$bridge_recipes_tags_pk_columns_input>
      get copyWith => CopyWith$Input$bridge_recipes_tags_pk_columns_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_pk_columns_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_pk_columns_input<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_pk_columns_input(
    Input$bridge_recipes_tags_pk_columns_input instance,
    TRes Function(Input$bridge_recipes_tags_pk_columns_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_pk_columns_input;

  factory CopyWith$Input$bridge_recipes_tags_pk_columns_input.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_pk_columns_input;

  TRes call({String? id});
}

class _CopyWithImpl$Input$bridge_recipes_tags_pk_columns_input<TRes>
    implements CopyWith$Input$bridge_recipes_tags_pk_columns_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_pk_columns_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_pk_columns_input _instance;

  final TRes Function(Input$bridge_recipes_tags_pk_columns_input) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Input$bridge_recipes_tags_pk_columns_input._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_pk_columns_input<TRes>
    implements CopyWith$Input$bridge_recipes_tags_pk_columns_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_pk_columns_input(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$bridge_recipes_tags_set_input {
  factory Input$bridge_recipes_tags_set_input({
    String? $_recipe_id,
    String? $_tag_id,
    String? id,
  }) =>
      Input$bridge_recipes_tags_set_input._({
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if ($_tag_id != null) r'_tag_id': $_tag_id,
        if (id != null) r'id': id,
      });

  Input$bridge_recipes_tags_set_input._(this._$data);

  factory Input$bridge_recipes_tags_set_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = (l$$_recipe_id as String?);
    }
    if (data.containsKey('_tag_id')) {
      final l$$_tag_id = data['_tag_id'];
      result$data['_tag_id'] = (l$$_tag_id as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$bridge_recipes_tags_set_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_recipe_id => (_$data['_recipe_id'] as String?);
  String? get $_tag_id => (_$data['_tag_id'] as String?);
  String? get id => (_$data['id'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] = l$$_recipe_id;
    }
    if (_$data.containsKey('_tag_id')) {
      final l$$_tag_id = $_tag_id;
      result$data['_tag_id'] = l$$_tag_id;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_set_input<
          Input$bridge_recipes_tags_set_input>
      get copyWith => CopyWith$Input$bridge_recipes_tags_set_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_set_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$$_tag_id = $_tag_id;
    final lOther$$_tag_id = other.$_tag_id;
    if (_$data.containsKey('_tag_id') != other._$data.containsKey('_tag_id')) {
      return false;
    }
    if (l$$_tag_id != lOther$$_tag_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_recipe_id = $_recipe_id;
    final l$$_tag_id = $_tag_id;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('_tag_id') ? l$$_tag_id : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_set_input<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_set_input(
    Input$bridge_recipes_tags_set_input instance,
    TRes Function(Input$bridge_recipes_tags_set_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_set_input;

  factory CopyWith$Input$bridge_recipes_tags_set_input.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_set_input;

  TRes call({
    String? $_recipe_id,
    String? $_tag_id,
    String? id,
  });
}

class _CopyWithImpl$Input$bridge_recipes_tags_set_input<TRes>
    implements CopyWith$Input$bridge_recipes_tags_set_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_set_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_set_input _instance;

  final TRes Function(Input$bridge_recipes_tags_set_input) _then;

  static const _undefined = {};

  TRes call({
    Object? $_recipe_id = _undefined,
    Object? $_tag_id = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_set_input._({
        ..._instance._$data,
        if ($_recipe_id != _undefined) '_recipe_id': ($_recipe_id as String?),
        if ($_tag_id != _undefined) '_tag_id': ($_tag_id as String?),
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_set_input<TRes>
    implements CopyWith$Input$bridge_recipes_tags_set_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_set_input(this._res);

  TRes _res;

  call({
    String? $_recipe_id,
    String? $_tag_id,
    String? id,
  }) =>
      _res;
}

class Input$bridge_recipes_tags_stream_cursor_input {
  factory Input$bridge_recipes_tags_stream_cursor_input({
    required Input$bridge_recipes_tags_stream_cursor_value_input initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      Input$bridge_recipes_tags_stream_cursor_input._({
        r'initial_value': initial_value,
        if (ordering != null) r'ordering': ordering,
      });

  Input$bridge_recipes_tags_stream_cursor_input._(this._$data);

  factory Input$bridge_recipes_tags_stream_cursor_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initial_value = data['initial_value'];
    result$data['initial_value'] =
        Input$bridge_recipes_tags_stream_cursor_value_input.fromJson(
            (l$initial_value as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson$Enum$cursor_ordering((l$ordering as String));
    }
    return Input$bridge_recipes_tags_stream_cursor_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_tags_stream_cursor_value_input get initial_value =>
      (_$data['initial_value']
          as Input$bridge_recipes_tags_stream_cursor_value_input);
  Enum$cursor_ordering? get ordering =>
      (_$data['ordering'] as Enum$cursor_ordering?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initial_value = initial_value;
    result$data['initial_value'] = l$initial_value.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson$Enum$cursor_ordering(l$ordering);
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_stream_cursor_input<
          Input$bridge_recipes_tags_stream_cursor_input>
      get copyWith => CopyWith$Input$bridge_recipes_tags_stream_cursor_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_stream_cursor_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initial_value = initial_value;
    final lOther$initial_value = other.initial_value;
    if (l$initial_value != lOther$initial_value) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initial_value = initial_value;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initial_value,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_stream_cursor_input<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_stream_cursor_input(
    Input$bridge_recipes_tags_stream_cursor_input instance,
    TRes Function(Input$bridge_recipes_tags_stream_cursor_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_stream_cursor_input;

  factory CopyWith$Input$bridge_recipes_tags_stream_cursor_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_stream_cursor_input;

  TRes call({
    Input$bridge_recipes_tags_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  });
  CopyWith$Input$bridge_recipes_tags_stream_cursor_value_input<TRes>
      get initial_value;
}

class _CopyWithImpl$Input$bridge_recipes_tags_stream_cursor_input<TRes>
    implements CopyWith$Input$bridge_recipes_tags_stream_cursor_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_stream_cursor_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_stream_cursor_input _instance;

  final TRes Function(Input$bridge_recipes_tags_stream_cursor_input) _then;

  static const _undefined = {};

  TRes call({
    Object? initial_value = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_stream_cursor_input._({
        ..._instance._$data,
        if (initial_value != _undefined && initial_value != null)
          'initial_value': (initial_value
              as Input$bridge_recipes_tags_stream_cursor_value_input),
        if (ordering != _undefined)
          'ordering': (ordering as Enum$cursor_ordering?),
      }));
  CopyWith$Input$bridge_recipes_tags_stream_cursor_value_input<TRes>
      get initial_value {
    final local$initial_value = _instance.initial_value;
    return CopyWith$Input$bridge_recipes_tags_stream_cursor_value_input(
        local$initial_value, (e) => call(initial_value: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_stream_cursor_input<TRes>
    implements CopyWith$Input$bridge_recipes_tags_stream_cursor_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_stream_cursor_input(this._res);

  TRes _res;

  call({
    Input$bridge_recipes_tags_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_tags_stream_cursor_value_input<TRes>
      get initial_value =>
          CopyWith$Input$bridge_recipes_tags_stream_cursor_value_input.stub(
              _res);
}

class Input$bridge_recipes_tags_stream_cursor_value_input {
  factory Input$bridge_recipes_tags_stream_cursor_value_input({
    String? $_recipe_id,
    String? $_tag_id,
    String? id,
  }) =>
      Input$bridge_recipes_tags_stream_cursor_value_input._({
        if ($_recipe_id != null) r'_recipe_id': $_recipe_id,
        if ($_tag_id != null) r'_tag_id': $_tag_id,
        if (id != null) r'id': id,
      });

  Input$bridge_recipes_tags_stream_cursor_value_input._(this._$data);

  factory Input$bridge_recipes_tags_stream_cursor_value_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_recipe_id')) {
      final l$$_recipe_id = data['_recipe_id'];
      result$data['_recipe_id'] = (l$$_recipe_id as String?);
    }
    if (data.containsKey('_tag_id')) {
      final l$$_tag_id = data['_tag_id'];
      result$data['_tag_id'] = (l$$_tag_id as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$bridge_recipes_tags_stream_cursor_value_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_recipe_id => (_$data['_recipe_id'] as String?);
  String? get $_tag_id => (_$data['_tag_id'] as String?);
  String? get id => (_$data['id'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_recipe_id')) {
      final l$$_recipe_id = $_recipe_id;
      result$data['_recipe_id'] = l$$_recipe_id;
    }
    if (_$data.containsKey('_tag_id')) {
      final l$$_tag_id = $_tag_id;
      result$data['_tag_id'] = l$$_tag_id;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_stream_cursor_value_input<
          Input$bridge_recipes_tags_stream_cursor_value_input>
      get copyWith =>
          CopyWith$Input$bridge_recipes_tags_stream_cursor_value_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_stream_cursor_value_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_recipe_id = $_recipe_id;
    final lOther$$_recipe_id = other.$_recipe_id;
    if (_$data.containsKey('_recipe_id') !=
        other._$data.containsKey('_recipe_id')) {
      return false;
    }
    if (l$$_recipe_id != lOther$$_recipe_id) {
      return false;
    }
    final l$$_tag_id = $_tag_id;
    final lOther$$_tag_id = other.$_tag_id;
    if (_$data.containsKey('_tag_id') != other._$data.containsKey('_tag_id')) {
      return false;
    }
    if (l$$_tag_id != lOther$$_tag_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_recipe_id = $_recipe_id;
    final l$$_tag_id = $_tag_id;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('_recipe_id') ? l$$_recipe_id : const {},
      _$data.containsKey('_tag_id') ? l$$_tag_id : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_stream_cursor_value_input<
    TRes> {
  factory CopyWith$Input$bridge_recipes_tags_stream_cursor_value_input(
    Input$bridge_recipes_tags_stream_cursor_value_input instance,
    TRes Function(Input$bridge_recipes_tags_stream_cursor_value_input) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_stream_cursor_value_input;

  factory CopyWith$Input$bridge_recipes_tags_stream_cursor_value_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_stream_cursor_value_input;

  TRes call({
    String? $_recipe_id,
    String? $_tag_id,
    String? id,
  });
}

class _CopyWithImpl$Input$bridge_recipes_tags_stream_cursor_value_input<TRes>
    implements
        CopyWith$Input$bridge_recipes_tags_stream_cursor_value_input<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_stream_cursor_value_input(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_stream_cursor_value_input _instance;

  final TRes Function(Input$bridge_recipes_tags_stream_cursor_value_input)
      _then;

  static const _undefined = {};

  TRes call({
    Object? $_recipe_id = _undefined,
    Object? $_tag_id = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_stream_cursor_value_input._({
        ..._instance._$data,
        if ($_recipe_id != _undefined) '_recipe_id': ($_recipe_id as String?),
        if ($_tag_id != _undefined) '_tag_id': ($_tag_id as String?),
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_stream_cursor_value_input<
        TRes>
    implements
        CopyWith$Input$bridge_recipes_tags_stream_cursor_value_input<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_stream_cursor_value_input(
      this._res);

  TRes _res;

  call({
    String? $_recipe_id,
    String? $_tag_id,
    String? id,
  }) =>
      _res;
}

class Input$bridge_recipes_tags_updates {
  factory Input$bridge_recipes_tags_updates({
    Input$bridge_recipes_tags_set_input? $_set,
    required Input$bridge_recipes_tags_bool_exp where,
  }) =>
      Input$bridge_recipes_tags_updates._({
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input$bridge_recipes_tags_updates._(this._$data);

  factory Input$bridge_recipes_tags_updates.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input$bridge_recipes_tags_set_input.fromJson(
              (l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input$bridge_recipes_tags_bool_exp.fromJson(
        (l$where as Map<String, dynamic>));
    return Input$bridge_recipes_tags_updates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_tags_set_input? get $_set =>
      (_$data['_set'] as Input$bridge_recipes_tags_set_input?);
  Input$bridge_recipes_tags_bool_exp get where =>
      (_$data['where'] as Input$bridge_recipes_tags_bool_exp);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Input$bridge_recipes_tags_updates<Input$bridge_recipes_tags_updates>
      get copyWith => CopyWith$Input$bridge_recipes_tags_updates(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$bridge_recipes_tags_updates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith$Input$bridge_recipes_tags_updates<TRes> {
  factory CopyWith$Input$bridge_recipes_tags_updates(
    Input$bridge_recipes_tags_updates instance,
    TRes Function(Input$bridge_recipes_tags_updates) then,
  ) = _CopyWithImpl$Input$bridge_recipes_tags_updates;

  factory CopyWith$Input$bridge_recipes_tags_updates.stub(TRes res) =
      _CopyWithStubImpl$Input$bridge_recipes_tags_updates;

  TRes call({
    Input$bridge_recipes_tags_set_input? $_set,
    Input$bridge_recipes_tags_bool_exp? where,
  });
  CopyWith$Input$bridge_recipes_tags_set_input<TRes> get $_set;
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$bridge_recipes_tags_updates<TRes>
    implements CopyWith$Input$bridge_recipes_tags_updates<TRes> {
  _CopyWithImpl$Input$bridge_recipes_tags_updates(
    this._instance,
    this._then,
  );

  final Input$bridge_recipes_tags_updates _instance;

  final TRes Function(Input$bridge_recipes_tags_updates) _then;

  static const _undefined = {};

  TRes call({
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$bridge_recipes_tags_updates._({
        ..._instance._$data,
        if ($_set != _undefined)
          '_set': ($_set as Input$bridge_recipes_tags_set_input?),
        if (where != _undefined && where != null)
          'where': (where as Input$bridge_recipes_tags_bool_exp),
      }));
  CopyWith$Input$bridge_recipes_tags_set_input<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith$Input$bridge_recipes_tags_set_input.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_tags_set_input(
            local$$_set, (e) => call($_set: e));
  }

  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$bridge_recipes_tags_bool_exp(
        local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$bridge_recipes_tags_updates<TRes>
    implements CopyWith$Input$bridge_recipes_tags_updates<TRes> {
  _CopyWithStubImpl$Input$bridge_recipes_tags_updates(this._res);

  TRes _res;

  call({
    Input$bridge_recipes_tags_set_input? $_set,
    Input$bridge_recipes_tags_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_tags_set_input<TRes> get $_set =>
      CopyWith$Input$bridge_recipes_tags_set_input.stub(_res);
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get where =>
      CopyWith$Input$bridge_recipes_tags_bool_exp.stub(_res);
}

class Input$cuisines_bool_exp {
  factory Input$cuisines_bool_exp({
    List<Input$cuisines_bool_exp>? $_and,
    Input$cuisines_bool_exp? $_not,
    List<Input$cuisines_bool_exp>? $_or,
    Input$bridge_recipes_cuisines_bool_exp? bridge_recipes_cuisines,
    Input$bridge_recipes_cuisines_aggregate_bool_exp?
        bridge_recipes_cuisines_aggregate,
    Input$String_comparison_exp? iconPath,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? name,
    Input$String_comparison_exp? slug,
    Input$String_comparison_exp? type,
  }) =>
      Input$cuisines_bool_exp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (bridge_recipes_cuisines != null)
          r'bridge_recipes_cuisines': bridge_recipes_cuisines,
        if (bridge_recipes_cuisines_aggregate != null)
          r'bridge_recipes_cuisines_aggregate':
              bridge_recipes_cuisines_aggregate,
        if (iconPath != null) r'iconPath': iconPath,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$cuisines_bool_exp._(this._$data);

  factory Input$cuisines_bool_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) =>
              Input$cuisines_bool_exp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input$cuisines_bool_exp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) =>
              Input$cuisines_bool_exp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('bridge_recipes_cuisines')) {
      final l$bridge_recipes_cuisines = data['bridge_recipes_cuisines'];
      result$data['bridge_recipes_cuisines'] = l$bridge_recipes_cuisines == null
          ? null
          : Input$bridge_recipes_cuisines_bool_exp.fromJson(
              (l$bridge_recipes_cuisines as Map<String, dynamic>));
    }
    if (data.containsKey('bridge_recipes_cuisines_aggregate')) {
      final l$bridge_recipes_cuisines_aggregate =
          data['bridge_recipes_cuisines_aggregate'];
      result$data['bridge_recipes_cuisines_aggregate'] =
          l$bridge_recipes_cuisines_aggregate == null
              ? null
              : Input$bridge_recipes_cuisines_aggregate_bool_exp.fromJson(
                  (l$bridge_recipes_cuisines_aggregate
                      as Map<String, dynamic>));
    }
    if (data.containsKey('iconPath')) {
      final l$iconPath = data['iconPath'];
      result$data['iconPath'] = l$iconPath == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$iconPath as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = l$slug == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$slug as Map<String, dynamic>));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$type as Map<String, dynamic>));
    }
    return Input$cuisines_bool_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$cuisines_bool_exp>? get $_and =>
      (_$data['_and'] as List<Input$cuisines_bool_exp>?);
  Input$cuisines_bool_exp? get $_not =>
      (_$data['_not'] as Input$cuisines_bool_exp?);
  List<Input$cuisines_bool_exp>? get $_or =>
      (_$data['_or'] as List<Input$cuisines_bool_exp>?);
  Input$bridge_recipes_cuisines_bool_exp? get bridge_recipes_cuisines =>
      (_$data['bridge_recipes_cuisines']
          as Input$bridge_recipes_cuisines_bool_exp?);
  Input$bridge_recipes_cuisines_aggregate_bool_exp?
      get bridge_recipes_cuisines_aggregate =>
          (_$data['bridge_recipes_cuisines_aggregate']
              as Input$bridge_recipes_cuisines_aggregate_bool_exp?);
  Input$String_comparison_exp? get iconPath =>
      (_$data['iconPath'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get id =>
      (_$data['id'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get name =>
      (_$data['name'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get slug =>
      (_$data['slug'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get type =>
      (_$data['type'] as Input$String_comparison_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('bridge_recipes_cuisines')) {
      final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
      result$data['bridge_recipes_cuisines'] =
          l$bridge_recipes_cuisines?.toJson();
    }
    if (_$data.containsKey('bridge_recipes_cuisines_aggregate')) {
      final l$bridge_recipes_cuisines_aggregate =
          bridge_recipes_cuisines_aggregate;
      result$data['bridge_recipes_cuisines_aggregate'] =
          l$bridge_recipes_cuisines_aggregate?.toJson();
    }
    if (_$data.containsKey('iconPath')) {
      final l$iconPath = iconPath;
      result$data['iconPath'] = l$iconPath?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug?.toJson();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$cuisines_bool_exp<Input$cuisines_bool_exp> get copyWith =>
      CopyWith$Input$cuisines_bool_exp(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$cuisines_bool_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
    final lOther$bridge_recipes_cuisines = other.bridge_recipes_cuisines;
    if (_$data.containsKey('bridge_recipes_cuisines') !=
        other._$data.containsKey('bridge_recipes_cuisines')) {
      return false;
    }
    if (l$bridge_recipes_cuisines != lOther$bridge_recipes_cuisines) {
      return false;
    }
    final l$bridge_recipes_cuisines_aggregate =
        bridge_recipes_cuisines_aggregate;
    final lOther$bridge_recipes_cuisines_aggregate =
        other.bridge_recipes_cuisines_aggregate;
    if (_$data.containsKey('bridge_recipes_cuisines_aggregate') !=
        other._$data.containsKey('bridge_recipes_cuisines_aggregate')) {
      return false;
    }
    if (l$bridge_recipes_cuisines_aggregate !=
        lOther$bridge_recipes_cuisines_aggregate) {
      return false;
    }
    final l$iconPath = iconPath;
    final lOther$iconPath = other.iconPath;
    if (_$data.containsKey('iconPath') !=
        other._$data.containsKey('iconPath')) {
      return false;
    }
    if (l$iconPath != lOther$iconPath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
    final l$bridge_recipes_cuisines_aggregate =
        bridge_recipes_cuisines_aggregate;
    final l$iconPath = iconPath;
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
              ? null
              : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
              ? null
              : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('bridge_recipes_cuisines')
          ? l$bridge_recipes_cuisines
          : const {},
      _$data.containsKey('bridge_recipes_cuisines_aggregate')
          ? l$bridge_recipes_cuisines_aggregate
          : const {},
      _$data.containsKey('iconPath') ? l$iconPath : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$cuisines_bool_exp<TRes> {
  factory CopyWith$Input$cuisines_bool_exp(
    Input$cuisines_bool_exp instance,
    TRes Function(Input$cuisines_bool_exp) then,
  ) = _CopyWithImpl$Input$cuisines_bool_exp;

  factory CopyWith$Input$cuisines_bool_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$cuisines_bool_exp;

  TRes call({
    List<Input$cuisines_bool_exp>? $_and,
    Input$cuisines_bool_exp? $_not,
    List<Input$cuisines_bool_exp>? $_or,
    Input$bridge_recipes_cuisines_bool_exp? bridge_recipes_cuisines,
    Input$bridge_recipes_cuisines_aggregate_bool_exp?
        bridge_recipes_cuisines_aggregate,
    Input$String_comparison_exp? iconPath,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? name,
    Input$String_comparison_exp? slug,
    Input$String_comparison_exp? type,
  });
  TRes $_and(
      Iterable<Input$cuisines_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$cuisines_bool_exp<Input$cuisines_bool_exp>>?)
          _fn);
  CopyWith$Input$cuisines_bool_exp<TRes> get $_not;
  TRes $_or(
      Iterable<Input$cuisines_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$cuisines_bool_exp<Input$cuisines_bool_exp>>?)
          _fn);
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes>
      get bridge_recipes_cuisines;
  CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp<TRes>
      get bridge_recipes_cuisines_aggregate;
  CopyWith$Input$String_comparison_exp<TRes> get iconPath;
  CopyWith$Input$String_comparison_exp<TRes> get id;
  CopyWith$Input$String_comparison_exp<TRes> get name;
  CopyWith$Input$String_comparison_exp<TRes> get slug;
  CopyWith$Input$String_comparison_exp<TRes> get type;
}

class _CopyWithImpl$Input$cuisines_bool_exp<TRes>
    implements CopyWith$Input$cuisines_bool_exp<TRes> {
  _CopyWithImpl$Input$cuisines_bool_exp(
    this._instance,
    this._then,
  );

  final Input$cuisines_bool_exp _instance;

  final TRes Function(Input$cuisines_bool_exp) _then;

  static const _undefined = {};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? bridge_recipes_cuisines = _undefined,
    Object? bridge_recipes_cuisines_aggregate = _undefined,
    Object? iconPath = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$cuisines_bool_exp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input$cuisines_bool_exp>?),
        if ($_not != _undefined) '_not': ($_not as Input$cuisines_bool_exp?),
        if ($_or != _undefined) '_or': ($_or as List<Input$cuisines_bool_exp>?),
        if (bridge_recipes_cuisines != _undefined)
          'bridge_recipes_cuisines': (bridge_recipes_cuisines
              as Input$bridge_recipes_cuisines_bool_exp?),
        if (bridge_recipes_cuisines_aggregate != _undefined)
          'bridge_recipes_cuisines_aggregate':
              (bridge_recipes_cuisines_aggregate
                  as Input$bridge_recipes_cuisines_aggregate_bool_exp?),
        if (iconPath != _undefined)
          'iconPath': (iconPath as Input$String_comparison_exp?),
        if (id != _undefined) 'id': (id as Input$String_comparison_exp?),
        if (name != _undefined) 'name': (name as Input$String_comparison_exp?),
        if (slug != _undefined) 'slug': (slug as Input$String_comparison_exp?),
        if (type != _undefined) 'type': (type as Input$String_comparison_exp?),
      }));
  TRes $_and(
          Iterable<Input$cuisines_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$cuisines_bool_exp<
                          Input$cuisines_bool_exp>>?)
              _fn) =>
      call(
          $_and:
              _fn(_instance.$_and?.map((e) => CopyWith$Input$cuisines_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$cuisines_bool_exp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith$Input$cuisines_bool_exp.stub(_then(_instance))
        : CopyWith$Input$cuisines_bool_exp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input$cuisines_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$cuisines_bool_exp<
                          Input$cuisines_bool_exp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or?.map((e) => CopyWith$Input$cuisines_bool_exp(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes>
      get bridge_recipes_cuisines {
    final local$bridge_recipes_cuisines = _instance.bridge_recipes_cuisines;
    return local$bridge_recipes_cuisines == null
        ? CopyWith$Input$bridge_recipes_cuisines_bool_exp.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_bool_exp(
            local$bridge_recipes_cuisines,
            (e) => call(bridge_recipes_cuisines: e));
  }

  CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp<TRes>
      get bridge_recipes_cuisines_aggregate {
    final local$bridge_recipes_cuisines_aggregate =
        _instance.bridge_recipes_cuisines_aggregate;
    return local$bridge_recipes_cuisines_aggregate == null
        ? CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp(
            local$bridge_recipes_cuisines_aggregate,
            (e) => call(bridge_recipes_cuisines_aggregate: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get iconPath {
    final local$iconPath = _instance.iconPath;
    return local$iconPath == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$iconPath, (e) => call(iconPath: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(local$id, (e) => call(id: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get slug {
    final local$slug = _instance.slug;
    return local$slug == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$slug, (e) => call(slug: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$type, (e) => call(type: e));
  }
}

class _CopyWithStubImpl$Input$cuisines_bool_exp<TRes>
    implements CopyWith$Input$cuisines_bool_exp<TRes> {
  _CopyWithStubImpl$Input$cuisines_bool_exp(this._res);

  TRes _res;

  call({
    List<Input$cuisines_bool_exp>? $_and,
    Input$cuisines_bool_exp? $_not,
    List<Input$cuisines_bool_exp>? $_or,
    Input$bridge_recipes_cuisines_bool_exp? bridge_recipes_cuisines,
    Input$bridge_recipes_cuisines_aggregate_bool_exp?
        bridge_recipes_cuisines_aggregate,
    Input$String_comparison_exp? iconPath,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? name,
    Input$String_comparison_exp? slug,
    Input$String_comparison_exp? type,
  }) =>
      _res;
  $_and(_fn) => _res;
  CopyWith$Input$cuisines_bool_exp<TRes> get $_not =>
      CopyWith$Input$cuisines_bool_exp.stub(_res);
  $_or(_fn) => _res;
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes>
      get bridge_recipes_cuisines =>
          CopyWith$Input$bridge_recipes_cuisines_bool_exp.stub(_res);
  CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp<TRes>
      get bridge_recipes_cuisines_aggregate =>
          CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get iconPath =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get id =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get name =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get slug =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get type =>
      CopyWith$Input$String_comparison_exp.stub(_res);
}

class Input$cuisines_insert_input {
  factory Input$cuisines_insert_input({
    Input$bridge_recipes_cuisines_arr_rel_insert_input? bridge_recipes_cuisines,
    String? iconPath,
    required String id,
    required String name,
    required String slug,
    required String type,
  }) =>
      Input$cuisines_insert_input._({
        if (bridge_recipes_cuisines != null)
          r'bridge_recipes_cuisines': bridge_recipes_cuisines,
        if (iconPath != null) r'iconPath': iconPath,
        r'id': id,
        r'name': name,
        r'slug': slug,
        r'type': type,
      });

  Input$cuisines_insert_input._(this._$data);

  factory Input$cuisines_insert_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bridge_recipes_cuisines')) {
      final l$bridge_recipes_cuisines = data['bridge_recipes_cuisines'];
      result$data['bridge_recipes_cuisines'] = l$bridge_recipes_cuisines == null
          ? null
          : Input$bridge_recipes_cuisines_arr_rel_insert_input.fromJson(
              (l$bridge_recipes_cuisines as Map<String, dynamic>));
    }
    if (data.containsKey('iconPath')) {
      final l$iconPath = data['iconPath'];
      result$data['iconPath'] = (l$iconPath as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$slug = data['slug'];
    result$data['slug'] = (l$slug as String);
    final l$type = data['type'];
    result$data['type'] = (l$type as String);
    return Input$cuisines_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_cuisines_arr_rel_insert_input?
      get bridge_recipes_cuisines => (_$data['bridge_recipes_cuisines']
          as Input$bridge_recipes_cuisines_arr_rel_insert_input?);
  String? get iconPath => (_$data['iconPath'] as String?);
  String get id => (_$data['id'] as String);
  String get name => (_$data['name'] as String);
  String get slug => (_$data['slug'] as String);
  String get type => (_$data['type'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bridge_recipes_cuisines')) {
      final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
      result$data['bridge_recipes_cuisines'] =
          l$bridge_recipes_cuisines?.toJson();
    }
    if (_$data.containsKey('iconPath')) {
      final l$iconPath = iconPath;
      result$data['iconPath'] = l$iconPath;
    }
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$slug = slug;
    result$data['slug'] = l$slug;
    final l$type = type;
    result$data['type'] = l$type;
    return result$data;
  }

  CopyWith$Input$cuisines_insert_input<Input$cuisines_insert_input>
      get copyWith => CopyWith$Input$cuisines_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$cuisines_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
    final lOther$bridge_recipes_cuisines = other.bridge_recipes_cuisines;
    if (_$data.containsKey('bridge_recipes_cuisines') !=
        other._$data.containsKey('bridge_recipes_cuisines')) {
      return false;
    }
    if (l$bridge_recipes_cuisines != lOther$bridge_recipes_cuisines) {
      return false;
    }
    final l$iconPath = iconPath;
    final lOther$iconPath = other.iconPath;
    if (_$data.containsKey('iconPath') !=
        other._$data.containsKey('iconPath')) {
      return false;
    }
    if (l$iconPath != lOther$iconPath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
    final l$iconPath = iconPath;
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('bridge_recipes_cuisines')
          ? l$bridge_recipes_cuisines
          : const {},
      _$data.containsKey('iconPath') ? l$iconPath : const {},
      l$id,
      l$name,
      l$slug,
      l$type,
    ]);
  }
}

abstract class CopyWith$Input$cuisines_insert_input<TRes> {
  factory CopyWith$Input$cuisines_insert_input(
    Input$cuisines_insert_input instance,
    TRes Function(Input$cuisines_insert_input) then,
  ) = _CopyWithImpl$Input$cuisines_insert_input;

  factory CopyWith$Input$cuisines_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$cuisines_insert_input;

  TRes call({
    Input$bridge_recipes_cuisines_arr_rel_insert_input? bridge_recipes_cuisines,
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  });
  CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input<TRes>
      get bridge_recipes_cuisines;
}

class _CopyWithImpl$Input$cuisines_insert_input<TRes>
    implements CopyWith$Input$cuisines_insert_input<TRes> {
  _CopyWithImpl$Input$cuisines_insert_input(
    this._instance,
    this._then,
  );

  final Input$cuisines_insert_input _instance;

  final TRes Function(Input$cuisines_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? bridge_recipes_cuisines = _undefined,
    Object? iconPath = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$cuisines_insert_input._({
        ..._instance._$data,
        if (bridge_recipes_cuisines != _undefined)
          'bridge_recipes_cuisines': (bridge_recipes_cuisines
              as Input$bridge_recipes_cuisines_arr_rel_insert_input?),
        if (iconPath != _undefined) 'iconPath': (iconPath as String?),
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (slug != _undefined && slug != null) 'slug': (slug as String),
        if (type != _undefined && type != null) 'type': (type as String),
      }));
  CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input<TRes>
      get bridge_recipes_cuisines {
    final local$bridge_recipes_cuisines = _instance.bridge_recipes_cuisines;
    return local$bridge_recipes_cuisines == null
        ? CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input(
            local$bridge_recipes_cuisines,
            (e) => call(bridge_recipes_cuisines: e));
  }
}

class _CopyWithStubImpl$Input$cuisines_insert_input<TRes>
    implements CopyWith$Input$cuisines_insert_input<TRes> {
  _CopyWithStubImpl$Input$cuisines_insert_input(this._res);

  TRes _res;

  call({
    Input$bridge_recipes_cuisines_arr_rel_insert_input? bridge_recipes_cuisines,
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input<TRes>
      get bridge_recipes_cuisines =>
          CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input.stub(
              _res);
}

class Input$cuisines_obj_rel_insert_input {
  factory Input$cuisines_obj_rel_insert_input({
    required Input$cuisines_insert_input data,
    Input$cuisines_on_conflict? on_conflict,
  }) =>
      Input$cuisines_obj_rel_insert_input._({
        r'data': data,
        if (on_conflict != null) r'on_conflict': on_conflict,
      });

  Input$cuisines_obj_rel_insert_input._(this._$data);

  factory Input$cuisines_obj_rel_insert_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$cuisines_insert_input.fromJson((l$data as Map<String, dynamic>));
    if (data.containsKey('on_conflict')) {
      final l$on_conflict = data['on_conflict'];
      result$data['on_conflict'] = l$on_conflict == null
          ? null
          : Input$cuisines_on_conflict.fromJson(
              (l$on_conflict as Map<String, dynamic>));
    }
    return Input$cuisines_obj_rel_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$cuisines_insert_input get data =>
      (_$data['data'] as Input$cuisines_insert_input);
  Input$cuisines_on_conflict? get on_conflict =>
      (_$data['on_conflict'] as Input$cuisines_on_conflict?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    if (_$data.containsKey('on_conflict')) {
      final l$on_conflict = on_conflict;
      result$data['on_conflict'] = l$on_conflict?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$cuisines_obj_rel_insert_input<
          Input$cuisines_obj_rel_insert_input>
      get copyWith => CopyWith$Input$cuisines_obj_rel_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$cuisines_obj_rel_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (_$data.containsKey('on_conflict') !=
        other._$data.containsKey('on_conflict')) {
      return false;
    }
    if (l$on_conflict != lOther$on_conflict) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll([
      l$data,
      _$data.containsKey('on_conflict') ? l$on_conflict : const {},
    ]);
  }
}

abstract class CopyWith$Input$cuisines_obj_rel_insert_input<TRes> {
  factory CopyWith$Input$cuisines_obj_rel_insert_input(
    Input$cuisines_obj_rel_insert_input instance,
    TRes Function(Input$cuisines_obj_rel_insert_input) then,
  ) = _CopyWithImpl$Input$cuisines_obj_rel_insert_input;

  factory CopyWith$Input$cuisines_obj_rel_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$cuisines_obj_rel_insert_input;

  TRes call({
    Input$cuisines_insert_input? data,
    Input$cuisines_on_conflict? on_conflict,
  });
  CopyWith$Input$cuisines_insert_input<TRes> get data;
  CopyWith$Input$cuisines_on_conflict<TRes> get on_conflict;
}

class _CopyWithImpl$Input$cuisines_obj_rel_insert_input<TRes>
    implements CopyWith$Input$cuisines_obj_rel_insert_input<TRes> {
  _CopyWithImpl$Input$cuisines_obj_rel_insert_input(
    this._instance,
    this._then,
  );

  final Input$cuisines_obj_rel_insert_input _instance;

  final TRes Function(Input$cuisines_obj_rel_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? data = _undefined,
    Object? on_conflict = _undefined,
  }) =>
      _then(Input$cuisines_obj_rel_insert_input._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$cuisines_insert_input),
        if (on_conflict != _undefined)
          'on_conflict': (on_conflict as Input$cuisines_on_conflict?),
      }));
  CopyWith$Input$cuisines_insert_input<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$cuisines_insert_input(
        local$data, (e) => call(data: e));
  }

  CopyWith$Input$cuisines_on_conflict<TRes> get on_conflict {
    final local$on_conflict = _instance.on_conflict;
    return local$on_conflict == null
        ? CopyWith$Input$cuisines_on_conflict.stub(_then(_instance))
        : CopyWith$Input$cuisines_on_conflict(
            local$on_conflict, (e) => call(on_conflict: e));
  }
}

class _CopyWithStubImpl$Input$cuisines_obj_rel_insert_input<TRes>
    implements CopyWith$Input$cuisines_obj_rel_insert_input<TRes> {
  _CopyWithStubImpl$Input$cuisines_obj_rel_insert_input(this._res);

  TRes _res;

  call({
    Input$cuisines_insert_input? data,
    Input$cuisines_on_conflict? on_conflict,
  }) =>
      _res;
  CopyWith$Input$cuisines_insert_input<TRes> get data =>
      CopyWith$Input$cuisines_insert_input.stub(_res);
  CopyWith$Input$cuisines_on_conflict<TRes> get on_conflict =>
      CopyWith$Input$cuisines_on_conflict.stub(_res);
}

class Input$cuisines_on_conflict {
  factory Input$cuisines_on_conflict({
    required Enum$cuisines_constraint constraint,
    required List<Enum$cuisines_update_column> update_columns,
    Input$cuisines_bool_exp? where,
  }) =>
      Input$cuisines_on_conflict._({
        r'constraint': constraint,
        r'update_columns': update_columns,
        if (where != null) r'where': where,
      });

  Input$cuisines_on_conflict._(this._$data);

  factory Input$cuisines_on_conflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson$Enum$cuisines_constraint((l$constraint as String));
    final l$update_columns = data['update_columns'];
    result$data['update_columns'] = (l$update_columns as List<dynamic>)
        .map((e) => fromJson$Enum$cuisines_update_column((e as String)))
        .toList();
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$cuisines_bool_exp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input$cuisines_on_conflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$cuisines_constraint get constraint =>
      (_$data['constraint'] as Enum$cuisines_constraint);
  List<Enum$cuisines_update_column> get update_columns =>
      (_$data['update_columns'] as List<Enum$cuisines_update_column>);
  Input$cuisines_bool_exp? get where =>
      (_$data['where'] as Input$cuisines_bool_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson$Enum$cuisines_constraint(l$constraint);
    final l$update_columns = update_columns;
    result$data['update_columns'] = l$update_columns
        .map((e) => toJson$Enum$cuisines_update_column(e))
        .toList();
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$cuisines_on_conflict<Input$cuisines_on_conflict>
      get copyWith => CopyWith$Input$cuisines_on_conflict(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$cuisines_on_conflict) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) {
      return false;
    }
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) {
        return false;
      }
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith$Input$cuisines_on_conflict<TRes> {
  factory CopyWith$Input$cuisines_on_conflict(
    Input$cuisines_on_conflict instance,
    TRes Function(Input$cuisines_on_conflict) then,
  ) = _CopyWithImpl$Input$cuisines_on_conflict;

  factory CopyWith$Input$cuisines_on_conflict.stub(TRes res) =
      _CopyWithStubImpl$Input$cuisines_on_conflict;

  TRes call({
    Enum$cuisines_constraint? constraint,
    List<Enum$cuisines_update_column>? update_columns,
    Input$cuisines_bool_exp? where,
  });
  CopyWith$Input$cuisines_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$cuisines_on_conflict<TRes>
    implements CopyWith$Input$cuisines_on_conflict<TRes> {
  _CopyWithImpl$Input$cuisines_on_conflict(
    this._instance,
    this._then,
  );

  final Input$cuisines_on_conflict _instance;

  final TRes Function(Input$cuisines_on_conflict) _then;

  static const _undefined = {};

  TRes call({
    Object? constraint = _undefined,
    Object? update_columns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$cuisines_on_conflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum$cuisines_constraint),
        if (update_columns != _undefined && update_columns != null)
          'update_columns':
              (update_columns as List<Enum$cuisines_update_column>),
        if (where != _undefined) 'where': (where as Input$cuisines_bool_exp?),
      }));
  CopyWith$Input$cuisines_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith$Input$cuisines_bool_exp.stub(_then(_instance))
        : CopyWith$Input$cuisines_bool_exp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$cuisines_on_conflict<TRes>
    implements CopyWith$Input$cuisines_on_conflict<TRes> {
  _CopyWithStubImpl$Input$cuisines_on_conflict(this._res);

  TRes _res;

  call({
    Enum$cuisines_constraint? constraint,
    List<Enum$cuisines_update_column>? update_columns,
    Input$cuisines_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$cuisines_bool_exp<TRes> get where =>
      CopyWith$Input$cuisines_bool_exp.stub(_res);
}

class Input$cuisines_order_by {
  factory Input$cuisines_order_by({
    Input$bridge_recipes_cuisines_aggregate_order_by?
        bridge_recipes_cuisines_aggregate,
    Enum$order_by? iconPath,
    Enum$order_by? id,
    Enum$order_by? name,
    Enum$order_by? slug,
    Enum$order_by? type,
  }) =>
      Input$cuisines_order_by._({
        if (bridge_recipes_cuisines_aggregate != null)
          r'bridge_recipes_cuisines_aggregate':
              bridge_recipes_cuisines_aggregate,
        if (iconPath != null) r'iconPath': iconPath,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$cuisines_order_by._(this._$data);

  factory Input$cuisines_order_by.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bridge_recipes_cuisines_aggregate')) {
      final l$bridge_recipes_cuisines_aggregate =
          data['bridge_recipes_cuisines_aggregate'];
      result$data['bridge_recipes_cuisines_aggregate'] =
          l$bridge_recipes_cuisines_aggregate == null
              ? null
              : Input$bridge_recipes_cuisines_aggregate_order_by.fromJson(
                  (l$bridge_recipes_cuisines_aggregate
                      as Map<String, dynamic>));
    }
    if (data.containsKey('iconPath')) {
      final l$iconPath = data['iconPath'];
      result$data['iconPath'] = l$iconPath == null
          ? null
          : fromJson$Enum$order_by((l$iconPath as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$order_by((l$name as String));
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] =
          l$slug == null ? null : fromJson$Enum$order_by((l$slug as String));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$order_by((l$type as String));
    }
    return Input$cuisines_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_cuisines_aggregate_order_by?
      get bridge_recipes_cuisines_aggregate =>
          (_$data['bridge_recipes_cuisines_aggregate']
              as Input$bridge_recipes_cuisines_aggregate_order_by?);
  Enum$order_by? get iconPath => (_$data['iconPath'] as Enum$order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Enum$order_by? get name => (_$data['name'] as Enum$order_by?);
  Enum$order_by? get slug => (_$data['slug'] as Enum$order_by?);
  Enum$order_by? get type => (_$data['type'] as Enum$order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bridge_recipes_cuisines_aggregate')) {
      final l$bridge_recipes_cuisines_aggregate =
          bridge_recipes_cuisines_aggregate;
      result$data['bridge_recipes_cuisines_aggregate'] =
          l$bridge_recipes_cuisines_aggregate?.toJson();
    }
    if (_$data.containsKey('iconPath')) {
      final l$iconPath = iconPath;
      result$data['iconPath'] =
          l$iconPath == null ? null : toJson$Enum$order_by(l$iconPath);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$order_by(l$name);
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] =
          l$slug == null ? null : toJson$Enum$order_by(l$slug);
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$order_by(l$type);
    }
    return result$data;
  }

  CopyWith$Input$cuisines_order_by<Input$cuisines_order_by> get copyWith =>
      CopyWith$Input$cuisines_order_by(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$cuisines_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bridge_recipes_cuisines_aggregate =
        bridge_recipes_cuisines_aggregate;
    final lOther$bridge_recipes_cuisines_aggregate =
        other.bridge_recipes_cuisines_aggregate;
    if (_$data.containsKey('bridge_recipes_cuisines_aggregate') !=
        other._$data.containsKey('bridge_recipes_cuisines_aggregate')) {
      return false;
    }
    if (l$bridge_recipes_cuisines_aggregate !=
        lOther$bridge_recipes_cuisines_aggregate) {
      return false;
    }
    final l$iconPath = iconPath;
    final lOther$iconPath = other.iconPath;
    if (_$data.containsKey('iconPath') !=
        other._$data.containsKey('iconPath')) {
      return false;
    }
    if (l$iconPath != lOther$iconPath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bridge_recipes_cuisines_aggregate =
        bridge_recipes_cuisines_aggregate;
    final l$iconPath = iconPath;
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('bridge_recipes_cuisines_aggregate')
          ? l$bridge_recipes_cuisines_aggregate
          : const {},
      _$data.containsKey('iconPath') ? l$iconPath : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$cuisines_order_by<TRes> {
  factory CopyWith$Input$cuisines_order_by(
    Input$cuisines_order_by instance,
    TRes Function(Input$cuisines_order_by) then,
  ) = _CopyWithImpl$Input$cuisines_order_by;

  factory CopyWith$Input$cuisines_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$cuisines_order_by;

  TRes call({
    Input$bridge_recipes_cuisines_aggregate_order_by?
        bridge_recipes_cuisines_aggregate,
    Enum$order_by? iconPath,
    Enum$order_by? id,
    Enum$order_by? name,
    Enum$order_by? slug,
    Enum$order_by? type,
  });
  CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by<TRes>
      get bridge_recipes_cuisines_aggregate;
}

class _CopyWithImpl$Input$cuisines_order_by<TRes>
    implements CopyWith$Input$cuisines_order_by<TRes> {
  _CopyWithImpl$Input$cuisines_order_by(
    this._instance,
    this._then,
  );

  final Input$cuisines_order_by _instance;

  final TRes Function(Input$cuisines_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? bridge_recipes_cuisines_aggregate = _undefined,
    Object? iconPath = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$cuisines_order_by._({
        ..._instance._$data,
        if (bridge_recipes_cuisines_aggregate != _undefined)
          'bridge_recipes_cuisines_aggregate':
              (bridge_recipes_cuisines_aggregate
                  as Input$bridge_recipes_cuisines_aggregate_order_by?),
        if (iconPath != _undefined) 'iconPath': (iconPath as Enum$order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
        if (name != _undefined) 'name': (name as Enum$order_by?),
        if (slug != _undefined) 'slug': (slug as Enum$order_by?),
        if (type != _undefined) 'type': (type as Enum$order_by?),
      }));
  CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by<TRes>
      get bridge_recipes_cuisines_aggregate {
    final local$bridge_recipes_cuisines_aggregate =
        _instance.bridge_recipes_cuisines_aggregate;
    return local$bridge_recipes_cuisines_aggregate == null
        ? CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by(
            local$bridge_recipes_cuisines_aggregate,
            (e) => call(bridge_recipes_cuisines_aggregate: e));
  }
}

class _CopyWithStubImpl$Input$cuisines_order_by<TRes>
    implements CopyWith$Input$cuisines_order_by<TRes> {
  _CopyWithStubImpl$Input$cuisines_order_by(this._res);

  TRes _res;

  call({
    Input$bridge_recipes_cuisines_aggregate_order_by?
        bridge_recipes_cuisines_aggregate,
    Enum$order_by? iconPath,
    Enum$order_by? id,
    Enum$order_by? name,
    Enum$order_by? slug,
    Enum$order_by? type,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by<TRes>
      get bridge_recipes_cuisines_aggregate =>
          CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by.stub(_res);
}

class Input$cuisines_pk_columns_input {
  factory Input$cuisines_pk_columns_input({required String id}) =>
      Input$cuisines_pk_columns_input._({
        r'id': id,
      });

  Input$cuisines_pk_columns_input._(this._$data);

  factory Input$cuisines_pk_columns_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$cuisines_pk_columns_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$cuisines_pk_columns_input<Input$cuisines_pk_columns_input>
      get copyWith => CopyWith$Input$cuisines_pk_columns_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$cuisines_pk_columns_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$cuisines_pk_columns_input<TRes> {
  factory CopyWith$Input$cuisines_pk_columns_input(
    Input$cuisines_pk_columns_input instance,
    TRes Function(Input$cuisines_pk_columns_input) then,
  ) = _CopyWithImpl$Input$cuisines_pk_columns_input;

  factory CopyWith$Input$cuisines_pk_columns_input.stub(TRes res) =
      _CopyWithStubImpl$Input$cuisines_pk_columns_input;

  TRes call({String? id});
}

class _CopyWithImpl$Input$cuisines_pk_columns_input<TRes>
    implements CopyWith$Input$cuisines_pk_columns_input<TRes> {
  _CopyWithImpl$Input$cuisines_pk_columns_input(
    this._instance,
    this._then,
  );

  final Input$cuisines_pk_columns_input _instance;

  final TRes Function(Input$cuisines_pk_columns_input) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Input$cuisines_pk_columns_input._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$cuisines_pk_columns_input<TRes>
    implements CopyWith$Input$cuisines_pk_columns_input<TRes> {
  _CopyWithStubImpl$Input$cuisines_pk_columns_input(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$cuisines_set_input {
  factory Input$cuisines_set_input({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  }) =>
      Input$cuisines_set_input._({
        if (iconPath != null) r'iconPath': iconPath,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$cuisines_set_input._(this._$data);

  factory Input$cuisines_set_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('iconPath')) {
      final l$iconPath = data['iconPath'];
      result$data['iconPath'] = (l$iconPath as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    return Input$cuisines_set_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get iconPath => (_$data['iconPath'] as String?);
  String? get id => (_$data['id'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get slug => (_$data['slug'] as String?);
  String? get type => (_$data['type'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('iconPath')) {
      final l$iconPath = iconPath;
      result$data['iconPath'] = l$iconPath;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    return result$data;
  }

  CopyWith$Input$cuisines_set_input<Input$cuisines_set_input> get copyWith =>
      CopyWith$Input$cuisines_set_input(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$cuisines_set_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$iconPath = iconPath;
    final lOther$iconPath = other.iconPath;
    if (_$data.containsKey('iconPath') !=
        other._$data.containsKey('iconPath')) {
      return false;
    }
    if (l$iconPath != lOther$iconPath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$iconPath = iconPath;
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('iconPath') ? l$iconPath : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$cuisines_set_input<TRes> {
  factory CopyWith$Input$cuisines_set_input(
    Input$cuisines_set_input instance,
    TRes Function(Input$cuisines_set_input) then,
  ) = _CopyWithImpl$Input$cuisines_set_input;

  factory CopyWith$Input$cuisines_set_input.stub(TRes res) =
      _CopyWithStubImpl$Input$cuisines_set_input;

  TRes call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  });
}

class _CopyWithImpl$Input$cuisines_set_input<TRes>
    implements CopyWith$Input$cuisines_set_input<TRes> {
  _CopyWithImpl$Input$cuisines_set_input(
    this._instance,
    this._then,
  );

  final Input$cuisines_set_input _instance;

  final TRes Function(Input$cuisines_set_input) _then;

  static const _undefined = {};

  TRes call({
    Object? iconPath = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$cuisines_set_input._({
        ..._instance._$data,
        if (iconPath != _undefined) 'iconPath': (iconPath as String?),
        if (id != _undefined) 'id': (id as String?),
        if (name != _undefined) 'name': (name as String?),
        if (slug != _undefined) 'slug': (slug as String?),
        if (type != _undefined) 'type': (type as String?),
      }));
}

class _CopyWithStubImpl$Input$cuisines_set_input<TRes>
    implements CopyWith$Input$cuisines_set_input<TRes> {
  _CopyWithStubImpl$Input$cuisines_set_input(this._res);

  TRes _res;

  call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  }) =>
      _res;
}

class Input$cuisines_stream_cursor_input {
  factory Input$cuisines_stream_cursor_input({
    required Input$cuisines_stream_cursor_value_input initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      Input$cuisines_stream_cursor_input._({
        r'initial_value': initial_value,
        if (ordering != null) r'ordering': ordering,
      });

  Input$cuisines_stream_cursor_input._(this._$data);

  factory Input$cuisines_stream_cursor_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initial_value = data['initial_value'];
    result$data['initial_value'] =
        Input$cuisines_stream_cursor_value_input.fromJson(
            (l$initial_value as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson$Enum$cursor_ordering((l$ordering as String));
    }
    return Input$cuisines_stream_cursor_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$cuisines_stream_cursor_value_input get initial_value =>
      (_$data['initial_value'] as Input$cuisines_stream_cursor_value_input);
  Enum$cursor_ordering? get ordering =>
      (_$data['ordering'] as Enum$cursor_ordering?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initial_value = initial_value;
    result$data['initial_value'] = l$initial_value.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson$Enum$cursor_ordering(l$ordering);
    }
    return result$data;
  }

  CopyWith$Input$cuisines_stream_cursor_input<
          Input$cuisines_stream_cursor_input>
      get copyWith => CopyWith$Input$cuisines_stream_cursor_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$cuisines_stream_cursor_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initial_value = initial_value;
    final lOther$initial_value = other.initial_value;
    if (l$initial_value != lOther$initial_value) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initial_value = initial_value;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initial_value,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}

abstract class CopyWith$Input$cuisines_stream_cursor_input<TRes> {
  factory CopyWith$Input$cuisines_stream_cursor_input(
    Input$cuisines_stream_cursor_input instance,
    TRes Function(Input$cuisines_stream_cursor_input) then,
  ) = _CopyWithImpl$Input$cuisines_stream_cursor_input;

  factory CopyWith$Input$cuisines_stream_cursor_input.stub(TRes res) =
      _CopyWithStubImpl$Input$cuisines_stream_cursor_input;

  TRes call({
    Input$cuisines_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  });
  CopyWith$Input$cuisines_stream_cursor_value_input<TRes> get initial_value;
}

class _CopyWithImpl$Input$cuisines_stream_cursor_input<TRes>
    implements CopyWith$Input$cuisines_stream_cursor_input<TRes> {
  _CopyWithImpl$Input$cuisines_stream_cursor_input(
    this._instance,
    this._then,
  );

  final Input$cuisines_stream_cursor_input _instance;

  final TRes Function(Input$cuisines_stream_cursor_input) _then;

  static const _undefined = {};

  TRes call({
    Object? initial_value = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input$cuisines_stream_cursor_input._({
        ..._instance._$data,
        if (initial_value != _undefined && initial_value != null)
          'initial_value':
              (initial_value as Input$cuisines_stream_cursor_value_input),
        if (ordering != _undefined)
          'ordering': (ordering as Enum$cursor_ordering?),
      }));
  CopyWith$Input$cuisines_stream_cursor_value_input<TRes> get initial_value {
    final local$initial_value = _instance.initial_value;
    return CopyWith$Input$cuisines_stream_cursor_value_input(
        local$initial_value, (e) => call(initial_value: e));
  }
}

class _CopyWithStubImpl$Input$cuisines_stream_cursor_input<TRes>
    implements CopyWith$Input$cuisines_stream_cursor_input<TRes> {
  _CopyWithStubImpl$Input$cuisines_stream_cursor_input(this._res);

  TRes _res;

  call({
    Input$cuisines_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      _res;
  CopyWith$Input$cuisines_stream_cursor_value_input<TRes> get initial_value =>
      CopyWith$Input$cuisines_stream_cursor_value_input.stub(_res);
}

class Input$cuisines_stream_cursor_value_input {
  factory Input$cuisines_stream_cursor_value_input({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  }) =>
      Input$cuisines_stream_cursor_value_input._({
        if (iconPath != null) r'iconPath': iconPath,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$cuisines_stream_cursor_value_input._(this._$data);

  factory Input$cuisines_stream_cursor_value_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('iconPath')) {
      final l$iconPath = data['iconPath'];
      result$data['iconPath'] = (l$iconPath as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    return Input$cuisines_stream_cursor_value_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get iconPath => (_$data['iconPath'] as String?);
  String? get id => (_$data['id'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get slug => (_$data['slug'] as String?);
  String? get type => (_$data['type'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('iconPath')) {
      final l$iconPath = iconPath;
      result$data['iconPath'] = l$iconPath;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    return result$data;
  }

  CopyWith$Input$cuisines_stream_cursor_value_input<
          Input$cuisines_stream_cursor_value_input>
      get copyWith => CopyWith$Input$cuisines_stream_cursor_value_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$cuisines_stream_cursor_value_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$iconPath = iconPath;
    final lOther$iconPath = other.iconPath;
    if (_$data.containsKey('iconPath') !=
        other._$data.containsKey('iconPath')) {
      return false;
    }
    if (l$iconPath != lOther$iconPath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$iconPath = iconPath;
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('iconPath') ? l$iconPath : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$cuisines_stream_cursor_value_input<TRes> {
  factory CopyWith$Input$cuisines_stream_cursor_value_input(
    Input$cuisines_stream_cursor_value_input instance,
    TRes Function(Input$cuisines_stream_cursor_value_input) then,
  ) = _CopyWithImpl$Input$cuisines_stream_cursor_value_input;

  factory CopyWith$Input$cuisines_stream_cursor_value_input.stub(TRes res) =
      _CopyWithStubImpl$Input$cuisines_stream_cursor_value_input;

  TRes call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  });
}

class _CopyWithImpl$Input$cuisines_stream_cursor_value_input<TRes>
    implements CopyWith$Input$cuisines_stream_cursor_value_input<TRes> {
  _CopyWithImpl$Input$cuisines_stream_cursor_value_input(
    this._instance,
    this._then,
  );

  final Input$cuisines_stream_cursor_value_input _instance;

  final TRes Function(Input$cuisines_stream_cursor_value_input) _then;

  static const _undefined = {};

  TRes call({
    Object? iconPath = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$cuisines_stream_cursor_value_input._({
        ..._instance._$data,
        if (iconPath != _undefined) 'iconPath': (iconPath as String?),
        if (id != _undefined) 'id': (id as String?),
        if (name != _undefined) 'name': (name as String?),
        if (slug != _undefined) 'slug': (slug as String?),
        if (type != _undefined) 'type': (type as String?),
      }));
}

class _CopyWithStubImpl$Input$cuisines_stream_cursor_value_input<TRes>
    implements CopyWith$Input$cuisines_stream_cursor_value_input<TRes> {
  _CopyWithStubImpl$Input$cuisines_stream_cursor_value_input(this._res);

  TRes _res;

  call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  }) =>
      _res;
}

class Input$cuisines_updates {
  factory Input$cuisines_updates({
    Input$cuisines_set_input? $_set,
    required Input$cuisines_bool_exp where,
  }) =>
      Input$cuisines_updates._({
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input$cuisines_updates._(this._$data);

  factory Input$cuisines_updates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input$cuisines_set_input.fromJson(
              (l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] =
        Input$cuisines_bool_exp.fromJson((l$where as Map<String, dynamic>));
    return Input$cuisines_updates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$cuisines_set_input? get $_set =>
      (_$data['_set'] as Input$cuisines_set_input?);
  Input$cuisines_bool_exp get where =>
      (_$data['where'] as Input$cuisines_bool_exp);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Input$cuisines_updates<Input$cuisines_updates> get copyWith =>
      CopyWith$Input$cuisines_updates(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$cuisines_updates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith$Input$cuisines_updates<TRes> {
  factory CopyWith$Input$cuisines_updates(
    Input$cuisines_updates instance,
    TRes Function(Input$cuisines_updates) then,
  ) = _CopyWithImpl$Input$cuisines_updates;

  factory CopyWith$Input$cuisines_updates.stub(TRes res) =
      _CopyWithStubImpl$Input$cuisines_updates;

  TRes call({
    Input$cuisines_set_input? $_set,
    Input$cuisines_bool_exp? where,
  });
  CopyWith$Input$cuisines_set_input<TRes> get $_set;
  CopyWith$Input$cuisines_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$cuisines_updates<TRes>
    implements CopyWith$Input$cuisines_updates<TRes> {
  _CopyWithImpl$Input$cuisines_updates(
    this._instance,
    this._then,
  );

  final Input$cuisines_updates _instance;

  final TRes Function(Input$cuisines_updates) _then;

  static const _undefined = {};

  TRes call({
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$cuisines_updates._({
        ..._instance._$data,
        if ($_set != _undefined) '_set': ($_set as Input$cuisines_set_input?),
        if (where != _undefined && where != null)
          'where': (where as Input$cuisines_bool_exp),
      }));
  CopyWith$Input$cuisines_set_input<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith$Input$cuisines_set_input.stub(_then(_instance))
        : CopyWith$Input$cuisines_set_input(local$$_set, (e) => call($_set: e));
  }

  CopyWith$Input$cuisines_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$cuisines_bool_exp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$cuisines_updates<TRes>
    implements CopyWith$Input$cuisines_updates<TRes> {
  _CopyWithStubImpl$Input$cuisines_updates(this._res);

  TRes _res;

  call({
    Input$cuisines_set_input? $_set,
    Input$cuisines_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$cuisines_set_input<TRes> get $_set =>
      CopyWith$Input$cuisines_set_input.stub(_res);
  CopyWith$Input$cuisines_bool_exp<TRes> get where =>
      CopyWith$Input$cuisines_bool_exp.stub(_res);
}

class Input$ingredient_family_bool_exp {
  factory Input$ingredient_family_bool_exp({
    List<Input$ingredient_family_bool_exp>? $_and,
    Input$ingredient_family_bool_exp? $_not,
    List<Input$ingredient_family_bool_exp>? $_or,
    Input$String_comparison_exp? iconPath,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? name,
    Input$String_comparison_exp? slug,
    Input$String_comparison_exp? type,
  }) =>
      Input$ingredient_family_bool_exp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (iconPath != null) r'iconPath': iconPath,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$ingredient_family_bool_exp._(this._$data);

  factory Input$ingredient_family_bool_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input$ingredient_family_bool_exp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input$ingredient_family_bool_exp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input$ingredient_family_bool_exp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('iconPath')) {
      final l$iconPath = data['iconPath'];
      result$data['iconPath'] = l$iconPath == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$iconPath as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = l$slug == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$slug as Map<String, dynamic>));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$type as Map<String, dynamic>));
    }
    return Input$ingredient_family_bool_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ingredient_family_bool_exp>? get $_and =>
      (_$data['_and'] as List<Input$ingredient_family_bool_exp>?);
  Input$ingredient_family_bool_exp? get $_not =>
      (_$data['_not'] as Input$ingredient_family_bool_exp?);
  List<Input$ingredient_family_bool_exp>? get $_or =>
      (_$data['_or'] as List<Input$ingredient_family_bool_exp>?);
  Input$String_comparison_exp? get iconPath =>
      (_$data['iconPath'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get id =>
      (_$data['id'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get name =>
      (_$data['name'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get slug =>
      (_$data['slug'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get type =>
      (_$data['type'] as Input$String_comparison_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('iconPath')) {
      final l$iconPath = iconPath;
      result$data['iconPath'] = l$iconPath?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug?.toJson();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ingredient_family_bool_exp<Input$ingredient_family_bool_exp>
      get copyWith => CopyWith$Input$ingredient_family_bool_exp(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredient_family_bool_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$iconPath = iconPath;
    final lOther$iconPath = other.iconPath;
    if (_$data.containsKey('iconPath') !=
        other._$data.containsKey('iconPath')) {
      return false;
    }
    if (l$iconPath != lOther$iconPath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$iconPath = iconPath;
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
              ? null
              : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
              ? null
              : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('iconPath') ? l$iconPath : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredient_family_bool_exp<TRes> {
  factory CopyWith$Input$ingredient_family_bool_exp(
    Input$ingredient_family_bool_exp instance,
    TRes Function(Input$ingredient_family_bool_exp) then,
  ) = _CopyWithImpl$Input$ingredient_family_bool_exp;

  factory CopyWith$Input$ingredient_family_bool_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredient_family_bool_exp;

  TRes call({
    List<Input$ingredient_family_bool_exp>? $_and,
    Input$ingredient_family_bool_exp? $_not,
    List<Input$ingredient_family_bool_exp>? $_or,
    Input$String_comparison_exp? iconPath,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? name,
    Input$String_comparison_exp? slug,
    Input$String_comparison_exp? type,
  });
  TRes $_and(
      Iterable<Input$ingredient_family_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$ingredient_family_bool_exp<
                      Input$ingredient_family_bool_exp>>?)
          _fn);
  CopyWith$Input$ingredient_family_bool_exp<TRes> get $_not;
  TRes $_or(
      Iterable<Input$ingredient_family_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$ingredient_family_bool_exp<
                      Input$ingredient_family_bool_exp>>?)
          _fn);
  CopyWith$Input$String_comparison_exp<TRes> get iconPath;
  CopyWith$Input$String_comparison_exp<TRes> get id;
  CopyWith$Input$String_comparison_exp<TRes> get name;
  CopyWith$Input$String_comparison_exp<TRes> get slug;
  CopyWith$Input$String_comparison_exp<TRes> get type;
}

class _CopyWithImpl$Input$ingredient_family_bool_exp<TRes>
    implements CopyWith$Input$ingredient_family_bool_exp<TRes> {
  _CopyWithImpl$Input$ingredient_family_bool_exp(
    this._instance,
    this._then,
  );

  final Input$ingredient_family_bool_exp _instance;

  final TRes Function(Input$ingredient_family_bool_exp) _then;

  static const _undefined = {};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? iconPath = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$ingredient_family_bool_exp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input$ingredient_family_bool_exp>?),
        if ($_not != _undefined)
          '_not': ($_not as Input$ingredient_family_bool_exp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input$ingredient_family_bool_exp>?),
        if (iconPath != _undefined)
          'iconPath': (iconPath as Input$String_comparison_exp?),
        if (id != _undefined) 'id': (id as Input$String_comparison_exp?),
        if (name != _undefined) 'name': (name as Input$String_comparison_exp?),
        if (slug != _undefined) 'slug': (slug as Input$String_comparison_exp?),
        if (type != _undefined) 'type': (type as Input$String_comparison_exp?),
      }));
  TRes $_and(
          Iterable<Input$ingredient_family_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$ingredient_family_bool_exp<
                          Input$ingredient_family_bool_exp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and
              ?.map((e) => CopyWith$Input$ingredient_family_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$ingredient_family_bool_exp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith$Input$ingredient_family_bool_exp.stub(_then(_instance))
        : CopyWith$Input$ingredient_family_bool_exp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input$ingredient_family_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$ingredient_family_bool_exp<
                          Input$ingredient_family_bool_exp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or
              ?.map((e) => CopyWith$Input$ingredient_family_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$String_comparison_exp<TRes> get iconPath {
    final local$iconPath = _instance.iconPath;
    return local$iconPath == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$iconPath, (e) => call(iconPath: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(local$id, (e) => call(id: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get slug {
    final local$slug = _instance.slug;
    return local$slug == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$slug, (e) => call(slug: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$type, (e) => call(type: e));
  }
}

class _CopyWithStubImpl$Input$ingredient_family_bool_exp<TRes>
    implements CopyWith$Input$ingredient_family_bool_exp<TRes> {
  _CopyWithStubImpl$Input$ingredient_family_bool_exp(this._res);

  TRes _res;

  call({
    List<Input$ingredient_family_bool_exp>? $_and,
    Input$ingredient_family_bool_exp? $_not,
    List<Input$ingredient_family_bool_exp>? $_or,
    Input$String_comparison_exp? iconPath,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? name,
    Input$String_comparison_exp? slug,
    Input$String_comparison_exp? type,
  }) =>
      _res;
  $_and(_fn) => _res;
  CopyWith$Input$ingredient_family_bool_exp<TRes> get $_not =>
      CopyWith$Input$ingredient_family_bool_exp.stub(_res);
  $_or(_fn) => _res;
  CopyWith$Input$String_comparison_exp<TRes> get iconPath =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get id =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get name =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get slug =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get type =>
      CopyWith$Input$String_comparison_exp.stub(_res);
}

class Input$ingredient_family_insert_input {
  factory Input$ingredient_family_insert_input({
    String? iconPath,
    required String id,
    required String name,
    required String slug,
    required String type,
  }) =>
      Input$ingredient_family_insert_input._({
        if (iconPath != null) r'iconPath': iconPath,
        r'id': id,
        r'name': name,
        r'slug': slug,
        r'type': type,
      });

  Input$ingredient_family_insert_input._(this._$data);

  factory Input$ingredient_family_insert_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('iconPath')) {
      final l$iconPath = data['iconPath'];
      result$data['iconPath'] = (l$iconPath as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$slug = data['slug'];
    result$data['slug'] = (l$slug as String);
    final l$type = data['type'];
    result$data['type'] = (l$type as String);
    return Input$ingredient_family_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get iconPath => (_$data['iconPath'] as String?);
  String get id => (_$data['id'] as String);
  String get name => (_$data['name'] as String);
  String get slug => (_$data['slug'] as String);
  String get type => (_$data['type'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('iconPath')) {
      final l$iconPath = iconPath;
      result$data['iconPath'] = l$iconPath;
    }
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$slug = slug;
    result$data['slug'] = l$slug;
    final l$type = type;
    result$data['type'] = l$type;
    return result$data;
  }

  CopyWith$Input$ingredient_family_insert_input<
          Input$ingredient_family_insert_input>
      get copyWith => CopyWith$Input$ingredient_family_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredient_family_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$iconPath = iconPath;
    final lOther$iconPath = other.iconPath;
    if (_$data.containsKey('iconPath') !=
        other._$data.containsKey('iconPath')) {
      return false;
    }
    if (l$iconPath != lOther$iconPath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$iconPath = iconPath;
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('iconPath') ? l$iconPath : const {},
      l$id,
      l$name,
      l$slug,
      l$type,
    ]);
  }
}

abstract class CopyWith$Input$ingredient_family_insert_input<TRes> {
  factory CopyWith$Input$ingredient_family_insert_input(
    Input$ingredient_family_insert_input instance,
    TRes Function(Input$ingredient_family_insert_input) then,
  ) = _CopyWithImpl$Input$ingredient_family_insert_input;

  factory CopyWith$Input$ingredient_family_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredient_family_insert_input;

  TRes call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  });
}

class _CopyWithImpl$Input$ingredient_family_insert_input<TRes>
    implements CopyWith$Input$ingredient_family_insert_input<TRes> {
  _CopyWithImpl$Input$ingredient_family_insert_input(
    this._instance,
    this._then,
  );

  final Input$ingredient_family_insert_input _instance;

  final TRes Function(Input$ingredient_family_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? iconPath = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$ingredient_family_insert_input._({
        ..._instance._$data,
        if (iconPath != _undefined) 'iconPath': (iconPath as String?),
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (slug != _undefined && slug != null) 'slug': (slug as String),
        if (type != _undefined && type != null) 'type': (type as String),
      }));
}

class _CopyWithStubImpl$Input$ingredient_family_insert_input<TRes>
    implements CopyWith$Input$ingredient_family_insert_input<TRes> {
  _CopyWithStubImpl$Input$ingredient_family_insert_input(this._res);

  TRes _res;

  call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  }) =>
      _res;
}

class Input$ingredient_family_obj_rel_insert_input {
  factory Input$ingredient_family_obj_rel_insert_input({
    required Input$ingredient_family_insert_input data,
    Input$ingredient_family_on_conflict? on_conflict,
  }) =>
      Input$ingredient_family_obj_rel_insert_input._({
        r'data': data,
        if (on_conflict != null) r'on_conflict': on_conflict,
      });

  Input$ingredient_family_obj_rel_insert_input._(this._$data);

  factory Input$ingredient_family_obj_rel_insert_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input$ingredient_family_insert_input.fromJson(
        (l$data as Map<String, dynamic>));
    if (data.containsKey('on_conflict')) {
      final l$on_conflict = data['on_conflict'];
      result$data['on_conflict'] = l$on_conflict == null
          ? null
          : Input$ingredient_family_on_conflict.fromJson(
              (l$on_conflict as Map<String, dynamic>));
    }
    return Input$ingredient_family_obj_rel_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ingredient_family_insert_input get data =>
      (_$data['data'] as Input$ingredient_family_insert_input);
  Input$ingredient_family_on_conflict? get on_conflict =>
      (_$data['on_conflict'] as Input$ingredient_family_on_conflict?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    if (_$data.containsKey('on_conflict')) {
      final l$on_conflict = on_conflict;
      result$data['on_conflict'] = l$on_conflict?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ingredient_family_obj_rel_insert_input<
          Input$ingredient_family_obj_rel_insert_input>
      get copyWith => CopyWith$Input$ingredient_family_obj_rel_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredient_family_obj_rel_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (_$data.containsKey('on_conflict') !=
        other._$data.containsKey('on_conflict')) {
      return false;
    }
    if (l$on_conflict != lOther$on_conflict) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll([
      l$data,
      _$data.containsKey('on_conflict') ? l$on_conflict : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredient_family_obj_rel_insert_input<TRes> {
  factory CopyWith$Input$ingredient_family_obj_rel_insert_input(
    Input$ingredient_family_obj_rel_insert_input instance,
    TRes Function(Input$ingredient_family_obj_rel_insert_input) then,
  ) = _CopyWithImpl$Input$ingredient_family_obj_rel_insert_input;

  factory CopyWith$Input$ingredient_family_obj_rel_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredient_family_obj_rel_insert_input;

  TRes call({
    Input$ingredient_family_insert_input? data,
    Input$ingredient_family_on_conflict? on_conflict,
  });
  CopyWith$Input$ingredient_family_insert_input<TRes> get data;
  CopyWith$Input$ingredient_family_on_conflict<TRes> get on_conflict;
}

class _CopyWithImpl$Input$ingredient_family_obj_rel_insert_input<TRes>
    implements CopyWith$Input$ingredient_family_obj_rel_insert_input<TRes> {
  _CopyWithImpl$Input$ingredient_family_obj_rel_insert_input(
    this._instance,
    this._then,
  );

  final Input$ingredient_family_obj_rel_insert_input _instance;

  final TRes Function(Input$ingredient_family_obj_rel_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? data = _undefined,
    Object? on_conflict = _undefined,
  }) =>
      _then(Input$ingredient_family_obj_rel_insert_input._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$ingredient_family_insert_input),
        if (on_conflict != _undefined)
          'on_conflict': (on_conflict as Input$ingredient_family_on_conflict?),
      }));
  CopyWith$Input$ingredient_family_insert_input<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$ingredient_family_insert_input(
        local$data, (e) => call(data: e));
  }

  CopyWith$Input$ingredient_family_on_conflict<TRes> get on_conflict {
    final local$on_conflict = _instance.on_conflict;
    return local$on_conflict == null
        ? CopyWith$Input$ingredient_family_on_conflict.stub(_then(_instance))
        : CopyWith$Input$ingredient_family_on_conflict(
            local$on_conflict, (e) => call(on_conflict: e));
  }
}

class _CopyWithStubImpl$Input$ingredient_family_obj_rel_insert_input<TRes>
    implements CopyWith$Input$ingredient_family_obj_rel_insert_input<TRes> {
  _CopyWithStubImpl$Input$ingredient_family_obj_rel_insert_input(this._res);

  TRes _res;

  call({
    Input$ingredient_family_insert_input? data,
    Input$ingredient_family_on_conflict? on_conflict,
  }) =>
      _res;
  CopyWith$Input$ingredient_family_insert_input<TRes> get data =>
      CopyWith$Input$ingredient_family_insert_input.stub(_res);
  CopyWith$Input$ingredient_family_on_conflict<TRes> get on_conflict =>
      CopyWith$Input$ingredient_family_on_conflict.stub(_res);
}

class Input$ingredient_family_on_conflict {
  factory Input$ingredient_family_on_conflict({
    required Enum$ingredient_family_constraint constraint,
    required List<Enum$ingredient_family_update_column> update_columns,
    Input$ingredient_family_bool_exp? where,
  }) =>
      Input$ingredient_family_on_conflict._({
        r'constraint': constraint,
        r'update_columns': update_columns,
        if (where != null) r'where': where,
      });

  Input$ingredient_family_on_conflict._(this._$data);

  factory Input$ingredient_family_on_conflict.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson$Enum$ingredient_family_constraint((l$constraint as String));
    final l$update_columns = data['update_columns'];
    result$data['update_columns'] = (l$update_columns as List<dynamic>)
        .map(
            (e) => fromJson$Enum$ingredient_family_update_column((e as String)))
        .toList();
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$ingredient_family_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input$ingredient_family_on_conflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$ingredient_family_constraint get constraint =>
      (_$data['constraint'] as Enum$ingredient_family_constraint);
  List<Enum$ingredient_family_update_column> get update_columns =>
      (_$data['update_columns'] as List<Enum$ingredient_family_update_column>);
  Input$ingredient_family_bool_exp? get where =>
      (_$data['where'] as Input$ingredient_family_bool_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson$Enum$ingredient_family_constraint(l$constraint);
    final l$update_columns = update_columns;
    result$data['update_columns'] = l$update_columns
        .map((e) => toJson$Enum$ingredient_family_update_column(e))
        .toList();
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ingredient_family_on_conflict<
          Input$ingredient_family_on_conflict>
      get copyWith => CopyWith$Input$ingredient_family_on_conflict(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredient_family_on_conflict) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) {
      return false;
    }
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) {
        return false;
      }
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredient_family_on_conflict<TRes> {
  factory CopyWith$Input$ingredient_family_on_conflict(
    Input$ingredient_family_on_conflict instance,
    TRes Function(Input$ingredient_family_on_conflict) then,
  ) = _CopyWithImpl$Input$ingredient_family_on_conflict;

  factory CopyWith$Input$ingredient_family_on_conflict.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredient_family_on_conflict;

  TRes call({
    Enum$ingredient_family_constraint? constraint,
    List<Enum$ingredient_family_update_column>? update_columns,
    Input$ingredient_family_bool_exp? where,
  });
  CopyWith$Input$ingredient_family_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$ingredient_family_on_conflict<TRes>
    implements CopyWith$Input$ingredient_family_on_conflict<TRes> {
  _CopyWithImpl$Input$ingredient_family_on_conflict(
    this._instance,
    this._then,
  );

  final Input$ingredient_family_on_conflict _instance;

  final TRes Function(Input$ingredient_family_on_conflict) _then;

  static const _undefined = {};

  TRes call({
    Object? constraint = _undefined,
    Object? update_columns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$ingredient_family_on_conflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum$ingredient_family_constraint),
        if (update_columns != _undefined && update_columns != null)
          'update_columns':
              (update_columns as List<Enum$ingredient_family_update_column>),
        if (where != _undefined)
          'where': (where as Input$ingredient_family_bool_exp?),
      }));
  CopyWith$Input$ingredient_family_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith$Input$ingredient_family_bool_exp.stub(_then(_instance))
        : CopyWith$Input$ingredient_family_bool_exp(
            local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$ingredient_family_on_conflict<TRes>
    implements CopyWith$Input$ingredient_family_on_conflict<TRes> {
  _CopyWithStubImpl$Input$ingredient_family_on_conflict(this._res);

  TRes _res;

  call({
    Enum$ingredient_family_constraint? constraint,
    List<Enum$ingredient_family_update_column>? update_columns,
    Input$ingredient_family_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$ingredient_family_bool_exp<TRes> get where =>
      CopyWith$Input$ingredient_family_bool_exp.stub(_res);
}

class Input$ingredient_family_order_by {
  factory Input$ingredient_family_order_by({
    Enum$order_by? iconPath,
    Enum$order_by? id,
    Enum$order_by? name,
    Enum$order_by? slug,
    Enum$order_by? type,
  }) =>
      Input$ingredient_family_order_by._({
        if (iconPath != null) r'iconPath': iconPath,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$ingredient_family_order_by._(this._$data);

  factory Input$ingredient_family_order_by.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('iconPath')) {
      final l$iconPath = data['iconPath'];
      result$data['iconPath'] = l$iconPath == null
          ? null
          : fromJson$Enum$order_by((l$iconPath as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$order_by((l$name as String));
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] =
          l$slug == null ? null : fromJson$Enum$order_by((l$slug as String));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$order_by((l$type as String));
    }
    return Input$ingredient_family_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get iconPath => (_$data['iconPath'] as Enum$order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Enum$order_by? get name => (_$data['name'] as Enum$order_by?);
  Enum$order_by? get slug => (_$data['slug'] as Enum$order_by?);
  Enum$order_by? get type => (_$data['type'] as Enum$order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('iconPath')) {
      final l$iconPath = iconPath;
      result$data['iconPath'] =
          l$iconPath == null ? null : toJson$Enum$order_by(l$iconPath);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$order_by(l$name);
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] =
          l$slug == null ? null : toJson$Enum$order_by(l$slug);
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$order_by(l$type);
    }
    return result$data;
  }

  CopyWith$Input$ingredient_family_order_by<Input$ingredient_family_order_by>
      get copyWith => CopyWith$Input$ingredient_family_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredient_family_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$iconPath = iconPath;
    final lOther$iconPath = other.iconPath;
    if (_$data.containsKey('iconPath') !=
        other._$data.containsKey('iconPath')) {
      return false;
    }
    if (l$iconPath != lOther$iconPath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$iconPath = iconPath;
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('iconPath') ? l$iconPath : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredient_family_order_by<TRes> {
  factory CopyWith$Input$ingredient_family_order_by(
    Input$ingredient_family_order_by instance,
    TRes Function(Input$ingredient_family_order_by) then,
  ) = _CopyWithImpl$Input$ingredient_family_order_by;

  factory CopyWith$Input$ingredient_family_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredient_family_order_by;

  TRes call({
    Enum$order_by? iconPath,
    Enum$order_by? id,
    Enum$order_by? name,
    Enum$order_by? slug,
    Enum$order_by? type,
  });
}

class _CopyWithImpl$Input$ingredient_family_order_by<TRes>
    implements CopyWith$Input$ingredient_family_order_by<TRes> {
  _CopyWithImpl$Input$ingredient_family_order_by(
    this._instance,
    this._then,
  );

  final Input$ingredient_family_order_by _instance;

  final TRes Function(Input$ingredient_family_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? iconPath = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$ingredient_family_order_by._({
        ..._instance._$data,
        if (iconPath != _undefined) 'iconPath': (iconPath as Enum$order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
        if (name != _undefined) 'name': (name as Enum$order_by?),
        if (slug != _undefined) 'slug': (slug as Enum$order_by?),
        if (type != _undefined) 'type': (type as Enum$order_by?),
      }));
}

class _CopyWithStubImpl$Input$ingredient_family_order_by<TRes>
    implements CopyWith$Input$ingredient_family_order_by<TRes> {
  _CopyWithStubImpl$Input$ingredient_family_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? iconPath,
    Enum$order_by? id,
    Enum$order_by? name,
    Enum$order_by? slug,
    Enum$order_by? type,
  }) =>
      _res;
}

class Input$ingredient_family_pk_columns_input {
  factory Input$ingredient_family_pk_columns_input({required String id}) =>
      Input$ingredient_family_pk_columns_input._({
        r'id': id,
      });

  Input$ingredient_family_pk_columns_input._(this._$data);

  factory Input$ingredient_family_pk_columns_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$ingredient_family_pk_columns_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$ingredient_family_pk_columns_input<
          Input$ingredient_family_pk_columns_input>
      get copyWith => CopyWith$Input$ingredient_family_pk_columns_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredient_family_pk_columns_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$ingredient_family_pk_columns_input<TRes> {
  factory CopyWith$Input$ingredient_family_pk_columns_input(
    Input$ingredient_family_pk_columns_input instance,
    TRes Function(Input$ingredient_family_pk_columns_input) then,
  ) = _CopyWithImpl$Input$ingredient_family_pk_columns_input;

  factory CopyWith$Input$ingredient_family_pk_columns_input.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredient_family_pk_columns_input;

  TRes call({String? id});
}

class _CopyWithImpl$Input$ingredient_family_pk_columns_input<TRes>
    implements CopyWith$Input$ingredient_family_pk_columns_input<TRes> {
  _CopyWithImpl$Input$ingredient_family_pk_columns_input(
    this._instance,
    this._then,
  );

  final Input$ingredient_family_pk_columns_input _instance;

  final TRes Function(Input$ingredient_family_pk_columns_input) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Input$ingredient_family_pk_columns_input._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$ingredient_family_pk_columns_input<TRes>
    implements CopyWith$Input$ingredient_family_pk_columns_input<TRes> {
  _CopyWithStubImpl$Input$ingredient_family_pk_columns_input(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$ingredient_family_set_input {
  factory Input$ingredient_family_set_input({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  }) =>
      Input$ingredient_family_set_input._({
        if (iconPath != null) r'iconPath': iconPath,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$ingredient_family_set_input._(this._$data);

  factory Input$ingredient_family_set_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('iconPath')) {
      final l$iconPath = data['iconPath'];
      result$data['iconPath'] = (l$iconPath as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    return Input$ingredient_family_set_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get iconPath => (_$data['iconPath'] as String?);
  String? get id => (_$data['id'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get slug => (_$data['slug'] as String?);
  String? get type => (_$data['type'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('iconPath')) {
      final l$iconPath = iconPath;
      result$data['iconPath'] = l$iconPath;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    return result$data;
  }

  CopyWith$Input$ingredient_family_set_input<Input$ingredient_family_set_input>
      get copyWith => CopyWith$Input$ingredient_family_set_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredient_family_set_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$iconPath = iconPath;
    final lOther$iconPath = other.iconPath;
    if (_$data.containsKey('iconPath') !=
        other._$data.containsKey('iconPath')) {
      return false;
    }
    if (l$iconPath != lOther$iconPath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$iconPath = iconPath;
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('iconPath') ? l$iconPath : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredient_family_set_input<TRes> {
  factory CopyWith$Input$ingredient_family_set_input(
    Input$ingredient_family_set_input instance,
    TRes Function(Input$ingredient_family_set_input) then,
  ) = _CopyWithImpl$Input$ingredient_family_set_input;

  factory CopyWith$Input$ingredient_family_set_input.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredient_family_set_input;

  TRes call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  });
}

class _CopyWithImpl$Input$ingredient_family_set_input<TRes>
    implements CopyWith$Input$ingredient_family_set_input<TRes> {
  _CopyWithImpl$Input$ingredient_family_set_input(
    this._instance,
    this._then,
  );

  final Input$ingredient_family_set_input _instance;

  final TRes Function(Input$ingredient_family_set_input) _then;

  static const _undefined = {};

  TRes call({
    Object? iconPath = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$ingredient_family_set_input._({
        ..._instance._$data,
        if (iconPath != _undefined) 'iconPath': (iconPath as String?),
        if (id != _undefined) 'id': (id as String?),
        if (name != _undefined) 'name': (name as String?),
        if (slug != _undefined) 'slug': (slug as String?),
        if (type != _undefined) 'type': (type as String?),
      }));
}

class _CopyWithStubImpl$Input$ingredient_family_set_input<TRes>
    implements CopyWith$Input$ingredient_family_set_input<TRes> {
  _CopyWithStubImpl$Input$ingredient_family_set_input(this._res);

  TRes _res;

  call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  }) =>
      _res;
}

class Input$ingredient_family_stream_cursor_input {
  factory Input$ingredient_family_stream_cursor_input({
    required Input$ingredient_family_stream_cursor_value_input initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      Input$ingredient_family_stream_cursor_input._({
        r'initial_value': initial_value,
        if (ordering != null) r'ordering': ordering,
      });

  Input$ingredient_family_stream_cursor_input._(this._$data);

  factory Input$ingredient_family_stream_cursor_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initial_value = data['initial_value'];
    result$data['initial_value'] =
        Input$ingredient_family_stream_cursor_value_input.fromJson(
            (l$initial_value as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson$Enum$cursor_ordering((l$ordering as String));
    }
    return Input$ingredient_family_stream_cursor_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ingredient_family_stream_cursor_value_input get initial_value =>
      (_$data['initial_value']
          as Input$ingredient_family_stream_cursor_value_input);
  Enum$cursor_ordering? get ordering =>
      (_$data['ordering'] as Enum$cursor_ordering?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initial_value = initial_value;
    result$data['initial_value'] = l$initial_value.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson$Enum$cursor_ordering(l$ordering);
    }
    return result$data;
  }

  CopyWith$Input$ingredient_family_stream_cursor_input<
          Input$ingredient_family_stream_cursor_input>
      get copyWith => CopyWith$Input$ingredient_family_stream_cursor_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredient_family_stream_cursor_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initial_value = initial_value;
    final lOther$initial_value = other.initial_value;
    if (l$initial_value != lOther$initial_value) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initial_value = initial_value;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initial_value,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredient_family_stream_cursor_input<TRes> {
  factory CopyWith$Input$ingredient_family_stream_cursor_input(
    Input$ingredient_family_stream_cursor_input instance,
    TRes Function(Input$ingredient_family_stream_cursor_input) then,
  ) = _CopyWithImpl$Input$ingredient_family_stream_cursor_input;

  factory CopyWith$Input$ingredient_family_stream_cursor_input.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredient_family_stream_cursor_input;

  TRes call({
    Input$ingredient_family_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  });
  CopyWith$Input$ingredient_family_stream_cursor_value_input<TRes>
      get initial_value;
}

class _CopyWithImpl$Input$ingredient_family_stream_cursor_input<TRes>
    implements CopyWith$Input$ingredient_family_stream_cursor_input<TRes> {
  _CopyWithImpl$Input$ingredient_family_stream_cursor_input(
    this._instance,
    this._then,
  );

  final Input$ingredient_family_stream_cursor_input _instance;

  final TRes Function(Input$ingredient_family_stream_cursor_input) _then;

  static const _undefined = {};

  TRes call({
    Object? initial_value = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input$ingredient_family_stream_cursor_input._({
        ..._instance._$data,
        if (initial_value != _undefined && initial_value != null)
          'initial_value': (initial_value
              as Input$ingredient_family_stream_cursor_value_input),
        if (ordering != _undefined)
          'ordering': (ordering as Enum$cursor_ordering?),
      }));
  CopyWith$Input$ingredient_family_stream_cursor_value_input<TRes>
      get initial_value {
    final local$initial_value = _instance.initial_value;
    return CopyWith$Input$ingredient_family_stream_cursor_value_input(
        local$initial_value, (e) => call(initial_value: e));
  }
}

class _CopyWithStubImpl$Input$ingredient_family_stream_cursor_input<TRes>
    implements CopyWith$Input$ingredient_family_stream_cursor_input<TRes> {
  _CopyWithStubImpl$Input$ingredient_family_stream_cursor_input(this._res);

  TRes _res;

  call({
    Input$ingredient_family_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      _res;
  CopyWith$Input$ingredient_family_stream_cursor_value_input<TRes>
      get initial_value =>
          CopyWith$Input$ingredient_family_stream_cursor_value_input.stub(_res);
}

class Input$ingredient_family_stream_cursor_value_input {
  factory Input$ingredient_family_stream_cursor_value_input({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  }) =>
      Input$ingredient_family_stream_cursor_value_input._({
        if (iconPath != null) r'iconPath': iconPath,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$ingredient_family_stream_cursor_value_input._(this._$data);

  factory Input$ingredient_family_stream_cursor_value_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('iconPath')) {
      final l$iconPath = data['iconPath'];
      result$data['iconPath'] = (l$iconPath as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    return Input$ingredient_family_stream_cursor_value_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get iconPath => (_$data['iconPath'] as String?);
  String? get id => (_$data['id'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get slug => (_$data['slug'] as String?);
  String? get type => (_$data['type'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('iconPath')) {
      final l$iconPath = iconPath;
      result$data['iconPath'] = l$iconPath;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    return result$data;
  }

  CopyWith$Input$ingredient_family_stream_cursor_value_input<
          Input$ingredient_family_stream_cursor_value_input>
      get copyWith =>
          CopyWith$Input$ingredient_family_stream_cursor_value_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredient_family_stream_cursor_value_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$iconPath = iconPath;
    final lOther$iconPath = other.iconPath;
    if (_$data.containsKey('iconPath') !=
        other._$data.containsKey('iconPath')) {
      return false;
    }
    if (l$iconPath != lOther$iconPath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$iconPath = iconPath;
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('iconPath') ? l$iconPath : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredient_family_stream_cursor_value_input<
    TRes> {
  factory CopyWith$Input$ingredient_family_stream_cursor_value_input(
    Input$ingredient_family_stream_cursor_value_input instance,
    TRes Function(Input$ingredient_family_stream_cursor_value_input) then,
  ) = _CopyWithImpl$Input$ingredient_family_stream_cursor_value_input;

  factory CopyWith$Input$ingredient_family_stream_cursor_value_input.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ingredient_family_stream_cursor_value_input;

  TRes call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  });
}

class _CopyWithImpl$Input$ingredient_family_stream_cursor_value_input<TRes>
    implements
        CopyWith$Input$ingredient_family_stream_cursor_value_input<TRes> {
  _CopyWithImpl$Input$ingredient_family_stream_cursor_value_input(
    this._instance,
    this._then,
  );

  final Input$ingredient_family_stream_cursor_value_input _instance;

  final TRes Function(Input$ingredient_family_stream_cursor_value_input) _then;

  static const _undefined = {};

  TRes call({
    Object? iconPath = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$ingredient_family_stream_cursor_value_input._({
        ..._instance._$data,
        if (iconPath != _undefined) 'iconPath': (iconPath as String?),
        if (id != _undefined) 'id': (id as String?),
        if (name != _undefined) 'name': (name as String?),
        if (slug != _undefined) 'slug': (slug as String?),
        if (type != _undefined) 'type': (type as String?),
      }));
}

class _CopyWithStubImpl$Input$ingredient_family_stream_cursor_value_input<TRes>
    implements
        CopyWith$Input$ingredient_family_stream_cursor_value_input<TRes> {
  _CopyWithStubImpl$Input$ingredient_family_stream_cursor_value_input(
      this._res);

  TRes _res;

  call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
  }) =>
      _res;
}

class Input$ingredient_family_updates {
  factory Input$ingredient_family_updates({
    Input$ingredient_family_set_input? $_set,
    required Input$ingredient_family_bool_exp where,
  }) =>
      Input$ingredient_family_updates._({
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input$ingredient_family_updates._(this._$data);

  factory Input$ingredient_family_updates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input$ingredient_family_set_input.fromJson(
              (l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input$ingredient_family_bool_exp.fromJson(
        (l$where as Map<String, dynamic>));
    return Input$ingredient_family_updates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ingredient_family_set_input? get $_set =>
      (_$data['_set'] as Input$ingredient_family_set_input?);
  Input$ingredient_family_bool_exp get where =>
      (_$data['where'] as Input$ingredient_family_bool_exp);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Input$ingredient_family_updates<Input$ingredient_family_updates>
      get copyWith => CopyWith$Input$ingredient_family_updates(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredient_family_updates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith$Input$ingredient_family_updates<TRes> {
  factory CopyWith$Input$ingredient_family_updates(
    Input$ingredient_family_updates instance,
    TRes Function(Input$ingredient_family_updates) then,
  ) = _CopyWithImpl$Input$ingredient_family_updates;

  factory CopyWith$Input$ingredient_family_updates.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredient_family_updates;

  TRes call({
    Input$ingredient_family_set_input? $_set,
    Input$ingredient_family_bool_exp? where,
  });
  CopyWith$Input$ingredient_family_set_input<TRes> get $_set;
  CopyWith$Input$ingredient_family_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$ingredient_family_updates<TRes>
    implements CopyWith$Input$ingredient_family_updates<TRes> {
  _CopyWithImpl$Input$ingredient_family_updates(
    this._instance,
    this._then,
  );

  final Input$ingredient_family_updates _instance;

  final TRes Function(Input$ingredient_family_updates) _then;

  static const _undefined = {};

  TRes call({
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$ingredient_family_updates._({
        ..._instance._$data,
        if ($_set != _undefined)
          '_set': ($_set as Input$ingredient_family_set_input?),
        if (where != _undefined && where != null)
          'where': (where as Input$ingredient_family_bool_exp),
      }));
  CopyWith$Input$ingredient_family_set_input<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith$Input$ingredient_family_set_input.stub(_then(_instance))
        : CopyWith$Input$ingredient_family_set_input(
            local$$_set, (e) => call($_set: e));
  }

  CopyWith$Input$ingredient_family_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$ingredient_family_bool_exp(
        local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$ingredient_family_updates<TRes>
    implements CopyWith$Input$ingredient_family_updates<TRes> {
  _CopyWithStubImpl$Input$ingredient_family_updates(this._res);

  TRes _res;

  call({
    Input$ingredient_family_set_input? $_set,
    Input$ingredient_family_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$ingredient_family_set_input<TRes> get $_set =>
      CopyWith$Input$ingredient_family_set_input.stub(_res);
  CopyWith$Input$ingredient_family_bool_exp<TRes> get where =>
      CopyWith$Input$ingredient_family_bool_exp.stub(_res);
}

class Input$ingredients_bool_exp {
  factory Input$ingredients_bool_exp({
    List<Input$ingredients_bool_exp>? $_and,
    Input$String_comparison_exp? $_family,
    Input$ingredients_bool_exp? $_not,
    List<Input$ingredients_bool_exp>? $_or,
    Input$bridge_recipes_ingredients_bool_exp? bridge_recipes_ingredients,
    Input$bridge_recipes_ingredients_aggregate_bool_exp?
        bridge_recipes_ingredients_aggregate,
    Input$String_comparison_exp? country,
    Input$ingredient_family_bool_exp? family,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? imagePath,
    Input$String_comparison_exp? name,
    Input$String_comparison_exp? slug,
    Input$String_comparison_exp? type,
  }) =>
      Input$ingredients_bool_exp._({
        if ($_and != null) r'_and': $_and,
        if ($_family != null) r'_family': $_family,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (bridge_recipes_ingredients != null)
          r'bridge_recipes_ingredients': bridge_recipes_ingredients,
        if (bridge_recipes_ingredients_aggregate != null)
          r'bridge_recipes_ingredients_aggregate':
              bridge_recipes_ingredients_aggregate,
        if (country != null) r'country': country,
        if (family != null) r'family': family,
        if (id != null) r'id': id,
        if (imagePath != null) r'imagePath': imagePath,
        if (name != null) r'name': name,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$ingredients_bool_exp._(this._$data);

  factory Input$ingredients_bool_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) =>
              Input$ingredients_bool_exp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_family')) {
      final l$$_family = data['_family'];
      result$data['_family'] = l$$_family == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$$_family as Map<String, dynamic>));
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input$ingredients_bool_exp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) =>
              Input$ingredients_bool_exp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('bridge_recipes_ingredients')) {
      final l$bridge_recipes_ingredients = data['bridge_recipes_ingredients'];
      result$data['bridge_recipes_ingredients'] =
          l$bridge_recipes_ingredients == null
              ? null
              : Input$bridge_recipes_ingredients_bool_exp.fromJson(
                  (l$bridge_recipes_ingredients as Map<String, dynamic>));
    }
    if (data.containsKey('bridge_recipes_ingredients_aggregate')) {
      final l$bridge_recipes_ingredients_aggregate =
          data['bridge_recipes_ingredients_aggregate'];
      result$data['bridge_recipes_ingredients_aggregate'] =
          l$bridge_recipes_ingredients_aggregate == null
              ? null
              : Input$bridge_recipes_ingredients_aggregate_bool_exp.fromJson(
                  (l$bridge_recipes_ingredients_aggregate
                      as Map<String, dynamic>));
    }
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = l$country == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$country as Map<String, dynamic>));
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input$ingredient_family_bool_exp.fromJson(
              (l$family as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('imagePath')) {
      final l$imagePath = data['imagePath'];
      result$data['imagePath'] = l$imagePath == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$imagePath as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = l$slug == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$slug as Map<String, dynamic>));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$type as Map<String, dynamic>));
    }
    return Input$ingredients_bool_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ingredients_bool_exp>? get $_and =>
      (_$data['_and'] as List<Input$ingredients_bool_exp>?);
  Input$String_comparison_exp? get $_family =>
      (_$data['_family'] as Input$String_comparison_exp?);
  Input$ingredients_bool_exp? get $_not =>
      (_$data['_not'] as Input$ingredients_bool_exp?);
  List<Input$ingredients_bool_exp>? get $_or =>
      (_$data['_or'] as List<Input$ingredients_bool_exp>?);
  Input$bridge_recipes_ingredients_bool_exp? get bridge_recipes_ingredients =>
      (_$data['bridge_recipes_ingredients']
          as Input$bridge_recipes_ingredients_bool_exp?);
  Input$bridge_recipes_ingredients_aggregate_bool_exp?
      get bridge_recipes_ingredients_aggregate =>
          (_$data['bridge_recipes_ingredients_aggregate']
              as Input$bridge_recipes_ingredients_aggregate_bool_exp?);
  Input$String_comparison_exp? get country =>
      (_$data['country'] as Input$String_comparison_exp?);
  Input$ingredient_family_bool_exp? get family =>
      (_$data['family'] as Input$ingredient_family_bool_exp?);
  Input$String_comparison_exp? get id =>
      (_$data['id'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get imagePath =>
      (_$data['imagePath'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get name =>
      (_$data['name'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get slug =>
      (_$data['slug'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get type =>
      (_$data['type'] as Input$String_comparison_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_family')) {
      final l$$_family = $_family;
      result$data['_family'] = l$$_family?.toJson();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('bridge_recipes_ingredients')) {
      final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
      result$data['bridge_recipes_ingredients'] =
          l$bridge_recipes_ingredients?.toJson();
    }
    if (_$data.containsKey('bridge_recipes_ingredients_aggregate')) {
      final l$bridge_recipes_ingredients_aggregate =
          bridge_recipes_ingredients_aggregate;
      result$data['bridge_recipes_ingredients_aggregate'] =
          l$bridge_recipes_ingredients_aggregate?.toJson();
    }
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] = l$country?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('imagePath')) {
      final l$imagePath = imagePath;
      result$data['imagePath'] = l$imagePath?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug?.toJson();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ingredients_bool_exp<Input$ingredients_bool_exp>
      get copyWith => CopyWith$Input$ingredients_bool_exp(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredients_bool_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_family = $_family;
    final lOther$$_family = other.$_family;
    if (_$data.containsKey('_family') != other._$data.containsKey('_family')) {
      return false;
    }
    if (l$$_family != lOther$$_family) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
    final lOther$bridge_recipes_ingredients = other.bridge_recipes_ingredients;
    if (_$data.containsKey('bridge_recipes_ingredients') !=
        other._$data.containsKey('bridge_recipes_ingredients')) {
      return false;
    }
    if (l$bridge_recipes_ingredients != lOther$bridge_recipes_ingredients) {
      return false;
    }
    final l$bridge_recipes_ingredients_aggregate =
        bridge_recipes_ingredients_aggregate;
    final lOther$bridge_recipes_ingredients_aggregate =
        other.bridge_recipes_ingredients_aggregate;
    if (_$data.containsKey('bridge_recipes_ingredients_aggregate') !=
        other._$data.containsKey('bridge_recipes_ingredients_aggregate')) {
      return false;
    }
    if (l$bridge_recipes_ingredients_aggregate !=
        lOther$bridge_recipes_ingredients_aggregate) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (_$data.containsKey('imagePath') !=
        other._$data.containsKey('imagePath')) {
      return false;
    }
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_family = $_family;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
    final l$bridge_recipes_ingredients_aggregate =
        bridge_recipes_ingredients_aggregate;
    final l$country = country;
    final l$family = family;
    final l$id = id;
    final l$imagePath = imagePath;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
              ? null
              : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_family') ? l$$_family : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
              ? null
              : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('bridge_recipes_ingredients')
          ? l$bridge_recipes_ingredients
          : const {},
      _$data.containsKey('bridge_recipes_ingredients_aggregate')
          ? l$bridge_recipes_ingredients_aggregate
          : const {},
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('imagePath') ? l$imagePath : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredients_bool_exp<TRes> {
  factory CopyWith$Input$ingredients_bool_exp(
    Input$ingredients_bool_exp instance,
    TRes Function(Input$ingredients_bool_exp) then,
  ) = _CopyWithImpl$Input$ingredients_bool_exp;

  factory CopyWith$Input$ingredients_bool_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredients_bool_exp;

  TRes call({
    List<Input$ingredients_bool_exp>? $_and,
    Input$String_comparison_exp? $_family,
    Input$ingredients_bool_exp? $_not,
    List<Input$ingredients_bool_exp>? $_or,
    Input$bridge_recipes_ingredients_bool_exp? bridge_recipes_ingredients,
    Input$bridge_recipes_ingredients_aggregate_bool_exp?
        bridge_recipes_ingredients_aggregate,
    Input$String_comparison_exp? country,
    Input$ingredient_family_bool_exp? family,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? imagePath,
    Input$String_comparison_exp? name,
    Input$String_comparison_exp? slug,
    Input$String_comparison_exp? type,
  });
  TRes $_and(
      Iterable<Input$ingredients_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$ingredients_bool_exp<
                      Input$ingredients_bool_exp>>?)
          _fn);
  CopyWith$Input$String_comparison_exp<TRes> get $_family;
  CopyWith$Input$ingredients_bool_exp<TRes> get $_not;
  TRes $_or(
      Iterable<Input$ingredients_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$ingredients_bool_exp<
                      Input$ingredients_bool_exp>>?)
          _fn);
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes>
      get bridge_recipes_ingredients;
  CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp<TRes>
      get bridge_recipes_ingredients_aggregate;
  CopyWith$Input$String_comparison_exp<TRes> get country;
  CopyWith$Input$ingredient_family_bool_exp<TRes> get family;
  CopyWith$Input$String_comparison_exp<TRes> get id;
  CopyWith$Input$String_comparison_exp<TRes> get imagePath;
  CopyWith$Input$String_comparison_exp<TRes> get name;
  CopyWith$Input$String_comparison_exp<TRes> get slug;
  CopyWith$Input$String_comparison_exp<TRes> get type;
}

class _CopyWithImpl$Input$ingredients_bool_exp<TRes>
    implements CopyWith$Input$ingredients_bool_exp<TRes> {
  _CopyWithImpl$Input$ingredients_bool_exp(
    this._instance,
    this._then,
  );

  final Input$ingredients_bool_exp _instance;

  final TRes Function(Input$ingredients_bool_exp) _then;

  static const _undefined = {};

  TRes call({
    Object? $_and = _undefined,
    Object? $_family = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? bridge_recipes_ingredients = _undefined,
    Object? bridge_recipes_ingredients_aggregate = _undefined,
    Object? country = _undefined,
    Object? family = _undefined,
    Object? id = _undefined,
    Object? imagePath = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$ingredients_bool_exp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input$ingredients_bool_exp>?),
        if ($_family != _undefined)
          '_family': ($_family as Input$String_comparison_exp?),
        if ($_not != _undefined) '_not': ($_not as Input$ingredients_bool_exp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input$ingredients_bool_exp>?),
        if (bridge_recipes_ingredients != _undefined)
          'bridge_recipes_ingredients': (bridge_recipes_ingredients
              as Input$bridge_recipes_ingredients_bool_exp?),
        if (bridge_recipes_ingredients_aggregate != _undefined)
          'bridge_recipes_ingredients_aggregate':
              (bridge_recipes_ingredients_aggregate
                  as Input$bridge_recipes_ingredients_aggregate_bool_exp?),
        if (country != _undefined)
          'country': (country as Input$String_comparison_exp?),
        if (family != _undefined)
          'family': (family as Input$ingredient_family_bool_exp?),
        if (id != _undefined) 'id': (id as Input$String_comparison_exp?),
        if (imagePath != _undefined)
          'imagePath': (imagePath as Input$String_comparison_exp?),
        if (name != _undefined) 'name': (name as Input$String_comparison_exp?),
        if (slug != _undefined) 'slug': (slug as Input$String_comparison_exp?),
        if (type != _undefined) 'type': (type as Input$String_comparison_exp?),
      }));
  TRes $_and(
          Iterable<Input$ingredients_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$ingredients_bool_exp<
                          Input$ingredients_bool_exp>>?)
              _fn) =>
      call(
          $_and: _fn(
              _instance.$_and?.map((e) => CopyWith$Input$ingredients_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$String_comparison_exp<TRes> get $_family {
    final local$$_family = _instance.$_family;
    return local$$_family == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$$_family, (e) => call($_family: e));
  }

  CopyWith$Input$ingredients_bool_exp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith$Input$ingredients_bool_exp.stub(_then(_instance))
        : CopyWith$Input$ingredients_bool_exp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input$ingredients_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$ingredients_bool_exp<
                          Input$ingredients_bool_exp>>?)
              _fn) =>
      call(
          $_or: _fn(
              _instance.$_or?.map((e) => CopyWith$Input$ingredients_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes>
      get bridge_recipes_ingredients {
    final local$bridge_recipes_ingredients =
        _instance.bridge_recipes_ingredients;
    return local$bridge_recipes_ingredients == null
        ? CopyWith$Input$bridge_recipes_ingredients_bool_exp.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_bool_exp(
            local$bridge_recipes_ingredients,
            (e) => call(bridge_recipes_ingredients: e));
  }

  CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp<TRes>
      get bridge_recipes_ingredients_aggregate {
    final local$bridge_recipes_ingredients_aggregate =
        _instance.bridge_recipes_ingredients_aggregate;
    return local$bridge_recipes_ingredients_aggregate == null
        ? CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp(
            local$bridge_recipes_ingredients_aggregate,
            (e) => call(bridge_recipes_ingredients_aggregate: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get country {
    final local$country = _instance.country;
    return local$country == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$country, (e) => call(country: e));
  }

  CopyWith$Input$ingredient_family_bool_exp<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Input$ingredient_family_bool_exp.stub(_then(_instance))
        : CopyWith$Input$ingredient_family_bool_exp(
            local$family, (e) => call(family: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(local$id, (e) => call(id: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get imagePath {
    final local$imagePath = _instance.imagePath;
    return local$imagePath == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$imagePath, (e) => call(imagePath: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get slug {
    final local$slug = _instance.slug;
    return local$slug == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$slug, (e) => call(slug: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$type, (e) => call(type: e));
  }
}

class _CopyWithStubImpl$Input$ingredients_bool_exp<TRes>
    implements CopyWith$Input$ingredients_bool_exp<TRes> {
  _CopyWithStubImpl$Input$ingredients_bool_exp(this._res);

  TRes _res;

  call({
    List<Input$ingredients_bool_exp>? $_and,
    Input$String_comparison_exp? $_family,
    Input$ingredients_bool_exp? $_not,
    List<Input$ingredients_bool_exp>? $_or,
    Input$bridge_recipes_ingredients_bool_exp? bridge_recipes_ingredients,
    Input$bridge_recipes_ingredients_aggregate_bool_exp?
        bridge_recipes_ingredients_aggregate,
    Input$String_comparison_exp? country,
    Input$ingredient_family_bool_exp? family,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? imagePath,
    Input$String_comparison_exp? name,
    Input$String_comparison_exp? slug,
    Input$String_comparison_exp? type,
  }) =>
      _res;
  $_and(_fn) => _res;
  CopyWith$Input$String_comparison_exp<TRes> get $_family =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$ingredients_bool_exp<TRes> get $_not =>
      CopyWith$Input$ingredients_bool_exp.stub(_res);
  $_or(_fn) => _res;
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes>
      get bridge_recipes_ingredients =>
          CopyWith$Input$bridge_recipes_ingredients_bool_exp.stub(_res);
  CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp<TRes>
      get bridge_recipes_ingredients_aggregate =>
          CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp.stub(
              _res);
  CopyWith$Input$String_comparison_exp<TRes> get country =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$ingredient_family_bool_exp<TRes> get family =>
      CopyWith$Input$ingredient_family_bool_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get id =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get imagePath =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get name =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get slug =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get type =>
      CopyWith$Input$String_comparison_exp.stub(_res);
}

class Input$ingredients_insert_input {
  factory Input$ingredients_insert_input({
    String? $_family,
    Input$bridge_recipes_ingredients_arr_rel_insert_input?
        bridge_recipes_ingredients,
    required String country,
    Input$ingredient_family_obj_rel_insert_input? family,
    required String id,
    String? imagePath,
    required String name,
    required String slug,
    required String type,
  }) =>
      Input$ingredients_insert_input._({
        if ($_family != null) r'_family': $_family,
        if (bridge_recipes_ingredients != null)
          r'bridge_recipes_ingredients': bridge_recipes_ingredients,
        r'country': country,
        if (family != null) r'family': family,
        r'id': id,
        if (imagePath != null) r'imagePath': imagePath,
        r'name': name,
        r'slug': slug,
        r'type': type,
      });

  Input$ingredients_insert_input._(this._$data);

  factory Input$ingredients_insert_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_family')) {
      final l$$_family = data['_family'];
      result$data['_family'] = (l$$_family as String?);
    }
    if (data.containsKey('bridge_recipes_ingredients')) {
      final l$bridge_recipes_ingredients = data['bridge_recipes_ingredients'];
      result$data['bridge_recipes_ingredients'] =
          l$bridge_recipes_ingredients == null
              ? null
              : Input$bridge_recipes_ingredients_arr_rel_insert_input.fromJson(
                  (l$bridge_recipes_ingredients as Map<String, dynamic>));
    }
    final l$country = data['country'];
    result$data['country'] = (l$country as String);
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input$ingredient_family_obj_rel_insert_input.fromJson(
              (l$family as Map<String, dynamic>));
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('imagePath')) {
      final l$imagePath = data['imagePath'];
      result$data['imagePath'] = (l$imagePath as String?);
    }
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$slug = data['slug'];
    result$data['slug'] = (l$slug as String);
    final l$type = data['type'];
    result$data['type'] = (l$type as String);
    return Input$ingredients_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_family => (_$data['_family'] as String?);
  Input$bridge_recipes_ingredients_arr_rel_insert_input?
      get bridge_recipes_ingredients => (_$data['bridge_recipes_ingredients']
          as Input$bridge_recipes_ingredients_arr_rel_insert_input?);
  String get country => (_$data['country'] as String);
  Input$ingredient_family_obj_rel_insert_input? get family =>
      (_$data['family'] as Input$ingredient_family_obj_rel_insert_input?);
  String get id => (_$data['id'] as String);
  String? get imagePath => (_$data['imagePath'] as String?);
  String get name => (_$data['name'] as String);
  String get slug => (_$data['slug'] as String);
  String get type => (_$data['type'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_family')) {
      final l$$_family = $_family;
      result$data['_family'] = l$$_family;
    }
    if (_$data.containsKey('bridge_recipes_ingredients')) {
      final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
      result$data['bridge_recipes_ingredients'] =
          l$bridge_recipes_ingredients?.toJson();
    }
    final l$country = country;
    result$data['country'] = l$country;
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('imagePath')) {
      final l$imagePath = imagePath;
      result$data['imagePath'] = l$imagePath;
    }
    final l$name = name;
    result$data['name'] = l$name;
    final l$slug = slug;
    result$data['slug'] = l$slug;
    final l$type = type;
    result$data['type'] = l$type;
    return result$data;
  }

  CopyWith$Input$ingredients_insert_input<Input$ingredients_insert_input>
      get copyWith => CopyWith$Input$ingredients_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredients_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_family = $_family;
    final lOther$$_family = other.$_family;
    if (_$data.containsKey('_family') != other._$data.containsKey('_family')) {
      return false;
    }
    if (l$$_family != lOther$$_family) {
      return false;
    }
    final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
    final lOther$bridge_recipes_ingredients = other.bridge_recipes_ingredients;
    if (_$data.containsKey('bridge_recipes_ingredients') !=
        other._$data.containsKey('bridge_recipes_ingredients')) {
      return false;
    }
    if (l$bridge_recipes_ingredients != lOther$bridge_recipes_ingredients) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (_$data.containsKey('imagePath') !=
        other._$data.containsKey('imagePath')) {
      return false;
    }
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_family = $_family;
    final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
    final l$country = country;
    final l$family = family;
    final l$id = id;
    final l$imagePath = imagePath;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('_family') ? l$$_family : const {},
      _$data.containsKey('bridge_recipes_ingredients')
          ? l$bridge_recipes_ingredients
          : const {},
      l$country,
      _$data.containsKey('family') ? l$family : const {},
      l$id,
      _$data.containsKey('imagePath') ? l$imagePath : const {},
      l$name,
      l$slug,
      l$type,
    ]);
  }
}

abstract class CopyWith$Input$ingredients_insert_input<TRes> {
  factory CopyWith$Input$ingredients_insert_input(
    Input$ingredients_insert_input instance,
    TRes Function(Input$ingredients_insert_input) then,
  ) = _CopyWithImpl$Input$ingredients_insert_input;

  factory CopyWith$Input$ingredients_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredients_insert_input;

  TRes call({
    String? $_family,
    Input$bridge_recipes_ingredients_arr_rel_insert_input?
        bridge_recipes_ingredients,
    String? country,
    Input$ingredient_family_obj_rel_insert_input? family,
    String? id,
    String? imagePath,
    String? name,
    String? slug,
    String? type,
  });
  CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input<TRes>
      get bridge_recipes_ingredients;
  CopyWith$Input$ingredient_family_obj_rel_insert_input<TRes> get family;
}

class _CopyWithImpl$Input$ingredients_insert_input<TRes>
    implements CopyWith$Input$ingredients_insert_input<TRes> {
  _CopyWithImpl$Input$ingredients_insert_input(
    this._instance,
    this._then,
  );

  final Input$ingredients_insert_input _instance;

  final TRes Function(Input$ingredients_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? $_family = _undefined,
    Object? bridge_recipes_ingredients = _undefined,
    Object? country = _undefined,
    Object? family = _undefined,
    Object? id = _undefined,
    Object? imagePath = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$ingredients_insert_input._({
        ..._instance._$data,
        if ($_family != _undefined) '_family': ($_family as String?),
        if (bridge_recipes_ingredients != _undefined)
          'bridge_recipes_ingredients': (bridge_recipes_ingredients
              as Input$bridge_recipes_ingredients_arr_rel_insert_input?),
        if (country != _undefined && country != null)
          'country': (country as String),
        if (family != _undefined)
          'family': (family as Input$ingredient_family_obj_rel_insert_input?),
        if (id != _undefined && id != null) 'id': (id as String),
        if (imagePath != _undefined) 'imagePath': (imagePath as String?),
        if (name != _undefined && name != null) 'name': (name as String),
        if (slug != _undefined && slug != null) 'slug': (slug as String),
        if (type != _undefined && type != null) 'type': (type as String),
      }));
  CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input<TRes>
      get bridge_recipes_ingredients {
    final local$bridge_recipes_ingredients =
        _instance.bridge_recipes_ingredients;
    return local$bridge_recipes_ingredients == null
        ? CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input(
            local$bridge_recipes_ingredients,
            (e) => call(bridge_recipes_ingredients: e));
  }

  CopyWith$Input$ingredient_family_obj_rel_insert_input<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Input$ingredient_family_obj_rel_insert_input.stub(
            _then(_instance))
        : CopyWith$Input$ingredient_family_obj_rel_insert_input(
            local$family, (e) => call(family: e));
  }
}

class _CopyWithStubImpl$Input$ingredients_insert_input<TRes>
    implements CopyWith$Input$ingredients_insert_input<TRes> {
  _CopyWithStubImpl$Input$ingredients_insert_input(this._res);

  TRes _res;

  call({
    String? $_family,
    Input$bridge_recipes_ingredients_arr_rel_insert_input?
        bridge_recipes_ingredients,
    String? country,
    Input$ingredient_family_obj_rel_insert_input? family,
    String? id,
    String? imagePath,
    String? name,
    String? slug,
    String? type,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input<TRes>
      get bridge_recipes_ingredients =>
          CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input.stub(
              _res);
  CopyWith$Input$ingredient_family_obj_rel_insert_input<TRes> get family =>
      CopyWith$Input$ingredient_family_obj_rel_insert_input.stub(_res);
}

class Input$ingredients_obj_rel_insert_input {
  factory Input$ingredients_obj_rel_insert_input({
    required Input$ingredients_insert_input data,
    Input$ingredients_on_conflict? on_conflict,
  }) =>
      Input$ingredients_obj_rel_insert_input._({
        r'data': data,
        if (on_conflict != null) r'on_conflict': on_conflict,
      });

  Input$ingredients_obj_rel_insert_input._(this._$data);

  factory Input$ingredients_obj_rel_insert_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input$ingredients_insert_input.fromJson(
        (l$data as Map<String, dynamic>));
    if (data.containsKey('on_conflict')) {
      final l$on_conflict = data['on_conflict'];
      result$data['on_conflict'] = l$on_conflict == null
          ? null
          : Input$ingredients_on_conflict.fromJson(
              (l$on_conflict as Map<String, dynamic>));
    }
    return Input$ingredients_obj_rel_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ingredients_insert_input get data =>
      (_$data['data'] as Input$ingredients_insert_input);
  Input$ingredients_on_conflict? get on_conflict =>
      (_$data['on_conflict'] as Input$ingredients_on_conflict?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    if (_$data.containsKey('on_conflict')) {
      final l$on_conflict = on_conflict;
      result$data['on_conflict'] = l$on_conflict?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ingredients_obj_rel_insert_input<
          Input$ingredients_obj_rel_insert_input>
      get copyWith => CopyWith$Input$ingredients_obj_rel_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredients_obj_rel_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (_$data.containsKey('on_conflict') !=
        other._$data.containsKey('on_conflict')) {
      return false;
    }
    if (l$on_conflict != lOther$on_conflict) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll([
      l$data,
      _$data.containsKey('on_conflict') ? l$on_conflict : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredients_obj_rel_insert_input<TRes> {
  factory CopyWith$Input$ingredients_obj_rel_insert_input(
    Input$ingredients_obj_rel_insert_input instance,
    TRes Function(Input$ingredients_obj_rel_insert_input) then,
  ) = _CopyWithImpl$Input$ingredients_obj_rel_insert_input;

  factory CopyWith$Input$ingredients_obj_rel_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredients_obj_rel_insert_input;

  TRes call({
    Input$ingredients_insert_input? data,
    Input$ingredients_on_conflict? on_conflict,
  });
  CopyWith$Input$ingredients_insert_input<TRes> get data;
  CopyWith$Input$ingredients_on_conflict<TRes> get on_conflict;
}

class _CopyWithImpl$Input$ingredients_obj_rel_insert_input<TRes>
    implements CopyWith$Input$ingredients_obj_rel_insert_input<TRes> {
  _CopyWithImpl$Input$ingredients_obj_rel_insert_input(
    this._instance,
    this._then,
  );

  final Input$ingredients_obj_rel_insert_input _instance;

  final TRes Function(Input$ingredients_obj_rel_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? data = _undefined,
    Object? on_conflict = _undefined,
  }) =>
      _then(Input$ingredients_obj_rel_insert_input._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$ingredients_insert_input),
        if (on_conflict != _undefined)
          'on_conflict': (on_conflict as Input$ingredients_on_conflict?),
      }));
  CopyWith$Input$ingredients_insert_input<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$ingredients_insert_input(
        local$data, (e) => call(data: e));
  }

  CopyWith$Input$ingredients_on_conflict<TRes> get on_conflict {
    final local$on_conflict = _instance.on_conflict;
    return local$on_conflict == null
        ? CopyWith$Input$ingredients_on_conflict.stub(_then(_instance))
        : CopyWith$Input$ingredients_on_conflict(
            local$on_conflict, (e) => call(on_conflict: e));
  }
}

class _CopyWithStubImpl$Input$ingredients_obj_rel_insert_input<TRes>
    implements CopyWith$Input$ingredients_obj_rel_insert_input<TRes> {
  _CopyWithStubImpl$Input$ingredients_obj_rel_insert_input(this._res);

  TRes _res;

  call({
    Input$ingredients_insert_input? data,
    Input$ingredients_on_conflict? on_conflict,
  }) =>
      _res;
  CopyWith$Input$ingredients_insert_input<TRes> get data =>
      CopyWith$Input$ingredients_insert_input.stub(_res);
  CopyWith$Input$ingredients_on_conflict<TRes> get on_conflict =>
      CopyWith$Input$ingredients_on_conflict.stub(_res);
}

class Input$ingredients_on_conflict {
  factory Input$ingredients_on_conflict({
    required Enum$ingredients_constraint constraint,
    required List<Enum$ingredients_update_column> update_columns,
    Input$ingredients_bool_exp? where,
  }) =>
      Input$ingredients_on_conflict._({
        r'constraint': constraint,
        r'update_columns': update_columns,
        if (where != null) r'where': where,
      });

  Input$ingredients_on_conflict._(this._$data);

  factory Input$ingredients_on_conflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson$Enum$ingredients_constraint((l$constraint as String));
    final l$update_columns = data['update_columns'];
    result$data['update_columns'] = (l$update_columns as List<dynamic>)
        .map((e) => fromJson$Enum$ingredients_update_column((e as String)))
        .toList();
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$ingredients_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input$ingredients_on_conflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$ingredients_constraint get constraint =>
      (_$data['constraint'] as Enum$ingredients_constraint);
  List<Enum$ingredients_update_column> get update_columns =>
      (_$data['update_columns'] as List<Enum$ingredients_update_column>);
  Input$ingredients_bool_exp? get where =>
      (_$data['where'] as Input$ingredients_bool_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson$Enum$ingredients_constraint(l$constraint);
    final l$update_columns = update_columns;
    result$data['update_columns'] = l$update_columns
        .map((e) => toJson$Enum$ingredients_update_column(e))
        .toList();
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ingredients_on_conflict<Input$ingredients_on_conflict>
      get copyWith => CopyWith$Input$ingredients_on_conflict(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredients_on_conflict) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) {
      return false;
    }
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) {
        return false;
      }
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredients_on_conflict<TRes> {
  factory CopyWith$Input$ingredients_on_conflict(
    Input$ingredients_on_conflict instance,
    TRes Function(Input$ingredients_on_conflict) then,
  ) = _CopyWithImpl$Input$ingredients_on_conflict;

  factory CopyWith$Input$ingredients_on_conflict.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredients_on_conflict;

  TRes call({
    Enum$ingredients_constraint? constraint,
    List<Enum$ingredients_update_column>? update_columns,
    Input$ingredients_bool_exp? where,
  });
  CopyWith$Input$ingredients_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$ingredients_on_conflict<TRes>
    implements CopyWith$Input$ingredients_on_conflict<TRes> {
  _CopyWithImpl$Input$ingredients_on_conflict(
    this._instance,
    this._then,
  );

  final Input$ingredients_on_conflict _instance;

  final TRes Function(Input$ingredients_on_conflict) _then;

  static const _undefined = {};

  TRes call({
    Object? constraint = _undefined,
    Object? update_columns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$ingredients_on_conflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum$ingredients_constraint),
        if (update_columns != _undefined && update_columns != null)
          'update_columns':
              (update_columns as List<Enum$ingredients_update_column>),
        if (where != _undefined)
          'where': (where as Input$ingredients_bool_exp?),
      }));
  CopyWith$Input$ingredients_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith$Input$ingredients_bool_exp.stub(_then(_instance))
        : CopyWith$Input$ingredients_bool_exp(
            local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$ingredients_on_conflict<TRes>
    implements CopyWith$Input$ingredients_on_conflict<TRes> {
  _CopyWithStubImpl$Input$ingredients_on_conflict(this._res);

  TRes _res;

  call({
    Enum$ingredients_constraint? constraint,
    List<Enum$ingredients_update_column>? update_columns,
    Input$ingredients_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$ingredients_bool_exp<TRes> get where =>
      CopyWith$Input$ingredients_bool_exp.stub(_res);
}

class Input$ingredients_order_by {
  factory Input$ingredients_order_by({
    Enum$order_by? $_family,
    Input$bridge_recipes_ingredients_aggregate_order_by?
        bridge_recipes_ingredients_aggregate,
    Enum$order_by? country,
    Input$ingredient_family_order_by? family,
    Enum$order_by? id,
    Enum$order_by? imagePath,
    Enum$order_by? name,
    Enum$order_by? slug,
    Enum$order_by? type,
  }) =>
      Input$ingredients_order_by._({
        if ($_family != null) r'_family': $_family,
        if (bridge_recipes_ingredients_aggregate != null)
          r'bridge_recipes_ingredients_aggregate':
              bridge_recipes_ingredients_aggregate,
        if (country != null) r'country': country,
        if (family != null) r'family': family,
        if (id != null) r'id': id,
        if (imagePath != null) r'imagePath': imagePath,
        if (name != null) r'name': name,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$ingredients_order_by._(this._$data);

  factory Input$ingredients_order_by.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_family')) {
      final l$$_family = data['_family'];
      result$data['_family'] = l$$_family == null
          ? null
          : fromJson$Enum$order_by((l$$_family as String));
    }
    if (data.containsKey('bridge_recipes_ingredients_aggregate')) {
      final l$bridge_recipes_ingredients_aggregate =
          data['bridge_recipes_ingredients_aggregate'];
      result$data['bridge_recipes_ingredients_aggregate'] =
          l$bridge_recipes_ingredients_aggregate == null
              ? null
              : Input$bridge_recipes_ingredients_aggregate_order_by.fromJson(
                  (l$bridge_recipes_ingredients_aggregate
                      as Map<String, dynamic>));
    }
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = l$country == null
          ? null
          : fromJson$Enum$order_by((l$country as String));
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input$ingredient_family_order_by.fromJson(
              (l$family as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    if (data.containsKey('imagePath')) {
      final l$imagePath = data['imagePath'];
      result$data['imagePath'] = l$imagePath == null
          ? null
          : fromJson$Enum$order_by((l$imagePath as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$order_by((l$name as String));
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] =
          l$slug == null ? null : fromJson$Enum$order_by((l$slug as String));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$order_by((l$type as String));
    }
    return Input$ingredients_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get $_family => (_$data['_family'] as Enum$order_by?);
  Input$bridge_recipes_ingredients_aggregate_order_by?
      get bridge_recipes_ingredients_aggregate =>
          (_$data['bridge_recipes_ingredients_aggregate']
              as Input$bridge_recipes_ingredients_aggregate_order_by?);
  Enum$order_by? get country => (_$data['country'] as Enum$order_by?);
  Input$ingredient_family_order_by? get family =>
      (_$data['family'] as Input$ingredient_family_order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Enum$order_by? get imagePath => (_$data['imagePath'] as Enum$order_by?);
  Enum$order_by? get name => (_$data['name'] as Enum$order_by?);
  Enum$order_by? get slug => (_$data['slug'] as Enum$order_by?);
  Enum$order_by? get type => (_$data['type'] as Enum$order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_family')) {
      final l$$_family = $_family;
      result$data['_family'] =
          l$$_family == null ? null : toJson$Enum$order_by(l$$_family);
    }
    if (_$data.containsKey('bridge_recipes_ingredients_aggregate')) {
      final l$bridge_recipes_ingredients_aggregate =
          bridge_recipes_ingredients_aggregate;
      result$data['bridge_recipes_ingredients_aggregate'] =
          l$bridge_recipes_ingredients_aggregate?.toJson();
    }
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] =
          l$country == null ? null : toJson$Enum$order_by(l$country);
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    if (_$data.containsKey('imagePath')) {
      final l$imagePath = imagePath;
      result$data['imagePath'] =
          l$imagePath == null ? null : toJson$Enum$order_by(l$imagePath);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$order_by(l$name);
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] =
          l$slug == null ? null : toJson$Enum$order_by(l$slug);
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$order_by(l$type);
    }
    return result$data;
  }

  CopyWith$Input$ingredients_order_by<Input$ingredients_order_by>
      get copyWith => CopyWith$Input$ingredients_order_by(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredients_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_family = $_family;
    final lOther$$_family = other.$_family;
    if (_$data.containsKey('_family') != other._$data.containsKey('_family')) {
      return false;
    }
    if (l$$_family != lOther$$_family) {
      return false;
    }
    final l$bridge_recipes_ingredients_aggregate =
        bridge_recipes_ingredients_aggregate;
    final lOther$bridge_recipes_ingredients_aggregate =
        other.bridge_recipes_ingredients_aggregate;
    if (_$data.containsKey('bridge_recipes_ingredients_aggregate') !=
        other._$data.containsKey('bridge_recipes_ingredients_aggregate')) {
      return false;
    }
    if (l$bridge_recipes_ingredients_aggregate !=
        lOther$bridge_recipes_ingredients_aggregate) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (_$data.containsKey('imagePath') !=
        other._$data.containsKey('imagePath')) {
      return false;
    }
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_family = $_family;
    final l$bridge_recipes_ingredients_aggregate =
        bridge_recipes_ingredients_aggregate;
    final l$country = country;
    final l$family = family;
    final l$id = id;
    final l$imagePath = imagePath;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('_family') ? l$$_family : const {},
      _$data.containsKey('bridge_recipes_ingredients_aggregate')
          ? l$bridge_recipes_ingredients_aggregate
          : const {},
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('imagePath') ? l$imagePath : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredients_order_by<TRes> {
  factory CopyWith$Input$ingredients_order_by(
    Input$ingredients_order_by instance,
    TRes Function(Input$ingredients_order_by) then,
  ) = _CopyWithImpl$Input$ingredients_order_by;

  factory CopyWith$Input$ingredients_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredients_order_by;

  TRes call({
    Enum$order_by? $_family,
    Input$bridge_recipes_ingredients_aggregate_order_by?
        bridge_recipes_ingredients_aggregate,
    Enum$order_by? country,
    Input$ingredient_family_order_by? family,
    Enum$order_by? id,
    Enum$order_by? imagePath,
    Enum$order_by? name,
    Enum$order_by? slug,
    Enum$order_by? type,
  });
  CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by<TRes>
      get bridge_recipes_ingredients_aggregate;
  CopyWith$Input$ingredient_family_order_by<TRes> get family;
}

class _CopyWithImpl$Input$ingredients_order_by<TRes>
    implements CopyWith$Input$ingredients_order_by<TRes> {
  _CopyWithImpl$Input$ingredients_order_by(
    this._instance,
    this._then,
  );

  final Input$ingredients_order_by _instance;

  final TRes Function(Input$ingredients_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? $_family = _undefined,
    Object? bridge_recipes_ingredients_aggregate = _undefined,
    Object? country = _undefined,
    Object? family = _undefined,
    Object? id = _undefined,
    Object? imagePath = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$ingredients_order_by._({
        ..._instance._$data,
        if ($_family != _undefined) '_family': ($_family as Enum$order_by?),
        if (bridge_recipes_ingredients_aggregate != _undefined)
          'bridge_recipes_ingredients_aggregate':
              (bridge_recipes_ingredients_aggregate
                  as Input$bridge_recipes_ingredients_aggregate_order_by?),
        if (country != _undefined) 'country': (country as Enum$order_by?),
        if (family != _undefined)
          'family': (family as Input$ingredient_family_order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
        if (imagePath != _undefined) 'imagePath': (imagePath as Enum$order_by?),
        if (name != _undefined) 'name': (name as Enum$order_by?),
        if (slug != _undefined) 'slug': (slug as Enum$order_by?),
        if (type != _undefined) 'type': (type as Enum$order_by?),
      }));
  CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by<TRes>
      get bridge_recipes_ingredients_aggregate {
    final local$bridge_recipes_ingredients_aggregate =
        _instance.bridge_recipes_ingredients_aggregate;
    return local$bridge_recipes_ingredients_aggregate == null
        ? CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by(
            local$bridge_recipes_ingredients_aggregate,
            (e) => call(bridge_recipes_ingredients_aggregate: e));
  }

  CopyWith$Input$ingredient_family_order_by<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Input$ingredient_family_order_by.stub(_then(_instance))
        : CopyWith$Input$ingredient_family_order_by(
            local$family, (e) => call(family: e));
  }
}

class _CopyWithStubImpl$Input$ingredients_order_by<TRes>
    implements CopyWith$Input$ingredients_order_by<TRes> {
  _CopyWithStubImpl$Input$ingredients_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? $_family,
    Input$bridge_recipes_ingredients_aggregate_order_by?
        bridge_recipes_ingredients_aggregate,
    Enum$order_by? country,
    Input$ingredient_family_order_by? family,
    Enum$order_by? id,
    Enum$order_by? imagePath,
    Enum$order_by? name,
    Enum$order_by? slug,
    Enum$order_by? type,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by<TRes>
      get bridge_recipes_ingredients_aggregate =>
          CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by.stub(
              _res);
  CopyWith$Input$ingredient_family_order_by<TRes> get family =>
      CopyWith$Input$ingredient_family_order_by.stub(_res);
}

class Input$ingredients_pk_columns_input {
  factory Input$ingredients_pk_columns_input({required String id}) =>
      Input$ingredients_pk_columns_input._({
        r'id': id,
      });

  Input$ingredients_pk_columns_input._(this._$data);

  factory Input$ingredients_pk_columns_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$ingredients_pk_columns_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$ingredients_pk_columns_input<
          Input$ingredients_pk_columns_input>
      get copyWith => CopyWith$Input$ingredients_pk_columns_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredients_pk_columns_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$ingredients_pk_columns_input<TRes> {
  factory CopyWith$Input$ingredients_pk_columns_input(
    Input$ingredients_pk_columns_input instance,
    TRes Function(Input$ingredients_pk_columns_input) then,
  ) = _CopyWithImpl$Input$ingredients_pk_columns_input;

  factory CopyWith$Input$ingredients_pk_columns_input.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredients_pk_columns_input;

  TRes call({String? id});
}

class _CopyWithImpl$Input$ingredients_pk_columns_input<TRes>
    implements CopyWith$Input$ingredients_pk_columns_input<TRes> {
  _CopyWithImpl$Input$ingredients_pk_columns_input(
    this._instance,
    this._then,
  );

  final Input$ingredients_pk_columns_input _instance;

  final TRes Function(Input$ingredients_pk_columns_input) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Input$ingredients_pk_columns_input._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$ingredients_pk_columns_input<TRes>
    implements CopyWith$Input$ingredients_pk_columns_input<TRes> {
  _CopyWithStubImpl$Input$ingredients_pk_columns_input(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$ingredients_set_input {
  factory Input$ingredients_set_input({
    String? $_family,
    String? country,
    String? id,
    String? imagePath,
    String? name,
    String? slug,
    String? type,
  }) =>
      Input$ingredients_set_input._({
        if ($_family != null) r'_family': $_family,
        if (country != null) r'country': country,
        if (id != null) r'id': id,
        if (imagePath != null) r'imagePath': imagePath,
        if (name != null) r'name': name,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$ingredients_set_input._(this._$data);

  factory Input$ingredients_set_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_family')) {
      final l$$_family = data['_family'];
      result$data['_family'] = (l$$_family as String?);
    }
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = (l$country as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('imagePath')) {
      final l$imagePath = data['imagePath'];
      result$data['imagePath'] = (l$imagePath as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    return Input$ingredients_set_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_family => (_$data['_family'] as String?);
  String? get country => (_$data['country'] as String?);
  String? get id => (_$data['id'] as String?);
  String? get imagePath => (_$data['imagePath'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get slug => (_$data['slug'] as String?);
  String? get type => (_$data['type'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_family')) {
      final l$$_family = $_family;
      result$data['_family'] = l$$_family;
    }
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] = l$country;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('imagePath')) {
      final l$imagePath = imagePath;
      result$data['imagePath'] = l$imagePath;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    return result$data;
  }

  CopyWith$Input$ingredients_set_input<Input$ingredients_set_input>
      get copyWith => CopyWith$Input$ingredients_set_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredients_set_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_family = $_family;
    final lOther$$_family = other.$_family;
    if (_$data.containsKey('_family') != other._$data.containsKey('_family')) {
      return false;
    }
    if (l$$_family != lOther$$_family) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (_$data.containsKey('imagePath') !=
        other._$data.containsKey('imagePath')) {
      return false;
    }
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_family = $_family;
    final l$country = country;
    final l$id = id;
    final l$imagePath = imagePath;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('_family') ? l$$_family : const {},
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('imagePath') ? l$imagePath : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredients_set_input<TRes> {
  factory CopyWith$Input$ingredients_set_input(
    Input$ingredients_set_input instance,
    TRes Function(Input$ingredients_set_input) then,
  ) = _CopyWithImpl$Input$ingredients_set_input;

  factory CopyWith$Input$ingredients_set_input.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredients_set_input;

  TRes call({
    String? $_family,
    String? country,
    String? id,
    String? imagePath,
    String? name,
    String? slug,
    String? type,
  });
}

class _CopyWithImpl$Input$ingredients_set_input<TRes>
    implements CopyWith$Input$ingredients_set_input<TRes> {
  _CopyWithImpl$Input$ingredients_set_input(
    this._instance,
    this._then,
  );

  final Input$ingredients_set_input _instance;

  final TRes Function(Input$ingredients_set_input) _then;

  static const _undefined = {};

  TRes call({
    Object? $_family = _undefined,
    Object? country = _undefined,
    Object? id = _undefined,
    Object? imagePath = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$ingredients_set_input._({
        ..._instance._$data,
        if ($_family != _undefined) '_family': ($_family as String?),
        if (country != _undefined) 'country': (country as String?),
        if (id != _undefined) 'id': (id as String?),
        if (imagePath != _undefined) 'imagePath': (imagePath as String?),
        if (name != _undefined) 'name': (name as String?),
        if (slug != _undefined) 'slug': (slug as String?),
        if (type != _undefined) 'type': (type as String?),
      }));
}

class _CopyWithStubImpl$Input$ingredients_set_input<TRes>
    implements CopyWith$Input$ingredients_set_input<TRes> {
  _CopyWithStubImpl$Input$ingredients_set_input(this._res);

  TRes _res;

  call({
    String? $_family,
    String? country,
    String? id,
    String? imagePath,
    String? name,
    String? slug,
    String? type,
  }) =>
      _res;
}

class Input$ingredients_stream_cursor_input {
  factory Input$ingredients_stream_cursor_input({
    required Input$ingredients_stream_cursor_value_input initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      Input$ingredients_stream_cursor_input._({
        r'initial_value': initial_value,
        if (ordering != null) r'ordering': ordering,
      });

  Input$ingredients_stream_cursor_input._(this._$data);

  factory Input$ingredients_stream_cursor_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initial_value = data['initial_value'];
    result$data['initial_value'] =
        Input$ingredients_stream_cursor_value_input.fromJson(
            (l$initial_value as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson$Enum$cursor_ordering((l$ordering as String));
    }
    return Input$ingredients_stream_cursor_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ingredients_stream_cursor_value_input get initial_value =>
      (_$data['initial_value'] as Input$ingredients_stream_cursor_value_input);
  Enum$cursor_ordering? get ordering =>
      (_$data['ordering'] as Enum$cursor_ordering?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initial_value = initial_value;
    result$data['initial_value'] = l$initial_value.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson$Enum$cursor_ordering(l$ordering);
    }
    return result$data;
  }

  CopyWith$Input$ingredients_stream_cursor_input<
          Input$ingredients_stream_cursor_input>
      get copyWith => CopyWith$Input$ingredients_stream_cursor_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredients_stream_cursor_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initial_value = initial_value;
    final lOther$initial_value = other.initial_value;
    if (l$initial_value != lOther$initial_value) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initial_value = initial_value;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initial_value,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredients_stream_cursor_input<TRes> {
  factory CopyWith$Input$ingredients_stream_cursor_input(
    Input$ingredients_stream_cursor_input instance,
    TRes Function(Input$ingredients_stream_cursor_input) then,
  ) = _CopyWithImpl$Input$ingredients_stream_cursor_input;

  factory CopyWith$Input$ingredients_stream_cursor_input.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredients_stream_cursor_input;

  TRes call({
    Input$ingredients_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  });
  CopyWith$Input$ingredients_stream_cursor_value_input<TRes> get initial_value;
}

class _CopyWithImpl$Input$ingredients_stream_cursor_input<TRes>
    implements CopyWith$Input$ingredients_stream_cursor_input<TRes> {
  _CopyWithImpl$Input$ingredients_stream_cursor_input(
    this._instance,
    this._then,
  );

  final Input$ingredients_stream_cursor_input _instance;

  final TRes Function(Input$ingredients_stream_cursor_input) _then;

  static const _undefined = {};

  TRes call({
    Object? initial_value = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input$ingredients_stream_cursor_input._({
        ..._instance._$data,
        if (initial_value != _undefined && initial_value != null)
          'initial_value':
              (initial_value as Input$ingredients_stream_cursor_value_input),
        if (ordering != _undefined)
          'ordering': (ordering as Enum$cursor_ordering?),
      }));
  CopyWith$Input$ingredients_stream_cursor_value_input<TRes> get initial_value {
    final local$initial_value = _instance.initial_value;
    return CopyWith$Input$ingredients_stream_cursor_value_input(
        local$initial_value, (e) => call(initial_value: e));
  }
}

class _CopyWithStubImpl$Input$ingredients_stream_cursor_input<TRes>
    implements CopyWith$Input$ingredients_stream_cursor_input<TRes> {
  _CopyWithStubImpl$Input$ingredients_stream_cursor_input(this._res);

  TRes _res;

  call({
    Input$ingredients_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      _res;
  CopyWith$Input$ingredients_stream_cursor_value_input<TRes>
      get initial_value =>
          CopyWith$Input$ingredients_stream_cursor_value_input.stub(_res);
}

class Input$ingredients_stream_cursor_value_input {
  factory Input$ingredients_stream_cursor_value_input({
    String? $_family,
    String? country,
    String? id,
    String? imagePath,
    String? name,
    String? slug,
    String? type,
  }) =>
      Input$ingredients_stream_cursor_value_input._({
        if ($_family != null) r'_family': $_family,
        if (country != null) r'country': country,
        if (id != null) r'id': id,
        if (imagePath != null) r'imagePath': imagePath,
        if (name != null) r'name': name,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$ingredients_stream_cursor_value_input._(this._$data);

  factory Input$ingredients_stream_cursor_value_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_family')) {
      final l$$_family = data['_family'];
      result$data['_family'] = (l$$_family as String?);
    }
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = (l$country as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('imagePath')) {
      final l$imagePath = data['imagePath'];
      result$data['imagePath'] = (l$imagePath as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    return Input$ingredients_stream_cursor_value_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_family => (_$data['_family'] as String?);
  String? get country => (_$data['country'] as String?);
  String? get id => (_$data['id'] as String?);
  String? get imagePath => (_$data['imagePath'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get slug => (_$data['slug'] as String?);
  String? get type => (_$data['type'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_family')) {
      final l$$_family = $_family;
      result$data['_family'] = l$$_family;
    }
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] = l$country;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('imagePath')) {
      final l$imagePath = imagePath;
      result$data['imagePath'] = l$imagePath;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    return result$data;
  }

  CopyWith$Input$ingredients_stream_cursor_value_input<
          Input$ingredients_stream_cursor_value_input>
      get copyWith => CopyWith$Input$ingredients_stream_cursor_value_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredients_stream_cursor_value_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_family = $_family;
    final lOther$$_family = other.$_family;
    if (_$data.containsKey('_family') != other._$data.containsKey('_family')) {
      return false;
    }
    if (l$$_family != lOther$$_family) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (_$data.containsKey('imagePath') !=
        other._$data.containsKey('imagePath')) {
      return false;
    }
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_family = $_family;
    final l$country = country;
    final l$id = id;
    final l$imagePath = imagePath;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('_family') ? l$$_family : const {},
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('imagePath') ? l$imagePath : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$ingredients_stream_cursor_value_input<TRes> {
  factory CopyWith$Input$ingredients_stream_cursor_value_input(
    Input$ingredients_stream_cursor_value_input instance,
    TRes Function(Input$ingredients_stream_cursor_value_input) then,
  ) = _CopyWithImpl$Input$ingredients_stream_cursor_value_input;

  factory CopyWith$Input$ingredients_stream_cursor_value_input.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredients_stream_cursor_value_input;

  TRes call({
    String? $_family,
    String? country,
    String? id,
    String? imagePath,
    String? name,
    String? slug,
    String? type,
  });
}

class _CopyWithImpl$Input$ingredients_stream_cursor_value_input<TRes>
    implements CopyWith$Input$ingredients_stream_cursor_value_input<TRes> {
  _CopyWithImpl$Input$ingredients_stream_cursor_value_input(
    this._instance,
    this._then,
  );

  final Input$ingredients_stream_cursor_value_input _instance;

  final TRes Function(Input$ingredients_stream_cursor_value_input) _then;

  static const _undefined = {};

  TRes call({
    Object? $_family = _undefined,
    Object? country = _undefined,
    Object? id = _undefined,
    Object? imagePath = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$ingredients_stream_cursor_value_input._({
        ..._instance._$data,
        if ($_family != _undefined) '_family': ($_family as String?),
        if (country != _undefined) 'country': (country as String?),
        if (id != _undefined) 'id': (id as String?),
        if (imagePath != _undefined) 'imagePath': (imagePath as String?),
        if (name != _undefined) 'name': (name as String?),
        if (slug != _undefined) 'slug': (slug as String?),
        if (type != _undefined) 'type': (type as String?),
      }));
}

class _CopyWithStubImpl$Input$ingredients_stream_cursor_value_input<TRes>
    implements CopyWith$Input$ingredients_stream_cursor_value_input<TRes> {
  _CopyWithStubImpl$Input$ingredients_stream_cursor_value_input(this._res);

  TRes _res;

  call({
    String? $_family,
    String? country,
    String? id,
    String? imagePath,
    String? name,
    String? slug,
    String? type,
  }) =>
      _res;
}

class Input$ingredients_updates {
  factory Input$ingredients_updates({
    Input$ingredients_set_input? $_set,
    required Input$ingredients_bool_exp where,
  }) =>
      Input$ingredients_updates._({
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input$ingredients_updates._(this._$data);

  factory Input$ingredients_updates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input$ingredients_set_input.fromJson(
              (l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] =
        Input$ingredients_bool_exp.fromJson((l$where as Map<String, dynamic>));
    return Input$ingredients_updates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ingredients_set_input? get $_set =>
      (_$data['_set'] as Input$ingredients_set_input?);
  Input$ingredients_bool_exp get where =>
      (_$data['where'] as Input$ingredients_bool_exp);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Input$ingredients_updates<Input$ingredients_updates> get copyWith =>
      CopyWith$Input$ingredients_updates(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ingredients_updates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith$Input$ingredients_updates<TRes> {
  factory CopyWith$Input$ingredients_updates(
    Input$ingredients_updates instance,
    TRes Function(Input$ingredients_updates) then,
  ) = _CopyWithImpl$Input$ingredients_updates;

  factory CopyWith$Input$ingredients_updates.stub(TRes res) =
      _CopyWithStubImpl$Input$ingredients_updates;

  TRes call({
    Input$ingredients_set_input? $_set,
    Input$ingredients_bool_exp? where,
  });
  CopyWith$Input$ingredients_set_input<TRes> get $_set;
  CopyWith$Input$ingredients_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$ingredients_updates<TRes>
    implements CopyWith$Input$ingredients_updates<TRes> {
  _CopyWithImpl$Input$ingredients_updates(
    this._instance,
    this._then,
  );

  final Input$ingredients_updates _instance;

  final TRes Function(Input$ingredients_updates) _then;

  static const _undefined = {};

  TRes call({
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$ingredients_updates._({
        ..._instance._$data,
        if ($_set != _undefined)
          '_set': ($_set as Input$ingredients_set_input?),
        if (where != _undefined && where != null)
          'where': (where as Input$ingredients_bool_exp),
      }));
  CopyWith$Input$ingredients_set_input<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith$Input$ingredients_set_input.stub(_then(_instance))
        : CopyWith$Input$ingredients_set_input(
            local$$_set, (e) => call($_set: e));
  }

  CopyWith$Input$ingredients_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$ingredients_bool_exp(
        local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$ingredients_updates<TRes>
    implements CopyWith$Input$ingredients_updates<TRes> {
  _CopyWithStubImpl$Input$ingredients_updates(this._res);

  TRes _res;

  call({
    Input$ingredients_set_input? $_set,
    Input$ingredients_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$ingredients_set_input<TRes> get $_set =>
      CopyWith$Input$ingredients_set_input.stub(_res);
  CopyWith$Input$ingredients_bool_exp<TRes> get where =>
      CopyWith$Input$ingredients_bool_exp.stub(_res);
}

class Input$jsonb_cast_exp {
  factory Input$jsonb_cast_exp({Input$String_comparison_exp? $_String}) =>
      Input$jsonb_cast_exp._({
        if ($_String != null) r'_String': $_String,
      });

  Input$jsonb_cast_exp._(this._$data);

  factory Input$jsonb_cast_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_String')) {
      final l$$_String = data['_String'];
      result$data['_String'] = l$$_String == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$$_String as Map<String, dynamic>));
    }
    return Input$jsonb_cast_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$String_comparison_exp? get $_String =>
      (_$data['_String'] as Input$String_comparison_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_String')) {
      final l$$_String = $_String;
      result$data['_String'] = l$$_String?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$jsonb_cast_exp<Input$jsonb_cast_exp> get copyWith =>
      CopyWith$Input$jsonb_cast_exp(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$jsonb_cast_exp) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_String = $_String;
    final lOther$$_String = other.$_String;
    if (_$data.containsKey('_String') != other._$data.containsKey('_String')) {
      return false;
    }
    if (l$$_String != lOther$$_String) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_String = $_String;
    return Object.hashAll(
        [_$data.containsKey('_String') ? l$$_String : const {}]);
  }
}

abstract class CopyWith$Input$jsonb_cast_exp<TRes> {
  factory CopyWith$Input$jsonb_cast_exp(
    Input$jsonb_cast_exp instance,
    TRes Function(Input$jsonb_cast_exp) then,
  ) = _CopyWithImpl$Input$jsonb_cast_exp;

  factory CopyWith$Input$jsonb_cast_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$jsonb_cast_exp;

  TRes call({Input$String_comparison_exp? $_String});
  CopyWith$Input$String_comparison_exp<TRes> get $_String;
}

class _CopyWithImpl$Input$jsonb_cast_exp<TRes>
    implements CopyWith$Input$jsonb_cast_exp<TRes> {
  _CopyWithImpl$Input$jsonb_cast_exp(
    this._instance,
    this._then,
  );

  final Input$jsonb_cast_exp _instance;

  final TRes Function(Input$jsonb_cast_exp) _then;

  static const _undefined = {};

  TRes call({Object? $_String = _undefined}) => _then(Input$jsonb_cast_exp._({
        ..._instance._$data,
        if ($_String != _undefined)
          '_String': ($_String as Input$String_comparison_exp?),
      }));
  CopyWith$Input$String_comparison_exp<TRes> get $_String {
    final local$$_String = _instance.$_String;
    return local$$_String == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$$_String, (e) => call($_String: e));
  }
}

class _CopyWithStubImpl$Input$jsonb_cast_exp<TRes>
    implements CopyWith$Input$jsonb_cast_exp<TRes> {
  _CopyWithStubImpl$Input$jsonb_cast_exp(this._res);

  TRes _res;

  call({Input$String_comparison_exp? $_String}) => _res;
  CopyWith$Input$String_comparison_exp<TRes> get $_String =>
      CopyWith$Input$String_comparison_exp.stub(_res);
}

class Input$jsonb_comparison_exp {
  factory Input$jsonb_comparison_exp({
    Input$jsonb_cast_exp? $_cast,
    String? $_contained_in,
    String? $_contains,
    String? $_eq,
    String? $_gt,
    String? $_gte,
    String? $_has_key,
    List<String>? $_has_keys_all,
    List<String>? $_has_keys_any,
    List<String>? $_in,
    bool? $_is_null,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    List<String>? $_nin,
  }) =>
      Input$jsonb_comparison_exp._({
        if ($_cast != null) r'_cast': $_cast,
        if ($_contained_in != null) r'_contained_in': $_contained_in,
        if ($_contains != null) r'_contains': $_contains,
        if ($_eq != null) r'_eq': $_eq,
        if ($_gt != null) r'_gt': $_gt,
        if ($_gte != null) r'_gte': $_gte,
        if ($_has_key != null) r'_has_key': $_has_key,
        if ($_has_keys_all != null) r'_has_keys_all': $_has_keys_all,
        if ($_has_keys_any != null) r'_has_keys_any': $_has_keys_any,
        if ($_in != null) r'_in': $_in,
        if ($_is_null != null) r'_is_null': $_is_null,
        if ($_lt != null) r'_lt': $_lt,
        if ($_lte != null) r'_lte': $_lte,
        if ($_neq != null) r'_neq': $_neq,
        if ($_nin != null) r'_nin': $_nin,
      });

  Input$jsonb_comparison_exp._(this._$data);

  factory Input$jsonb_comparison_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_cast')) {
      final l$$_cast = data['_cast'];
      result$data['_cast'] = l$$_cast == null
          ? null
          : Input$jsonb_cast_exp.fromJson((l$$_cast as Map<String, dynamic>));
    }
    if (data.containsKey('_contained_in')) {
      final l$$_contained_in = data['_contained_in'];
      result$data['_contained_in'] = (l$$_contained_in as String?);
    }
    if (data.containsKey('_contains')) {
      final l$$_contains = data['_contains'];
      result$data['_contains'] = (l$$_contains as String?);
    }
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as String?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as String?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as String?);
    }
    if (data.containsKey('_has_key')) {
      final l$$_has_key = data['_has_key'];
      result$data['_has_key'] = (l$$_has_key as String?);
    }
    if (data.containsKey('_has_keys_all')) {
      final l$$_has_keys_all = data['_has_keys_all'];
      result$data['_has_keys_all'] = (l$$_has_keys_all as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('_has_keys_any')) {
      final l$$_has_keys_any = data['_has_keys_any'];
      result$data['_has_keys_any'] = (l$$_has_keys_any as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] =
          (l$$_in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('_is_null')) {
      final l$$_is_null = data['_is_null'];
      result$data['_is_null'] = (l$$_is_null as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as String?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as String?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as String?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] =
          (l$$_nin as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Input$jsonb_comparison_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$jsonb_cast_exp? get $_cast =>
      (_$data['_cast'] as Input$jsonb_cast_exp?);
  String? get $_contained_in => (_$data['_contained_in'] as String?);
  String? get $_contains => (_$data['_contains'] as String?);
  String? get $_eq => (_$data['_eq'] as String?);
  String? get $_gt => (_$data['_gt'] as String?);
  String? get $_gte => (_$data['_gte'] as String?);
  String? get $_has_key => (_$data['_has_key'] as String?);
  List<String>? get $_has_keys_all =>
      (_$data['_has_keys_all'] as List<String>?);
  List<String>? get $_has_keys_any =>
      (_$data['_has_keys_any'] as List<String>?);
  List<String>? get $_in => (_$data['_in'] as List<String>?);
  bool? get $_is_null => (_$data['_is_null'] as bool?);
  String? get $_lt => (_$data['_lt'] as String?);
  String? get $_lte => (_$data['_lte'] as String?);
  String? get $_neq => (_$data['_neq'] as String?);
  List<String>? get $_nin => (_$data['_nin'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_cast')) {
      final l$$_cast = $_cast;
      result$data['_cast'] = l$$_cast?.toJson();
    }
    if (_$data.containsKey('_contained_in')) {
      final l$$_contained_in = $_contained_in;
      result$data['_contained_in'] = l$$_contained_in;
    }
    if (_$data.containsKey('_contains')) {
      final l$$_contains = $_contains;
      result$data['_contains'] = l$$_contains;
    }
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq;
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt;
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte;
    }
    if (_$data.containsKey('_has_key')) {
      final l$$_has_key = $_has_key;
      result$data['_has_key'] = l$$_has_key;
    }
    if (_$data.containsKey('_has_keys_all')) {
      final l$$_has_keys_all = $_has_keys_all;
      result$data['_has_keys_all'] = l$$_has_keys_all?.map((e) => e).toList();
    }
    if (_$data.containsKey('_has_keys_any')) {
      final l$$_has_keys_any = $_has_keys_any;
      result$data['_has_keys_any'] = l$$_has_keys_any?.map((e) => e).toList();
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_is_null')) {
      final l$$_is_null = $_is_null;
      result$data['_is_null'] = l$$_is_null;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt;
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte;
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$jsonb_comparison_exp<Input$jsonb_comparison_exp>
      get copyWith => CopyWith$Input$jsonb_comparison_exp(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$jsonb_comparison_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_cast = $_cast;
    final lOther$$_cast = other.$_cast;
    if (_$data.containsKey('_cast') != other._$data.containsKey('_cast')) {
      return false;
    }
    if (l$$_cast != lOther$$_cast) {
      return false;
    }
    final l$$_contained_in = $_contained_in;
    final lOther$$_contained_in = other.$_contained_in;
    if (_$data.containsKey('_contained_in') !=
        other._$data.containsKey('_contained_in')) {
      return false;
    }
    if (l$$_contained_in != lOther$$_contained_in) {
      return false;
    }
    final l$$_contains = $_contains;
    final lOther$$_contains = other.$_contains;
    if (_$data.containsKey('_contains') !=
        other._$data.containsKey('_contains')) {
      return false;
    }
    if (l$$_contains != lOther$$_contains) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (_$data.containsKey('_gt') != other._$data.containsKey('_gt')) {
      return false;
    }
    if (l$$_gt != lOther$$_gt) {
      return false;
    }
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (_$data.containsKey('_gte') != other._$data.containsKey('_gte')) {
      return false;
    }
    if (l$$_gte != lOther$$_gte) {
      return false;
    }
    final l$$_has_key = $_has_key;
    final lOther$$_has_key = other.$_has_key;
    if (_$data.containsKey('_has_key') !=
        other._$data.containsKey('_has_key')) {
      return false;
    }
    if (l$$_has_key != lOther$$_has_key) {
      return false;
    }
    final l$$_has_keys_all = $_has_keys_all;
    final lOther$$_has_keys_all = other.$_has_keys_all;
    if (_$data.containsKey('_has_keys_all') !=
        other._$data.containsKey('_has_keys_all')) {
      return false;
    }
    if (l$$_has_keys_all != null && lOther$$_has_keys_all != null) {
      if (l$$_has_keys_all.length != lOther$$_has_keys_all.length) {
        return false;
      }
      for (int i = 0; i < l$$_has_keys_all.length; i++) {
        final l$$_has_keys_all$entry = l$$_has_keys_all[i];
        final lOther$$_has_keys_all$entry = lOther$$_has_keys_all[i];
        if (l$$_has_keys_all$entry != lOther$$_has_keys_all$entry) {
          return false;
        }
      }
    } else if (l$$_has_keys_all != lOther$$_has_keys_all) {
      return false;
    }
    final l$$_has_keys_any = $_has_keys_any;
    final lOther$$_has_keys_any = other.$_has_keys_any;
    if (_$data.containsKey('_has_keys_any') !=
        other._$data.containsKey('_has_keys_any')) {
      return false;
    }
    if (l$$_has_keys_any != null && lOther$$_has_keys_any != null) {
      if (l$$_has_keys_any.length != lOther$$_has_keys_any.length) {
        return false;
      }
      for (int i = 0; i < l$$_has_keys_any.length; i++) {
        final l$$_has_keys_any$entry = l$$_has_keys_any[i];
        final lOther$$_has_keys_any$entry = lOther$$_has_keys_any[i];
        if (l$$_has_keys_any$entry != lOther$$_has_keys_any$entry) {
          return false;
        }
      }
    } else if (l$$_has_keys_any != lOther$$_has_keys_any) {
      return false;
    }
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (_$data.containsKey('_in') != other._$data.containsKey('_in')) {
      return false;
    }
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) {
        return false;
      }
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) {
          return false;
        }
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }
    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (_$data.containsKey('_is_null') !=
        other._$data.containsKey('_is_null')) {
      return false;
    }
    if (l$$_is_null != lOther$$_is_null) {
      return false;
    }
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (_$data.containsKey('_lt') != other._$data.containsKey('_lt')) {
      return false;
    }
    if (l$$_lt != lOther$$_lt) {
      return false;
    }
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (_$data.containsKey('_lte') != other._$data.containsKey('_lte')) {
      return false;
    }
    if (l$$_lte != lOther$$_lte) {
      return false;
    }
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (_$data.containsKey('_neq') != other._$data.containsKey('_neq')) {
      return false;
    }
    if (l$$_neq != lOther$$_neq) {
      return false;
    }
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (_$data.containsKey('_nin') != other._$data.containsKey('_nin')) {
      return false;
    }
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) {
        return false;
      }
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) {
          return false;
        }
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_cast = $_cast;
    final l$$_contained_in = $_contained_in;
    final l$$_contains = $_contains;
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_has_key = $_has_key;
    final l$$_has_keys_all = $_has_keys_all;
    final l$$_has_keys_any = $_has_keys_any;
    final l$$_in = $_in;
    final l$$_is_null = $_is_null;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      _$data.containsKey('_cast') ? l$$_cast : const {},
      _$data.containsKey('_contained_in') ? l$$_contained_in : const {},
      _$data.containsKey('_contains') ? l$$_contains : const {},
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_has_key') ? l$$_has_key : const {},
      _$data.containsKey('_has_keys_all')
          ? l$$_has_keys_all == null
              ? null
              : Object.hashAll(l$$_has_keys_all.map((v) => v))
          : const {},
      _$data.containsKey('_has_keys_any')
          ? l$$_has_keys_any == null
              ? null
              : Object.hashAll(l$$_has_keys_any.map((v) => v))
          : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
              ? null
              : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_is_null') ? l$$_is_null : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
              ? null
              : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$jsonb_comparison_exp<TRes> {
  factory CopyWith$Input$jsonb_comparison_exp(
    Input$jsonb_comparison_exp instance,
    TRes Function(Input$jsonb_comparison_exp) then,
  ) = _CopyWithImpl$Input$jsonb_comparison_exp;

  factory CopyWith$Input$jsonb_comparison_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$jsonb_comparison_exp;

  TRes call({
    Input$jsonb_cast_exp? $_cast,
    String? $_contained_in,
    String? $_contains,
    String? $_eq,
    String? $_gt,
    String? $_gte,
    String? $_has_key,
    List<String>? $_has_keys_all,
    List<String>? $_has_keys_any,
    List<String>? $_in,
    bool? $_is_null,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    List<String>? $_nin,
  });
  CopyWith$Input$jsonb_cast_exp<TRes> get $_cast;
}

class _CopyWithImpl$Input$jsonb_comparison_exp<TRes>
    implements CopyWith$Input$jsonb_comparison_exp<TRes> {
  _CopyWithImpl$Input$jsonb_comparison_exp(
    this._instance,
    this._then,
  );

  final Input$jsonb_comparison_exp _instance;

  final TRes Function(Input$jsonb_comparison_exp) _then;

  static const _undefined = {};

  TRes call({
    Object? $_cast = _undefined,
    Object? $_contained_in = _undefined,
    Object? $_contains = _undefined,
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_has_key = _undefined,
    Object? $_has_keys_all = _undefined,
    Object? $_has_keys_any = _undefined,
    Object? $_in = _undefined,
    Object? $_is_null = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
  }) =>
      _then(Input$jsonb_comparison_exp._({
        ..._instance._$data,
        if ($_cast != _undefined) '_cast': ($_cast as Input$jsonb_cast_exp?),
        if ($_contained_in != _undefined)
          '_contained_in': ($_contained_in as String?),
        if ($_contains != _undefined) '_contains': ($_contains as String?),
        if ($_eq != _undefined) '_eq': ($_eq as String?),
        if ($_gt != _undefined) '_gt': ($_gt as String?),
        if ($_gte != _undefined) '_gte': ($_gte as String?),
        if ($_has_key != _undefined) '_has_key': ($_has_key as String?),
        if ($_has_keys_all != _undefined)
          '_has_keys_all': ($_has_keys_all as List<String>?),
        if ($_has_keys_any != _undefined)
          '_has_keys_any': ($_has_keys_any as List<String>?),
        if ($_in != _undefined) '_in': ($_in as List<String>?),
        if ($_is_null != _undefined) '_is_null': ($_is_null as bool?),
        if ($_lt != _undefined) '_lt': ($_lt as String?),
        if ($_lte != _undefined) '_lte': ($_lte as String?),
        if ($_neq != _undefined) '_neq': ($_neq as String?),
        if ($_nin != _undefined) '_nin': ($_nin as List<String>?),
      }));
  CopyWith$Input$jsonb_cast_exp<TRes> get $_cast {
    final local$$_cast = _instance.$_cast;
    return local$$_cast == null
        ? CopyWith$Input$jsonb_cast_exp.stub(_then(_instance))
        : CopyWith$Input$jsonb_cast_exp(local$$_cast, (e) => call($_cast: e));
  }
}

class _CopyWithStubImpl$Input$jsonb_comparison_exp<TRes>
    implements CopyWith$Input$jsonb_comparison_exp<TRes> {
  _CopyWithStubImpl$Input$jsonb_comparison_exp(this._res);

  TRes _res;

  call({
    Input$jsonb_cast_exp? $_cast,
    String? $_contained_in,
    String? $_contains,
    String? $_eq,
    String? $_gt,
    String? $_gte,
    String? $_has_key,
    List<String>? $_has_keys_all,
    List<String>? $_has_keys_any,
    List<String>? $_in,
    bool? $_is_null,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    List<String>? $_nin,
  }) =>
      _res;
  CopyWith$Input$jsonb_cast_exp<TRes> get $_cast =>
      CopyWith$Input$jsonb_cast_exp.stub(_res);
}

class Input$recipes_append_input {
  factory Input$recipes_append_input({
    String? steps,
    String? yields_json,
  }) =>
      Input$recipes_append_input._({
        if (steps != null) r'steps': steps,
        if (yields_json != null) r'yields_json': yields_json,
      });

  Input$recipes_append_input._(this._$data);

  factory Input$recipes_append_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('steps')) {
      final l$steps = data['steps'];
      result$data['steps'] = (l$steps as String?);
    }
    if (data.containsKey('yields_json')) {
      final l$yields_json = data['yields_json'];
      result$data['yields_json'] = (l$yields_json as String?);
    }
    return Input$recipes_append_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get steps => (_$data['steps'] as String?);
  String? get yields_json => (_$data['yields_json'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('steps')) {
      final l$steps = steps;
      result$data['steps'] = l$steps;
    }
    if (_$data.containsKey('yields_json')) {
      final l$yields_json = yields_json;
      result$data['yields_json'] = l$yields_json;
    }
    return result$data;
  }

  CopyWith$Input$recipes_append_input<Input$recipes_append_input>
      get copyWith => CopyWith$Input$recipes_append_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_append_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (_$data.containsKey('steps') != other._$data.containsKey('steps')) {
      return false;
    }
    if (l$steps != lOther$steps) {
      return false;
    }
    final l$yields_json = yields_json;
    final lOther$yields_json = other.yields_json;
    if (_$data.containsKey('yields_json') !=
        other._$data.containsKey('yields_json')) {
      return false;
    }
    if (l$yields_json != lOther$yields_json) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$steps = steps;
    final l$yields_json = yields_json;
    return Object.hashAll([
      _$data.containsKey('steps') ? l$steps : const {},
      _$data.containsKey('yields_json') ? l$yields_json : const {},
    ]);
  }
}

abstract class CopyWith$Input$recipes_append_input<TRes> {
  factory CopyWith$Input$recipes_append_input(
    Input$recipes_append_input instance,
    TRes Function(Input$recipes_append_input) then,
  ) = _CopyWithImpl$Input$recipes_append_input;

  factory CopyWith$Input$recipes_append_input.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_append_input;

  TRes call({
    String? steps,
    String? yields_json,
  });
}

class _CopyWithImpl$Input$recipes_append_input<TRes>
    implements CopyWith$Input$recipes_append_input<TRes> {
  _CopyWithImpl$Input$recipes_append_input(
    this._instance,
    this._then,
  );

  final Input$recipes_append_input _instance;

  final TRes Function(Input$recipes_append_input) _then;

  static const _undefined = {};

  TRes call({
    Object? steps = _undefined,
    Object? yields_json = _undefined,
  }) =>
      _then(Input$recipes_append_input._({
        ..._instance._$data,
        if (steps != _undefined) 'steps': (steps as String?),
        if (yields_json != _undefined) 'yields_json': (yields_json as String?),
      }));
}

class _CopyWithStubImpl$Input$recipes_append_input<TRes>
    implements CopyWith$Input$recipes_append_input<TRes> {
  _CopyWithStubImpl$Input$recipes_append_input(this._res);

  TRes _res;

  call({
    String? steps,
    String? yields_json,
  }) =>
      _res;
}

class Input$recipes_bool_exp {
  factory Input$recipes_bool_exp({
    List<Input$recipes_bool_exp>? $_and,
    Input$recipes_bool_exp? $_not,
    List<Input$recipes_bool_exp>? $_or,
    Input$bridge_recipes_cuisines_bool_exp? bridge_recipes_cuisines,
    Input$bridge_recipes_cuisines_aggregate_bool_exp?
        bridge_recipes_cuisines_aggregate,
    Input$bridge_recipes_ingredients_bool_exp? bridge_recipes_ingredients,
    Input$bridge_recipes_ingredients_aggregate_bool_exp?
        bridge_recipes_ingredients_aggregate,
    Input$bridge_recipes_tags_bool_exp? bridge_recipes_tags,
    Input$bridge_recipes_tags_aggregate_bool_exp? bridge_recipes_tags_aggregate,
    Input$String_comparison_exp? country,
    Input$String_comparison_exp? description,
    Input$String_comparison_exp? descriptionMarkdown,
    Input$Int_comparison_exp? difficulty,
    Input$String_comparison_exp? headline,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? imagePath,
    Input$String_comparison_exp? name,
    Input$String_comparison_exp? prepTime,
    Input$String_comparison_exp? slug,
    Input$jsonb_comparison_exp? steps,
    Input$String_comparison_exp? totalTime,
    Input$jsonb_comparison_exp? yields_json,
  }) =>
      Input$recipes_bool_exp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (bridge_recipes_cuisines != null)
          r'bridge_recipes_cuisines': bridge_recipes_cuisines,
        if (bridge_recipes_cuisines_aggregate != null)
          r'bridge_recipes_cuisines_aggregate':
              bridge_recipes_cuisines_aggregate,
        if (bridge_recipes_ingredients != null)
          r'bridge_recipes_ingredients': bridge_recipes_ingredients,
        if (bridge_recipes_ingredients_aggregate != null)
          r'bridge_recipes_ingredients_aggregate':
              bridge_recipes_ingredients_aggregate,
        if (bridge_recipes_tags != null)
          r'bridge_recipes_tags': bridge_recipes_tags,
        if (bridge_recipes_tags_aggregate != null)
          r'bridge_recipes_tags_aggregate': bridge_recipes_tags_aggregate,
        if (country != null) r'country': country,
        if (description != null) r'description': description,
        if (descriptionMarkdown != null)
          r'descriptionMarkdown': descriptionMarkdown,
        if (difficulty != null) r'difficulty': difficulty,
        if (headline != null) r'headline': headline,
        if (id != null) r'id': id,
        if (imagePath != null) r'imagePath': imagePath,
        if (name != null) r'name': name,
        if (prepTime != null) r'prepTime': prepTime,
        if (slug != null) r'slug': slug,
        if (steps != null) r'steps': steps,
        if (totalTime != null) r'totalTime': totalTime,
        if (yields_json != null) r'yields_json': yields_json,
      });

  Input$recipes_bool_exp._(this._$data);

  factory Input$recipes_bool_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) =>
              Input$recipes_bool_exp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input$recipes_bool_exp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) =>
              Input$recipes_bool_exp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('bridge_recipes_cuisines')) {
      final l$bridge_recipes_cuisines = data['bridge_recipes_cuisines'];
      result$data['bridge_recipes_cuisines'] = l$bridge_recipes_cuisines == null
          ? null
          : Input$bridge_recipes_cuisines_bool_exp.fromJson(
              (l$bridge_recipes_cuisines as Map<String, dynamic>));
    }
    if (data.containsKey('bridge_recipes_cuisines_aggregate')) {
      final l$bridge_recipes_cuisines_aggregate =
          data['bridge_recipes_cuisines_aggregate'];
      result$data['bridge_recipes_cuisines_aggregate'] =
          l$bridge_recipes_cuisines_aggregate == null
              ? null
              : Input$bridge_recipes_cuisines_aggregate_bool_exp.fromJson(
                  (l$bridge_recipes_cuisines_aggregate
                      as Map<String, dynamic>));
    }
    if (data.containsKey('bridge_recipes_ingredients')) {
      final l$bridge_recipes_ingredients = data['bridge_recipes_ingredients'];
      result$data['bridge_recipes_ingredients'] =
          l$bridge_recipes_ingredients == null
              ? null
              : Input$bridge_recipes_ingredients_bool_exp.fromJson(
                  (l$bridge_recipes_ingredients as Map<String, dynamic>));
    }
    if (data.containsKey('bridge_recipes_ingredients_aggregate')) {
      final l$bridge_recipes_ingredients_aggregate =
          data['bridge_recipes_ingredients_aggregate'];
      result$data['bridge_recipes_ingredients_aggregate'] =
          l$bridge_recipes_ingredients_aggregate == null
              ? null
              : Input$bridge_recipes_ingredients_aggregate_bool_exp.fromJson(
                  (l$bridge_recipes_ingredients_aggregate
                      as Map<String, dynamic>));
    }
    if (data.containsKey('bridge_recipes_tags')) {
      final l$bridge_recipes_tags = data['bridge_recipes_tags'];
      result$data['bridge_recipes_tags'] = l$bridge_recipes_tags == null
          ? null
          : Input$bridge_recipes_tags_bool_exp.fromJson(
              (l$bridge_recipes_tags as Map<String, dynamic>));
    }
    if (data.containsKey('bridge_recipes_tags_aggregate')) {
      final l$bridge_recipes_tags_aggregate =
          data['bridge_recipes_tags_aggregate'];
      result$data['bridge_recipes_tags_aggregate'] =
          l$bridge_recipes_tags_aggregate == null
              ? null
              : Input$bridge_recipes_tags_aggregate_bool_exp.fromJson(
                  (l$bridge_recipes_tags_aggregate as Map<String, dynamic>));
    }
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = l$country == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$country as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('descriptionMarkdown')) {
      final l$descriptionMarkdown = data['descriptionMarkdown'];
      result$data['descriptionMarkdown'] = l$descriptionMarkdown == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$descriptionMarkdown as Map<String, dynamic>));
    }
    if (data.containsKey('difficulty')) {
      final l$difficulty = data['difficulty'];
      result$data['difficulty'] = l$difficulty == null
          ? null
          : Input$Int_comparison_exp.fromJson(
              (l$difficulty as Map<String, dynamic>));
    }
    if (data.containsKey('headline')) {
      final l$headline = data['headline'];
      result$data['headline'] = l$headline == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$headline as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('imagePath')) {
      final l$imagePath = data['imagePath'];
      result$data['imagePath'] = l$imagePath == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$imagePath as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('prepTime')) {
      final l$prepTime = data['prepTime'];
      result$data['prepTime'] = l$prepTime == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$prepTime as Map<String, dynamic>));
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = l$slug == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$slug as Map<String, dynamic>));
    }
    if (data.containsKey('steps')) {
      final l$steps = data['steps'];
      result$data['steps'] = l$steps == null
          ? null
          : Input$jsonb_comparison_exp.fromJson(
              (l$steps as Map<String, dynamic>));
    }
    if (data.containsKey('totalTime')) {
      final l$totalTime = data['totalTime'];
      result$data['totalTime'] = l$totalTime == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$totalTime as Map<String, dynamic>));
    }
    if (data.containsKey('yields_json')) {
      final l$yields_json = data['yields_json'];
      result$data['yields_json'] = l$yields_json == null
          ? null
          : Input$jsonb_comparison_exp.fromJson(
              (l$yields_json as Map<String, dynamic>));
    }
    return Input$recipes_bool_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$recipes_bool_exp>? get $_and =>
      (_$data['_and'] as List<Input$recipes_bool_exp>?);
  Input$recipes_bool_exp? get $_not =>
      (_$data['_not'] as Input$recipes_bool_exp?);
  List<Input$recipes_bool_exp>? get $_or =>
      (_$data['_or'] as List<Input$recipes_bool_exp>?);
  Input$bridge_recipes_cuisines_bool_exp? get bridge_recipes_cuisines =>
      (_$data['bridge_recipes_cuisines']
          as Input$bridge_recipes_cuisines_bool_exp?);
  Input$bridge_recipes_cuisines_aggregate_bool_exp?
      get bridge_recipes_cuisines_aggregate =>
          (_$data['bridge_recipes_cuisines_aggregate']
              as Input$bridge_recipes_cuisines_aggregate_bool_exp?);
  Input$bridge_recipes_ingredients_bool_exp? get bridge_recipes_ingredients =>
      (_$data['bridge_recipes_ingredients']
          as Input$bridge_recipes_ingredients_bool_exp?);
  Input$bridge_recipes_ingredients_aggregate_bool_exp?
      get bridge_recipes_ingredients_aggregate =>
          (_$data['bridge_recipes_ingredients_aggregate']
              as Input$bridge_recipes_ingredients_aggregate_bool_exp?);
  Input$bridge_recipes_tags_bool_exp? get bridge_recipes_tags =>
      (_$data['bridge_recipes_tags'] as Input$bridge_recipes_tags_bool_exp?);
  Input$bridge_recipes_tags_aggregate_bool_exp?
      get bridge_recipes_tags_aggregate =>
          (_$data['bridge_recipes_tags_aggregate']
              as Input$bridge_recipes_tags_aggregate_bool_exp?);
  Input$String_comparison_exp? get country =>
      (_$data['country'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get description =>
      (_$data['description'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get descriptionMarkdown =>
      (_$data['descriptionMarkdown'] as Input$String_comparison_exp?);
  Input$Int_comparison_exp? get difficulty =>
      (_$data['difficulty'] as Input$Int_comparison_exp?);
  Input$String_comparison_exp? get headline =>
      (_$data['headline'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get id =>
      (_$data['id'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get imagePath =>
      (_$data['imagePath'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get name =>
      (_$data['name'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get prepTime =>
      (_$data['prepTime'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get slug =>
      (_$data['slug'] as Input$String_comparison_exp?);
  Input$jsonb_comparison_exp? get steps =>
      (_$data['steps'] as Input$jsonb_comparison_exp?);
  Input$String_comparison_exp? get totalTime =>
      (_$data['totalTime'] as Input$String_comparison_exp?);
  Input$jsonb_comparison_exp? get yields_json =>
      (_$data['yields_json'] as Input$jsonb_comparison_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('bridge_recipes_cuisines')) {
      final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
      result$data['bridge_recipes_cuisines'] =
          l$bridge_recipes_cuisines?.toJson();
    }
    if (_$data.containsKey('bridge_recipes_cuisines_aggregate')) {
      final l$bridge_recipes_cuisines_aggregate =
          bridge_recipes_cuisines_aggregate;
      result$data['bridge_recipes_cuisines_aggregate'] =
          l$bridge_recipes_cuisines_aggregate?.toJson();
    }
    if (_$data.containsKey('bridge_recipes_ingredients')) {
      final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
      result$data['bridge_recipes_ingredients'] =
          l$bridge_recipes_ingredients?.toJson();
    }
    if (_$data.containsKey('bridge_recipes_ingredients_aggregate')) {
      final l$bridge_recipes_ingredients_aggregate =
          bridge_recipes_ingredients_aggregate;
      result$data['bridge_recipes_ingredients_aggregate'] =
          l$bridge_recipes_ingredients_aggregate?.toJson();
    }
    if (_$data.containsKey('bridge_recipes_tags')) {
      final l$bridge_recipes_tags = bridge_recipes_tags;
      result$data['bridge_recipes_tags'] = l$bridge_recipes_tags?.toJson();
    }
    if (_$data.containsKey('bridge_recipes_tags_aggregate')) {
      final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
      result$data['bridge_recipes_tags_aggregate'] =
          l$bridge_recipes_tags_aggregate?.toJson();
    }
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] = l$country?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('descriptionMarkdown')) {
      final l$descriptionMarkdown = descriptionMarkdown;
      result$data['descriptionMarkdown'] = l$descriptionMarkdown?.toJson();
    }
    if (_$data.containsKey('difficulty')) {
      final l$difficulty = difficulty;
      result$data['difficulty'] = l$difficulty?.toJson();
    }
    if (_$data.containsKey('headline')) {
      final l$headline = headline;
      result$data['headline'] = l$headline?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('imagePath')) {
      final l$imagePath = imagePath;
      result$data['imagePath'] = l$imagePath?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('prepTime')) {
      final l$prepTime = prepTime;
      result$data['prepTime'] = l$prepTime?.toJson();
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug?.toJson();
    }
    if (_$data.containsKey('steps')) {
      final l$steps = steps;
      result$data['steps'] = l$steps?.toJson();
    }
    if (_$data.containsKey('totalTime')) {
      final l$totalTime = totalTime;
      result$data['totalTime'] = l$totalTime?.toJson();
    }
    if (_$data.containsKey('yields_json')) {
      final l$yields_json = yields_json;
      result$data['yields_json'] = l$yields_json?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$recipes_bool_exp<Input$recipes_bool_exp> get copyWith =>
      CopyWith$Input$recipes_bool_exp(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_bool_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
    final lOther$bridge_recipes_cuisines = other.bridge_recipes_cuisines;
    if (_$data.containsKey('bridge_recipes_cuisines') !=
        other._$data.containsKey('bridge_recipes_cuisines')) {
      return false;
    }
    if (l$bridge_recipes_cuisines != lOther$bridge_recipes_cuisines) {
      return false;
    }
    final l$bridge_recipes_cuisines_aggregate =
        bridge_recipes_cuisines_aggregate;
    final lOther$bridge_recipes_cuisines_aggregate =
        other.bridge_recipes_cuisines_aggregate;
    if (_$data.containsKey('bridge_recipes_cuisines_aggregate') !=
        other._$data.containsKey('bridge_recipes_cuisines_aggregate')) {
      return false;
    }
    if (l$bridge_recipes_cuisines_aggregate !=
        lOther$bridge_recipes_cuisines_aggregate) {
      return false;
    }
    final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
    final lOther$bridge_recipes_ingredients = other.bridge_recipes_ingredients;
    if (_$data.containsKey('bridge_recipes_ingredients') !=
        other._$data.containsKey('bridge_recipes_ingredients')) {
      return false;
    }
    if (l$bridge_recipes_ingredients != lOther$bridge_recipes_ingredients) {
      return false;
    }
    final l$bridge_recipes_ingredients_aggregate =
        bridge_recipes_ingredients_aggregate;
    final lOther$bridge_recipes_ingredients_aggregate =
        other.bridge_recipes_ingredients_aggregate;
    if (_$data.containsKey('bridge_recipes_ingredients_aggregate') !=
        other._$data.containsKey('bridge_recipes_ingredients_aggregate')) {
      return false;
    }
    if (l$bridge_recipes_ingredients_aggregate !=
        lOther$bridge_recipes_ingredients_aggregate) {
      return false;
    }
    final l$bridge_recipes_tags = bridge_recipes_tags;
    final lOther$bridge_recipes_tags = other.bridge_recipes_tags;
    if (_$data.containsKey('bridge_recipes_tags') !=
        other._$data.containsKey('bridge_recipes_tags')) {
      return false;
    }
    if (l$bridge_recipes_tags != lOther$bridge_recipes_tags) {
      return false;
    }
    final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
    final lOther$bridge_recipes_tags_aggregate =
        other.bridge_recipes_tags_aggregate;
    if (_$data.containsKey('bridge_recipes_tags_aggregate') !=
        other._$data.containsKey('bridge_recipes_tags_aggregate')) {
      return false;
    }
    if (l$bridge_recipes_tags_aggregate !=
        lOther$bridge_recipes_tags_aggregate) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$descriptionMarkdown = descriptionMarkdown;
    final lOther$descriptionMarkdown = other.descriptionMarkdown;
    if (_$data.containsKey('descriptionMarkdown') !=
        other._$data.containsKey('descriptionMarkdown')) {
      return false;
    }
    if (l$descriptionMarkdown != lOther$descriptionMarkdown) {
      return false;
    }
    final l$difficulty = difficulty;
    final lOther$difficulty = other.difficulty;
    if (_$data.containsKey('difficulty') !=
        other._$data.containsKey('difficulty')) {
      return false;
    }
    if (l$difficulty != lOther$difficulty) {
      return false;
    }
    final l$headline = headline;
    final lOther$headline = other.headline;
    if (_$data.containsKey('headline') !=
        other._$data.containsKey('headline')) {
      return false;
    }
    if (l$headline != lOther$headline) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (_$data.containsKey('imagePath') !=
        other._$data.containsKey('imagePath')) {
      return false;
    }
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$prepTime = prepTime;
    final lOther$prepTime = other.prepTime;
    if (_$data.containsKey('prepTime') !=
        other._$data.containsKey('prepTime')) {
      return false;
    }
    if (l$prepTime != lOther$prepTime) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (_$data.containsKey('steps') != other._$data.containsKey('steps')) {
      return false;
    }
    if (l$steps != lOther$steps) {
      return false;
    }
    final l$totalTime = totalTime;
    final lOther$totalTime = other.totalTime;
    if (_$data.containsKey('totalTime') !=
        other._$data.containsKey('totalTime')) {
      return false;
    }
    if (l$totalTime != lOther$totalTime) {
      return false;
    }
    final l$yields_json = yields_json;
    final lOther$yields_json = other.yields_json;
    if (_$data.containsKey('yields_json') !=
        other._$data.containsKey('yields_json')) {
      return false;
    }
    if (l$yields_json != lOther$yields_json) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
    final l$bridge_recipes_cuisines_aggregate =
        bridge_recipes_cuisines_aggregate;
    final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
    final l$bridge_recipes_ingredients_aggregate =
        bridge_recipes_ingredients_aggregate;
    final l$bridge_recipes_tags = bridge_recipes_tags;
    final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
    final l$country = country;
    final l$description = description;
    final l$descriptionMarkdown = descriptionMarkdown;
    final l$difficulty = difficulty;
    final l$headline = headline;
    final l$id = id;
    final l$imagePath = imagePath;
    final l$name = name;
    final l$prepTime = prepTime;
    final l$slug = slug;
    final l$steps = steps;
    final l$totalTime = totalTime;
    final l$yields_json = yields_json;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
              ? null
              : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
              ? null
              : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('bridge_recipes_cuisines')
          ? l$bridge_recipes_cuisines
          : const {},
      _$data.containsKey('bridge_recipes_cuisines_aggregate')
          ? l$bridge_recipes_cuisines_aggregate
          : const {},
      _$data.containsKey('bridge_recipes_ingredients')
          ? l$bridge_recipes_ingredients
          : const {},
      _$data.containsKey('bridge_recipes_ingredients_aggregate')
          ? l$bridge_recipes_ingredients_aggregate
          : const {},
      _$data.containsKey('bridge_recipes_tags')
          ? l$bridge_recipes_tags
          : const {},
      _$data.containsKey('bridge_recipes_tags_aggregate')
          ? l$bridge_recipes_tags_aggregate
          : const {},
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('descriptionMarkdown')
          ? l$descriptionMarkdown
          : const {},
      _$data.containsKey('difficulty') ? l$difficulty : const {},
      _$data.containsKey('headline') ? l$headline : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('imagePath') ? l$imagePath : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('prepTime') ? l$prepTime : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('steps') ? l$steps : const {},
      _$data.containsKey('totalTime') ? l$totalTime : const {},
      _$data.containsKey('yields_json') ? l$yields_json : const {},
    ]);
  }
}

abstract class CopyWith$Input$recipes_bool_exp<TRes> {
  factory CopyWith$Input$recipes_bool_exp(
    Input$recipes_bool_exp instance,
    TRes Function(Input$recipes_bool_exp) then,
  ) = _CopyWithImpl$Input$recipes_bool_exp;

  factory CopyWith$Input$recipes_bool_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_bool_exp;

  TRes call({
    List<Input$recipes_bool_exp>? $_and,
    Input$recipes_bool_exp? $_not,
    List<Input$recipes_bool_exp>? $_or,
    Input$bridge_recipes_cuisines_bool_exp? bridge_recipes_cuisines,
    Input$bridge_recipes_cuisines_aggregate_bool_exp?
        bridge_recipes_cuisines_aggregate,
    Input$bridge_recipes_ingredients_bool_exp? bridge_recipes_ingredients,
    Input$bridge_recipes_ingredients_aggregate_bool_exp?
        bridge_recipes_ingredients_aggregate,
    Input$bridge_recipes_tags_bool_exp? bridge_recipes_tags,
    Input$bridge_recipes_tags_aggregate_bool_exp? bridge_recipes_tags_aggregate,
    Input$String_comparison_exp? country,
    Input$String_comparison_exp? description,
    Input$String_comparison_exp? descriptionMarkdown,
    Input$Int_comparison_exp? difficulty,
    Input$String_comparison_exp? headline,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? imagePath,
    Input$String_comparison_exp? name,
    Input$String_comparison_exp? prepTime,
    Input$String_comparison_exp? slug,
    Input$jsonb_comparison_exp? steps,
    Input$String_comparison_exp? totalTime,
    Input$jsonb_comparison_exp? yields_json,
  });
  TRes $_and(
      Iterable<Input$recipes_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$recipes_bool_exp<Input$recipes_bool_exp>>?)
          _fn);
  CopyWith$Input$recipes_bool_exp<TRes> get $_not;
  TRes $_or(
      Iterable<Input$recipes_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$recipes_bool_exp<Input$recipes_bool_exp>>?)
          _fn);
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes>
      get bridge_recipes_cuisines;
  CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp<TRes>
      get bridge_recipes_cuisines_aggregate;
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes>
      get bridge_recipes_ingredients;
  CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp<TRes>
      get bridge_recipes_ingredients_aggregate;
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get bridge_recipes_tags;
  CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp<TRes>
      get bridge_recipes_tags_aggregate;
  CopyWith$Input$String_comparison_exp<TRes> get country;
  CopyWith$Input$String_comparison_exp<TRes> get description;
  CopyWith$Input$String_comparison_exp<TRes> get descriptionMarkdown;
  CopyWith$Input$Int_comparison_exp<TRes> get difficulty;
  CopyWith$Input$String_comparison_exp<TRes> get headline;
  CopyWith$Input$String_comparison_exp<TRes> get id;
  CopyWith$Input$String_comparison_exp<TRes> get imagePath;
  CopyWith$Input$String_comparison_exp<TRes> get name;
  CopyWith$Input$String_comparison_exp<TRes> get prepTime;
  CopyWith$Input$String_comparison_exp<TRes> get slug;
  CopyWith$Input$jsonb_comparison_exp<TRes> get steps;
  CopyWith$Input$String_comparison_exp<TRes> get totalTime;
  CopyWith$Input$jsonb_comparison_exp<TRes> get yields_json;
}

class _CopyWithImpl$Input$recipes_bool_exp<TRes>
    implements CopyWith$Input$recipes_bool_exp<TRes> {
  _CopyWithImpl$Input$recipes_bool_exp(
    this._instance,
    this._then,
  );

  final Input$recipes_bool_exp _instance;

  final TRes Function(Input$recipes_bool_exp) _then;

  static const _undefined = {};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? bridge_recipes_cuisines = _undefined,
    Object? bridge_recipes_cuisines_aggregate = _undefined,
    Object? bridge_recipes_ingredients = _undefined,
    Object? bridge_recipes_ingredients_aggregate = _undefined,
    Object? bridge_recipes_tags = _undefined,
    Object? bridge_recipes_tags_aggregate = _undefined,
    Object? country = _undefined,
    Object? description = _undefined,
    Object? descriptionMarkdown = _undefined,
    Object? difficulty = _undefined,
    Object? headline = _undefined,
    Object? id = _undefined,
    Object? imagePath = _undefined,
    Object? name = _undefined,
    Object? prepTime = _undefined,
    Object? slug = _undefined,
    Object? steps = _undefined,
    Object? totalTime = _undefined,
    Object? yields_json = _undefined,
  }) =>
      _then(Input$recipes_bool_exp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input$recipes_bool_exp>?),
        if ($_not != _undefined) '_not': ($_not as Input$recipes_bool_exp?),
        if ($_or != _undefined) '_or': ($_or as List<Input$recipes_bool_exp>?),
        if (bridge_recipes_cuisines != _undefined)
          'bridge_recipes_cuisines': (bridge_recipes_cuisines
              as Input$bridge_recipes_cuisines_bool_exp?),
        if (bridge_recipes_cuisines_aggregate != _undefined)
          'bridge_recipes_cuisines_aggregate':
              (bridge_recipes_cuisines_aggregate
                  as Input$bridge_recipes_cuisines_aggregate_bool_exp?),
        if (bridge_recipes_ingredients != _undefined)
          'bridge_recipes_ingredients': (bridge_recipes_ingredients
              as Input$bridge_recipes_ingredients_bool_exp?),
        if (bridge_recipes_ingredients_aggregate != _undefined)
          'bridge_recipes_ingredients_aggregate':
              (bridge_recipes_ingredients_aggregate
                  as Input$bridge_recipes_ingredients_aggregate_bool_exp?),
        if (bridge_recipes_tags != _undefined)
          'bridge_recipes_tags':
              (bridge_recipes_tags as Input$bridge_recipes_tags_bool_exp?),
        if (bridge_recipes_tags_aggregate != _undefined)
          'bridge_recipes_tags_aggregate': (bridge_recipes_tags_aggregate
              as Input$bridge_recipes_tags_aggregate_bool_exp?),
        if (country != _undefined)
          'country': (country as Input$String_comparison_exp?),
        if (description != _undefined)
          'description': (description as Input$String_comparison_exp?),
        if (descriptionMarkdown != _undefined)
          'descriptionMarkdown':
              (descriptionMarkdown as Input$String_comparison_exp?),
        if (difficulty != _undefined)
          'difficulty': (difficulty as Input$Int_comparison_exp?),
        if (headline != _undefined)
          'headline': (headline as Input$String_comparison_exp?),
        if (id != _undefined) 'id': (id as Input$String_comparison_exp?),
        if (imagePath != _undefined)
          'imagePath': (imagePath as Input$String_comparison_exp?),
        if (name != _undefined) 'name': (name as Input$String_comparison_exp?),
        if (prepTime != _undefined)
          'prepTime': (prepTime as Input$String_comparison_exp?),
        if (slug != _undefined) 'slug': (slug as Input$String_comparison_exp?),
        if (steps != _undefined)
          'steps': (steps as Input$jsonb_comparison_exp?),
        if (totalTime != _undefined)
          'totalTime': (totalTime as Input$String_comparison_exp?),
        if (yields_json != _undefined)
          'yields_json': (yields_json as Input$jsonb_comparison_exp?),
      }));
  TRes $_and(
          Iterable<Input$recipes_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$recipes_bool_exp<Input$recipes_bool_exp>>?)
              _fn) =>
      call(
          $_and:
              _fn(_instance.$_and?.map((e) => CopyWith$Input$recipes_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$recipes_bool_exp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith$Input$recipes_bool_exp.stub(_then(_instance))
        : CopyWith$Input$recipes_bool_exp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input$recipes_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$recipes_bool_exp<Input$recipes_bool_exp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or?.map((e) => CopyWith$Input$recipes_bool_exp(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes>
      get bridge_recipes_cuisines {
    final local$bridge_recipes_cuisines = _instance.bridge_recipes_cuisines;
    return local$bridge_recipes_cuisines == null
        ? CopyWith$Input$bridge_recipes_cuisines_bool_exp.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_bool_exp(
            local$bridge_recipes_cuisines,
            (e) => call(bridge_recipes_cuisines: e));
  }

  CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp<TRes>
      get bridge_recipes_cuisines_aggregate {
    final local$bridge_recipes_cuisines_aggregate =
        _instance.bridge_recipes_cuisines_aggregate;
    return local$bridge_recipes_cuisines_aggregate == null
        ? CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp(
            local$bridge_recipes_cuisines_aggregate,
            (e) => call(bridge_recipes_cuisines_aggregate: e));
  }

  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes>
      get bridge_recipes_ingredients {
    final local$bridge_recipes_ingredients =
        _instance.bridge_recipes_ingredients;
    return local$bridge_recipes_ingredients == null
        ? CopyWith$Input$bridge_recipes_ingredients_bool_exp.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_bool_exp(
            local$bridge_recipes_ingredients,
            (e) => call(bridge_recipes_ingredients: e));
  }

  CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp<TRes>
      get bridge_recipes_ingredients_aggregate {
    final local$bridge_recipes_ingredients_aggregate =
        _instance.bridge_recipes_ingredients_aggregate;
    return local$bridge_recipes_ingredients_aggregate == null
        ? CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp(
            local$bridge_recipes_ingredients_aggregate,
            (e) => call(bridge_recipes_ingredients_aggregate: e));
  }

  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get bridge_recipes_tags {
    final local$bridge_recipes_tags = _instance.bridge_recipes_tags;
    return local$bridge_recipes_tags == null
        ? CopyWith$Input$bridge_recipes_tags_bool_exp.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_tags_bool_exp(
            local$bridge_recipes_tags, (e) => call(bridge_recipes_tags: e));
  }

  CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp<TRes>
      get bridge_recipes_tags_aggregate {
    final local$bridge_recipes_tags_aggregate =
        _instance.bridge_recipes_tags_aggregate;
    return local$bridge_recipes_tags_aggregate == null
        ? CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp(
            local$bridge_recipes_tags_aggregate,
            (e) => call(bridge_recipes_tags_aggregate: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get country {
    final local$country = _instance.country;
    return local$country == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$country, (e) => call(country: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$description, (e) => call(description: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get descriptionMarkdown {
    final local$descriptionMarkdown = _instance.descriptionMarkdown;
    return local$descriptionMarkdown == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$descriptionMarkdown, (e) => call(descriptionMarkdown: e));
  }

  CopyWith$Input$Int_comparison_exp<TRes> get difficulty {
    final local$difficulty = _instance.difficulty;
    return local$difficulty == null
        ? CopyWith$Input$Int_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$Int_comparison_exp(
            local$difficulty, (e) => call(difficulty: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get headline {
    final local$headline = _instance.headline;
    return local$headline == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$headline, (e) => call(headline: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(local$id, (e) => call(id: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get imagePath {
    final local$imagePath = _instance.imagePath;
    return local$imagePath == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$imagePath, (e) => call(imagePath: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get prepTime {
    final local$prepTime = _instance.prepTime;
    return local$prepTime == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$prepTime, (e) => call(prepTime: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get slug {
    final local$slug = _instance.slug;
    return local$slug == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$slug, (e) => call(slug: e));
  }

  CopyWith$Input$jsonb_comparison_exp<TRes> get steps {
    final local$steps = _instance.steps;
    return local$steps == null
        ? CopyWith$Input$jsonb_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$jsonb_comparison_exp(
            local$steps, (e) => call(steps: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get totalTime {
    final local$totalTime = _instance.totalTime;
    return local$totalTime == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$totalTime, (e) => call(totalTime: e));
  }

  CopyWith$Input$jsonb_comparison_exp<TRes> get yields_json {
    final local$yields_json = _instance.yields_json;
    return local$yields_json == null
        ? CopyWith$Input$jsonb_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$jsonb_comparison_exp(
            local$yields_json, (e) => call(yields_json: e));
  }
}

class _CopyWithStubImpl$Input$recipes_bool_exp<TRes>
    implements CopyWith$Input$recipes_bool_exp<TRes> {
  _CopyWithStubImpl$Input$recipes_bool_exp(this._res);

  TRes _res;

  call({
    List<Input$recipes_bool_exp>? $_and,
    Input$recipes_bool_exp? $_not,
    List<Input$recipes_bool_exp>? $_or,
    Input$bridge_recipes_cuisines_bool_exp? bridge_recipes_cuisines,
    Input$bridge_recipes_cuisines_aggregate_bool_exp?
        bridge_recipes_cuisines_aggregate,
    Input$bridge_recipes_ingredients_bool_exp? bridge_recipes_ingredients,
    Input$bridge_recipes_ingredients_aggregate_bool_exp?
        bridge_recipes_ingredients_aggregate,
    Input$bridge_recipes_tags_bool_exp? bridge_recipes_tags,
    Input$bridge_recipes_tags_aggregate_bool_exp? bridge_recipes_tags_aggregate,
    Input$String_comparison_exp? country,
    Input$String_comparison_exp? description,
    Input$String_comparison_exp? descriptionMarkdown,
    Input$Int_comparison_exp? difficulty,
    Input$String_comparison_exp? headline,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? imagePath,
    Input$String_comparison_exp? name,
    Input$String_comparison_exp? prepTime,
    Input$String_comparison_exp? slug,
    Input$jsonb_comparison_exp? steps,
    Input$String_comparison_exp? totalTime,
    Input$jsonb_comparison_exp? yields_json,
  }) =>
      _res;
  $_and(_fn) => _res;
  CopyWith$Input$recipes_bool_exp<TRes> get $_not =>
      CopyWith$Input$recipes_bool_exp.stub(_res);
  $_or(_fn) => _res;
  CopyWith$Input$bridge_recipes_cuisines_bool_exp<TRes>
      get bridge_recipes_cuisines =>
          CopyWith$Input$bridge_recipes_cuisines_bool_exp.stub(_res);
  CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp<TRes>
      get bridge_recipes_cuisines_aggregate =>
          CopyWith$Input$bridge_recipes_cuisines_aggregate_bool_exp.stub(_res);
  CopyWith$Input$bridge_recipes_ingredients_bool_exp<TRes>
      get bridge_recipes_ingredients =>
          CopyWith$Input$bridge_recipes_ingredients_bool_exp.stub(_res);
  CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp<TRes>
      get bridge_recipes_ingredients_aggregate =>
          CopyWith$Input$bridge_recipes_ingredients_aggregate_bool_exp.stub(
              _res);
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get bridge_recipes_tags =>
      CopyWith$Input$bridge_recipes_tags_bool_exp.stub(_res);
  CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp<TRes>
      get bridge_recipes_tags_aggregate =>
          CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get country =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get description =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get descriptionMarkdown =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$Int_comparison_exp<TRes> get difficulty =>
      CopyWith$Input$Int_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get headline =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get id =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get imagePath =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get name =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get prepTime =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get slug =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$jsonb_comparison_exp<TRes> get steps =>
      CopyWith$Input$jsonb_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get totalTime =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$jsonb_comparison_exp<TRes> get yields_json =>
      CopyWith$Input$jsonb_comparison_exp.stub(_res);
}

class Input$recipes_delete_at_path_input {
  factory Input$recipes_delete_at_path_input({
    List<String>? steps,
    List<String>? yields_json,
  }) =>
      Input$recipes_delete_at_path_input._({
        if (steps != null) r'steps': steps,
        if (yields_json != null) r'yields_json': yields_json,
      });

  Input$recipes_delete_at_path_input._(this._$data);

  factory Input$recipes_delete_at_path_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('steps')) {
      final l$steps = data['steps'];
      result$data['steps'] =
          (l$steps as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('yields_json')) {
      final l$yields_json = data['yields_json'];
      result$data['yields_json'] =
          (l$yields_json as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Input$recipes_delete_at_path_input._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get steps => (_$data['steps'] as List<String>?);
  List<String>? get yields_json => (_$data['yields_json'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('steps')) {
      final l$steps = steps;
      result$data['steps'] = l$steps?.map((e) => e).toList();
    }
    if (_$data.containsKey('yields_json')) {
      final l$yields_json = yields_json;
      result$data['yields_json'] = l$yields_json?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$recipes_delete_at_path_input<
          Input$recipes_delete_at_path_input>
      get copyWith => CopyWith$Input$recipes_delete_at_path_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_delete_at_path_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (_$data.containsKey('steps') != other._$data.containsKey('steps')) {
      return false;
    }
    if (l$steps != null && lOther$steps != null) {
      if (l$steps.length != lOther$steps.length) {
        return false;
      }
      for (int i = 0; i < l$steps.length; i++) {
        final l$steps$entry = l$steps[i];
        final lOther$steps$entry = lOther$steps[i];
        if (l$steps$entry != lOther$steps$entry) {
          return false;
        }
      }
    } else if (l$steps != lOther$steps) {
      return false;
    }
    final l$yields_json = yields_json;
    final lOther$yields_json = other.yields_json;
    if (_$data.containsKey('yields_json') !=
        other._$data.containsKey('yields_json')) {
      return false;
    }
    if (l$yields_json != null && lOther$yields_json != null) {
      if (l$yields_json.length != lOther$yields_json.length) {
        return false;
      }
      for (int i = 0; i < l$yields_json.length; i++) {
        final l$yields_json$entry = l$yields_json[i];
        final lOther$yields_json$entry = lOther$yields_json[i];
        if (l$yields_json$entry != lOther$yields_json$entry) {
          return false;
        }
      }
    } else if (l$yields_json != lOther$yields_json) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$steps = steps;
    final l$yields_json = yields_json;
    return Object.hashAll([
      _$data.containsKey('steps')
          ? l$steps == null
              ? null
              : Object.hashAll(l$steps.map((v) => v))
          : const {},
      _$data.containsKey('yields_json')
          ? l$yields_json == null
              ? null
              : Object.hashAll(l$yields_json.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$recipes_delete_at_path_input<TRes> {
  factory CopyWith$Input$recipes_delete_at_path_input(
    Input$recipes_delete_at_path_input instance,
    TRes Function(Input$recipes_delete_at_path_input) then,
  ) = _CopyWithImpl$Input$recipes_delete_at_path_input;

  factory CopyWith$Input$recipes_delete_at_path_input.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_delete_at_path_input;

  TRes call({
    List<String>? steps,
    List<String>? yields_json,
  });
}

class _CopyWithImpl$Input$recipes_delete_at_path_input<TRes>
    implements CopyWith$Input$recipes_delete_at_path_input<TRes> {
  _CopyWithImpl$Input$recipes_delete_at_path_input(
    this._instance,
    this._then,
  );

  final Input$recipes_delete_at_path_input _instance;

  final TRes Function(Input$recipes_delete_at_path_input) _then;

  static const _undefined = {};

  TRes call({
    Object? steps = _undefined,
    Object? yields_json = _undefined,
  }) =>
      _then(Input$recipes_delete_at_path_input._({
        ..._instance._$data,
        if (steps != _undefined) 'steps': (steps as List<String>?),
        if (yields_json != _undefined)
          'yields_json': (yields_json as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$recipes_delete_at_path_input<TRes>
    implements CopyWith$Input$recipes_delete_at_path_input<TRes> {
  _CopyWithStubImpl$Input$recipes_delete_at_path_input(this._res);

  TRes _res;

  call({
    List<String>? steps,
    List<String>? yields_json,
  }) =>
      _res;
}

class Input$recipes_delete_elem_input {
  factory Input$recipes_delete_elem_input({
    int? steps,
    int? yields_json,
  }) =>
      Input$recipes_delete_elem_input._({
        if (steps != null) r'steps': steps,
        if (yields_json != null) r'yields_json': yields_json,
      });

  Input$recipes_delete_elem_input._(this._$data);

  factory Input$recipes_delete_elem_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('steps')) {
      final l$steps = data['steps'];
      result$data['steps'] = (l$steps as int?);
    }
    if (data.containsKey('yields_json')) {
      final l$yields_json = data['yields_json'];
      result$data['yields_json'] = (l$yields_json as int?);
    }
    return Input$recipes_delete_elem_input._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get steps => (_$data['steps'] as int?);
  int? get yields_json => (_$data['yields_json'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('steps')) {
      final l$steps = steps;
      result$data['steps'] = l$steps;
    }
    if (_$data.containsKey('yields_json')) {
      final l$yields_json = yields_json;
      result$data['yields_json'] = l$yields_json;
    }
    return result$data;
  }

  CopyWith$Input$recipes_delete_elem_input<Input$recipes_delete_elem_input>
      get copyWith => CopyWith$Input$recipes_delete_elem_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_delete_elem_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (_$data.containsKey('steps') != other._$data.containsKey('steps')) {
      return false;
    }
    if (l$steps != lOther$steps) {
      return false;
    }
    final l$yields_json = yields_json;
    final lOther$yields_json = other.yields_json;
    if (_$data.containsKey('yields_json') !=
        other._$data.containsKey('yields_json')) {
      return false;
    }
    if (l$yields_json != lOther$yields_json) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$steps = steps;
    final l$yields_json = yields_json;
    return Object.hashAll([
      _$data.containsKey('steps') ? l$steps : const {},
      _$data.containsKey('yields_json') ? l$yields_json : const {},
    ]);
  }
}

abstract class CopyWith$Input$recipes_delete_elem_input<TRes> {
  factory CopyWith$Input$recipes_delete_elem_input(
    Input$recipes_delete_elem_input instance,
    TRes Function(Input$recipes_delete_elem_input) then,
  ) = _CopyWithImpl$Input$recipes_delete_elem_input;

  factory CopyWith$Input$recipes_delete_elem_input.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_delete_elem_input;

  TRes call({
    int? steps,
    int? yields_json,
  });
}

class _CopyWithImpl$Input$recipes_delete_elem_input<TRes>
    implements CopyWith$Input$recipes_delete_elem_input<TRes> {
  _CopyWithImpl$Input$recipes_delete_elem_input(
    this._instance,
    this._then,
  );

  final Input$recipes_delete_elem_input _instance;

  final TRes Function(Input$recipes_delete_elem_input) _then;

  static const _undefined = {};

  TRes call({
    Object? steps = _undefined,
    Object? yields_json = _undefined,
  }) =>
      _then(Input$recipes_delete_elem_input._({
        ..._instance._$data,
        if (steps != _undefined) 'steps': (steps as int?),
        if (yields_json != _undefined) 'yields_json': (yields_json as int?),
      }));
}

class _CopyWithStubImpl$Input$recipes_delete_elem_input<TRes>
    implements CopyWith$Input$recipes_delete_elem_input<TRes> {
  _CopyWithStubImpl$Input$recipes_delete_elem_input(this._res);

  TRes _res;

  call({
    int? steps,
    int? yields_json,
  }) =>
      _res;
}

class Input$recipes_delete_key_input {
  factory Input$recipes_delete_key_input({
    String? steps,
    String? yields_json,
  }) =>
      Input$recipes_delete_key_input._({
        if (steps != null) r'steps': steps,
        if (yields_json != null) r'yields_json': yields_json,
      });

  Input$recipes_delete_key_input._(this._$data);

  factory Input$recipes_delete_key_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('steps')) {
      final l$steps = data['steps'];
      result$data['steps'] = (l$steps as String?);
    }
    if (data.containsKey('yields_json')) {
      final l$yields_json = data['yields_json'];
      result$data['yields_json'] = (l$yields_json as String?);
    }
    return Input$recipes_delete_key_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get steps => (_$data['steps'] as String?);
  String? get yields_json => (_$data['yields_json'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('steps')) {
      final l$steps = steps;
      result$data['steps'] = l$steps;
    }
    if (_$data.containsKey('yields_json')) {
      final l$yields_json = yields_json;
      result$data['yields_json'] = l$yields_json;
    }
    return result$data;
  }

  CopyWith$Input$recipes_delete_key_input<Input$recipes_delete_key_input>
      get copyWith => CopyWith$Input$recipes_delete_key_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_delete_key_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (_$data.containsKey('steps') != other._$data.containsKey('steps')) {
      return false;
    }
    if (l$steps != lOther$steps) {
      return false;
    }
    final l$yields_json = yields_json;
    final lOther$yields_json = other.yields_json;
    if (_$data.containsKey('yields_json') !=
        other._$data.containsKey('yields_json')) {
      return false;
    }
    if (l$yields_json != lOther$yields_json) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$steps = steps;
    final l$yields_json = yields_json;
    return Object.hashAll([
      _$data.containsKey('steps') ? l$steps : const {},
      _$data.containsKey('yields_json') ? l$yields_json : const {},
    ]);
  }
}

abstract class CopyWith$Input$recipes_delete_key_input<TRes> {
  factory CopyWith$Input$recipes_delete_key_input(
    Input$recipes_delete_key_input instance,
    TRes Function(Input$recipes_delete_key_input) then,
  ) = _CopyWithImpl$Input$recipes_delete_key_input;

  factory CopyWith$Input$recipes_delete_key_input.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_delete_key_input;

  TRes call({
    String? steps,
    String? yields_json,
  });
}

class _CopyWithImpl$Input$recipes_delete_key_input<TRes>
    implements CopyWith$Input$recipes_delete_key_input<TRes> {
  _CopyWithImpl$Input$recipes_delete_key_input(
    this._instance,
    this._then,
  );

  final Input$recipes_delete_key_input _instance;

  final TRes Function(Input$recipes_delete_key_input) _then;

  static const _undefined = {};

  TRes call({
    Object? steps = _undefined,
    Object? yields_json = _undefined,
  }) =>
      _then(Input$recipes_delete_key_input._({
        ..._instance._$data,
        if (steps != _undefined) 'steps': (steps as String?),
        if (yields_json != _undefined) 'yields_json': (yields_json as String?),
      }));
}

class _CopyWithStubImpl$Input$recipes_delete_key_input<TRes>
    implements CopyWith$Input$recipes_delete_key_input<TRes> {
  _CopyWithStubImpl$Input$recipes_delete_key_input(this._res);

  TRes _res;

  call({
    String? steps,
    String? yields_json,
  }) =>
      _res;
}

class Input$recipes_inc_input {
  factory Input$recipes_inc_input({int? difficulty}) =>
      Input$recipes_inc_input._({
        if (difficulty != null) r'difficulty': difficulty,
      });

  Input$recipes_inc_input._(this._$data);

  factory Input$recipes_inc_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('difficulty')) {
      final l$difficulty = data['difficulty'];
      result$data['difficulty'] = (l$difficulty as int?);
    }
    return Input$recipes_inc_input._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get difficulty => (_$data['difficulty'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('difficulty')) {
      final l$difficulty = difficulty;
      result$data['difficulty'] = l$difficulty;
    }
    return result$data;
  }

  CopyWith$Input$recipes_inc_input<Input$recipes_inc_input> get copyWith =>
      CopyWith$Input$recipes_inc_input(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_inc_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$difficulty = difficulty;
    final lOther$difficulty = other.difficulty;
    if (_$data.containsKey('difficulty') !=
        other._$data.containsKey('difficulty')) {
      return false;
    }
    if (l$difficulty != lOther$difficulty) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$difficulty = difficulty;
    return Object.hashAll(
        [_$data.containsKey('difficulty') ? l$difficulty : const {}]);
  }
}

abstract class CopyWith$Input$recipes_inc_input<TRes> {
  factory CopyWith$Input$recipes_inc_input(
    Input$recipes_inc_input instance,
    TRes Function(Input$recipes_inc_input) then,
  ) = _CopyWithImpl$Input$recipes_inc_input;

  factory CopyWith$Input$recipes_inc_input.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_inc_input;

  TRes call({int? difficulty});
}

class _CopyWithImpl$Input$recipes_inc_input<TRes>
    implements CopyWith$Input$recipes_inc_input<TRes> {
  _CopyWithImpl$Input$recipes_inc_input(
    this._instance,
    this._then,
  );

  final Input$recipes_inc_input _instance;

  final TRes Function(Input$recipes_inc_input) _then;

  static const _undefined = {};

  TRes call({Object? difficulty = _undefined}) =>
      _then(Input$recipes_inc_input._({
        ..._instance._$data,
        if (difficulty != _undefined) 'difficulty': (difficulty as int?),
      }));
}

class _CopyWithStubImpl$Input$recipes_inc_input<TRes>
    implements CopyWith$Input$recipes_inc_input<TRes> {
  _CopyWithStubImpl$Input$recipes_inc_input(this._res);

  TRes _res;

  call({int? difficulty}) => _res;
}

class Input$recipes_insert_input {
  factory Input$recipes_insert_input({
    Input$bridge_recipes_cuisines_arr_rel_insert_input? bridge_recipes_cuisines,
    Input$bridge_recipes_ingredients_arr_rel_insert_input?
        bridge_recipes_ingredients,
    Input$bridge_recipes_tags_arr_rel_insert_input? bridge_recipes_tags,
    required String country,
    required String description,
    String? descriptionMarkdown,
    required int difficulty,
    required String headline,
    required String id,
    String? imagePath,
    required String name,
    String? prepTime,
    required String slug,
    required String steps,
    String? totalTime,
    required String yields_json,
  }) =>
      Input$recipes_insert_input._({
        if (bridge_recipes_cuisines != null)
          r'bridge_recipes_cuisines': bridge_recipes_cuisines,
        if (bridge_recipes_ingredients != null)
          r'bridge_recipes_ingredients': bridge_recipes_ingredients,
        if (bridge_recipes_tags != null)
          r'bridge_recipes_tags': bridge_recipes_tags,
        r'country': country,
        r'description': description,
        if (descriptionMarkdown != null)
          r'descriptionMarkdown': descriptionMarkdown,
        r'difficulty': difficulty,
        r'headline': headline,
        r'id': id,
        if (imagePath != null) r'imagePath': imagePath,
        r'name': name,
        if (prepTime != null) r'prepTime': prepTime,
        r'slug': slug,
        r'steps': steps,
        if (totalTime != null) r'totalTime': totalTime,
        r'yields_json': yields_json,
      });

  Input$recipes_insert_input._(this._$data);

  factory Input$recipes_insert_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bridge_recipes_cuisines')) {
      final l$bridge_recipes_cuisines = data['bridge_recipes_cuisines'];
      result$data['bridge_recipes_cuisines'] = l$bridge_recipes_cuisines == null
          ? null
          : Input$bridge_recipes_cuisines_arr_rel_insert_input.fromJson(
              (l$bridge_recipes_cuisines as Map<String, dynamic>));
    }
    if (data.containsKey('bridge_recipes_ingredients')) {
      final l$bridge_recipes_ingredients = data['bridge_recipes_ingredients'];
      result$data['bridge_recipes_ingredients'] =
          l$bridge_recipes_ingredients == null
              ? null
              : Input$bridge_recipes_ingredients_arr_rel_insert_input.fromJson(
                  (l$bridge_recipes_ingredients as Map<String, dynamic>));
    }
    if (data.containsKey('bridge_recipes_tags')) {
      final l$bridge_recipes_tags = data['bridge_recipes_tags'];
      result$data['bridge_recipes_tags'] = l$bridge_recipes_tags == null
          ? null
          : Input$bridge_recipes_tags_arr_rel_insert_input.fromJson(
              (l$bridge_recipes_tags as Map<String, dynamic>));
    }
    final l$country = data['country'];
    result$data['country'] = (l$country as String);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    if (data.containsKey('descriptionMarkdown')) {
      final l$descriptionMarkdown = data['descriptionMarkdown'];
      result$data['descriptionMarkdown'] = (l$descriptionMarkdown as String?);
    }
    final l$difficulty = data['difficulty'];
    result$data['difficulty'] = (l$difficulty as int);
    final l$headline = data['headline'];
    result$data['headline'] = (l$headline as String);
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('imagePath')) {
      final l$imagePath = data['imagePath'];
      result$data['imagePath'] = (l$imagePath as String?);
    }
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('prepTime')) {
      final l$prepTime = data['prepTime'];
      result$data['prepTime'] = (l$prepTime as String?);
    }
    final l$slug = data['slug'];
    result$data['slug'] = (l$slug as String);
    final l$steps = data['steps'];
    result$data['steps'] = (l$steps as String);
    if (data.containsKey('totalTime')) {
      final l$totalTime = data['totalTime'];
      result$data['totalTime'] = (l$totalTime as String?);
    }
    final l$yields_json = data['yields_json'];
    result$data['yields_json'] = (l$yields_json as String);
    return Input$recipes_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_cuisines_arr_rel_insert_input?
      get bridge_recipes_cuisines => (_$data['bridge_recipes_cuisines']
          as Input$bridge_recipes_cuisines_arr_rel_insert_input?);
  Input$bridge_recipes_ingredients_arr_rel_insert_input?
      get bridge_recipes_ingredients => (_$data['bridge_recipes_ingredients']
          as Input$bridge_recipes_ingredients_arr_rel_insert_input?);
  Input$bridge_recipes_tags_arr_rel_insert_input? get bridge_recipes_tags =>
      (_$data['bridge_recipes_tags']
          as Input$bridge_recipes_tags_arr_rel_insert_input?);
  String get country => (_$data['country'] as String);
  String get description => (_$data['description'] as String);
  String? get descriptionMarkdown => (_$data['descriptionMarkdown'] as String?);
  int get difficulty => (_$data['difficulty'] as int);
  String get headline => (_$data['headline'] as String);
  String get id => (_$data['id'] as String);
  String? get imagePath => (_$data['imagePath'] as String?);
  String get name => (_$data['name'] as String);
  String? get prepTime => (_$data['prepTime'] as String?);
  String get slug => (_$data['slug'] as String);
  String get steps => (_$data['steps'] as String);
  String? get totalTime => (_$data['totalTime'] as String?);
  String get yields_json => (_$data['yields_json'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bridge_recipes_cuisines')) {
      final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
      result$data['bridge_recipes_cuisines'] =
          l$bridge_recipes_cuisines?.toJson();
    }
    if (_$data.containsKey('bridge_recipes_ingredients')) {
      final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
      result$data['bridge_recipes_ingredients'] =
          l$bridge_recipes_ingredients?.toJson();
    }
    if (_$data.containsKey('bridge_recipes_tags')) {
      final l$bridge_recipes_tags = bridge_recipes_tags;
      result$data['bridge_recipes_tags'] = l$bridge_recipes_tags?.toJson();
    }
    final l$country = country;
    result$data['country'] = l$country;
    final l$description = description;
    result$data['description'] = l$description;
    if (_$data.containsKey('descriptionMarkdown')) {
      final l$descriptionMarkdown = descriptionMarkdown;
      result$data['descriptionMarkdown'] = l$descriptionMarkdown;
    }
    final l$difficulty = difficulty;
    result$data['difficulty'] = l$difficulty;
    final l$headline = headline;
    result$data['headline'] = l$headline;
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('imagePath')) {
      final l$imagePath = imagePath;
      result$data['imagePath'] = l$imagePath;
    }
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('prepTime')) {
      final l$prepTime = prepTime;
      result$data['prepTime'] = l$prepTime;
    }
    final l$slug = slug;
    result$data['slug'] = l$slug;
    final l$steps = steps;
    result$data['steps'] = l$steps;
    if (_$data.containsKey('totalTime')) {
      final l$totalTime = totalTime;
      result$data['totalTime'] = l$totalTime;
    }
    final l$yields_json = yields_json;
    result$data['yields_json'] = l$yields_json;
    return result$data;
  }

  CopyWith$Input$recipes_insert_input<Input$recipes_insert_input>
      get copyWith => CopyWith$Input$recipes_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
    final lOther$bridge_recipes_cuisines = other.bridge_recipes_cuisines;
    if (_$data.containsKey('bridge_recipes_cuisines') !=
        other._$data.containsKey('bridge_recipes_cuisines')) {
      return false;
    }
    if (l$bridge_recipes_cuisines != lOther$bridge_recipes_cuisines) {
      return false;
    }
    final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
    final lOther$bridge_recipes_ingredients = other.bridge_recipes_ingredients;
    if (_$data.containsKey('bridge_recipes_ingredients') !=
        other._$data.containsKey('bridge_recipes_ingredients')) {
      return false;
    }
    if (l$bridge_recipes_ingredients != lOther$bridge_recipes_ingredients) {
      return false;
    }
    final l$bridge_recipes_tags = bridge_recipes_tags;
    final lOther$bridge_recipes_tags = other.bridge_recipes_tags;
    if (_$data.containsKey('bridge_recipes_tags') !=
        other._$data.containsKey('bridge_recipes_tags')) {
      return false;
    }
    if (l$bridge_recipes_tags != lOther$bridge_recipes_tags) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$descriptionMarkdown = descriptionMarkdown;
    final lOther$descriptionMarkdown = other.descriptionMarkdown;
    if (_$data.containsKey('descriptionMarkdown') !=
        other._$data.containsKey('descriptionMarkdown')) {
      return false;
    }
    if (l$descriptionMarkdown != lOther$descriptionMarkdown) {
      return false;
    }
    final l$difficulty = difficulty;
    final lOther$difficulty = other.difficulty;
    if (l$difficulty != lOther$difficulty) {
      return false;
    }
    final l$headline = headline;
    final lOther$headline = other.headline;
    if (l$headline != lOther$headline) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (_$data.containsKey('imagePath') !=
        other._$data.containsKey('imagePath')) {
      return false;
    }
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$prepTime = prepTime;
    final lOther$prepTime = other.prepTime;
    if (_$data.containsKey('prepTime') !=
        other._$data.containsKey('prepTime')) {
      return false;
    }
    if (l$prepTime != lOther$prepTime) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (l$steps != lOther$steps) {
      return false;
    }
    final l$totalTime = totalTime;
    final lOther$totalTime = other.totalTime;
    if (_$data.containsKey('totalTime') !=
        other._$data.containsKey('totalTime')) {
      return false;
    }
    if (l$totalTime != lOther$totalTime) {
      return false;
    }
    final l$yields_json = yields_json;
    final lOther$yields_json = other.yields_json;
    if (l$yields_json != lOther$yields_json) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
    final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
    final l$bridge_recipes_tags = bridge_recipes_tags;
    final l$country = country;
    final l$description = description;
    final l$descriptionMarkdown = descriptionMarkdown;
    final l$difficulty = difficulty;
    final l$headline = headline;
    final l$id = id;
    final l$imagePath = imagePath;
    final l$name = name;
    final l$prepTime = prepTime;
    final l$slug = slug;
    final l$steps = steps;
    final l$totalTime = totalTime;
    final l$yields_json = yields_json;
    return Object.hashAll([
      _$data.containsKey('bridge_recipes_cuisines')
          ? l$bridge_recipes_cuisines
          : const {},
      _$data.containsKey('bridge_recipes_ingredients')
          ? l$bridge_recipes_ingredients
          : const {},
      _$data.containsKey('bridge_recipes_tags')
          ? l$bridge_recipes_tags
          : const {},
      l$country,
      l$description,
      _$data.containsKey('descriptionMarkdown')
          ? l$descriptionMarkdown
          : const {},
      l$difficulty,
      l$headline,
      l$id,
      _$data.containsKey('imagePath') ? l$imagePath : const {},
      l$name,
      _$data.containsKey('prepTime') ? l$prepTime : const {},
      l$slug,
      l$steps,
      _$data.containsKey('totalTime') ? l$totalTime : const {},
      l$yields_json,
    ]);
  }
}

abstract class CopyWith$Input$recipes_insert_input<TRes> {
  factory CopyWith$Input$recipes_insert_input(
    Input$recipes_insert_input instance,
    TRes Function(Input$recipes_insert_input) then,
  ) = _CopyWithImpl$Input$recipes_insert_input;

  factory CopyWith$Input$recipes_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_insert_input;

  TRes call({
    Input$bridge_recipes_cuisines_arr_rel_insert_input? bridge_recipes_cuisines,
    Input$bridge_recipes_ingredients_arr_rel_insert_input?
        bridge_recipes_ingredients,
    Input$bridge_recipes_tags_arr_rel_insert_input? bridge_recipes_tags,
    String? country,
    String? description,
    String? descriptionMarkdown,
    int? difficulty,
    String? headline,
    String? id,
    String? imagePath,
    String? name,
    String? prepTime,
    String? slug,
    String? steps,
    String? totalTime,
    String? yields_json,
  });
  CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input<TRes>
      get bridge_recipes_cuisines;
  CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input<TRes>
      get bridge_recipes_ingredients;
  CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input<TRes>
      get bridge_recipes_tags;
}

class _CopyWithImpl$Input$recipes_insert_input<TRes>
    implements CopyWith$Input$recipes_insert_input<TRes> {
  _CopyWithImpl$Input$recipes_insert_input(
    this._instance,
    this._then,
  );

  final Input$recipes_insert_input _instance;

  final TRes Function(Input$recipes_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? bridge_recipes_cuisines = _undefined,
    Object? bridge_recipes_ingredients = _undefined,
    Object? bridge_recipes_tags = _undefined,
    Object? country = _undefined,
    Object? description = _undefined,
    Object? descriptionMarkdown = _undefined,
    Object? difficulty = _undefined,
    Object? headline = _undefined,
    Object? id = _undefined,
    Object? imagePath = _undefined,
    Object? name = _undefined,
    Object? prepTime = _undefined,
    Object? slug = _undefined,
    Object? steps = _undefined,
    Object? totalTime = _undefined,
    Object? yields_json = _undefined,
  }) =>
      _then(Input$recipes_insert_input._({
        ..._instance._$data,
        if (bridge_recipes_cuisines != _undefined)
          'bridge_recipes_cuisines': (bridge_recipes_cuisines
              as Input$bridge_recipes_cuisines_arr_rel_insert_input?),
        if (bridge_recipes_ingredients != _undefined)
          'bridge_recipes_ingredients': (bridge_recipes_ingredients
              as Input$bridge_recipes_ingredients_arr_rel_insert_input?),
        if (bridge_recipes_tags != _undefined)
          'bridge_recipes_tags': (bridge_recipes_tags
              as Input$bridge_recipes_tags_arr_rel_insert_input?),
        if (country != _undefined && country != null)
          'country': (country as String),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (descriptionMarkdown != _undefined)
          'descriptionMarkdown': (descriptionMarkdown as String?),
        if (difficulty != _undefined && difficulty != null)
          'difficulty': (difficulty as int),
        if (headline != _undefined && headline != null)
          'headline': (headline as String),
        if (id != _undefined && id != null) 'id': (id as String),
        if (imagePath != _undefined) 'imagePath': (imagePath as String?),
        if (name != _undefined && name != null) 'name': (name as String),
        if (prepTime != _undefined) 'prepTime': (prepTime as String?),
        if (slug != _undefined && slug != null) 'slug': (slug as String),
        if (steps != _undefined && steps != null) 'steps': (steps as String),
        if (totalTime != _undefined) 'totalTime': (totalTime as String?),
        if (yields_json != _undefined && yields_json != null)
          'yields_json': (yields_json as String),
      }));
  CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input<TRes>
      get bridge_recipes_cuisines {
    final local$bridge_recipes_cuisines = _instance.bridge_recipes_cuisines;
    return local$bridge_recipes_cuisines == null
        ? CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input(
            local$bridge_recipes_cuisines,
            (e) => call(bridge_recipes_cuisines: e));
  }

  CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input<TRes>
      get bridge_recipes_ingredients {
    final local$bridge_recipes_ingredients =
        _instance.bridge_recipes_ingredients;
    return local$bridge_recipes_ingredients == null
        ? CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input(
            local$bridge_recipes_ingredients,
            (e) => call(bridge_recipes_ingredients: e));
  }

  CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input<TRes>
      get bridge_recipes_tags {
    final local$bridge_recipes_tags = _instance.bridge_recipes_tags;
    return local$bridge_recipes_tags == null
        ? CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input(
            local$bridge_recipes_tags, (e) => call(bridge_recipes_tags: e));
  }
}

class _CopyWithStubImpl$Input$recipes_insert_input<TRes>
    implements CopyWith$Input$recipes_insert_input<TRes> {
  _CopyWithStubImpl$Input$recipes_insert_input(this._res);

  TRes _res;

  call({
    Input$bridge_recipes_cuisines_arr_rel_insert_input? bridge_recipes_cuisines,
    Input$bridge_recipes_ingredients_arr_rel_insert_input?
        bridge_recipes_ingredients,
    Input$bridge_recipes_tags_arr_rel_insert_input? bridge_recipes_tags,
    String? country,
    String? description,
    String? descriptionMarkdown,
    int? difficulty,
    String? headline,
    String? id,
    String? imagePath,
    String? name,
    String? prepTime,
    String? slug,
    String? steps,
    String? totalTime,
    String? yields_json,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input<TRes>
      get bridge_recipes_cuisines =>
          CopyWith$Input$bridge_recipes_cuisines_arr_rel_insert_input.stub(
              _res);
  CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input<TRes>
      get bridge_recipes_ingredients =>
          CopyWith$Input$bridge_recipes_ingredients_arr_rel_insert_input.stub(
              _res);
  CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input<TRes>
      get bridge_recipes_tags =>
          CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input.stub(_res);
}

class Input$recipes_obj_rel_insert_input {
  factory Input$recipes_obj_rel_insert_input({
    required Input$recipes_insert_input data,
    Input$recipes_on_conflict? on_conflict,
  }) =>
      Input$recipes_obj_rel_insert_input._({
        r'data': data,
        if (on_conflict != null) r'on_conflict': on_conflict,
      });

  Input$recipes_obj_rel_insert_input._(this._$data);

  factory Input$recipes_obj_rel_insert_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$recipes_insert_input.fromJson((l$data as Map<String, dynamic>));
    if (data.containsKey('on_conflict')) {
      final l$on_conflict = data['on_conflict'];
      result$data['on_conflict'] = l$on_conflict == null
          ? null
          : Input$recipes_on_conflict.fromJson(
              (l$on_conflict as Map<String, dynamic>));
    }
    return Input$recipes_obj_rel_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$recipes_insert_input get data =>
      (_$data['data'] as Input$recipes_insert_input);
  Input$recipes_on_conflict? get on_conflict =>
      (_$data['on_conflict'] as Input$recipes_on_conflict?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    if (_$data.containsKey('on_conflict')) {
      final l$on_conflict = on_conflict;
      result$data['on_conflict'] = l$on_conflict?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$recipes_obj_rel_insert_input<
          Input$recipes_obj_rel_insert_input>
      get copyWith => CopyWith$Input$recipes_obj_rel_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_obj_rel_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (_$data.containsKey('on_conflict') !=
        other._$data.containsKey('on_conflict')) {
      return false;
    }
    if (l$on_conflict != lOther$on_conflict) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll([
      l$data,
      _$data.containsKey('on_conflict') ? l$on_conflict : const {},
    ]);
  }
}

abstract class CopyWith$Input$recipes_obj_rel_insert_input<TRes> {
  factory CopyWith$Input$recipes_obj_rel_insert_input(
    Input$recipes_obj_rel_insert_input instance,
    TRes Function(Input$recipes_obj_rel_insert_input) then,
  ) = _CopyWithImpl$Input$recipes_obj_rel_insert_input;

  factory CopyWith$Input$recipes_obj_rel_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_obj_rel_insert_input;

  TRes call({
    Input$recipes_insert_input? data,
    Input$recipes_on_conflict? on_conflict,
  });
  CopyWith$Input$recipes_insert_input<TRes> get data;
  CopyWith$Input$recipes_on_conflict<TRes> get on_conflict;
}

class _CopyWithImpl$Input$recipes_obj_rel_insert_input<TRes>
    implements CopyWith$Input$recipes_obj_rel_insert_input<TRes> {
  _CopyWithImpl$Input$recipes_obj_rel_insert_input(
    this._instance,
    this._then,
  );

  final Input$recipes_obj_rel_insert_input _instance;

  final TRes Function(Input$recipes_obj_rel_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? data = _undefined,
    Object? on_conflict = _undefined,
  }) =>
      _then(Input$recipes_obj_rel_insert_input._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$recipes_insert_input),
        if (on_conflict != _undefined)
          'on_conflict': (on_conflict as Input$recipes_on_conflict?),
      }));
  CopyWith$Input$recipes_insert_input<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$recipes_insert_input(
        local$data, (e) => call(data: e));
  }

  CopyWith$Input$recipes_on_conflict<TRes> get on_conflict {
    final local$on_conflict = _instance.on_conflict;
    return local$on_conflict == null
        ? CopyWith$Input$recipes_on_conflict.stub(_then(_instance))
        : CopyWith$Input$recipes_on_conflict(
            local$on_conflict, (e) => call(on_conflict: e));
  }
}

class _CopyWithStubImpl$Input$recipes_obj_rel_insert_input<TRes>
    implements CopyWith$Input$recipes_obj_rel_insert_input<TRes> {
  _CopyWithStubImpl$Input$recipes_obj_rel_insert_input(this._res);

  TRes _res;

  call({
    Input$recipes_insert_input? data,
    Input$recipes_on_conflict? on_conflict,
  }) =>
      _res;
  CopyWith$Input$recipes_insert_input<TRes> get data =>
      CopyWith$Input$recipes_insert_input.stub(_res);
  CopyWith$Input$recipes_on_conflict<TRes> get on_conflict =>
      CopyWith$Input$recipes_on_conflict.stub(_res);
}

class Input$recipes_on_conflict {
  factory Input$recipes_on_conflict({
    required Enum$recipes_constraint constraint,
    required List<Enum$recipes_update_column> update_columns,
    Input$recipes_bool_exp? where,
  }) =>
      Input$recipes_on_conflict._({
        r'constraint': constraint,
        r'update_columns': update_columns,
        if (where != null) r'where': where,
      });

  Input$recipes_on_conflict._(this._$data);

  factory Input$recipes_on_conflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson$Enum$recipes_constraint((l$constraint as String));
    final l$update_columns = data['update_columns'];
    result$data['update_columns'] = (l$update_columns as List<dynamic>)
        .map((e) => fromJson$Enum$recipes_update_column((e as String)))
        .toList();
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$recipes_bool_exp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input$recipes_on_conflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$recipes_constraint get constraint =>
      (_$data['constraint'] as Enum$recipes_constraint);
  List<Enum$recipes_update_column> get update_columns =>
      (_$data['update_columns'] as List<Enum$recipes_update_column>);
  Input$recipes_bool_exp? get where =>
      (_$data['where'] as Input$recipes_bool_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson$Enum$recipes_constraint(l$constraint);
    final l$update_columns = update_columns;
    result$data['update_columns'] = l$update_columns
        .map((e) => toJson$Enum$recipes_update_column(e))
        .toList();
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$recipes_on_conflict<Input$recipes_on_conflict> get copyWith =>
      CopyWith$Input$recipes_on_conflict(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_on_conflict) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) {
      return false;
    }
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) {
        return false;
      }
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith$Input$recipes_on_conflict<TRes> {
  factory CopyWith$Input$recipes_on_conflict(
    Input$recipes_on_conflict instance,
    TRes Function(Input$recipes_on_conflict) then,
  ) = _CopyWithImpl$Input$recipes_on_conflict;

  factory CopyWith$Input$recipes_on_conflict.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_on_conflict;

  TRes call({
    Enum$recipes_constraint? constraint,
    List<Enum$recipes_update_column>? update_columns,
    Input$recipes_bool_exp? where,
  });
  CopyWith$Input$recipes_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$recipes_on_conflict<TRes>
    implements CopyWith$Input$recipes_on_conflict<TRes> {
  _CopyWithImpl$Input$recipes_on_conflict(
    this._instance,
    this._then,
  );

  final Input$recipes_on_conflict _instance;

  final TRes Function(Input$recipes_on_conflict) _then;

  static const _undefined = {};

  TRes call({
    Object? constraint = _undefined,
    Object? update_columns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$recipes_on_conflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum$recipes_constraint),
        if (update_columns != _undefined && update_columns != null)
          'update_columns':
              (update_columns as List<Enum$recipes_update_column>),
        if (where != _undefined) 'where': (where as Input$recipes_bool_exp?),
      }));
  CopyWith$Input$recipes_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith$Input$recipes_bool_exp.stub(_then(_instance))
        : CopyWith$Input$recipes_bool_exp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$recipes_on_conflict<TRes>
    implements CopyWith$Input$recipes_on_conflict<TRes> {
  _CopyWithStubImpl$Input$recipes_on_conflict(this._res);

  TRes _res;

  call({
    Enum$recipes_constraint? constraint,
    List<Enum$recipes_update_column>? update_columns,
    Input$recipes_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$recipes_bool_exp<TRes> get where =>
      CopyWith$Input$recipes_bool_exp.stub(_res);
}

class Input$recipes_order_by {
  factory Input$recipes_order_by({
    Input$bridge_recipes_cuisines_aggregate_order_by?
        bridge_recipes_cuisines_aggregate,
    Input$bridge_recipes_ingredients_aggregate_order_by?
        bridge_recipes_ingredients_aggregate,
    Input$bridge_recipes_tags_aggregate_order_by? bridge_recipes_tags_aggregate,
    Enum$order_by? country,
    Enum$order_by? description,
    Enum$order_by? descriptionMarkdown,
    Enum$order_by? difficulty,
    Enum$order_by? headline,
    Enum$order_by? id,
    Enum$order_by? imagePath,
    Enum$order_by? name,
    Enum$order_by? prepTime,
    Enum$order_by? slug,
    Enum$order_by? steps,
    Enum$order_by? totalTime,
    Enum$order_by? yields_json,
  }) =>
      Input$recipes_order_by._({
        if (bridge_recipes_cuisines_aggregate != null)
          r'bridge_recipes_cuisines_aggregate':
              bridge_recipes_cuisines_aggregate,
        if (bridge_recipes_ingredients_aggregate != null)
          r'bridge_recipes_ingredients_aggregate':
              bridge_recipes_ingredients_aggregate,
        if (bridge_recipes_tags_aggregate != null)
          r'bridge_recipes_tags_aggregate': bridge_recipes_tags_aggregate,
        if (country != null) r'country': country,
        if (description != null) r'description': description,
        if (descriptionMarkdown != null)
          r'descriptionMarkdown': descriptionMarkdown,
        if (difficulty != null) r'difficulty': difficulty,
        if (headline != null) r'headline': headline,
        if (id != null) r'id': id,
        if (imagePath != null) r'imagePath': imagePath,
        if (name != null) r'name': name,
        if (prepTime != null) r'prepTime': prepTime,
        if (slug != null) r'slug': slug,
        if (steps != null) r'steps': steps,
        if (totalTime != null) r'totalTime': totalTime,
        if (yields_json != null) r'yields_json': yields_json,
      });

  Input$recipes_order_by._(this._$data);

  factory Input$recipes_order_by.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bridge_recipes_cuisines_aggregate')) {
      final l$bridge_recipes_cuisines_aggregate =
          data['bridge_recipes_cuisines_aggregate'];
      result$data['bridge_recipes_cuisines_aggregate'] =
          l$bridge_recipes_cuisines_aggregate == null
              ? null
              : Input$bridge_recipes_cuisines_aggregate_order_by.fromJson(
                  (l$bridge_recipes_cuisines_aggregate
                      as Map<String, dynamic>));
    }
    if (data.containsKey('bridge_recipes_ingredients_aggregate')) {
      final l$bridge_recipes_ingredients_aggregate =
          data['bridge_recipes_ingredients_aggregate'];
      result$data['bridge_recipes_ingredients_aggregate'] =
          l$bridge_recipes_ingredients_aggregate == null
              ? null
              : Input$bridge_recipes_ingredients_aggregate_order_by.fromJson(
                  (l$bridge_recipes_ingredients_aggregate
                      as Map<String, dynamic>));
    }
    if (data.containsKey('bridge_recipes_tags_aggregate')) {
      final l$bridge_recipes_tags_aggregate =
          data['bridge_recipes_tags_aggregate'];
      result$data['bridge_recipes_tags_aggregate'] =
          l$bridge_recipes_tags_aggregate == null
              ? null
              : Input$bridge_recipes_tags_aggregate_order_by.fromJson(
                  (l$bridge_recipes_tags_aggregate as Map<String, dynamic>));
    }
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = l$country == null
          ? null
          : fromJson$Enum$order_by((l$country as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$order_by((l$description as String));
    }
    if (data.containsKey('descriptionMarkdown')) {
      final l$descriptionMarkdown = data['descriptionMarkdown'];
      result$data['descriptionMarkdown'] = l$descriptionMarkdown == null
          ? null
          : fromJson$Enum$order_by((l$descriptionMarkdown as String));
    }
    if (data.containsKey('difficulty')) {
      final l$difficulty = data['difficulty'];
      result$data['difficulty'] = l$difficulty == null
          ? null
          : fromJson$Enum$order_by((l$difficulty as String));
    }
    if (data.containsKey('headline')) {
      final l$headline = data['headline'];
      result$data['headline'] = l$headline == null
          ? null
          : fromJson$Enum$order_by((l$headline as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    if (data.containsKey('imagePath')) {
      final l$imagePath = data['imagePath'];
      result$data['imagePath'] = l$imagePath == null
          ? null
          : fromJson$Enum$order_by((l$imagePath as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$order_by((l$name as String));
    }
    if (data.containsKey('prepTime')) {
      final l$prepTime = data['prepTime'];
      result$data['prepTime'] = l$prepTime == null
          ? null
          : fromJson$Enum$order_by((l$prepTime as String));
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] =
          l$slug == null ? null : fromJson$Enum$order_by((l$slug as String));
    }
    if (data.containsKey('steps')) {
      final l$steps = data['steps'];
      result$data['steps'] =
          l$steps == null ? null : fromJson$Enum$order_by((l$steps as String));
    }
    if (data.containsKey('totalTime')) {
      final l$totalTime = data['totalTime'];
      result$data['totalTime'] = l$totalTime == null
          ? null
          : fromJson$Enum$order_by((l$totalTime as String));
    }
    if (data.containsKey('yields_json')) {
      final l$yields_json = data['yields_json'];
      result$data['yields_json'] = l$yields_json == null
          ? null
          : fromJson$Enum$order_by((l$yields_json as String));
    }
    return Input$recipes_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_cuisines_aggregate_order_by?
      get bridge_recipes_cuisines_aggregate =>
          (_$data['bridge_recipes_cuisines_aggregate']
              as Input$bridge_recipes_cuisines_aggregate_order_by?);
  Input$bridge_recipes_ingredients_aggregate_order_by?
      get bridge_recipes_ingredients_aggregate =>
          (_$data['bridge_recipes_ingredients_aggregate']
              as Input$bridge_recipes_ingredients_aggregate_order_by?);
  Input$bridge_recipes_tags_aggregate_order_by?
      get bridge_recipes_tags_aggregate =>
          (_$data['bridge_recipes_tags_aggregate']
              as Input$bridge_recipes_tags_aggregate_order_by?);
  Enum$order_by? get country => (_$data['country'] as Enum$order_by?);
  Enum$order_by? get description => (_$data['description'] as Enum$order_by?);
  Enum$order_by? get descriptionMarkdown =>
      (_$data['descriptionMarkdown'] as Enum$order_by?);
  Enum$order_by? get difficulty => (_$data['difficulty'] as Enum$order_by?);
  Enum$order_by? get headline => (_$data['headline'] as Enum$order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Enum$order_by? get imagePath => (_$data['imagePath'] as Enum$order_by?);
  Enum$order_by? get name => (_$data['name'] as Enum$order_by?);
  Enum$order_by? get prepTime => (_$data['prepTime'] as Enum$order_by?);
  Enum$order_by? get slug => (_$data['slug'] as Enum$order_by?);
  Enum$order_by? get steps => (_$data['steps'] as Enum$order_by?);
  Enum$order_by? get totalTime => (_$data['totalTime'] as Enum$order_by?);
  Enum$order_by? get yields_json => (_$data['yields_json'] as Enum$order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bridge_recipes_cuisines_aggregate')) {
      final l$bridge_recipes_cuisines_aggregate =
          bridge_recipes_cuisines_aggregate;
      result$data['bridge_recipes_cuisines_aggregate'] =
          l$bridge_recipes_cuisines_aggregate?.toJson();
    }
    if (_$data.containsKey('bridge_recipes_ingredients_aggregate')) {
      final l$bridge_recipes_ingredients_aggregate =
          bridge_recipes_ingredients_aggregate;
      result$data['bridge_recipes_ingredients_aggregate'] =
          l$bridge_recipes_ingredients_aggregate?.toJson();
    }
    if (_$data.containsKey('bridge_recipes_tags_aggregate')) {
      final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
      result$data['bridge_recipes_tags_aggregate'] =
          l$bridge_recipes_tags_aggregate?.toJson();
    }
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] =
          l$country == null ? null : toJson$Enum$order_by(l$country);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] =
          l$description == null ? null : toJson$Enum$order_by(l$description);
    }
    if (_$data.containsKey('descriptionMarkdown')) {
      final l$descriptionMarkdown = descriptionMarkdown;
      result$data['descriptionMarkdown'] = l$descriptionMarkdown == null
          ? null
          : toJson$Enum$order_by(l$descriptionMarkdown);
    }
    if (_$data.containsKey('difficulty')) {
      final l$difficulty = difficulty;
      result$data['difficulty'] =
          l$difficulty == null ? null : toJson$Enum$order_by(l$difficulty);
    }
    if (_$data.containsKey('headline')) {
      final l$headline = headline;
      result$data['headline'] =
          l$headline == null ? null : toJson$Enum$order_by(l$headline);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    if (_$data.containsKey('imagePath')) {
      final l$imagePath = imagePath;
      result$data['imagePath'] =
          l$imagePath == null ? null : toJson$Enum$order_by(l$imagePath);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$order_by(l$name);
    }
    if (_$data.containsKey('prepTime')) {
      final l$prepTime = prepTime;
      result$data['prepTime'] =
          l$prepTime == null ? null : toJson$Enum$order_by(l$prepTime);
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] =
          l$slug == null ? null : toJson$Enum$order_by(l$slug);
    }
    if (_$data.containsKey('steps')) {
      final l$steps = steps;
      result$data['steps'] =
          l$steps == null ? null : toJson$Enum$order_by(l$steps);
    }
    if (_$data.containsKey('totalTime')) {
      final l$totalTime = totalTime;
      result$data['totalTime'] =
          l$totalTime == null ? null : toJson$Enum$order_by(l$totalTime);
    }
    if (_$data.containsKey('yields_json')) {
      final l$yields_json = yields_json;
      result$data['yields_json'] =
          l$yields_json == null ? null : toJson$Enum$order_by(l$yields_json);
    }
    return result$data;
  }

  CopyWith$Input$recipes_order_by<Input$recipes_order_by> get copyWith =>
      CopyWith$Input$recipes_order_by(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bridge_recipes_cuisines_aggregate =
        bridge_recipes_cuisines_aggregate;
    final lOther$bridge_recipes_cuisines_aggregate =
        other.bridge_recipes_cuisines_aggregate;
    if (_$data.containsKey('bridge_recipes_cuisines_aggregate') !=
        other._$data.containsKey('bridge_recipes_cuisines_aggregate')) {
      return false;
    }
    if (l$bridge_recipes_cuisines_aggregate !=
        lOther$bridge_recipes_cuisines_aggregate) {
      return false;
    }
    final l$bridge_recipes_ingredients_aggregate =
        bridge_recipes_ingredients_aggregate;
    final lOther$bridge_recipes_ingredients_aggregate =
        other.bridge_recipes_ingredients_aggregate;
    if (_$data.containsKey('bridge_recipes_ingredients_aggregate') !=
        other._$data.containsKey('bridge_recipes_ingredients_aggregate')) {
      return false;
    }
    if (l$bridge_recipes_ingredients_aggregate !=
        lOther$bridge_recipes_ingredients_aggregate) {
      return false;
    }
    final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
    final lOther$bridge_recipes_tags_aggregate =
        other.bridge_recipes_tags_aggregate;
    if (_$data.containsKey('bridge_recipes_tags_aggregate') !=
        other._$data.containsKey('bridge_recipes_tags_aggregate')) {
      return false;
    }
    if (l$bridge_recipes_tags_aggregate !=
        lOther$bridge_recipes_tags_aggregate) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$descriptionMarkdown = descriptionMarkdown;
    final lOther$descriptionMarkdown = other.descriptionMarkdown;
    if (_$data.containsKey('descriptionMarkdown') !=
        other._$data.containsKey('descriptionMarkdown')) {
      return false;
    }
    if (l$descriptionMarkdown != lOther$descriptionMarkdown) {
      return false;
    }
    final l$difficulty = difficulty;
    final lOther$difficulty = other.difficulty;
    if (_$data.containsKey('difficulty') !=
        other._$data.containsKey('difficulty')) {
      return false;
    }
    if (l$difficulty != lOther$difficulty) {
      return false;
    }
    final l$headline = headline;
    final lOther$headline = other.headline;
    if (_$data.containsKey('headline') !=
        other._$data.containsKey('headline')) {
      return false;
    }
    if (l$headline != lOther$headline) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (_$data.containsKey('imagePath') !=
        other._$data.containsKey('imagePath')) {
      return false;
    }
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$prepTime = prepTime;
    final lOther$prepTime = other.prepTime;
    if (_$data.containsKey('prepTime') !=
        other._$data.containsKey('prepTime')) {
      return false;
    }
    if (l$prepTime != lOther$prepTime) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (_$data.containsKey('steps') != other._$data.containsKey('steps')) {
      return false;
    }
    if (l$steps != lOther$steps) {
      return false;
    }
    final l$totalTime = totalTime;
    final lOther$totalTime = other.totalTime;
    if (_$data.containsKey('totalTime') !=
        other._$data.containsKey('totalTime')) {
      return false;
    }
    if (l$totalTime != lOther$totalTime) {
      return false;
    }
    final l$yields_json = yields_json;
    final lOther$yields_json = other.yields_json;
    if (_$data.containsKey('yields_json') !=
        other._$data.containsKey('yields_json')) {
      return false;
    }
    if (l$yields_json != lOther$yields_json) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bridge_recipes_cuisines_aggregate =
        bridge_recipes_cuisines_aggregate;
    final l$bridge_recipes_ingredients_aggregate =
        bridge_recipes_ingredients_aggregate;
    final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
    final l$country = country;
    final l$description = description;
    final l$descriptionMarkdown = descriptionMarkdown;
    final l$difficulty = difficulty;
    final l$headline = headline;
    final l$id = id;
    final l$imagePath = imagePath;
    final l$name = name;
    final l$prepTime = prepTime;
    final l$slug = slug;
    final l$steps = steps;
    final l$totalTime = totalTime;
    final l$yields_json = yields_json;
    return Object.hashAll([
      _$data.containsKey('bridge_recipes_cuisines_aggregate')
          ? l$bridge_recipes_cuisines_aggregate
          : const {},
      _$data.containsKey('bridge_recipes_ingredients_aggregate')
          ? l$bridge_recipes_ingredients_aggregate
          : const {},
      _$data.containsKey('bridge_recipes_tags_aggregate')
          ? l$bridge_recipes_tags_aggregate
          : const {},
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('descriptionMarkdown')
          ? l$descriptionMarkdown
          : const {},
      _$data.containsKey('difficulty') ? l$difficulty : const {},
      _$data.containsKey('headline') ? l$headline : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('imagePath') ? l$imagePath : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('prepTime') ? l$prepTime : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('steps') ? l$steps : const {},
      _$data.containsKey('totalTime') ? l$totalTime : const {},
      _$data.containsKey('yields_json') ? l$yields_json : const {},
    ]);
  }
}

abstract class CopyWith$Input$recipes_order_by<TRes> {
  factory CopyWith$Input$recipes_order_by(
    Input$recipes_order_by instance,
    TRes Function(Input$recipes_order_by) then,
  ) = _CopyWithImpl$Input$recipes_order_by;

  factory CopyWith$Input$recipes_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_order_by;

  TRes call({
    Input$bridge_recipes_cuisines_aggregate_order_by?
        bridge_recipes_cuisines_aggregate,
    Input$bridge_recipes_ingredients_aggregate_order_by?
        bridge_recipes_ingredients_aggregate,
    Input$bridge_recipes_tags_aggregate_order_by? bridge_recipes_tags_aggregate,
    Enum$order_by? country,
    Enum$order_by? description,
    Enum$order_by? descriptionMarkdown,
    Enum$order_by? difficulty,
    Enum$order_by? headline,
    Enum$order_by? id,
    Enum$order_by? imagePath,
    Enum$order_by? name,
    Enum$order_by? prepTime,
    Enum$order_by? slug,
    Enum$order_by? steps,
    Enum$order_by? totalTime,
    Enum$order_by? yields_json,
  });
  CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by<TRes>
      get bridge_recipes_cuisines_aggregate;
  CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by<TRes>
      get bridge_recipes_ingredients_aggregate;
  CopyWith$Input$bridge_recipes_tags_aggregate_order_by<TRes>
      get bridge_recipes_tags_aggregate;
}

class _CopyWithImpl$Input$recipes_order_by<TRes>
    implements CopyWith$Input$recipes_order_by<TRes> {
  _CopyWithImpl$Input$recipes_order_by(
    this._instance,
    this._then,
  );

  final Input$recipes_order_by _instance;

  final TRes Function(Input$recipes_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? bridge_recipes_cuisines_aggregate = _undefined,
    Object? bridge_recipes_ingredients_aggregate = _undefined,
    Object? bridge_recipes_tags_aggregate = _undefined,
    Object? country = _undefined,
    Object? description = _undefined,
    Object? descriptionMarkdown = _undefined,
    Object? difficulty = _undefined,
    Object? headline = _undefined,
    Object? id = _undefined,
    Object? imagePath = _undefined,
    Object? name = _undefined,
    Object? prepTime = _undefined,
    Object? slug = _undefined,
    Object? steps = _undefined,
    Object? totalTime = _undefined,
    Object? yields_json = _undefined,
  }) =>
      _then(Input$recipes_order_by._({
        ..._instance._$data,
        if (bridge_recipes_cuisines_aggregate != _undefined)
          'bridge_recipes_cuisines_aggregate':
              (bridge_recipes_cuisines_aggregate
                  as Input$bridge_recipes_cuisines_aggregate_order_by?),
        if (bridge_recipes_ingredients_aggregate != _undefined)
          'bridge_recipes_ingredients_aggregate':
              (bridge_recipes_ingredients_aggregate
                  as Input$bridge_recipes_ingredients_aggregate_order_by?),
        if (bridge_recipes_tags_aggregate != _undefined)
          'bridge_recipes_tags_aggregate': (bridge_recipes_tags_aggregate
              as Input$bridge_recipes_tags_aggregate_order_by?),
        if (country != _undefined) 'country': (country as Enum$order_by?),
        if (description != _undefined)
          'description': (description as Enum$order_by?),
        if (descriptionMarkdown != _undefined)
          'descriptionMarkdown': (descriptionMarkdown as Enum$order_by?),
        if (difficulty != _undefined)
          'difficulty': (difficulty as Enum$order_by?),
        if (headline != _undefined) 'headline': (headline as Enum$order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
        if (imagePath != _undefined) 'imagePath': (imagePath as Enum$order_by?),
        if (name != _undefined) 'name': (name as Enum$order_by?),
        if (prepTime != _undefined) 'prepTime': (prepTime as Enum$order_by?),
        if (slug != _undefined) 'slug': (slug as Enum$order_by?),
        if (steps != _undefined) 'steps': (steps as Enum$order_by?),
        if (totalTime != _undefined) 'totalTime': (totalTime as Enum$order_by?),
        if (yields_json != _undefined)
          'yields_json': (yields_json as Enum$order_by?),
      }));
  CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by<TRes>
      get bridge_recipes_cuisines_aggregate {
    final local$bridge_recipes_cuisines_aggregate =
        _instance.bridge_recipes_cuisines_aggregate;
    return local$bridge_recipes_cuisines_aggregate == null
        ? CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by(
            local$bridge_recipes_cuisines_aggregate,
            (e) => call(bridge_recipes_cuisines_aggregate: e));
  }

  CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by<TRes>
      get bridge_recipes_ingredients_aggregate {
    final local$bridge_recipes_ingredients_aggregate =
        _instance.bridge_recipes_ingredients_aggregate;
    return local$bridge_recipes_ingredients_aggregate == null
        ? CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by(
            local$bridge_recipes_ingredients_aggregate,
            (e) => call(bridge_recipes_ingredients_aggregate: e));
  }

  CopyWith$Input$bridge_recipes_tags_aggregate_order_by<TRes>
      get bridge_recipes_tags_aggregate {
    final local$bridge_recipes_tags_aggregate =
        _instance.bridge_recipes_tags_aggregate;
    return local$bridge_recipes_tags_aggregate == null
        ? CopyWith$Input$bridge_recipes_tags_aggregate_order_by.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_tags_aggregate_order_by(
            local$bridge_recipes_tags_aggregate,
            (e) => call(bridge_recipes_tags_aggregate: e));
  }
}

class _CopyWithStubImpl$Input$recipes_order_by<TRes>
    implements CopyWith$Input$recipes_order_by<TRes> {
  _CopyWithStubImpl$Input$recipes_order_by(this._res);

  TRes _res;

  call({
    Input$bridge_recipes_cuisines_aggregate_order_by?
        bridge_recipes_cuisines_aggregate,
    Input$bridge_recipes_ingredients_aggregate_order_by?
        bridge_recipes_ingredients_aggregate,
    Input$bridge_recipes_tags_aggregate_order_by? bridge_recipes_tags_aggregate,
    Enum$order_by? country,
    Enum$order_by? description,
    Enum$order_by? descriptionMarkdown,
    Enum$order_by? difficulty,
    Enum$order_by? headline,
    Enum$order_by? id,
    Enum$order_by? imagePath,
    Enum$order_by? name,
    Enum$order_by? prepTime,
    Enum$order_by? slug,
    Enum$order_by? steps,
    Enum$order_by? totalTime,
    Enum$order_by? yields_json,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by<TRes>
      get bridge_recipes_cuisines_aggregate =>
          CopyWith$Input$bridge_recipes_cuisines_aggregate_order_by.stub(_res);
  CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by<TRes>
      get bridge_recipes_ingredients_aggregate =>
          CopyWith$Input$bridge_recipes_ingredients_aggregate_order_by.stub(
              _res);
  CopyWith$Input$bridge_recipes_tags_aggregate_order_by<TRes>
      get bridge_recipes_tags_aggregate =>
          CopyWith$Input$bridge_recipes_tags_aggregate_order_by.stub(_res);
}

class Input$recipes_pk_columns_input {
  factory Input$recipes_pk_columns_input({required String id}) =>
      Input$recipes_pk_columns_input._({
        r'id': id,
      });

  Input$recipes_pk_columns_input._(this._$data);

  factory Input$recipes_pk_columns_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$recipes_pk_columns_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$recipes_pk_columns_input<Input$recipes_pk_columns_input>
      get copyWith => CopyWith$Input$recipes_pk_columns_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_pk_columns_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$recipes_pk_columns_input<TRes> {
  factory CopyWith$Input$recipes_pk_columns_input(
    Input$recipes_pk_columns_input instance,
    TRes Function(Input$recipes_pk_columns_input) then,
  ) = _CopyWithImpl$Input$recipes_pk_columns_input;

  factory CopyWith$Input$recipes_pk_columns_input.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_pk_columns_input;

  TRes call({String? id});
}

class _CopyWithImpl$Input$recipes_pk_columns_input<TRes>
    implements CopyWith$Input$recipes_pk_columns_input<TRes> {
  _CopyWithImpl$Input$recipes_pk_columns_input(
    this._instance,
    this._then,
  );

  final Input$recipes_pk_columns_input _instance;

  final TRes Function(Input$recipes_pk_columns_input) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Input$recipes_pk_columns_input._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$recipes_pk_columns_input<TRes>
    implements CopyWith$Input$recipes_pk_columns_input<TRes> {
  _CopyWithStubImpl$Input$recipes_pk_columns_input(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$recipes_prepend_input {
  factory Input$recipes_prepend_input({
    String? steps,
    String? yields_json,
  }) =>
      Input$recipes_prepend_input._({
        if (steps != null) r'steps': steps,
        if (yields_json != null) r'yields_json': yields_json,
      });

  Input$recipes_prepend_input._(this._$data);

  factory Input$recipes_prepend_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('steps')) {
      final l$steps = data['steps'];
      result$data['steps'] = (l$steps as String?);
    }
    if (data.containsKey('yields_json')) {
      final l$yields_json = data['yields_json'];
      result$data['yields_json'] = (l$yields_json as String?);
    }
    return Input$recipes_prepend_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get steps => (_$data['steps'] as String?);
  String? get yields_json => (_$data['yields_json'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('steps')) {
      final l$steps = steps;
      result$data['steps'] = l$steps;
    }
    if (_$data.containsKey('yields_json')) {
      final l$yields_json = yields_json;
      result$data['yields_json'] = l$yields_json;
    }
    return result$data;
  }

  CopyWith$Input$recipes_prepend_input<Input$recipes_prepend_input>
      get copyWith => CopyWith$Input$recipes_prepend_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_prepend_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (_$data.containsKey('steps') != other._$data.containsKey('steps')) {
      return false;
    }
    if (l$steps != lOther$steps) {
      return false;
    }
    final l$yields_json = yields_json;
    final lOther$yields_json = other.yields_json;
    if (_$data.containsKey('yields_json') !=
        other._$data.containsKey('yields_json')) {
      return false;
    }
    if (l$yields_json != lOther$yields_json) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$steps = steps;
    final l$yields_json = yields_json;
    return Object.hashAll([
      _$data.containsKey('steps') ? l$steps : const {},
      _$data.containsKey('yields_json') ? l$yields_json : const {},
    ]);
  }
}

abstract class CopyWith$Input$recipes_prepend_input<TRes> {
  factory CopyWith$Input$recipes_prepend_input(
    Input$recipes_prepend_input instance,
    TRes Function(Input$recipes_prepend_input) then,
  ) = _CopyWithImpl$Input$recipes_prepend_input;

  factory CopyWith$Input$recipes_prepend_input.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_prepend_input;

  TRes call({
    String? steps,
    String? yields_json,
  });
}

class _CopyWithImpl$Input$recipes_prepend_input<TRes>
    implements CopyWith$Input$recipes_prepend_input<TRes> {
  _CopyWithImpl$Input$recipes_prepend_input(
    this._instance,
    this._then,
  );

  final Input$recipes_prepend_input _instance;

  final TRes Function(Input$recipes_prepend_input) _then;

  static const _undefined = {};

  TRes call({
    Object? steps = _undefined,
    Object? yields_json = _undefined,
  }) =>
      _then(Input$recipes_prepend_input._({
        ..._instance._$data,
        if (steps != _undefined) 'steps': (steps as String?),
        if (yields_json != _undefined) 'yields_json': (yields_json as String?),
      }));
}

class _CopyWithStubImpl$Input$recipes_prepend_input<TRes>
    implements CopyWith$Input$recipes_prepend_input<TRes> {
  _CopyWithStubImpl$Input$recipes_prepend_input(this._res);

  TRes _res;

  call({
    String? steps,
    String? yields_json,
  }) =>
      _res;
}

class Input$recipes_set_input {
  factory Input$recipes_set_input({
    String? country,
    String? description,
    String? descriptionMarkdown,
    int? difficulty,
    String? headline,
    String? id,
    String? imagePath,
    String? name,
    String? prepTime,
    String? slug,
    String? steps,
    String? totalTime,
    String? yields_json,
  }) =>
      Input$recipes_set_input._({
        if (country != null) r'country': country,
        if (description != null) r'description': description,
        if (descriptionMarkdown != null)
          r'descriptionMarkdown': descriptionMarkdown,
        if (difficulty != null) r'difficulty': difficulty,
        if (headline != null) r'headline': headline,
        if (id != null) r'id': id,
        if (imagePath != null) r'imagePath': imagePath,
        if (name != null) r'name': name,
        if (prepTime != null) r'prepTime': prepTime,
        if (slug != null) r'slug': slug,
        if (steps != null) r'steps': steps,
        if (totalTime != null) r'totalTime': totalTime,
        if (yields_json != null) r'yields_json': yields_json,
      });

  Input$recipes_set_input._(this._$data);

  factory Input$recipes_set_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = (l$country as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('descriptionMarkdown')) {
      final l$descriptionMarkdown = data['descriptionMarkdown'];
      result$data['descriptionMarkdown'] = (l$descriptionMarkdown as String?);
    }
    if (data.containsKey('difficulty')) {
      final l$difficulty = data['difficulty'];
      result$data['difficulty'] = (l$difficulty as int?);
    }
    if (data.containsKey('headline')) {
      final l$headline = data['headline'];
      result$data['headline'] = (l$headline as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('imagePath')) {
      final l$imagePath = data['imagePath'];
      result$data['imagePath'] = (l$imagePath as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('prepTime')) {
      final l$prepTime = data['prepTime'];
      result$data['prepTime'] = (l$prepTime as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    if (data.containsKey('steps')) {
      final l$steps = data['steps'];
      result$data['steps'] = (l$steps as String?);
    }
    if (data.containsKey('totalTime')) {
      final l$totalTime = data['totalTime'];
      result$data['totalTime'] = (l$totalTime as String?);
    }
    if (data.containsKey('yields_json')) {
      final l$yields_json = data['yields_json'];
      result$data['yields_json'] = (l$yields_json as String?);
    }
    return Input$recipes_set_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get country => (_$data['country'] as String?);
  String? get description => (_$data['description'] as String?);
  String? get descriptionMarkdown => (_$data['descriptionMarkdown'] as String?);
  int? get difficulty => (_$data['difficulty'] as int?);
  String? get headline => (_$data['headline'] as String?);
  String? get id => (_$data['id'] as String?);
  String? get imagePath => (_$data['imagePath'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get prepTime => (_$data['prepTime'] as String?);
  String? get slug => (_$data['slug'] as String?);
  String? get steps => (_$data['steps'] as String?);
  String? get totalTime => (_$data['totalTime'] as String?);
  String? get yields_json => (_$data['yields_json'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] = l$country;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('descriptionMarkdown')) {
      final l$descriptionMarkdown = descriptionMarkdown;
      result$data['descriptionMarkdown'] = l$descriptionMarkdown;
    }
    if (_$data.containsKey('difficulty')) {
      final l$difficulty = difficulty;
      result$data['difficulty'] = l$difficulty;
    }
    if (_$data.containsKey('headline')) {
      final l$headline = headline;
      result$data['headline'] = l$headline;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('imagePath')) {
      final l$imagePath = imagePath;
      result$data['imagePath'] = l$imagePath;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('prepTime')) {
      final l$prepTime = prepTime;
      result$data['prepTime'] = l$prepTime;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    if (_$data.containsKey('steps')) {
      final l$steps = steps;
      result$data['steps'] = l$steps;
    }
    if (_$data.containsKey('totalTime')) {
      final l$totalTime = totalTime;
      result$data['totalTime'] = l$totalTime;
    }
    if (_$data.containsKey('yields_json')) {
      final l$yields_json = yields_json;
      result$data['yields_json'] = l$yields_json;
    }
    return result$data;
  }

  CopyWith$Input$recipes_set_input<Input$recipes_set_input> get copyWith =>
      CopyWith$Input$recipes_set_input(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_set_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$descriptionMarkdown = descriptionMarkdown;
    final lOther$descriptionMarkdown = other.descriptionMarkdown;
    if (_$data.containsKey('descriptionMarkdown') !=
        other._$data.containsKey('descriptionMarkdown')) {
      return false;
    }
    if (l$descriptionMarkdown != lOther$descriptionMarkdown) {
      return false;
    }
    final l$difficulty = difficulty;
    final lOther$difficulty = other.difficulty;
    if (_$data.containsKey('difficulty') !=
        other._$data.containsKey('difficulty')) {
      return false;
    }
    if (l$difficulty != lOther$difficulty) {
      return false;
    }
    final l$headline = headline;
    final lOther$headline = other.headline;
    if (_$data.containsKey('headline') !=
        other._$data.containsKey('headline')) {
      return false;
    }
    if (l$headline != lOther$headline) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (_$data.containsKey('imagePath') !=
        other._$data.containsKey('imagePath')) {
      return false;
    }
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$prepTime = prepTime;
    final lOther$prepTime = other.prepTime;
    if (_$data.containsKey('prepTime') !=
        other._$data.containsKey('prepTime')) {
      return false;
    }
    if (l$prepTime != lOther$prepTime) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (_$data.containsKey('steps') != other._$data.containsKey('steps')) {
      return false;
    }
    if (l$steps != lOther$steps) {
      return false;
    }
    final l$totalTime = totalTime;
    final lOther$totalTime = other.totalTime;
    if (_$data.containsKey('totalTime') !=
        other._$data.containsKey('totalTime')) {
      return false;
    }
    if (l$totalTime != lOther$totalTime) {
      return false;
    }
    final l$yields_json = yields_json;
    final lOther$yields_json = other.yields_json;
    if (_$data.containsKey('yields_json') !=
        other._$data.containsKey('yields_json')) {
      return false;
    }
    if (l$yields_json != lOther$yields_json) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$country = country;
    final l$description = description;
    final l$descriptionMarkdown = descriptionMarkdown;
    final l$difficulty = difficulty;
    final l$headline = headline;
    final l$id = id;
    final l$imagePath = imagePath;
    final l$name = name;
    final l$prepTime = prepTime;
    final l$slug = slug;
    final l$steps = steps;
    final l$totalTime = totalTime;
    final l$yields_json = yields_json;
    return Object.hashAll([
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('descriptionMarkdown')
          ? l$descriptionMarkdown
          : const {},
      _$data.containsKey('difficulty') ? l$difficulty : const {},
      _$data.containsKey('headline') ? l$headline : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('imagePath') ? l$imagePath : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('prepTime') ? l$prepTime : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('steps') ? l$steps : const {},
      _$data.containsKey('totalTime') ? l$totalTime : const {},
      _$data.containsKey('yields_json') ? l$yields_json : const {},
    ]);
  }
}

abstract class CopyWith$Input$recipes_set_input<TRes> {
  factory CopyWith$Input$recipes_set_input(
    Input$recipes_set_input instance,
    TRes Function(Input$recipes_set_input) then,
  ) = _CopyWithImpl$Input$recipes_set_input;

  factory CopyWith$Input$recipes_set_input.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_set_input;

  TRes call({
    String? country,
    String? description,
    String? descriptionMarkdown,
    int? difficulty,
    String? headline,
    String? id,
    String? imagePath,
    String? name,
    String? prepTime,
    String? slug,
    String? steps,
    String? totalTime,
    String? yields_json,
  });
}

class _CopyWithImpl$Input$recipes_set_input<TRes>
    implements CopyWith$Input$recipes_set_input<TRes> {
  _CopyWithImpl$Input$recipes_set_input(
    this._instance,
    this._then,
  );

  final Input$recipes_set_input _instance;

  final TRes Function(Input$recipes_set_input) _then;

  static const _undefined = {};

  TRes call({
    Object? country = _undefined,
    Object? description = _undefined,
    Object? descriptionMarkdown = _undefined,
    Object? difficulty = _undefined,
    Object? headline = _undefined,
    Object? id = _undefined,
    Object? imagePath = _undefined,
    Object? name = _undefined,
    Object? prepTime = _undefined,
    Object? slug = _undefined,
    Object? steps = _undefined,
    Object? totalTime = _undefined,
    Object? yields_json = _undefined,
  }) =>
      _then(Input$recipes_set_input._({
        ..._instance._$data,
        if (country != _undefined) 'country': (country as String?),
        if (description != _undefined) 'description': (description as String?),
        if (descriptionMarkdown != _undefined)
          'descriptionMarkdown': (descriptionMarkdown as String?),
        if (difficulty != _undefined) 'difficulty': (difficulty as int?),
        if (headline != _undefined) 'headline': (headline as String?),
        if (id != _undefined) 'id': (id as String?),
        if (imagePath != _undefined) 'imagePath': (imagePath as String?),
        if (name != _undefined) 'name': (name as String?),
        if (prepTime != _undefined) 'prepTime': (prepTime as String?),
        if (slug != _undefined) 'slug': (slug as String?),
        if (steps != _undefined) 'steps': (steps as String?),
        if (totalTime != _undefined) 'totalTime': (totalTime as String?),
        if (yields_json != _undefined) 'yields_json': (yields_json as String?),
      }));
}

class _CopyWithStubImpl$Input$recipes_set_input<TRes>
    implements CopyWith$Input$recipes_set_input<TRes> {
  _CopyWithStubImpl$Input$recipes_set_input(this._res);

  TRes _res;

  call({
    String? country,
    String? description,
    String? descriptionMarkdown,
    int? difficulty,
    String? headline,
    String? id,
    String? imagePath,
    String? name,
    String? prepTime,
    String? slug,
    String? steps,
    String? totalTime,
    String? yields_json,
  }) =>
      _res;
}

class Input$recipes_stream_cursor_input {
  factory Input$recipes_stream_cursor_input({
    required Input$recipes_stream_cursor_value_input initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      Input$recipes_stream_cursor_input._({
        r'initial_value': initial_value,
        if (ordering != null) r'ordering': ordering,
      });

  Input$recipes_stream_cursor_input._(this._$data);

  factory Input$recipes_stream_cursor_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initial_value = data['initial_value'];
    result$data['initial_value'] =
        Input$recipes_stream_cursor_value_input.fromJson(
            (l$initial_value as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson$Enum$cursor_ordering((l$ordering as String));
    }
    return Input$recipes_stream_cursor_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$recipes_stream_cursor_value_input get initial_value =>
      (_$data['initial_value'] as Input$recipes_stream_cursor_value_input);
  Enum$cursor_ordering? get ordering =>
      (_$data['ordering'] as Enum$cursor_ordering?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initial_value = initial_value;
    result$data['initial_value'] = l$initial_value.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson$Enum$cursor_ordering(l$ordering);
    }
    return result$data;
  }

  CopyWith$Input$recipes_stream_cursor_input<Input$recipes_stream_cursor_input>
      get copyWith => CopyWith$Input$recipes_stream_cursor_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_stream_cursor_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initial_value = initial_value;
    final lOther$initial_value = other.initial_value;
    if (l$initial_value != lOther$initial_value) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initial_value = initial_value;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initial_value,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}

abstract class CopyWith$Input$recipes_stream_cursor_input<TRes> {
  factory CopyWith$Input$recipes_stream_cursor_input(
    Input$recipes_stream_cursor_input instance,
    TRes Function(Input$recipes_stream_cursor_input) then,
  ) = _CopyWithImpl$Input$recipes_stream_cursor_input;

  factory CopyWith$Input$recipes_stream_cursor_input.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_stream_cursor_input;

  TRes call({
    Input$recipes_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  });
  CopyWith$Input$recipes_stream_cursor_value_input<TRes> get initial_value;
}

class _CopyWithImpl$Input$recipes_stream_cursor_input<TRes>
    implements CopyWith$Input$recipes_stream_cursor_input<TRes> {
  _CopyWithImpl$Input$recipes_stream_cursor_input(
    this._instance,
    this._then,
  );

  final Input$recipes_stream_cursor_input _instance;

  final TRes Function(Input$recipes_stream_cursor_input) _then;

  static const _undefined = {};

  TRes call({
    Object? initial_value = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input$recipes_stream_cursor_input._({
        ..._instance._$data,
        if (initial_value != _undefined && initial_value != null)
          'initial_value':
              (initial_value as Input$recipes_stream_cursor_value_input),
        if (ordering != _undefined)
          'ordering': (ordering as Enum$cursor_ordering?),
      }));
  CopyWith$Input$recipes_stream_cursor_value_input<TRes> get initial_value {
    final local$initial_value = _instance.initial_value;
    return CopyWith$Input$recipes_stream_cursor_value_input(
        local$initial_value, (e) => call(initial_value: e));
  }
}

class _CopyWithStubImpl$Input$recipes_stream_cursor_input<TRes>
    implements CopyWith$Input$recipes_stream_cursor_input<TRes> {
  _CopyWithStubImpl$Input$recipes_stream_cursor_input(this._res);

  TRes _res;

  call({
    Input$recipes_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      _res;
  CopyWith$Input$recipes_stream_cursor_value_input<TRes> get initial_value =>
      CopyWith$Input$recipes_stream_cursor_value_input.stub(_res);
}

class Input$recipes_stream_cursor_value_input {
  factory Input$recipes_stream_cursor_value_input({
    String? country,
    String? description,
    String? descriptionMarkdown,
    int? difficulty,
    String? headline,
    String? id,
    String? imagePath,
    String? name,
    String? prepTime,
    String? slug,
    String? steps,
    String? totalTime,
    String? yields_json,
  }) =>
      Input$recipes_stream_cursor_value_input._({
        if (country != null) r'country': country,
        if (description != null) r'description': description,
        if (descriptionMarkdown != null)
          r'descriptionMarkdown': descriptionMarkdown,
        if (difficulty != null) r'difficulty': difficulty,
        if (headline != null) r'headline': headline,
        if (id != null) r'id': id,
        if (imagePath != null) r'imagePath': imagePath,
        if (name != null) r'name': name,
        if (prepTime != null) r'prepTime': prepTime,
        if (slug != null) r'slug': slug,
        if (steps != null) r'steps': steps,
        if (totalTime != null) r'totalTime': totalTime,
        if (yields_json != null) r'yields_json': yields_json,
      });

  Input$recipes_stream_cursor_value_input._(this._$data);

  factory Input$recipes_stream_cursor_value_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = (l$country as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('descriptionMarkdown')) {
      final l$descriptionMarkdown = data['descriptionMarkdown'];
      result$data['descriptionMarkdown'] = (l$descriptionMarkdown as String?);
    }
    if (data.containsKey('difficulty')) {
      final l$difficulty = data['difficulty'];
      result$data['difficulty'] = (l$difficulty as int?);
    }
    if (data.containsKey('headline')) {
      final l$headline = data['headline'];
      result$data['headline'] = (l$headline as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('imagePath')) {
      final l$imagePath = data['imagePath'];
      result$data['imagePath'] = (l$imagePath as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('prepTime')) {
      final l$prepTime = data['prepTime'];
      result$data['prepTime'] = (l$prepTime as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    if (data.containsKey('steps')) {
      final l$steps = data['steps'];
      result$data['steps'] = (l$steps as String?);
    }
    if (data.containsKey('totalTime')) {
      final l$totalTime = data['totalTime'];
      result$data['totalTime'] = (l$totalTime as String?);
    }
    if (data.containsKey('yields_json')) {
      final l$yields_json = data['yields_json'];
      result$data['yields_json'] = (l$yields_json as String?);
    }
    return Input$recipes_stream_cursor_value_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get country => (_$data['country'] as String?);
  String? get description => (_$data['description'] as String?);
  String? get descriptionMarkdown => (_$data['descriptionMarkdown'] as String?);
  int? get difficulty => (_$data['difficulty'] as int?);
  String? get headline => (_$data['headline'] as String?);
  String? get id => (_$data['id'] as String?);
  String? get imagePath => (_$data['imagePath'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get prepTime => (_$data['prepTime'] as String?);
  String? get slug => (_$data['slug'] as String?);
  String? get steps => (_$data['steps'] as String?);
  String? get totalTime => (_$data['totalTime'] as String?);
  String? get yields_json => (_$data['yields_json'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] = l$country;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('descriptionMarkdown')) {
      final l$descriptionMarkdown = descriptionMarkdown;
      result$data['descriptionMarkdown'] = l$descriptionMarkdown;
    }
    if (_$data.containsKey('difficulty')) {
      final l$difficulty = difficulty;
      result$data['difficulty'] = l$difficulty;
    }
    if (_$data.containsKey('headline')) {
      final l$headline = headline;
      result$data['headline'] = l$headline;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('imagePath')) {
      final l$imagePath = imagePath;
      result$data['imagePath'] = l$imagePath;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('prepTime')) {
      final l$prepTime = prepTime;
      result$data['prepTime'] = l$prepTime;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    if (_$data.containsKey('steps')) {
      final l$steps = steps;
      result$data['steps'] = l$steps;
    }
    if (_$data.containsKey('totalTime')) {
      final l$totalTime = totalTime;
      result$data['totalTime'] = l$totalTime;
    }
    if (_$data.containsKey('yields_json')) {
      final l$yields_json = yields_json;
      result$data['yields_json'] = l$yields_json;
    }
    return result$data;
  }

  CopyWith$Input$recipes_stream_cursor_value_input<
          Input$recipes_stream_cursor_value_input>
      get copyWith => CopyWith$Input$recipes_stream_cursor_value_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_stream_cursor_value_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$descriptionMarkdown = descriptionMarkdown;
    final lOther$descriptionMarkdown = other.descriptionMarkdown;
    if (_$data.containsKey('descriptionMarkdown') !=
        other._$data.containsKey('descriptionMarkdown')) {
      return false;
    }
    if (l$descriptionMarkdown != lOther$descriptionMarkdown) {
      return false;
    }
    final l$difficulty = difficulty;
    final lOther$difficulty = other.difficulty;
    if (_$data.containsKey('difficulty') !=
        other._$data.containsKey('difficulty')) {
      return false;
    }
    if (l$difficulty != lOther$difficulty) {
      return false;
    }
    final l$headline = headline;
    final lOther$headline = other.headline;
    if (_$data.containsKey('headline') !=
        other._$data.containsKey('headline')) {
      return false;
    }
    if (l$headline != lOther$headline) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (_$data.containsKey('imagePath') !=
        other._$data.containsKey('imagePath')) {
      return false;
    }
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$prepTime = prepTime;
    final lOther$prepTime = other.prepTime;
    if (_$data.containsKey('prepTime') !=
        other._$data.containsKey('prepTime')) {
      return false;
    }
    if (l$prepTime != lOther$prepTime) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (_$data.containsKey('steps') != other._$data.containsKey('steps')) {
      return false;
    }
    if (l$steps != lOther$steps) {
      return false;
    }
    final l$totalTime = totalTime;
    final lOther$totalTime = other.totalTime;
    if (_$data.containsKey('totalTime') !=
        other._$data.containsKey('totalTime')) {
      return false;
    }
    if (l$totalTime != lOther$totalTime) {
      return false;
    }
    final l$yields_json = yields_json;
    final lOther$yields_json = other.yields_json;
    if (_$data.containsKey('yields_json') !=
        other._$data.containsKey('yields_json')) {
      return false;
    }
    if (l$yields_json != lOther$yields_json) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$country = country;
    final l$description = description;
    final l$descriptionMarkdown = descriptionMarkdown;
    final l$difficulty = difficulty;
    final l$headline = headline;
    final l$id = id;
    final l$imagePath = imagePath;
    final l$name = name;
    final l$prepTime = prepTime;
    final l$slug = slug;
    final l$steps = steps;
    final l$totalTime = totalTime;
    final l$yields_json = yields_json;
    return Object.hashAll([
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('descriptionMarkdown')
          ? l$descriptionMarkdown
          : const {},
      _$data.containsKey('difficulty') ? l$difficulty : const {},
      _$data.containsKey('headline') ? l$headline : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('imagePath') ? l$imagePath : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('prepTime') ? l$prepTime : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('steps') ? l$steps : const {},
      _$data.containsKey('totalTime') ? l$totalTime : const {},
      _$data.containsKey('yields_json') ? l$yields_json : const {},
    ]);
  }
}

abstract class CopyWith$Input$recipes_stream_cursor_value_input<TRes> {
  factory CopyWith$Input$recipes_stream_cursor_value_input(
    Input$recipes_stream_cursor_value_input instance,
    TRes Function(Input$recipes_stream_cursor_value_input) then,
  ) = _CopyWithImpl$Input$recipes_stream_cursor_value_input;

  factory CopyWith$Input$recipes_stream_cursor_value_input.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_stream_cursor_value_input;

  TRes call({
    String? country,
    String? description,
    String? descriptionMarkdown,
    int? difficulty,
    String? headline,
    String? id,
    String? imagePath,
    String? name,
    String? prepTime,
    String? slug,
    String? steps,
    String? totalTime,
    String? yields_json,
  });
}

class _CopyWithImpl$Input$recipes_stream_cursor_value_input<TRes>
    implements CopyWith$Input$recipes_stream_cursor_value_input<TRes> {
  _CopyWithImpl$Input$recipes_stream_cursor_value_input(
    this._instance,
    this._then,
  );

  final Input$recipes_stream_cursor_value_input _instance;

  final TRes Function(Input$recipes_stream_cursor_value_input) _then;

  static const _undefined = {};

  TRes call({
    Object? country = _undefined,
    Object? description = _undefined,
    Object? descriptionMarkdown = _undefined,
    Object? difficulty = _undefined,
    Object? headline = _undefined,
    Object? id = _undefined,
    Object? imagePath = _undefined,
    Object? name = _undefined,
    Object? prepTime = _undefined,
    Object? slug = _undefined,
    Object? steps = _undefined,
    Object? totalTime = _undefined,
    Object? yields_json = _undefined,
  }) =>
      _then(Input$recipes_stream_cursor_value_input._({
        ..._instance._$data,
        if (country != _undefined) 'country': (country as String?),
        if (description != _undefined) 'description': (description as String?),
        if (descriptionMarkdown != _undefined)
          'descriptionMarkdown': (descriptionMarkdown as String?),
        if (difficulty != _undefined) 'difficulty': (difficulty as int?),
        if (headline != _undefined) 'headline': (headline as String?),
        if (id != _undefined) 'id': (id as String?),
        if (imagePath != _undefined) 'imagePath': (imagePath as String?),
        if (name != _undefined) 'name': (name as String?),
        if (prepTime != _undefined) 'prepTime': (prepTime as String?),
        if (slug != _undefined) 'slug': (slug as String?),
        if (steps != _undefined) 'steps': (steps as String?),
        if (totalTime != _undefined) 'totalTime': (totalTime as String?),
        if (yields_json != _undefined) 'yields_json': (yields_json as String?),
      }));
}

class _CopyWithStubImpl$Input$recipes_stream_cursor_value_input<TRes>
    implements CopyWith$Input$recipes_stream_cursor_value_input<TRes> {
  _CopyWithStubImpl$Input$recipes_stream_cursor_value_input(this._res);

  TRes _res;

  call({
    String? country,
    String? description,
    String? descriptionMarkdown,
    int? difficulty,
    String? headline,
    String? id,
    String? imagePath,
    String? name,
    String? prepTime,
    String? slug,
    String? steps,
    String? totalTime,
    String? yields_json,
  }) =>
      _res;
}

class Input$recipes_updates {
  factory Input$recipes_updates({
    Input$recipes_append_input? $_append,
    Input$recipes_delete_at_path_input? $_delete_at_path,
    Input$recipes_delete_elem_input? $_delete_elem,
    Input$recipes_delete_key_input? $_delete_key,
    Input$recipes_inc_input? $_inc,
    Input$recipes_prepend_input? $_prepend,
    Input$recipes_set_input? $_set,
    required Input$recipes_bool_exp where,
  }) =>
      Input$recipes_updates._({
        if ($_append != null) r'_append': $_append,
        if ($_delete_at_path != null) r'_delete_at_path': $_delete_at_path,
        if ($_delete_elem != null) r'_delete_elem': $_delete_elem,
        if ($_delete_key != null) r'_delete_key': $_delete_key,
        if ($_inc != null) r'_inc': $_inc,
        if ($_prepend != null) r'_prepend': $_prepend,
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input$recipes_updates._(this._$data);

  factory Input$recipes_updates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_append')) {
      final l$$_append = data['_append'];
      result$data['_append'] = l$$_append == null
          ? null
          : Input$recipes_append_input.fromJson(
              (l$$_append as Map<String, dynamic>));
    }
    if (data.containsKey('_delete_at_path')) {
      final l$$_delete_at_path = data['_delete_at_path'];
      result$data['_delete_at_path'] = l$$_delete_at_path == null
          ? null
          : Input$recipes_delete_at_path_input.fromJson(
              (l$$_delete_at_path as Map<String, dynamic>));
    }
    if (data.containsKey('_delete_elem')) {
      final l$$_delete_elem = data['_delete_elem'];
      result$data['_delete_elem'] = l$$_delete_elem == null
          ? null
          : Input$recipes_delete_elem_input.fromJson(
              (l$$_delete_elem as Map<String, dynamic>));
    }
    if (data.containsKey('_delete_key')) {
      final l$$_delete_key = data['_delete_key'];
      result$data['_delete_key'] = l$$_delete_key == null
          ? null
          : Input$recipes_delete_key_input.fromJson(
              (l$$_delete_key as Map<String, dynamic>));
    }
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input$recipes_inc_input.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_prepend')) {
      final l$$_prepend = data['_prepend'];
      result$data['_prepend'] = l$$_prepend == null
          ? null
          : Input$recipes_prepend_input.fromJson(
              (l$$_prepend as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input$recipes_set_input.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] =
        Input$recipes_bool_exp.fromJson((l$where as Map<String, dynamic>));
    return Input$recipes_updates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$recipes_append_input? get $_append =>
      (_$data['_append'] as Input$recipes_append_input?);
  Input$recipes_delete_at_path_input? get $_delete_at_path =>
      (_$data['_delete_at_path'] as Input$recipes_delete_at_path_input?);
  Input$recipes_delete_elem_input? get $_delete_elem =>
      (_$data['_delete_elem'] as Input$recipes_delete_elem_input?);
  Input$recipes_delete_key_input? get $_delete_key =>
      (_$data['_delete_key'] as Input$recipes_delete_key_input?);
  Input$recipes_inc_input? get $_inc =>
      (_$data['_inc'] as Input$recipes_inc_input?);
  Input$recipes_prepend_input? get $_prepend =>
      (_$data['_prepend'] as Input$recipes_prepend_input?);
  Input$recipes_set_input? get $_set =>
      (_$data['_set'] as Input$recipes_set_input?);
  Input$recipes_bool_exp get where =>
      (_$data['where'] as Input$recipes_bool_exp);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_append')) {
      final l$$_append = $_append;
      result$data['_append'] = l$$_append?.toJson();
    }
    if (_$data.containsKey('_delete_at_path')) {
      final l$$_delete_at_path = $_delete_at_path;
      result$data['_delete_at_path'] = l$$_delete_at_path?.toJson();
    }
    if (_$data.containsKey('_delete_elem')) {
      final l$$_delete_elem = $_delete_elem;
      result$data['_delete_elem'] = l$$_delete_elem?.toJson();
    }
    if (_$data.containsKey('_delete_key')) {
      final l$$_delete_key = $_delete_key;
      result$data['_delete_key'] = l$$_delete_key?.toJson();
    }
    if (_$data.containsKey('_inc')) {
      final l$$_inc = $_inc;
      result$data['_inc'] = l$$_inc?.toJson();
    }
    if (_$data.containsKey('_prepend')) {
      final l$$_prepend = $_prepend;
      result$data['_prepend'] = l$$_prepend?.toJson();
    }
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Input$recipes_updates<Input$recipes_updates> get copyWith =>
      CopyWith$Input$recipes_updates(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$recipes_updates) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_append = $_append;
    final lOther$$_append = other.$_append;
    if (_$data.containsKey('_append') != other._$data.containsKey('_append')) {
      return false;
    }
    if (l$$_append != lOther$$_append) {
      return false;
    }
    final l$$_delete_at_path = $_delete_at_path;
    final lOther$$_delete_at_path = other.$_delete_at_path;
    if (_$data.containsKey('_delete_at_path') !=
        other._$data.containsKey('_delete_at_path')) {
      return false;
    }
    if (l$$_delete_at_path != lOther$$_delete_at_path) {
      return false;
    }
    final l$$_delete_elem = $_delete_elem;
    final lOther$$_delete_elem = other.$_delete_elem;
    if (_$data.containsKey('_delete_elem') !=
        other._$data.containsKey('_delete_elem')) {
      return false;
    }
    if (l$$_delete_elem != lOther$$_delete_elem) {
      return false;
    }
    final l$$_delete_key = $_delete_key;
    final lOther$$_delete_key = other.$_delete_key;
    if (_$data.containsKey('_delete_key') !=
        other._$data.containsKey('_delete_key')) {
      return false;
    }
    if (l$$_delete_key != lOther$$_delete_key) {
      return false;
    }
    final l$$_inc = $_inc;
    final lOther$$_inc = other.$_inc;
    if (_$data.containsKey('_inc') != other._$data.containsKey('_inc')) {
      return false;
    }
    if (l$$_inc != lOther$$_inc) {
      return false;
    }
    final l$$_prepend = $_prepend;
    final lOther$$_prepend = other.$_prepend;
    if (_$data.containsKey('_prepend') !=
        other._$data.containsKey('_prepend')) {
      return false;
    }
    if (l$$_prepend != lOther$$_prepend) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_append = $_append;
    final l$$_delete_at_path = $_delete_at_path;
    final l$$_delete_elem = $_delete_elem;
    final l$$_delete_key = $_delete_key;
    final l$$_inc = $_inc;
    final l$$_prepend = $_prepend;
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_append') ? l$$_append : const {},
      _$data.containsKey('_delete_at_path') ? l$$_delete_at_path : const {},
      _$data.containsKey('_delete_elem') ? l$$_delete_elem : const {},
      _$data.containsKey('_delete_key') ? l$$_delete_key : const {},
      _$data.containsKey('_inc') ? l$$_inc : const {},
      _$data.containsKey('_prepend') ? l$$_prepend : const {},
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith$Input$recipes_updates<TRes> {
  factory CopyWith$Input$recipes_updates(
    Input$recipes_updates instance,
    TRes Function(Input$recipes_updates) then,
  ) = _CopyWithImpl$Input$recipes_updates;

  factory CopyWith$Input$recipes_updates.stub(TRes res) =
      _CopyWithStubImpl$Input$recipes_updates;

  TRes call({
    Input$recipes_append_input? $_append,
    Input$recipes_delete_at_path_input? $_delete_at_path,
    Input$recipes_delete_elem_input? $_delete_elem,
    Input$recipes_delete_key_input? $_delete_key,
    Input$recipes_inc_input? $_inc,
    Input$recipes_prepend_input? $_prepend,
    Input$recipes_set_input? $_set,
    Input$recipes_bool_exp? where,
  });
  CopyWith$Input$recipes_append_input<TRes> get $_append;
  CopyWith$Input$recipes_delete_at_path_input<TRes> get $_delete_at_path;
  CopyWith$Input$recipes_delete_elem_input<TRes> get $_delete_elem;
  CopyWith$Input$recipes_delete_key_input<TRes> get $_delete_key;
  CopyWith$Input$recipes_inc_input<TRes> get $_inc;
  CopyWith$Input$recipes_prepend_input<TRes> get $_prepend;
  CopyWith$Input$recipes_set_input<TRes> get $_set;
  CopyWith$Input$recipes_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$recipes_updates<TRes>
    implements CopyWith$Input$recipes_updates<TRes> {
  _CopyWithImpl$Input$recipes_updates(
    this._instance,
    this._then,
  );

  final Input$recipes_updates _instance;

  final TRes Function(Input$recipes_updates) _then;

  static const _undefined = {};

  TRes call({
    Object? $_append = _undefined,
    Object? $_delete_at_path = _undefined,
    Object? $_delete_elem = _undefined,
    Object? $_delete_key = _undefined,
    Object? $_inc = _undefined,
    Object? $_prepend = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$recipes_updates._({
        ..._instance._$data,
        if ($_append != _undefined)
          '_append': ($_append as Input$recipes_append_input?),
        if ($_delete_at_path != _undefined)
          '_delete_at_path':
              ($_delete_at_path as Input$recipes_delete_at_path_input?),
        if ($_delete_elem != _undefined)
          '_delete_elem': ($_delete_elem as Input$recipes_delete_elem_input?),
        if ($_delete_key != _undefined)
          '_delete_key': ($_delete_key as Input$recipes_delete_key_input?),
        if ($_inc != _undefined) '_inc': ($_inc as Input$recipes_inc_input?),
        if ($_prepend != _undefined)
          '_prepend': ($_prepend as Input$recipes_prepend_input?),
        if ($_set != _undefined) '_set': ($_set as Input$recipes_set_input?),
        if (where != _undefined && where != null)
          'where': (where as Input$recipes_bool_exp),
      }));
  CopyWith$Input$recipes_append_input<TRes> get $_append {
    final local$$_append = _instance.$_append;
    return local$$_append == null
        ? CopyWith$Input$recipes_append_input.stub(_then(_instance))
        : CopyWith$Input$recipes_append_input(
            local$$_append, (e) => call($_append: e));
  }

  CopyWith$Input$recipes_delete_at_path_input<TRes> get $_delete_at_path {
    final local$$_delete_at_path = _instance.$_delete_at_path;
    return local$$_delete_at_path == null
        ? CopyWith$Input$recipes_delete_at_path_input.stub(_then(_instance))
        : CopyWith$Input$recipes_delete_at_path_input(
            local$$_delete_at_path, (e) => call($_delete_at_path: e));
  }

  CopyWith$Input$recipes_delete_elem_input<TRes> get $_delete_elem {
    final local$$_delete_elem = _instance.$_delete_elem;
    return local$$_delete_elem == null
        ? CopyWith$Input$recipes_delete_elem_input.stub(_then(_instance))
        : CopyWith$Input$recipes_delete_elem_input(
            local$$_delete_elem, (e) => call($_delete_elem: e));
  }

  CopyWith$Input$recipes_delete_key_input<TRes> get $_delete_key {
    final local$$_delete_key = _instance.$_delete_key;
    return local$$_delete_key == null
        ? CopyWith$Input$recipes_delete_key_input.stub(_then(_instance))
        : CopyWith$Input$recipes_delete_key_input(
            local$$_delete_key, (e) => call($_delete_key: e));
  }

  CopyWith$Input$recipes_inc_input<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith$Input$recipes_inc_input.stub(_then(_instance))
        : CopyWith$Input$recipes_inc_input(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith$Input$recipes_prepend_input<TRes> get $_prepend {
    final local$$_prepend = _instance.$_prepend;
    return local$$_prepend == null
        ? CopyWith$Input$recipes_prepend_input.stub(_then(_instance))
        : CopyWith$Input$recipes_prepend_input(
            local$$_prepend, (e) => call($_prepend: e));
  }

  CopyWith$Input$recipes_set_input<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith$Input$recipes_set_input.stub(_then(_instance))
        : CopyWith$Input$recipes_set_input(local$$_set, (e) => call($_set: e));
  }

  CopyWith$Input$recipes_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$recipes_bool_exp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$recipes_updates<TRes>
    implements CopyWith$Input$recipes_updates<TRes> {
  _CopyWithStubImpl$Input$recipes_updates(this._res);

  TRes _res;

  call({
    Input$recipes_append_input? $_append,
    Input$recipes_delete_at_path_input? $_delete_at_path,
    Input$recipes_delete_elem_input? $_delete_elem,
    Input$recipes_delete_key_input? $_delete_key,
    Input$recipes_inc_input? $_inc,
    Input$recipes_prepend_input? $_prepend,
    Input$recipes_set_input? $_set,
    Input$recipes_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$recipes_append_input<TRes> get $_append =>
      CopyWith$Input$recipes_append_input.stub(_res);
  CopyWith$Input$recipes_delete_at_path_input<TRes> get $_delete_at_path =>
      CopyWith$Input$recipes_delete_at_path_input.stub(_res);
  CopyWith$Input$recipes_delete_elem_input<TRes> get $_delete_elem =>
      CopyWith$Input$recipes_delete_elem_input.stub(_res);
  CopyWith$Input$recipes_delete_key_input<TRes> get $_delete_key =>
      CopyWith$Input$recipes_delete_key_input.stub(_res);
  CopyWith$Input$recipes_inc_input<TRes> get $_inc =>
      CopyWith$Input$recipes_inc_input.stub(_res);
  CopyWith$Input$recipes_prepend_input<TRes> get $_prepend =>
      CopyWith$Input$recipes_prepend_input.stub(_res);
  CopyWith$Input$recipes_set_input<TRes> get $_set =>
      CopyWith$Input$recipes_set_input.stub(_res);
  CopyWith$Input$recipes_bool_exp<TRes> get where =>
      CopyWith$Input$recipes_bool_exp.stub(_res);
}

class Input$tags_append_input {
  factory Input$tags_append_input({String? numberOfRecipesByCountry}) =>
      Input$tags_append_input._({
        if (numberOfRecipesByCountry != null)
          r'numberOfRecipesByCountry': numberOfRecipesByCountry,
      });

  Input$tags_append_input._(this._$data);

  factory Input$tags_append_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = data['numberOfRecipesByCountry'];
      result$data['numberOfRecipesByCountry'] =
          (l$numberOfRecipesByCountry as String?);
    }
    return Input$tags_append_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get numberOfRecipesByCountry =>
      (_$data['numberOfRecipesByCountry'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
      result$data['numberOfRecipesByCountry'] = l$numberOfRecipesByCountry;
    }
    return result$data;
  }

  CopyWith$Input$tags_append_input<Input$tags_append_input> get copyWith =>
      CopyWith$Input$tags_append_input(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_append_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final lOther$numberOfRecipesByCountry = other.numberOfRecipesByCountry;
    if (_$data.containsKey('numberOfRecipesByCountry') !=
        other._$data.containsKey('numberOfRecipesByCountry')) {
      return false;
    }
    if (l$numberOfRecipesByCountry != lOther$numberOfRecipesByCountry) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    return Object.hashAll([
      _$data.containsKey('numberOfRecipesByCountry')
          ? l$numberOfRecipesByCountry
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$tags_append_input<TRes> {
  factory CopyWith$Input$tags_append_input(
    Input$tags_append_input instance,
    TRes Function(Input$tags_append_input) then,
  ) = _CopyWithImpl$Input$tags_append_input;

  factory CopyWith$Input$tags_append_input.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_append_input;

  TRes call({String? numberOfRecipesByCountry});
}

class _CopyWithImpl$Input$tags_append_input<TRes>
    implements CopyWith$Input$tags_append_input<TRes> {
  _CopyWithImpl$Input$tags_append_input(
    this._instance,
    this._then,
  );

  final Input$tags_append_input _instance;

  final TRes Function(Input$tags_append_input) _then;

  static const _undefined = {};

  TRes call({Object? numberOfRecipesByCountry = _undefined}) =>
      _then(Input$tags_append_input._({
        ..._instance._$data,
        if (numberOfRecipesByCountry != _undefined)
          'numberOfRecipesByCountry': (numberOfRecipesByCountry as String?),
      }));
}

class _CopyWithStubImpl$Input$tags_append_input<TRes>
    implements CopyWith$Input$tags_append_input<TRes> {
  _CopyWithStubImpl$Input$tags_append_input(this._res);

  TRes _res;

  call({String? numberOfRecipesByCountry}) => _res;
}

class Input$tags_bool_exp {
  factory Input$tags_bool_exp({
    List<Input$tags_bool_exp>? $_and,
    Input$tags_bool_exp? $_not,
    List<Input$tags_bool_exp>? $_or,
    Input$bridge_recipes_tags_bool_exp? bridge_recipes_tags,
    Input$bridge_recipes_tags_aggregate_bool_exp? bridge_recipes_tags_aggregate,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? name,
    Input$jsonb_comparison_exp? numberOfRecipesByCountry,
    Input$String_comparison_exp? slug,
    Input$String_comparison_exp? type,
  }) =>
      Input$tags_bool_exp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (bridge_recipes_tags != null)
          r'bridge_recipes_tags': bridge_recipes_tags,
        if (bridge_recipes_tags_aggregate != null)
          r'bridge_recipes_tags_aggregate': bridge_recipes_tags_aggregate,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (numberOfRecipesByCountry != null)
          r'numberOfRecipesByCountry': numberOfRecipesByCountry,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$tags_bool_exp._(this._$data);

  factory Input$tags_bool_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
              (e) => Input$tags_bool_exp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input$tags_bool_exp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
              (e) => Input$tags_bool_exp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('bridge_recipes_tags')) {
      final l$bridge_recipes_tags = data['bridge_recipes_tags'];
      result$data['bridge_recipes_tags'] = l$bridge_recipes_tags == null
          ? null
          : Input$bridge_recipes_tags_bool_exp.fromJson(
              (l$bridge_recipes_tags as Map<String, dynamic>));
    }
    if (data.containsKey('bridge_recipes_tags_aggregate')) {
      final l$bridge_recipes_tags_aggregate =
          data['bridge_recipes_tags_aggregate'];
      result$data['bridge_recipes_tags_aggregate'] =
          l$bridge_recipes_tags_aggregate == null
              ? null
              : Input$bridge_recipes_tags_aggregate_bool_exp.fromJson(
                  (l$bridge_recipes_tags_aggregate as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = data['numberOfRecipesByCountry'];
      result$data['numberOfRecipesByCountry'] =
          l$numberOfRecipesByCountry == null
              ? null
              : Input$jsonb_comparison_exp.fromJson(
                  (l$numberOfRecipesByCountry as Map<String, dynamic>));
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = l$slug == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$slug as Map<String, dynamic>));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$type as Map<String, dynamic>));
    }
    return Input$tags_bool_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$tags_bool_exp>? get $_and =>
      (_$data['_and'] as List<Input$tags_bool_exp>?);
  Input$tags_bool_exp? get $_not => (_$data['_not'] as Input$tags_bool_exp?);
  List<Input$tags_bool_exp>? get $_or =>
      (_$data['_or'] as List<Input$tags_bool_exp>?);
  Input$bridge_recipes_tags_bool_exp? get bridge_recipes_tags =>
      (_$data['bridge_recipes_tags'] as Input$bridge_recipes_tags_bool_exp?);
  Input$bridge_recipes_tags_aggregate_bool_exp?
      get bridge_recipes_tags_aggregate =>
          (_$data['bridge_recipes_tags_aggregate']
              as Input$bridge_recipes_tags_aggregate_bool_exp?);
  Input$String_comparison_exp? get id =>
      (_$data['id'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get name =>
      (_$data['name'] as Input$String_comparison_exp?);
  Input$jsonb_comparison_exp? get numberOfRecipesByCountry =>
      (_$data['numberOfRecipesByCountry'] as Input$jsonb_comparison_exp?);
  Input$String_comparison_exp? get slug =>
      (_$data['slug'] as Input$String_comparison_exp?);
  Input$String_comparison_exp? get type =>
      (_$data['type'] as Input$String_comparison_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('bridge_recipes_tags')) {
      final l$bridge_recipes_tags = bridge_recipes_tags;
      result$data['bridge_recipes_tags'] = l$bridge_recipes_tags?.toJson();
    }
    if (_$data.containsKey('bridge_recipes_tags_aggregate')) {
      final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
      result$data['bridge_recipes_tags_aggregate'] =
          l$bridge_recipes_tags_aggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
      result$data['numberOfRecipesByCountry'] =
          l$numberOfRecipesByCountry?.toJson();
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug?.toJson();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$tags_bool_exp<Input$tags_bool_exp> get copyWith =>
      CopyWith$Input$tags_bool_exp(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_bool_exp) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$bridge_recipes_tags = bridge_recipes_tags;
    final lOther$bridge_recipes_tags = other.bridge_recipes_tags;
    if (_$data.containsKey('bridge_recipes_tags') !=
        other._$data.containsKey('bridge_recipes_tags')) {
      return false;
    }
    if (l$bridge_recipes_tags != lOther$bridge_recipes_tags) {
      return false;
    }
    final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
    final lOther$bridge_recipes_tags_aggregate =
        other.bridge_recipes_tags_aggregate;
    if (_$data.containsKey('bridge_recipes_tags_aggregate') !=
        other._$data.containsKey('bridge_recipes_tags_aggregate')) {
      return false;
    }
    if (l$bridge_recipes_tags_aggregate !=
        lOther$bridge_recipes_tags_aggregate) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final lOther$numberOfRecipesByCountry = other.numberOfRecipesByCountry;
    if (_$data.containsKey('numberOfRecipesByCountry') !=
        other._$data.containsKey('numberOfRecipesByCountry')) {
      return false;
    }
    if (l$numberOfRecipesByCountry != lOther$numberOfRecipesByCountry) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$bridge_recipes_tags = bridge_recipes_tags;
    final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
    final l$id = id;
    final l$name = name;
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
              ? null
              : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
              ? null
              : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('bridge_recipes_tags')
          ? l$bridge_recipes_tags
          : const {},
      _$data.containsKey('bridge_recipes_tags_aggregate')
          ? l$bridge_recipes_tags_aggregate
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('numberOfRecipesByCountry')
          ? l$numberOfRecipesByCountry
          : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$tags_bool_exp<TRes> {
  factory CopyWith$Input$tags_bool_exp(
    Input$tags_bool_exp instance,
    TRes Function(Input$tags_bool_exp) then,
  ) = _CopyWithImpl$Input$tags_bool_exp;

  factory CopyWith$Input$tags_bool_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_bool_exp;

  TRes call({
    List<Input$tags_bool_exp>? $_and,
    Input$tags_bool_exp? $_not,
    List<Input$tags_bool_exp>? $_or,
    Input$bridge_recipes_tags_bool_exp? bridge_recipes_tags,
    Input$bridge_recipes_tags_aggregate_bool_exp? bridge_recipes_tags_aggregate,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? name,
    Input$jsonb_comparison_exp? numberOfRecipesByCountry,
    Input$String_comparison_exp? slug,
    Input$String_comparison_exp? type,
  });
  TRes $_and(
      Iterable<Input$tags_bool_exp>? Function(
              Iterable<CopyWith$Input$tags_bool_exp<Input$tags_bool_exp>>?)
          _fn);
  CopyWith$Input$tags_bool_exp<TRes> get $_not;
  TRes $_or(
      Iterable<Input$tags_bool_exp>? Function(
              Iterable<CopyWith$Input$tags_bool_exp<Input$tags_bool_exp>>?)
          _fn);
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get bridge_recipes_tags;
  CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp<TRes>
      get bridge_recipes_tags_aggregate;
  CopyWith$Input$String_comparison_exp<TRes> get id;
  CopyWith$Input$String_comparison_exp<TRes> get name;
  CopyWith$Input$jsonb_comparison_exp<TRes> get numberOfRecipesByCountry;
  CopyWith$Input$String_comparison_exp<TRes> get slug;
  CopyWith$Input$String_comparison_exp<TRes> get type;
}

class _CopyWithImpl$Input$tags_bool_exp<TRes>
    implements CopyWith$Input$tags_bool_exp<TRes> {
  _CopyWithImpl$Input$tags_bool_exp(
    this._instance,
    this._then,
  );

  final Input$tags_bool_exp _instance;

  final TRes Function(Input$tags_bool_exp) _then;

  static const _undefined = {};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? bridge_recipes_tags = _undefined,
    Object? bridge_recipes_tags_aggregate = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? numberOfRecipesByCountry = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$tags_bool_exp._({
        ..._instance._$data,
        if ($_and != _undefined) '_and': ($_and as List<Input$tags_bool_exp>?),
        if ($_not != _undefined) '_not': ($_not as Input$tags_bool_exp?),
        if ($_or != _undefined) '_or': ($_or as List<Input$tags_bool_exp>?),
        if (bridge_recipes_tags != _undefined)
          'bridge_recipes_tags':
              (bridge_recipes_tags as Input$bridge_recipes_tags_bool_exp?),
        if (bridge_recipes_tags_aggregate != _undefined)
          'bridge_recipes_tags_aggregate': (bridge_recipes_tags_aggregate
              as Input$bridge_recipes_tags_aggregate_bool_exp?),
        if (id != _undefined) 'id': (id as Input$String_comparison_exp?),
        if (name != _undefined) 'name': (name as Input$String_comparison_exp?),
        if (numberOfRecipesByCountry != _undefined)
          'numberOfRecipesByCountry':
              (numberOfRecipesByCountry as Input$jsonb_comparison_exp?),
        if (slug != _undefined) 'slug': (slug as Input$String_comparison_exp?),
        if (type != _undefined) 'type': (type as Input$String_comparison_exp?),
      }));
  TRes $_and(
          Iterable<Input$tags_bool_exp>? Function(
                  Iterable<CopyWith$Input$tags_bool_exp<Input$tags_bool_exp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and?.map((e) => CopyWith$Input$tags_bool_exp(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$tags_bool_exp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith$Input$tags_bool_exp.stub(_then(_instance))
        : CopyWith$Input$tags_bool_exp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input$tags_bool_exp>? Function(
                  Iterable<CopyWith$Input$tags_bool_exp<Input$tags_bool_exp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or?.map((e) => CopyWith$Input$tags_bool_exp(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get bridge_recipes_tags {
    final local$bridge_recipes_tags = _instance.bridge_recipes_tags;
    return local$bridge_recipes_tags == null
        ? CopyWith$Input$bridge_recipes_tags_bool_exp.stub(_then(_instance))
        : CopyWith$Input$bridge_recipes_tags_bool_exp(
            local$bridge_recipes_tags, (e) => call(bridge_recipes_tags: e));
  }

  CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp<TRes>
      get bridge_recipes_tags_aggregate {
    final local$bridge_recipes_tags_aggregate =
        _instance.bridge_recipes_tags_aggregate;
    return local$bridge_recipes_tags_aggregate == null
        ? CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp(
            local$bridge_recipes_tags_aggregate,
            (e) => call(bridge_recipes_tags_aggregate: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(local$id, (e) => call(id: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$jsonb_comparison_exp<TRes> get numberOfRecipesByCountry {
    final local$numberOfRecipesByCountry = _instance.numberOfRecipesByCountry;
    return local$numberOfRecipesByCountry == null
        ? CopyWith$Input$jsonb_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$jsonb_comparison_exp(local$numberOfRecipesByCountry,
            (e) => call(numberOfRecipesByCountry: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get slug {
    final local$slug = _instance.slug;
    return local$slug == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$slug, (e) => call(slug: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$type, (e) => call(type: e));
  }
}

class _CopyWithStubImpl$Input$tags_bool_exp<TRes>
    implements CopyWith$Input$tags_bool_exp<TRes> {
  _CopyWithStubImpl$Input$tags_bool_exp(this._res);

  TRes _res;

  call({
    List<Input$tags_bool_exp>? $_and,
    Input$tags_bool_exp? $_not,
    List<Input$tags_bool_exp>? $_or,
    Input$bridge_recipes_tags_bool_exp? bridge_recipes_tags,
    Input$bridge_recipes_tags_aggregate_bool_exp? bridge_recipes_tags_aggregate,
    Input$String_comparison_exp? id,
    Input$String_comparison_exp? name,
    Input$jsonb_comparison_exp? numberOfRecipesByCountry,
    Input$String_comparison_exp? slug,
    Input$String_comparison_exp? type,
  }) =>
      _res;
  $_and(_fn) => _res;
  CopyWith$Input$tags_bool_exp<TRes> get $_not =>
      CopyWith$Input$tags_bool_exp.stub(_res);
  $_or(_fn) => _res;
  CopyWith$Input$bridge_recipes_tags_bool_exp<TRes> get bridge_recipes_tags =>
      CopyWith$Input$bridge_recipes_tags_bool_exp.stub(_res);
  CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp<TRes>
      get bridge_recipes_tags_aggregate =>
          CopyWith$Input$bridge_recipes_tags_aggregate_bool_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get id =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get name =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$jsonb_comparison_exp<TRes> get numberOfRecipesByCountry =>
      CopyWith$Input$jsonb_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get slug =>
      CopyWith$Input$String_comparison_exp.stub(_res);
  CopyWith$Input$String_comparison_exp<TRes> get type =>
      CopyWith$Input$String_comparison_exp.stub(_res);
}

class Input$tags_delete_at_path_input {
  factory Input$tags_delete_at_path_input(
          {List<String>? numberOfRecipesByCountry}) =>
      Input$tags_delete_at_path_input._({
        if (numberOfRecipesByCountry != null)
          r'numberOfRecipesByCountry': numberOfRecipesByCountry,
      });

  Input$tags_delete_at_path_input._(this._$data);

  factory Input$tags_delete_at_path_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = data['numberOfRecipesByCountry'];
      result$data['numberOfRecipesByCountry'] =
          (l$numberOfRecipesByCountry as List<dynamic>?)
              ?.map((e) => (e as String))
              .toList();
    }
    return Input$tags_delete_at_path_input._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get numberOfRecipesByCountry =>
      (_$data['numberOfRecipesByCountry'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
      result$data['numberOfRecipesByCountry'] =
          l$numberOfRecipesByCountry?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$tags_delete_at_path_input<Input$tags_delete_at_path_input>
      get copyWith => CopyWith$Input$tags_delete_at_path_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_delete_at_path_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final lOther$numberOfRecipesByCountry = other.numberOfRecipesByCountry;
    if (_$data.containsKey('numberOfRecipesByCountry') !=
        other._$data.containsKey('numberOfRecipesByCountry')) {
      return false;
    }
    if (l$numberOfRecipesByCountry != null &&
        lOther$numberOfRecipesByCountry != null) {
      if (l$numberOfRecipesByCountry.length !=
          lOther$numberOfRecipesByCountry.length) {
        return false;
      }
      for (int i = 0; i < l$numberOfRecipesByCountry.length; i++) {
        final l$numberOfRecipesByCountry$entry = l$numberOfRecipesByCountry[i];
        final lOther$numberOfRecipesByCountry$entry =
            lOther$numberOfRecipesByCountry[i];
        if (l$numberOfRecipesByCountry$entry !=
            lOther$numberOfRecipesByCountry$entry) {
          return false;
        }
      }
    } else if (l$numberOfRecipesByCountry != lOther$numberOfRecipesByCountry) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    return Object.hashAll([
      _$data.containsKey('numberOfRecipesByCountry')
          ? l$numberOfRecipesByCountry == null
              ? null
              : Object.hashAll(l$numberOfRecipesByCountry.map((v) => v))
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$tags_delete_at_path_input<TRes> {
  factory CopyWith$Input$tags_delete_at_path_input(
    Input$tags_delete_at_path_input instance,
    TRes Function(Input$tags_delete_at_path_input) then,
  ) = _CopyWithImpl$Input$tags_delete_at_path_input;

  factory CopyWith$Input$tags_delete_at_path_input.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_delete_at_path_input;

  TRes call({List<String>? numberOfRecipesByCountry});
}

class _CopyWithImpl$Input$tags_delete_at_path_input<TRes>
    implements CopyWith$Input$tags_delete_at_path_input<TRes> {
  _CopyWithImpl$Input$tags_delete_at_path_input(
    this._instance,
    this._then,
  );

  final Input$tags_delete_at_path_input _instance;

  final TRes Function(Input$tags_delete_at_path_input) _then;

  static const _undefined = {};

  TRes call({Object? numberOfRecipesByCountry = _undefined}) =>
      _then(Input$tags_delete_at_path_input._({
        ..._instance._$data,
        if (numberOfRecipesByCountry != _undefined)
          'numberOfRecipesByCountry':
              (numberOfRecipesByCountry as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$tags_delete_at_path_input<TRes>
    implements CopyWith$Input$tags_delete_at_path_input<TRes> {
  _CopyWithStubImpl$Input$tags_delete_at_path_input(this._res);

  TRes _res;

  call({List<String>? numberOfRecipesByCountry}) => _res;
}

class Input$tags_delete_elem_input {
  factory Input$tags_delete_elem_input({int? numberOfRecipesByCountry}) =>
      Input$tags_delete_elem_input._({
        if (numberOfRecipesByCountry != null)
          r'numberOfRecipesByCountry': numberOfRecipesByCountry,
      });

  Input$tags_delete_elem_input._(this._$data);

  factory Input$tags_delete_elem_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = data['numberOfRecipesByCountry'];
      result$data['numberOfRecipesByCountry'] =
          (l$numberOfRecipesByCountry as int?);
    }
    return Input$tags_delete_elem_input._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get numberOfRecipesByCountry =>
      (_$data['numberOfRecipesByCountry'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
      result$data['numberOfRecipesByCountry'] = l$numberOfRecipesByCountry;
    }
    return result$data;
  }

  CopyWith$Input$tags_delete_elem_input<Input$tags_delete_elem_input>
      get copyWith => CopyWith$Input$tags_delete_elem_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_delete_elem_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final lOther$numberOfRecipesByCountry = other.numberOfRecipesByCountry;
    if (_$data.containsKey('numberOfRecipesByCountry') !=
        other._$data.containsKey('numberOfRecipesByCountry')) {
      return false;
    }
    if (l$numberOfRecipesByCountry != lOther$numberOfRecipesByCountry) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    return Object.hashAll([
      _$data.containsKey('numberOfRecipesByCountry')
          ? l$numberOfRecipesByCountry
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$tags_delete_elem_input<TRes> {
  factory CopyWith$Input$tags_delete_elem_input(
    Input$tags_delete_elem_input instance,
    TRes Function(Input$tags_delete_elem_input) then,
  ) = _CopyWithImpl$Input$tags_delete_elem_input;

  factory CopyWith$Input$tags_delete_elem_input.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_delete_elem_input;

  TRes call({int? numberOfRecipesByCountry});
}

class _CopyWithImpl$Input$tags_delete_elem_input<TRes>
    implements CopyWith$Input$tags_delete_elem_input<TRes> {
  _CopyWithImpl$Input$tags_delete_elem_input(
    this._instance,
    this._then,
  );

  final Input$tags_delete_elem_input _instance;

  final TRes Function(Input$tags_delete_elem_input) _then;

  static const _undefined = {};

  TRes call({Object? numberOfRecipesByCountry = _undefined}) =>
      _then(Input$tags_delete_elem_input._({
        ..._instance._$data,
        if (numberOfRecipesByCountry != _undefined)
          'numberOfRecipesByCountry': (numberOfRecipesByCountry as int?),
      }));
}

class _CopyWithStubImpl$Input$tags_delete_elem_input<TRes>
    implements CopyWith$Input$tags_delete_elem_input<TRes> {
  _CopyWithStubImpl$Input$tags_delete_elem_input(this._res);

  TRes _res;

  call({int? numberOfRecipesByCountry}) => _res;
}

class Input$tags_delete_key_input {
  factory Input$tags_delete_key_input({String? numberOfRecipesByCountry}) =>
      Input$tags_delete_key_input._({
        if (numberOfRecipesByCountry != null)
          r'numberOfRecipesByCountry': numberOfRecipesByCountry,
      });

  Input$tags_delete_key_input._(this._$data);

  factory Input$tags_delete_key_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = data['numberOfRecipesByCountry'];
      result$data['numberOfRecipesByCountry'] =
          (l$numberOfRecipesByCountry as String?);
    }
    return Input$tags_delete_key_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get numberOfRecipesByCountry =>
      (_$data['numberOfRecipesByCountry'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
      result$data['numberOfRecipesByCountry'] = l$numberOfRecipesByCountry;
    }
    return result$data;
  }

  CopyWith$Input$tags_delete_key_input<Input$tags_delete_key_input>
      get copyWith => CopyWith$Input$tags_delete_key_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_delete_key_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final lOther$numberOfRecipesByCountry = other.numberOfRecipesByCountry;
    if (_$data.containsKey('numberOfRecipesByCountry') !=
        other._$data.containsKey('numberOfRecipesByCountry')) {
      return false;
    }
    if (l$numberOfRecipesByCountry != lOther$numberOfRecipesByCountry) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    return Object.hashAll([
      _$data.containsKey('numberOfRecipesByCountry')
          ? l$numberOfRecipesByCountry
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$tags_delete_key_input<TRes> {
  factory CopyWith$Input$tags_delete_key_input(
    Input$tags_delete_key_input instance,
    TRes Function(Input$tags_delete_key_input) then,
  ) = _CopyWithImpl$Input$tags_delete_key_input;

  factory CopyWith$Input$tags_delete_key_input.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_delete_key_input;

  TRes call({String? numberOfRecipesByCountry});
}

class _CopyWithImpl$Input$tags_delete_key_input<TRes>
    implements CopyWith$Input$tags_delete_key_input<TRes> {
  _CopyWithImpl$Input$tags_delete_key_input(
    this._instance,
    this._then,
  );

  final Input$tags_delete_key_input _instance;

  final TRes Function(Input$tags_delete_key_input) _then;

  static const _undefined = {};

  TRes call({Object? numberOfRecipesByCountry = _undefined}) =>
      _then(Input$tags_delete_key_input._({
        ..._instance._$data,
        if (numberOfRecipesByCountry != _undefined)
          'numberOfRecipesByCountry': (numberOfRecipesByCountry as String?),
      }));
}

class _CopyWithStubImpl$Input$tags_delete_key_input<TRes>
    implements CopyWith$Input$tags_delete_key_input<TRes> {
  _CopyWithStubImpl$Input$tags_delete_key_input(this._res);

  TRes _res;

  call({String? numberOfRecipesByCountry}) => _res;
}

class Input$tags_insert_input {
  factory Input$tags_insert_input({
    Input$bridge_recipes_tags_arr_rel_insert_input? bridge_recipes_tags,
    required String id,
    required String name,
    required String numberOfRecipesByCountry,
    required String slug,
    required String type,
  }) =>
      Input$tags_insert_input._({
        if (bridge_recipes_tags != null)
          r'bridge_recipes_tags': bridge_recipes_tags,
        r'id': id,
        r'name': name,
        r'numberOfRecipesByCountry': numberOfRecipesByCountry,
        r'slug': slug,
        r'type': type,
      });

  Input$tags_insert_input._(this._$data);

  factory Input$tags_insert_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bridge_recipes_tags')) {
      final l$bridge_recipes_tags = data['bridge_recipes_tags'];
      result$data['bridge_recipes_tags'] = l$bridge_recipes_tags == null
          ? null
          : Input$bridge_recipes_tags_arr_rel_insert_input.fromJson(
              (l$bridge_recipes_tags as Map<String, dynamic>));
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$numberOfRecipesByCountry = data['numberOfRecipesByCountry'];
    result$data['numberOfRecipesByCountry'] =
        (l$numberOfRecipesByCountry as String);
    final l$slug = data['slug'];
    result$data['slug'] = (l$slug as String);
    final l$type = data['type'];
    result$data['type'] = (l$type as String);
    return Input$tags_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_tags_arr_rel_insert_input? get bridge_recipes_tags =>
      (_$data['bridge_recipes_tags']
          as Input$bridge_recipes_tags_arr_rel_insert_input?);
  String get id => (_$data['id'] as String);
  String get name => (_$data['name'] as String);
  String get numberOfRecipesByCountry =>
      (_$data['numberOfRecipesByCountry'] as String);
  String get slug => (_$data['slug'] as String);
  String get type => (_$data['type'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bridge_recipes_tags')) {
      final l$bridge_recipes_tags = bridge_recipes_tags;
      result$data['bridge_recipes_tags'] = l$bridge_recipes_tags?.toJson();
    }
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    result$data['numberOfRecipesByCountry'] = l$numberOfRecipesByCountry;
    final l$slug = slug;
    result$data['slug'] = l$slug;
    final l$type = type;
    result$data['type'] = l$type;
    return result$data;
  }

  CopyWith$Input$tags_insert_input<Input$tags_insert_input> get copyWith =>
      CopyWith$Input$tags_insert_input(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bridge_recipes_tags = bridge_recipes_tags;
    final lOther$bridge_recipes_tags = other.bridge_recipes_tags;
    if (_$data.containsKey('bridge_recipes_tags') !=
        other._$data.containsKey('bridge_recipes_tags')) {
      return false;
    }
    if (l$bridge_recipes_tags != lOther$bridge_recipes_tags) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final lOther$numberOfRecipesByCountry = other.numberOfRecipesByCountry;
    if (l$numberOfRecipesByCountry != lOther$numberOfRecipesByCountry) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bridge_recipes_tags = bridge_recipes_tags;
    final l$id = id;
    final l$name = name;
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('bridge_recipes_tags')
          ? l$bridge_recipes_tags
          : const {},
      l$id,
      l$name,
      l$numberOfRecipesByCountry,
      l$slug,
      l$type,
    ]);
  }
}

abstract class CopyWith$Input$tags_insert_input<TRes> {
  factory CopyWith$Input$tags_insert_input(
    Input$tags_insert_input instance,
    TRes Function(Input$tags_insert_input) then,
  ) = _CopyWithImpl$Input$tags_insert_input;

  factory CopyWith$Input$tags_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_insert_input;

  TRes call({
    Input$bridge_recipes_tags_arr_rel_insert_input? bridge_recipes_tags,
    String? id,
    String? name,
    String? numberOfRecipesByCountry,
    String? slug,
    String? type,
  });
  CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input<TRes>
      get bridge_recipes_tags;
}

class _CopyWithImpl$Input$tags_insert_input<TRes>
    implements CopyWith$Input$tags_insert_input<TRes> {
  _CopyWithImpl$Input$tags_insert_input(
    this._instance,
    this._then,
  );

  final Input$tags_insert_input _instance;

  final TRes Function(Input$tags_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? bridge_recipes_tags = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? numberOfRecipesByCountry = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$tags_insert_input._({
        ..._instance._$data,
        if (bridge_recipes_tags != _undefined)
          'bridge_recipes_tags': (bridge_recipes_tags
              as Input$bridge_recipes_tags_arr_rel_insert_input?),
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (numberOfRecipesByCountry != _undefined &&
            numberOfRecipesByCountry != null)
          'numberOfRecipesByCountry': (numberOfRecipesByCountry as String),
        if (slug != _undefined && slug != null) 'slug': (slug as String),
        if (type != _undefined && type != null) 'type': (type as String),
      }));
  CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input<TRes>
      get bridge_recipes_tags {
    final local$bridge_recipes_tags = _instance.bridge_recipes_tags;
    return local$bridge_recipes_tags == null
        ? CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input(
            local$bridge_recipes_tags, (e) => call(bridge_recipes_tags: e));
  }
}

class _CopyWithStubImpl$Input$tags_insert_input<TRes>
    implements CopyWith$Input$tags_insert_input<TRes> {
  _CopyWithStubImpl$Input$tags_insert_input(this._res);

  TRes _res;

  call({
    Input$bridge_recipes_tags_arr_rel_insert_input? bridge_recipes_tags,
    String? id,
    String? name,
    String? numberOfRecipesByCountry,
    String? slug,
    String? type,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input<TRes>
      get bridge_recipes_tags =>
          CopyWith$Input$bridge_recipes_tags_arr_rel_insert_input.stub(_res);
}

class Input$tags_obj_rel_insert_input {
  factory Input$tags_obj_rel_insert_input({
    required Input$tags_insert_input data,
    Input$tags_on_conflict? on_conflict,
  }) =>
      Input$tags_obj_rel_insert_input._({
        r'data': data,
        if (on_conflict != null) r'on_conflict': on_conflict,
      });

  Input$tags_obj_rel_insert_input._(this._$data);

  factory Input$tags_obj_rel_insert_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$tags_insert_input.fromJson((l$data as Map<String, dynamic>));
    if (data.containsKey('on_conflict')) {
      final l$on_conflict = data['on_conflict'];
      result$data['on_conflict'] = l$on_conflict == null
          ? null
          : Input$tags_on_conflict.fromJson(
              (l$on_conflict as Map<String, dynamic>));
    }
    return Input$tags_obj_rel_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$tags_insert_input get data =>
      (_$data['data'] as Input$tags_insert_input);
  Input$tags_on_conflict? get on_conflict =>
      (_$data['on_conflict'] as Input$tags_on_conflict?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    if (_$data.containsKey('on_conflict')) {
      final l$on_conflict = on_conflict;
      result$data['on_conflict'] = l$on_conflict?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$tags_obj_rel_insert_input<Input$tags_obj_rel_insert_input>
      get copyWith => CopyWith$Input$tags_obj_rel_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_obj_rel_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (_$data.containsKey('on_conflict') !=
        other._$data.containsKey('on_conflict')) {
      return false;
    }
    if (l$on_conflict != lOther$on_conflict) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll([
      l$data,
      _$data.containsKey('on_conflict') ? l$on_conflict : const {},
    ]);
  }
}

abstract class CopyWith$Input$tags_obj_rel_insert_input<TRes> {
  factory CopyWith$Input$tags_obj_rel_insert_input(
    Input$tags_obj_rel_insert_input instance,
    TRes Function(Input$tags_obj_rel_insert_input) then,
  ) = _CopyWithImpl$Input$tags_obj_rel_insert_input;

  factory CopyWith$Input$tags_obj_rel_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_obj_rel_insert_input;

  TRes call({
    Input$tags_insert_input? data,
    Input$tags_on_conflict? on_conflict,
  });
  CopyWith$Input$tags_insert_input<TRes> get data;
  CopyWith$Input$tags_on_conflict<TRes> get on_conflict;
}

class _CopyWithImpl$Input$tags_obj_rel_insert_input<TRes>
    implements CopyWith$Input$tags_obj_rel_insert_input<TRes> {
  _CopyWithImpl$Input$tags_obj_rel_insert_input(
    this._instance,
    this._then,
  );

  final Input$tags_obj_rel_insert_input _instance;

  final TRes Function(Input$tags_obj_rel_insert_input) _then;

  static const _undefined = {};

  TRes call({
    Object? data = _undefined,
    Object? on_conflict = _undefined,
  }) =>
      _then(Input$tags_obj_rel_insert_input._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$tags_insert_input),
        if (on_conflict != _undefined)
          'on_conflict': (on_conflict as Input$tags_on_conflict?),
      }));
  CopyWith$Input$tags_insert_input<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$tags_insert_input(local$data, (e) => call(data: e));
  }

  CopyWith$Input$tags_on_conflict<TRes> get on_conflict {
    final local$on_conflict = _instance.on_conflict;
    return local$on_conflict == null
        ? CopyWith$Input$tags_on_conflict.stub(_then(_instance))
        : CopyWith$Input$tags_on_conflict(
            local$on_conflict, (e) => call(on_conflict: e));
  }
}

class _CopyWithStubImpl$Input$tags_obj_rel_insert_input<TRes>
    implements CopyWith$Input$tags_obj_rel_insert_input<TRes> {
  _CopyWithStubImpl$Input$tags_obj_rel_insert_input(this._res);

  TRes _res;

  call({
    Input$tags_insert_input? data,
    Input$tags_on_conflict? on_conflict,
  }) =>
      _res;
  CopyWith$Input$tags_insert_input<TRes> get data =>
      CopyWith$Input$tags_insert_input.stub(_res);
  CopyWith$Input$tags_on_conflict<TRes> get on_conflict =>
      CopyWith$Input$tags_on_conflict.stub(_res);
}

class Input$tags_on_conflict {
  factory Input$tags_on_conflict({
    required Enum$tags_constraint constraint,
    required List<Enum$tags_update_column> update_columns,
    Input$tags_bool_exp? where,
  }) =>
      Input$tags_on_conflict._({
        r'constraint': constraint,
        r'update_columns': update_columns,
        if (where != null) r'where': where,
      });

  Input$tags_on_conflict._(this._$data);

  factory Input$tags_on_conflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson$Enum$tags_constraint((l$constraint as String));
    final l$update_columns = data['update_columns'];
    result$data['update_columns'] = (l$update_columns as List<dynamic>)
        .map((e) => fromJson$Enum$tags_update_column((e as String)))
        .toList();
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$tags_bool_exp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input$tags_on_conflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$tags_constraint get constraint =>
      (_$data['constraint'] as Enum$tags_constraint);
  List<Enum$tags_update_column> get update_columns =>
      (_$data['update_columns'] as List<Enum$tags_update_column>);
  Input$tags_bool_exp? get where => (_$data['where'] as Input$tags_bool_exp?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson$Enum$tags_constraint(l$constraint);
    final l$update_columns = update_columns;
    result$data['update_columns'] =
        l$update_columns.map((e) => toJson$Enum$tags_update_column(e)).toList();
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$tags_on_conflict<Input$tags_on_conflict> get copyWith =>
      CopyWith$Input$tags_on_conflict(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_on_conflict) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) {
      return false;
    }
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) {
        return false;
      }
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith$Input$tags_on_conflict<TRes> {
  factory CopyWith$Input$tags_on_conflict(
    Input$tags_on_conflict instance,
    TRes Function(Input$tags_on_conflict) then,
  ) = _CopyWithImpl$Input$tags_on_conflict;

  factory CopyWith$Input$tags_on_conflict.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_on_conflict;

  TRes call({
    Enum$tags_constraint? constraint,
    List<Enum$tags_update_column>? update_columns,
    Input$tags_bool_exp? where,
  });
  CopyWith$Input$tags_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$tags_on_conflict<TRes>
    implements CopyWith$Input$tags_on_conflict<TRes> {
  _CopyWithImpl$Input$tags_on_conflict(
    this._instance,
    this._then,
  );

  final Input$tags_on_conflict _instance;

  final TRes Function(Input$tags_on_conflict) _then;

  static const _undefined = {};

  TRes call({
    Object? constraint = _undefined,
    Object? update_columns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$tags_on_conflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum$tags_constraint),
        if (update_columns != _undefined && update_columns != null)
          'update_columns': (update_columns as List<Enum$tags_update_column>),
        if (where != _undefined) 'where': (where as Input$tags_bool_exp?),
      }));
  CopyWith$Input$tags_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith$Input$tags_bool_exp.stub(_then(_instance))
        : CopyWith$Input$tags_bool_exp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$tags_on_conflict<TRes>
    implements CopyWith$Input$tags_on_conflict<TRes> {
  _CopyWithStubImpl$Input$tags_on_conflict(this._res);

  TRes _res;

  call({
    Enum$tags_constraint? constraint,
    List<Enum$tags_update_column>? update_columns,
    Input$tags_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$tags_bool_exp<TRes> get where =>
      CopyWith$Input$tags_bool_exp.stub(_res);
}

class Input$tags_order_by {
  factory Input$tags_order_by({
    Input$bridge_recipes_tags_aggregate_order_by? bridge_recipes_tags_aggregate,
    Enum$order_by? id,
    Enum$order_by? name,
    Enum$order_by? numberOfRecipesByCountry,
    Enum$order_by? slug,
    Enum$order_by? type,
  }) =>
      Input$tags_order_by._({
        if (bridge_recipes_tags_aggregate != null)
          r'bridge_recipes_tags_aggregate': bridge_recipes_tags_aggregate,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (numberOfRecipesByCountry != null)
          r'numberOfRecipesByCountry': numberOfRecipesByCountry,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$tags_order_by._(this._$data);

  factory Input$tags_order_by.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bridge_recipes_tags_aggregate')) {
      final l$bridge_recipes_tags_aggregate =
          data['bridge_recipes_tags_aggregate'];
      result$data['bridge_recipes_tags_aggregate'] =
          l$bridge_recipes_tags_aggregate == null
              ? null
              : Input$bridge_recipes_tags_aggregate_order_by.fromJson(
                  (l$bridge_recipes_tags_aggregate as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$order_by((l$name as String));
    }
    if (data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = data['numberOfRecipesByCountry'];
      result$data['numberOfRecipesByCountry'] =
          l$numberOfRecipesByCountry == null
              ? null
              : fromJson$Enum$order_by((l$numberOfRecipesByCountry as String));
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] =
          l$slug == null ? null : fromJson$Enum$order_by((l$slug as String));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$order_by((l$type as String));
    }
    return Input$tags_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bridge_recipes_tags_aggregate_order_by?
      get bridge_recipes_tags_aggregate =>
          (_$data['bridge_recipes_tags_aggregate']
              as Input$bridge_recipes_tags_aggregate_order_by?);
  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);
  Enum$order_by? get name => (_$data['name'] as Enum$order_by?);
  Enum$order_by? get numberOfRecipesByCountry =>
      (_$data['numberOfRecipesByCountry'] as Enum$order_by?);
  Enum$order_by? get slug => (_$data['slug'] as Enum$order_by?);
  Enum$order_by? get type => (_$data['type'] as Enum$order_by?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bridge_recipes_tags_aggregate')) {
      final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
      result$data['bridge_recipes_tags_aggregate'] =
          l$bridge_recipes_tags_aggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$order_by(l$name);
    }
    if (_$data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
      result$data['numberOfRecipesByCountry'] =
          l$numberOfRecipesByCountry == null
              ? null
              : toJson$Enum$order_by(l$numberOfRecipesByCountry);
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] =
          l$slug == null ? null : toJson$Enum$order_by(l$slug);
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$order_by(l$type);
    }
    return result$data;
  }

  CopyWith$Input$tags_order_by<Input$tags_order_by> get copyWith =>
      CopyWith$Input$tags_order_by(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_order_by) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
    final lOther$bridge_recipes_tags_aggregate =
        other.bridge_recipes_tags_aggregate;
    if (_$data.containsKey('bridge_recipes_tags_aggregate') !=
        other._$data.containsKey('bridge_recipes_tags_aggregate')) {
      return false;
    }
    if (l$bridge_recipes_tags_aggregate !=
        lOther$bridge_recipes_tags_aggregate) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final lOther$numberOfRecipesByCountry = other.numberOfRecipesByCountry;
    if (_$data.containsKey('numberOfRecipesByCountry') !=
        other._$data.containsKey('numberOfRecipesByCountry')) {
      return false;
    }
    if (l$numberOfRecipesByCountry != lOther$numberOfRecipesByCountry) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
    final l$id = id;
    final l$name = name;
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('bridge_recipes_tags_aggregate')
          ? l$bridge_recipes_tags_aggregate
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('numberOfRecipesByCountry')
          ? l$numberOfRecipesByCountry
          : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$tags_order_by<TRes> {
  factory CopyWith$Input$tags_order_by(
    Input$tags_order_by instance,
    TRes Function(Input$tags_order_by) then,
  ) = _CopyWithImpl$Input$tags_order_by;

  factory CopyWith$Input$tags_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_order_by;

  TRes call({
    Input$bridge_recipes_tags_aggregate_order_by? bridge_recipes_tags_aggregate,
    Enum$order_by? id,
    Enum$order_by? name,
    Enum$order_by? numberOfRecipesByCountry,
    Enum$order_by? slug,
    Enum$order_by? type,
  });
  CopyWith$Input$bridge_recipes_tags_aggregate_order_by<TRes>
      get bridge_recipes_tags_aggregate;
}

class _CopyWithImpl$Input$tags_order_by<TRes>
    implements CopyWith$Input$tags_order_by<TRes> {
  _CopyWithImpl$Input$tags_order_by(
    this._instance,
    this._then,
  );

  final Input$tags_order_by _instance;

  final TRes Function(Input$tags_order_by) _then;

  static const _undefined = {};

  TRes call({
    Object? bridge_recipes_tags_aggregate = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? numberOfRecipesByCountry = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$tags_order_by._({
        ..._instance._$data,
        if (bridge_recipes_tags_aggregate != _undefined)
          'bridge_recipes_tags_aggregate': (bridge_recipes_tags_aggregate
              as Input$bridge_recipes_tags_aggregate_order_by?),
        if (id != _undefined) 'id': (id as Enum$order_by?),
        if (name != _undefined) 'name': (name as Enum$order_by?),
        if (numberOfRecipesByCountry != _undefined)
          'numberOfRecipesByCountry':
              (numberOfRecipesByCountry as Enum$order_by?),
        if (slug != _undefined) 'slug': (slug as Enum$order_by?),
        if (type != _undefined) 'type': (type as Enum$order_by?),
      }));
  CopyWith$Input$bridge_recipes_tags_aggregate_order_by<TRes>
      get bridge_recipes_tags_aggregate {
    final local$bridge_recipes_tags_aggregate =
        _instance.bridge_recipes_tags_aggregate;
    return local$bridge_recipes_tags_aggregate == null
        ? CopyWith$Input$bridge_recipes_tags_aggregate_order_by.stub(
            _then(_instance))
        : CopyWith$Input$bridge_recipes_tags_aggregate_order_by(
            local$bridge_recipes_tags_aggregate,
            (e) => call(bridge_recipes_tags_aggregate: e));
  }
}

class _CopyWithStubImpl$Input$tags_order_by<TRes>
    implements CopyWith$Input$tags_order_by<TRes> {
  _CopyWithStubImpl$Input$tags_order_by(this._res);

  TRes _res;

  call({
    Input$bridge_recipes_tags_aggregate_order_by? bridge_recipes_tags_aggregate,
    Enum$order_by? id,
    Enum$order_by? name,
    Enum$order_by? numberOfRecipesByCountry,
    Enum$order_by? slug,
    Enum$order_by? type,
  }) =>
      _res;
  CopyWith$Input$bridge_recipes_tags_aggregate_order_by<TRes>
      get bridge_recipes_tags_aggregate =>
          CopyWith$Input$bridge_recipes_tags_aggregate_order_by.stub(_res);
}

class Input$tags_pk_columns_input {
  factory Input$tags_pk_columns_input({required String id}) =>
      Input$tags_pk_columns_input._({
        r'id': id,
      });

  Input$tags_pk_columns_input._(this._$data);

  factory Input$tags_pk_columns_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$tags_pk_columns_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$tags_pk_columns_input<Input$tags_pk_columns_input>
      get copyWith => CopyWith$Input$tags_pk_columns_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_pk_columns_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$tags_pk_columns_input<TRes> {
  factory CopyWith$Input$tags_pk_columns_input(
    Input$tags_pk_columns_input instance,
    TRes Function(Input$tags_pk_columns_input) then,
  ) = _CopyWithImpl$Input$tags_pk_columns_input;

  factory CopyWith$Input$tags_pk_columns_input.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_pk_columns_input;

  TRes call({String? id});
}

class _CopyWithImpl$Input$tags_pk_columns_input<TRes>
    implements CopyWith$Input$tags_pk_columns_input<TRes> {
  _CopyWithImpl$Input$tags_pk_columns_input(
    this._instance,
    this._then,
  );

  final Input$tags_pk_columns_input _instance;

  final TRes Function(Input$tags_pk_columns_input) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) => _then(Input$tags_pk_columns_input._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$tags_pk_columns_input<TRes>
    implements CopyWith$Input$tags_pk_columns_input<TRes> {
  _CopyWithStubImpl$Input$tags_pk_columns_input(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$tags_prepend_input {
  factory Input$tags_prepend_input({String? numberOfRecipesByCountry}) =>
      Input$tags_prepend_input._({
        if (numberOfRecipesByCountry != null)
          r'numberOfRecipesByCountry': numberOfRecipesByCountry,
      });

  Input$tags_prepend_input._(this._$data);

  factory Input$tags_prepend_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = data['numberOfRecipesByCountry'];
      result$data['numberOfRecipesByCountry'] =
          (l$numberOfRecipesByCountry as String?);
    }
    return Input$tags_prepend_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get numberOfRecipesByCountry =>
      (_$data['numberOfRecipesByCountry'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
      result$data['numberOfRecipesByCountry'] = l$numberOfRecipesByCountry;
    }
    return result$data;
  }

  CopyWith$Input$tags_prepend_input<Input$tags_prepend_input> get copyWith =>
      CopyWith$Input$tags_prepend_input(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_prepend_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final lOther$numberOfRecipesByCountry = other.numberOfRecipesByCountry;
    if (_$data.containsKey('numberOfRecipesByCountry') !=
        other._$data.containsKey('numberOfRecipesByCountry')) {
      return false;
    }
    if (l$numberOfRecipesByCountry != lOther$numberOfRecipesByCountry) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    return Object.hashAll([
      _$data.containsKey('numberOfRecipesByCountry')
          ? l$numberOfRecipesByCountry
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$tags_prepend_input<TRes> {
  factory CopyWith$Input$tags_prepend_input(
    Input$tags_prepend_input instance,
    TRes Function(Input$tags_prepend_input) then,
  ) = _CopyWithImpl$Input$tags_prepend_input;

  factory CopyWith$Input$tags_prepend_input.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_prepend_input;

  TRes call({String? numberOfRecipesByCountry});
}

class _CopyWithImpl$Input$tags_prepend_input<TRes>
    implements CopyWith$Input$tags_prepend_input<TRes> {
  _CopyWithImpl$Input$tags_prepend_input(
    this._instance,
    this._then,
  );

  final Input$tags_prepend_input _instance;

  final TRes Function(Input$tags_prepend_input) _then;

  static const _undefined = {};

  TRes call({Object? numberOfRecipesByCountry = _undefined}) =>
      _then(Input$tags_prepend_input._({
        ..._instance._$data,
        if (numberOfRecipesByCountry != _undefined)
          'numberOfRecipesByCountry': (numberOfRecipesByCountry as String?),
      }));
}

class _CopyWithStubImpl$Input$tags_prepend_input<TRes>
    implements CopyWith$Input$tags_prepend_input<TRes> {
  _CopyWithStubImpl$Input$tags_prepend_input(this._res);

  TRes _res;

  call({String? numberOfRecipesByCountry}) => _res;
}

class Input$tags_set_input {
  factory Input$tags_set_input({
    String? id,
    String? name,
    String? numberOfRecipesByCountry,
    String? slug,
    String? type,
  }) =>
      Input$tags_set_input._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (numberOfRecipesByCountry != null)
          r'numberOfRecipesByCountry': numberOfRecipesByCountry,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$tags_set_input._(this._$data);

  factory Input$tags_set_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = data['numberOfRecipesByCountry'];
      result$data['numberOfRecipesByCountry'] =
          (l$numberOfRecipesByCountry as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    return Input$tags_set_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get numberOfRecipesByCountry =>
      (_$data['numberOfRecipesByCountry'] as String?);
  String? get slug => (_$data['slug'] as String?);
  String? get type => (_$data['type'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
      result$data['numberOfRecipesByCountry'] = l$numberOfRecipesByCountry;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    return result$data;
  }

  CopyWith$Input$tags_set_input<Input$tags_set_input> get copyWith =>
      CopyWith$Input$tags_set_input(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_set_input) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final lOther$numberOfRecipesByCountry = other.numberOfRecipesByCountry;
    if (_$data.containsKey('numberOfRecipesByCountry') !=
        other._$data.containsKey('numberOfRecipesByCountry')) {
      return false;
    }
    if (l$numberOfRecipesByCountry != lOther$numberOfRecipesByCountry) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('numberOfRecipesByCountry')
          ? l$numberOfRecipesByCountry
          : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$tags_set_input<TRes> {
  factory CopyWith$Input$tags_set_input(
    Input$tags_set_input instance,
    TRes Function(Input$tags_set_input) then,
  ) = _CopyWithImpl$Input$tags_set_input;

  factory CopyWith$Input$tags_set_input.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_set_input;

  TRes call({
    String? id,
    String? name,
    String? numberOfRecipesByCountry,
    String? slug,
    String? type,
  });
}

class _CopyWithImpl$Input$tags_set_input<TRes>
    implements CopyWith$Input$tags_set_input<TRes> {
  _CopyWithImpl$Input$tags_set_input(
    this._instance,
    this._then,
  );

  final Input$tags_set_input _instance;

  final TRes Function(Input$tags_set_input) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? numberOfRecipesByCountry = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$tags_set_input._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (name != _undefined) 'name': (name as String?),
        if (numberOfRecipesByCountry != _undefined)
          'numberOfRecipesByCountry': (numberOfRecipesByCountry as String?),
        if (slug != _undefined) 'slug': (slug as String?),
        if (type != _undefined) 'type': (type as String?),
      }));
}

class _CopyWithStubImpl$Input$tags_set_input<TRes>
    implements CopyWith$Input$tags_set_input<TRes> {
  _CopyWithStubImpl$Input$tags_set_input(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? numberOfRecipesByCountry,
    String? slug,
    String? type,
  }) =>
      _res;
}

class Input$tags_stream_cursor_input {
  factory Input$tags_stream_cursor_input({
    required Input$tags_stream_cursor_value_input initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      Input$tags_stream_cursor_input._({
        r'initial_value': initial_value,
        if (ordering != null) r'ordering': ordering,
      });

  Input$tags_stream_cursor_input._(this._$data);

  factory Input$tags_stream_cursor_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initial_value = data['initial_value'];
    result$data['initial_value'] =
        Input$tags_stream_cursor_value_input.fromJson(
            (l$initial_value as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson$Enum$cursor_ordering((l$ordering as String));
    }
    return Input$tags_stream_cursor_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$tags_stream_cursor_value_input get initial_value =>
      (_$data['initial_value'] as Input$tags_stream_cursor_value_input);
  Enum$cursor_ordering? get ordering =>
      (_$data['ordering'] as Enum$cursor_ordering?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initial_value = initial_value;
    result$data['initial_value'] = l$initial_value.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson$Enum$cursor_ordering(l$ordering);
    }
    return result$data;
  }

  CopyWith$Input$tags_stream_cursor_input<Input$tags_stream_cursor_input>
      get copyWith => CopyWith$Input$tags_stream_cursor_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_stream_cursor_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initial_value = initial_value;
    final lOther$initial_value = other.initial_value;
    if (l$initial_value != lOther$initial_value) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initial_value = initial_value;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initial_value,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}

abstract class CopyWith$Input$tags_stream_cursor_input<TRes> {
  factory CopyWith$Input$tags_stream_cursor_input(
    Input$tags_stream_cursor_input instance,
    TRes Function(Input$tags_stream_cursor_input) then,
  ) = _CopyWithImpl$Input$tags_stream_cursor_input;

  factory CopyWith$Input$tags_stream_cursor_input.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_stream_cursor_input;

  TRes call({
    Input$tags_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  });
  CopyWith$Input$tags_stream_cursor_value_input<TRes> get initial_value;
}

class _CopyWithImpl$Input$tags_stream_cursor_input<TRes>
    implements CopyWith$Input$tags_stream_cursor_input<TRes> {
  _CopyWithImpl$Input$tags_stream_cursor_input(
    this._instance,
    this._then,
  );

  final Input$tags_stream_cursor_input _instance;

  final TRes Function(Input$tags_stream_cursor_input) _then;

  static const _undefined = {};

  TRes call({
    Object? initial_value = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input$tags_stream_cursor_input._({
        ..._instance._$data,
        if (initial_value != _undefined && initial_value != null)
          'initial_value':
              (initial_value as Input$tags_stream_cursor_value_input),
        if (ordering != _undefined)
          'ordering': (ordering as Enum$cursor_ordering?),
      }));
  CopyWith$Input$tags_stream_cursor_value_input<TRes> get initial_value {
    final local$initial_value = _instance.initial_value;
    return CopyWith$Input$tags_stream_cursor_value_input(
        local$initial_value, (e) => call(initial_value: e));
  }
}

class _CopyWithStubImpl$Input$tags_stream_cursor_input<TRes>
    implements CopyWith$Input$tags_stream_cursor_input<TRes> {
  _CopyWithStubImpl$Input$tags_stream_cursor_input(this._res);

  TRes _res;

  call({
    Input$tags_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      _res;
  CopyWith$Input$tags_stream_cursor_value_input<TRes> get initial_value =>
      CopyWith$Input$tags_stream_cursor_value_input.stub(_res);
}

class Input$tags_stream_cursor_value_input {
  factory Input$tags_stream_cursor_value_input({
    String? id,
    String? name,
    String? numberOfRecipesByCountry,
    String? slug,
    String? type,
  }) =>
      Input$tags_stream_cursor_value_input._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (numberOfRecipesByCountry != null)
          r'numberOfRecipesByCountry': numberOfRecipesByCountry,
        if (slug != null) r'slug': slug,
        if (type != null) r'type': type,
      });

  Input$tags_stream_cursor_value_input._(this._$data);

  factory Input$tags_stream_cursor_value_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = data['numberOfRecipesByCountry'];
      result$data['numberOfRecipesByCountry'] =
          (l$numberOfRecipesByCountry as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    return Input$tags_stream_cursor_value_input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get numberOfRecipesByCountry =>
      (_$data['numberOfRecipesByCountry'] as String?);
  String? get slug => (_$data['slug'] as String?);
  String? get type => (_$data['type'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('numberOfRecipesByCountry')) {
      final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
      result$data['numberOfRecipesByCountry'] = l$numberOfRecipesByCountry;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    return result$data;
  }

  CopyWith$Input$tags_stream_cursor_value_input<
          Input$tags_stream_cursor_value_input>
      get copyWith => CopyWith$Input$tags_stream_cursor_value_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_stream_cursor_value_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final lOther$numberOfRecipesByCountry = other.numberOfRecipesByCountry;
    if (_$data.containsKey('numberOfRecipesByCountry') !=
        other._$data.containsKey('numberOfRecipesByCountry')) {
      return false;
    }
    if (l$numberOfRecipesByCountry != lOther$numberOfRecipesByCountry) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final l$slug = slug;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('numberOfRecipesByCountry')
          ? l$numberOfRecipesByCountry
          : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$tags_stream_cursor_value_input<TRes> {
  factory CopyWith$Input$tags_stream_cursor_value_input(
    Input$tags_stream_cursor_value_input instance,
    TRes Function(Input$tags_stream_cursor_value_input) then,
  ) = _CopyWithImpl$Input$tags_stream_cursor_value_input;

  factory CopyWith$Input$tags_stream_cursor_value_input.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_stream_cursor_value_input;

  TRes call({
    String? id,
    String? name,
    String? numberOfRecipesByCountry,
    String? slug,
    String? type,
  });
}

class _CopyWithImpl$Input$tags_stream_cursor_value_input<TRes>
    implements CopyWith$Input$tags_stream_cursor_value_input<TRes> {
  _CopyWithImpl$Input$tags_stream_cursor_value_input(
    this._instance,
    this._then,
  );

  final Input$tags_stream_cursor_value_input _instance;

  final TRes Function(Input$tags_stream_cursor_value_input) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? numberOfRecipesByCountry = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$tags_stream_cursor_value_input._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (name != _undefined) 'name': (name as String?),
        if (numberOfRecipesByCountry != _undefined)
          'numberOfRecipesByCountry': (numberOfRecipesByCountry as String?),
        if (slug != _undefined) 'slug': (slug as String?),
        if (type != _undefined) 'type': (type as String?),
      }));
}

class _CopyWithStubImpl$Input$tags_stream_cursor_value_input<TRes>
    implements CopyWith$Input$tags_stream_cursor_value_input<TRes> {
  _CopyWithStubImpl$Input$tags_stream_cursor_value_input(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? numberOfRecipesByCountry,
    String? slug,
    String? type,
  }) =>
      _res;
}

class Input$tags_updates {
  factory Input$tags_updates({
    Input$tags_append_input? $_append,
    Input$tags_delete_at_path_input? $_delete_at_path,
    Input$tags_delete_elem_input? $_delete_elem,
    Input$tags_delete_key_input? $_delete_key,
    Input$tags_prepend_input? $_prepend,
    Input$tags_set_input? $_set,
    required Input$tags_bool_exp where,
  }) =>
      Input$tags_updates._({
        if ($_append != null) r'_append': $_append,
        if ($_delete_at_path != null) r'_delete_at_path': $_delete_at_path,
        if ($_delete_elem != null) r'_delete_elem': $_delete_elem,
        if ($_delete_key != null) r'_delete_key': $_delete_key,
        if ($_prepend != null) r'_prepend': $_prepend,
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input$tags_updates._(this._$data);

  factory Input$tags_updates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_append')) {
      final l$$_append = data['_append'];
      result$data['_append'] = l$$_append == null
          ? null
          : Input$tags_append_input.fromJson(
              (l$$_append as Map<String, dynamic>));
    }
    if (data.containsKey('_delete_at_path')) {
      final l$$_delete_at_path = data['_delete_at_path'];
      result$data['_delete_at_path'] = l$$_delete_at_path == null
          ? null
          : Input$tags_delete_at_path_input.fromJson(
              (l$$_delete_at_path as Map<String, dynamic>));
    }
    if (data.containsKey('_delete_elem')) {
      final l$$_delete_elem = data['_delete_elem'];
      result$data['_delete_elem'] = l$$_delete_elem == null
          ? null
          : Input$tags_delete_elem_input.fromJson(
              (l$$_delete_elem as Map<String, dynamic>));
    }
    if (data.containsKey('_delete_key')) {
      final l$$_delete_key = data['_delete_key'];
      result$data['_delete_key'] = l$$_delete_key == null
          ? null
          : Input$tags_delete_key_input.fromJson(
              (l$$_delete_key as Map<String, dynamic>));
    }
    if (data.containsKey('_prepend')) {
      final l$$_prepend = data['_prepend'];
      result$data['_prepend'] = l$$_prepend == null
          ? null
          : Input$tags_prepend_input.fromJson(
              (l$$_prepend as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input$tags_set_input.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] =
        Input$tags_bool_exp.fromJson((l$where as Map<String, dynamic>));
    return Input$tags_updates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$tags_append_input? get $_append =>
      (_$data['_append'] as Input$tags_append_input?);
  Input$tags_delete_at_path_input? get $_delete_at_path =>
      (_$data['_delete_at_path'] as Input$tags_delete_at_path_input?);
  Input$tags_delete_elem_input? get $_delete_elem =>
      (_$data['_delete_elem'] as Input$tags_delete_elem_input?);
  Input$tags_delete_key_input? get $_delete_key =>
      (_$data['_delete_key'] as Input$tags_delete_key_input?);
  Input$tags_prepend_input? get $_prepend =>
      (_$data['_prepend'] as Input$tags_prepend_input?);
  Input$tags_set_input? get $_set => (_$data['_set'] as Input$tags_set_input?);
  Input$tags_bool_exp get where => (_$data['where'] as Input$tags_bool_exp);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_append')) {
      final l$$_append = $_append;
      result$data['_append'] = l$$_append?.toJson();
    }
    if (_$data.containsKey('_delete_at_path')) {
      final l$$_delete_at_path = $_delete_at_path;
      result$data['_delete_at_path'] = l$$_delete_at_path?.toJson();
    }
    if (_$data.containsKey('_delete_elem')) {
      final l$$_delete_elem = $_delete_elem;
      result$data['_delete_elem'] = l$$_delete_elem?.toJson();
    }
    if (_$data.containsKey('_delete_key')) {
      final l$$_delete_key = $_delete_key;
      result$data['_delete_key'] = l$$_delete_key?.toJson();
    }
    if (_$data.containsKey('_prepend')) {
      final l$$_prepend = $_prepend;
      result$data['_prepend'] = l$$_prepend?.toJson();
    }
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Input$tags_updates<Input$tags_updates> get copyWith =>
      CopyWith$Input$tags_updates(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$tags_updates) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_append = $_append;
    final lOther$$_append = other.$_append;
    if (_$data.containsKey('_append') != other._$data.containsKey('_append')) {
      return false;
    }
    if (l$$_append != lOther$$_append) {
      return false;
    }
    final l$$_delete_at_path = $_delete_at_path;
    final lOther$$_delete_at_path = other.$_delete_at_path;
    if (_$data.containsKey('_delete_at_path') !=
        other._$data.containsKey('_delete_at_path')) {
      return false;
    }
    if (l$$_delete_at_path != lOther$$_delete_at_path) {
      return false;
    }
    final l$$_delete_elem = $_delete_elem;
    final lOther$$_delete_elem = other.$_delete_elem;
    if (_$data.containsKey('_delete_elem') !=
        other._$data.containsKey('_delete_elem')) {
      return false;
    }
    if (l$$_delete_elem != lOther$$_delete_elem) {
      return false;
    }
    final l$$_delete_key = $_delete_key;
    final lOther$$_delete_key = other.$_delete_key;
    if (_$data.containsKey('_delete_key') !=
        other._$data.containsKey('_delete_key')) {
      return false;
    }
    if (l$$_delete_key != lOther$$_delete_key) {
      return false;
    }
    final l$$_prepend = $_prepend;
    final lOther$$_prepend = other.$_prepend;
    if (_$data.containsKey('_prepend') !=
        other._$data.containsKey('_prepend')) {
      return false;
    }
    if (l$$_prepend != lOther$$_prepend) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_append = $_append;
    final l$$_delete_at_path = $_delete_at_path;
    final l$$_delete_elem = $_delete_elem;
    final l$$_delete_key = $_delete_key;
    final l$$_prepend = $_prepend;
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_append') ? l$$_append : const {},
      _$data.containsKey('_delete_at_path') ? l$$_delete_at_path : const {},
      _$data.containsKey('_delete_elem') ? l$$_delete_elem : const {},
      _$data.containsKey('_delete_key') ? l$$_delete_key : const {},
      _$data.containsKey('_prepend') ? l$$_prepend : const {},
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith$Input$tags_updates<TRes> {
  factory CopyWith$Input$tags_updates(
    Input$tags_updates instance,
    TRes Function(Input$tags_updates) then,
  ) = _CopyWithImpl$Input$tags_updates;

  factory CopyWith$Input$tags_updates.stub(TRes res) =
      _CopyWithStubImpl$Input$tags_updates;

  TRes call({
    Input$tags_append_input? $_append,
    Input$tags_delete_at_path_input? $_delete_at_path,
    Input$tags_delete_elem_input? $_delete_elem,
    Input$tags_delete_key_input? $_delete_key,
    Input$tags_prepend_input? $_prepend,
    Input$tags_set_input? $_set,
    Input$tags_bool_exp? where,
  });
  CopyWith$Input$tags_append_input<TRes> get $_append;
  CopyWith$Input$tags_delete_at_path_input<TRes> get $_delete_at_path;
  CopyWith$Input$tags_delete_elem_input<TRes> get $_delete_elem;
  CopyWith$Input$tags_delete_key_input<TRes> get $_delete_key;
  CopyWith$Input$tags_prepend_input<TRes> get $_prepend;
  CopyWith$Input$tags_set_input<TRes> get $_set;
  CopyWith$Input$tags_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$tags_updates<TRes>
    implements CopyWith$Input$tags_updates<TRes> {
  _CopyWithImpl$Input$tags_updates(
    this._instance,
    this._then,
  );

  final Input$tags_updates _instance;

  final TRes Function(Input$tags_updates) _then;

  static const _undefined = {};

  TRes call({
    Object? $_append = _undefined,
    Object? $_delete_at_path = _undefined,
    Object? $_delete_elem = _undefined,
    Object? $_delete_key = _undefined,
    Object? $_prepend = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$tags_updates._({
        ..._instance._$data,
        if ($_append != _undefined)
          '_append': ($_append as Input$tags_append_input?),
        if ($_delete_at_path != _undefined)
          '_delete_at_path':
              ($_delete_at_path as Input$tags_delete_at_path_input?),
        if ($_delete_elem != _undefined)
          '_delete_elem': ($_delete_elem as Input$tags_delete_elem_input?),
        if ($_delete_key != _undefined)
          '_delete_key': ($_delete_key as Input$tags_delete_key_input?),
        if ($_prepend != _undefined)
          '_prepend': ($_prepend as Input$tags_prepend_input?),
        if ($_set != _undefined) '_set': ($_set as Input$tags_set_input?),
        if (where != _undefined && where != null)
          'where': (where as Input$tags_bool_exp),
      }));
  CopyWith$Input$tags_append_input<TRes> get $_append {
    final local$$_append = _instance.$_append;
    return local$$_append == null
        ? CopyWith$Input$tags_append_input.stub(_then(_instance))
        : CopyWith$Input$tags_append_input(
            local$$_append, (e) => call($_append: e));
  }

  CopyWith$Input$tags_delete_at_path_input<TRes> get $_delete_at_path {
    final local$$_delete_at_path = _instance.$_delete_at_path;
    return local$$_delete_at_path == null
        ? CopyWith$Input$tags_delete_at_path_input.stub(_then(_instance))
        : CopyWith$Input$tags_delete_at_path_input(
            local$$_delete_at_path, (e) => call($_delete_at_path: e));
  }

  CopyWith$Input$tags_delete_elem_input<TRes> get $_delete_elem {
    final local$$_delete_elem = _instance.$_delete_elem;
    return local$$_delete_elem == null
        ? CopyWith$Input$tags_delete_elem_input.stub(_then(_instance))
        : CopyWith$Input$tags_delete_elem_input(
            local$$_delete_elem, (e) => call($_delete_elem: e));
  }

  CopyWith$Input$tags_delete_key_input<TRes> get $_delete_key {
    final local$$_delete_key = _instance.$_delete_key;
    return local$$_delete_key == null
        ? CopyWith$Input$tags_delete_key_input.stub(_then(_instance))
        : CopyWith$Input$tags_delete_key_input(
            local$$_delete_key, (e) => call($_delete_key: e));
  }

  CopyWith$Input$tags_prepend_input<TRes> get $_prepend {
    final local$$_prepend = _instance.$_prepend;
    return local$$_prepend == null
        ? CopyWith$Input$tags_prepend_input.stub(_then(_instance))
        : CopyWith$Input$tags_prepend_input(
            local$$_prepend, (e) => call($_prepend: e));
  }

  CopyWith$Input$tags_set_input<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith$Input$tags_set_input.stub(_then(_instance))
        : CopyWith$Input$tags_set_input(local$$_set, (e) => call($_set: e));
  }

  CopyWith$Input$tags_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$tags_bool_exp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$tags_updates<TRes>
    implements CopyWith$Input$tags_updates<TRes> {
  _CopyWithStubImpl$Input$tags_updates(this._res);

  TRes _res;

  call({
    Input$tags_append_input? $_append,
    Input$tags_delete_at_path_input? $_delete_at_path,
    Input$tags_delete_elem_input? $_delete_elem,
    Input$tags_delete_key_input? $_delete_key,
    Input$tags_prepend_input? $_prepend,
    Input$tags_set_input? $_set,
    Input$tags_bool_exp? where,
  }) =>
      _res;
  CopyWith$Input$tags_append_input<TRes> get $_append =>
      CopyWith$Input$tags_append_input.stub(_res);
  CopyWith$Input$tags_delete_at_path_input<TRes> get $_delete_at_path =>
      CopyWith$Input$tags_delete_at_path_input.stub(_res);
  CopyWith$Input$tags_delete_elem_input<TRes> get $_delete_elem =>
      CopyWith$Input$tags_delete_elem_input.stub(_res);
  CopyWith$Input$tags_delete_key_input<TRes> get $_delete_key =>
      CopyWith$Input$tags_delete_key_input.stub(_res);
  CopyWith$Input$tags_prepend_input<TRes> get $_prepend =>
      CopyWith$Input$tags_prepend_input.stub(_res);
  CopyWith$Input$tags_set_input<TRes> get $_set =>
      CopyWith$Input$tags_set_input.stub(_res);
  CopyWith$Input$tags_bool_exp<TRes> get where =>
      CopyWith$Input$tags_bool_exp.stub(_res);
}

class Input$uuid_comparison_exp {
  factory Input$uuid_comparison_exp({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    List<String>? $_in,
    bool? $_is_null,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    List<String>? $_nin,
  }) =>
      Input$uuid_comparison_exp._({
        if ($_eq != null) r'_eq': $_eq,
        if ($_gt != null) r'_gt': $_gt,
        if ($_gte != null) r'_gte': $_gte,
        if ($_in != null) r'_in': $_in,
        if ($_is_null != null) r'_is_null': $_is_null,
        if ($_lt != null) r'_lt': $_lt,
        if ($_lte != null) r'_lte': $_lte,
        if ($_neq != null) r'_neq': $_neq,
        if ($_nin != null) r'_nin': $_nin,
      });

  Input$uuid_comparison_exp._(this._$data);

  factory Input$uuid_comparison_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as String?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as String?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as String?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] =
          (l$$_in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('_is_null')) {
      final l$$_is_null = data['_is_null'];
      result$data['_is_null'] = (l$$_is_null as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as String?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as String?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as String?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] =
          (l$$_nin as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Input$uuid_comparison_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_eq => (_$data['_eq'] as String?);
  String? get $_gt => (_$data['_gt'] as String?);
  String? get $_gte => (_$data['_gte'] as String?);
  List<String>? get $_in => (_$data['_in'] as List<String>?);
  bool? get $_is_null => (_$data['_is_null'] as bool?);
  String? get $_lt => (_$data['_lt'] as String?);
  String? get $_lte => (_$data['_lte'] as String?);
  String? get $_neq => (_$data['_neq'] as String?);
  List<String>? get $_nin => (_$data['_nin'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq;
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt;
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte;
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_is_null')) {
      final l$$_is_null = $_is_null;
      result$data['_is_null'] = l$$_is_null;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt;
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte;
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$uuid_comparison_exp<Input$uuid_comparison_exp> get copyWith =>
      CopyWith$Input$uuid_comparison_exp(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$uuid_comparison_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (_$data.containsKey('_gt') != other._$data.containsKey('_gt')) {
      return false;
    }
    if (l$$_gt != lOther$$_gt) {
      return false;
    }
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (_$data.containsKey('_gte') != other._$data.containsKey('_gte')) {
      return false;
    }
    if (l$$_gte != lOther$$_gte) {
      return false;
    }
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (_$data.containsKey('_in') != other._$data.containsKey('_in')) {
      return false;
    }
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) {
        return false;
      }
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) {
          return false;
        }
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }
    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (_$data.containsKey('_is_null') !=
        other._$data.containsKey('_is_null')) {
      return false;
    }
    if (l$$_is_null != lOther$$_is_null) {
      return false;
    }
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (_$data.containsKey('_lt') != other._$data.containsKey('_lt')) {
      return false;
    }
    if (l$$_lt != lOther$$_lt) {
      return false;
    }
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (_$data.containsKey('_lte') != other._$data.containsKey('_lte')) {
      return false;
    }
    if (l$$_lte != lOther$$_lte) {
      return false;
    }
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (_$data.containsKey('_neq') != other._$data.containsKey('_neq')) {
      return false;
    }
    if (l$$_neq != lOther$$_neq) {
      return false;
    }
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (_$data.containsKey('_nin') != other._$data.containsKey('_nin')) {
      return false;
    }
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) {
        return false;
      }
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) {
          return false;
        }
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_is_null = $_is_null;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
              ? null
              : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_is_null') ? l$$_is_null : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
              ? null
              : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$uuid_comparison_exp<TRes> {
  factory CopyWith$Input$uuid_comparison_exp(
    Input$uuid_comparison_exp instance,
    TRes Function(Input$uuid_comparison_exp) then,
  ) = _CopyWithImpl$Input$uuid_comparison_exp;

  factory CopyWith$Input$uuid_comparison_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$uuid_comparison_exp;

  TRes call({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    List<String>? $_in,
    bool? $_is_null,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    List<String>? $_nin,
  });
}

class _CopyWithImpl$Input$uuid_comparison_exp<TRes>
    implements CopyWith$Input$uuid_comparison_exp<TRes> {
  _CopyWithImpl$Input$uuid_comparison_exp(
    this._instance,
    this._then,
  );

  final Input$uuid_comparison_exp _instance;

  final TRes Function(Input$uuid_comparison_exp) _then;

  static const _undefined = {};

  TRes call({
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_in = _undefined,
    Object? $_is_null = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
  }) =>
      _then(Input$uuid_comparison_exp._({
        ..._instance._$data,
        if ($_eq != _undefined) '_eq': ($_eq as String?),
        if ($_gt != _undefined) '_gt': ($_gt as String?),
        if ($_gte != _undefined) '_gte': ($_gte as String?),
        if ($_in != _undefined) '_in': ($_in as List<String>?),
        if ($_is_null != _undefined) '_is_null': ($_is_null as bool?),
        if ($_lt != _undefined) '_lt': ($_lt as String?),
        if ($_lte != _undefined) '_lte': ($_lte as String?),
        if ($_neq != _undefined) '_neq': ($_neq as String?),
        if ($_nin != _undefined) '_nin': ($_nin as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$uuid_comparison_exp<TRes>
    implements CopyWith$Input$uuid_comparison_exp<TRes> {
  _CopyWithStubImpl$Input$uuid_comparison_exp(this._res);

  TRes _res;

  call({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    List<String>? $_in,
    bool? $_is_null,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    List<String>? $_nin,
  }) =>
      _res;
}

enum Enum$bridge_recipes_cuisines_constraint {
  bridge_recipes_cuisines_pkey,
  $unknown
}

String toJson$Enum$bridge_recipes_cuisines_constraint(
    Enum$bridge_recipes_cuisines_constraint e) {
  switch (e) {
    case Enum$bridge_recipes_cuisines_constraint.bridge_recipes_cuisines_pkey:
      return r'bridge_recipes_cuisines_pkey';
    case Enum$bridge_recipes_cuisines_constraint.$unknown:
      return r'$unknown';
  }
}

Enum$bridge_recipes_cuisines_constraint
    fromJson$Enum$bridge_recipes_cuisines_constraint(String value) {
  switch (value) {
    case r'bridge_recipes_cuisines_pkey':
      return Enum$bridge_recipes_cuisines_constraint
          .bridge_recipes_cuisines_pkey;
    default:
      return Enum$bridge_recipes_cuisines_constraint.$unknown;
  }
}

enum Enum$bridge_recipes_cuisines_select_column {
  _cuisine_id,
  _recipe_id,
  id,
  $unknown
}

String toJson$Enum$bridge_recipes_cuisines_select_column(
    Enum$bridge_recipes_cuisines_select_column e) {
  switch (e) {
    case Enum$bridge_recipes_cuisines_select_column._cuisine_id:
      return r'_cuisine_id';
    case Enum$bridge_recipes_cuisines_select_column._recipe_id:
      return r'_recipe_id';
    case Enum$bridge_recipes_cuisines_select_column.id:
      return r'id';
    case Enum$bridge_recipes_cuisines_select_column.$unknown:
      return r'$unknown';
  }
}

Enum$bridge_recipes_cuisines_select_column
    fromJson$Enum$bridge_recipes_cuisines_select_column(String value) {
  switch (value) {
    case r'_cuisine_id':
      return Enum$bridge_recipes_cuisines_select_column._cuisine_id;
    case r'_recipe_id':
      return Enum$bridge_recipes_cuisines_select_column._recipe_id;
    case r'id':
      return Enum$bridge_recipes_cuisines_select_column.id;
    default:
      return Enum$bridge_recipes_cuisines_select_column.$unknown;
  }
}

enum Enum$bridge_recipes_cuisines_update_column {
  _cuisine_id,
  _recipe_id,
  id,
  $unknown
}

String toJson$Enum$bridge_recipes_cuisines_update_column(
    Enum$bridge_recipes_cuisines_update_column e) {
  switch (e) {
    case Enum$bridge_recipes_cuisines_update_column._cuisine_id:
      return r'_cuisine_id';
    case Enum$bridge_recipes_cuisines_update_column._recipe_id:
      return r'_recipe_id';
    case Enum$bridge_recipes_cuisines_update_column.id:
      return r'id';
    case Enum$bridge_recipes_cuisines_update_column.$unknown:
      return r'$unknown';
  }
}

Enum$bridge_recipes_cuisines_update_column
    fromJson$Enum$bridge_recipes_cuisines_update_column(String value) {
  switch (value) {
    case r'_cuisine_id':
      return Enum$bridge_recipes_cuisines_update_column._cuisine_id;
    case r'_recipe_id':
      return Enum$bridge_recipes_cuisines_update_column._recipe_id;
    case r'id':
      return Enum$bridge_recipes_cuisines_update_column.id;
    default:
      return Enum$bridge_recipes_cuisines_update_column.$unknown;
  }
}

enum Enum$bridge_recipes_ingredients_constraint {
  bridge_recipes_ingredients_pkey,
  $unknown
}

String toJson$Enum$bridge_recipes_ingredients_constraint(
    Enum$bridge_recipes_ingredients_constraint e) {
  switch (e) {
    case Enum$bridge_recipes_ingredients_constraint
        .bridge_recipes_ingredients_pkey:
      return r'bridge_recipes_ingredients_pkey';
    case Enum$bridge_recipes_ingredients_constraint.$unknown:
      return r'$unknown';
  }
}

Enum$bridge_recipes_ingredients_constraint
    fromJson$Enum$bridge_recipes_ingredients_constraint(String value) {
  switch (value) {
    case r'bridge_recipes_ingredients_pkey':
      return Enum$bridge_recipes_ingredients_constraint
          .bridge_recipes_ingredients_pkey;
    default:
      return Enum$bridge_recipes_ingredients_constraint.$unknown;
  }
}

enum Enum$bridge_recipes_ingredients_select_column {
  _ingredient_id,
  _recipe_id,
  id,
  $unknown
}

String toJson$Enum$bridge_recipes_ingredients_select_column(
    Enum$bridge_recipes_ingredients_select_column e) {
  switch (e) {
    case Enum$bridge_recipes_ingredients_select_column._ingredient_id:
      return r'_ingredient_id';
    case Enum$bridge_recipes_ingredients_select_column._recipe_id:
      return r'_recipe_id';
    case Enum$bridge_recipes_ingredients_select_column.id:
      return r'id';
    case Enum$bridge_recipes_ingredients_select_column.$unknown:
      return r'$unknown';
  }
}

Enum$bridge_recipes_ingredients_select_column
    fromJson$Enum$bridge_recipes_ingredients_select_column(String value) {
  switch (value) {
    case r'_ingredient_id':
      return Enum$bridge_recipes_ingredients_select_column._ingredient_id;
    case r'_recipe_id':
      return Enum$bridge_recipes_ingredients_select_column._recipe_id;
    case r'id':
      return Enum$bridge_recipes_ingredients_select_column.id;
    default:
      return Enum$bridge_recipes_ingredients_select_column.$unknown;
  }
}

enum Enum$bridge_recipes_ingredients_update_column {
  _ingredient_id,
  _recipe_id,
  id,
  $unknown
}

String toJson$Enum$bridge_recipes_ingredients_update_column(
    Enum$bridge_recipes_ingredients_update_column e) {
  switch (e) {
    case Enum$bridge_recipes_ingredients_update_column._ingredient_id:
      return r'_ingredient_id';
    case Enum$bridge_recipes_ingredients_update_column._recipe_id:
      return r'_recipe_id';
    case Enum$bridge_recipes_ingredients_update_column.id:
      return r'id';
    case Enum$bridge_recipes_ingredients_update_column.$unknown:
      return r'$unknown';
  }
}

Enum$bridge_recipes_ingredients_update_column
    fromJson$Enum$bridge_recipes_ingredients_update_column(String value) {
  switch (value) {
    case r'_ingredient_id':
      return Enum$bridge_recipes_ingredients_update_column._ingredient_id;
    case r'_recipe_id':
      return Enum$bridge_recipes_ingredients_update_column._recipe_id;
    case r'id':
      return Enum$bridge_recipes_ingredients_update_column.id;
    default:
      return Enum$bridge_recipes_ingredients_update_column.$unknown;
  }
}

enum Enum$bridge_recipes_tags_constraint { bridge_recipes_tags_pkey, $unknown }

String toJson$Enum$bridge_recipes_tags_constraint(
    Enum$bridge_recipes_tags_constraint e) {
  switch (e) {
    case Enum$bridge_recipes_tags_constraint.bridge_recipes_tags_pkey:
      return r'bridge_recipes_tags_pkey';
    case Enum$bridge_recipes_tags_constraint.$unknown:
      return r'$unknown';
  }
}

Enum$bridge_recipes_tags_constraint
    fromJson$Enum$bridge_recipes_tags_constraint(String value) {
  switch (value) {
    case r'bridge_recipes_tags_pkey':
      return Enum$bridge_recipes_tags_constraint.bridge_recipes_tags_pkey;
    default:
      return Enum$bridge_recipes_tags_constraint.$unknown;
  }
}

enum Enum$bridge_recipes_tags_select_column {
  _recipe_id,
  _tag_id,
  id,
  $unknown
}

String toJson$Enum$bridge_recipes_tags_select_column(
    Enum$bridge_recipes_tags_select_column e) {
  switch (e) {
    case Enum$bridge_recipes_tags_select_column._recipe_id:
      return r'_recipe_id';
    case Enum$bridge_recipes_tags_select_column._tag_id:
      return r'_tag_id';
    case Enum$bridge_recipes_tags_select_column.id:
      return r'id';
    case Enum$bridge_recipes_tags_select_column.$unknown:
      return r'$unknown';
  }
}

Enum$bridge_recipes_tags_select_column
    fromJson$Enum$bridge_recipes_tags_select_column(String value) {
  switch (value) {
    case r'_recipe_id':
      return Enum$bridge_recipes_tags_select_column._recipe_id;
    case r'_tag_id':
      return Enum$bridge_recipes_tags_select_column._tag_id;
    case r'id':
      return Enum$bridge_recipes_tags_select_column.id;
    default:
      return Enum$bridge_recipes_tags_select_column.$unknown;
  }
}

enum Enum$bridge_recipes_tags_update_column {
  _recipe_id,
  _tag_id,
  id,
  $unknown
}

String toJson$Enum$bridge_recipes_tags_update_column(
    Enum$bridge_recipes_tags_update_column e) {
  switch (e) {
    case Enum$bridge_recipes_tags_update_column._recipe_id:
      return r'_recipe_id';
    case Enum$bridge_recipes_tags_update_column._tag_id:
      return r'_tag_id';
    case Enum$bridge_recipes_tags_update_column.id:
      return r'id';
    case Enum$bridge_recipes_tags_update_column.$unknown:
      return r'$unknown';
  }
}

Enum$bridge_recipes_tags_update_column
    fromJson$Enum$bridge_recipes_tags_update_column(String value) {
  switch (value) {
    case r'_recipe_id':
      return Enum$bridge_recipes_tags_update_column._recipe_id;
    case r'_tag_id':
      return Enum$bridge_recipes_tags_update_column._tag_id;
    case r'id':
      return Enum$bridge_recipes_tags_update_column.id;
    default:
      return Enum$bridge_recipes_tags_update_column.$unknown;
  }
}

enum Enum$cuisines_constraint { cuisines_pkey, $unknown }

String toJson$Enum$cuisines_constraint(Enum$cuisines_constraint e) {
  switch (e) {
    case Enum$cuisines_constraint.cuisines_pkey:
      return r'cuisines_pkey';
    case Enum$cuisines_constraint.$unknown:
      return r'$unknown';
  }
}

Enum$cuisines_constraint fromJson$Enum$cuisines_constraint(String value) {
  switch (value) {
    case r'cuisines_pkey':
      return Enum$cuisines_constraint.cuisines_pkey;
    default:
      return Enum$cuisines_constraint.$unknown;
  }
}

enum Enum$cuisines_select_column { iconPath, id, name, slug, type, $unknown }

String toJson$Enum$cuisines_select_column(Enum$cuisines_select_column e) {
  switch (e) {
    case Enum$cuisines_select_column.iconPath:
      return r'iconPath';
    case Enum$cuisines_select_column.id:
      return r'id';
    case Enum$cuisines_select_column.name:
      return r'name';
    case Enum$cuisines_select_column.slug:
      return r'slug';
    case Enum$cuisines_select_column.type:
      return r'type';
    case Enum$cuisines_select_column.$unknown:
      return r'$unknown';
  }
}

Enum$cuisines_select_column fromJson$Enum$cuisines_select_column(String value) {
  switch (value) {
    case r'iconPath':
      return Enum$cuisines_select_column.iconPath;
    case r'id':
      return Enum$cuisines_select_column.id;
    case r'name':
      return Enum$cuisines_select_column.name;
    case r'slug':
      return Enum$cuisines_select_column.slug;
    case r'type':
      return Enum$cuisines_select_column.type;
    default:
      return Enum$cuisines_select_column.$unknown;
  }
}

enum Enum$cuisines_update_column { iconPath, id, name, slug, type, $unknown }

String toJson$Enum$cuisines_update_column(Enum$cuisines_update_column e) {
  switch (e) {
    case Enum$cuisines_update_column.iconPath:
      return r'iconPath';
    case Enum$cuisines_update_column.id:
      return r'id';
    case Enum$cuisines_update_column.name:
      return r'name';
    case Enum$cuisines_update_column.slug:
      return r'slug';
    case Enum$cuisines_update_column.type:
      return r'type';
    case Enum$cuisines_update_column.$unknown:
      return r'$unknown';
  }
}

Enum$cuisines_update_column fromJson$Enum$cuisines_update_column(String value) {
  switch (value) {
    case r'iconPath':
      return Enum$cuisines_update_column.iconPath;
    case r'id':
      return Enum$cuisines_update_column.id;
    case r'name':
      return Enum$cuisines_update_column.name;
    case r'slug':
      return Enum$cuisines_update_column.slug;
    case r'type':
      return Enum$cuisines_update_column.type;
    default:
      return Enum$cuisines_update_column.$unknown;
  }
}

enum Enum$cursor_ordering { ASC, DESC, $unknown }

String toJson$Enum$cursor_ordering(Enum$cursor_ordering e) {
  switch (e) {
    case Enum$cursor_ordering.ASC:
      return r'ASC';
    case Enum$cursor_ordering.DESC:
      return r'DESC';
    case Enum$cursor_ordering.$unknown:
      return r'$unknown';
  }
}

Enum$cursor_ordering fromJson$Enum$cursor_ordering(String value) {
  switch (value) {
    case r'ASC':
      return Enum$cursor_ordering.ASC;
    case r'DESC':
      return Enum$cursor_ordering.DESC;
    default:
      return Enum$cursor_ordering.$unknown;
  }
}

enum Enum$ingredient_family_constraint { ingredient_family_pkey, $unknown }

String toJson$Enum$ingredient_family_constraint(
    Enum$ingredient_family_constraint e) {
  switch (e) {
    case Enum$ingredient_family_constraint.ingredient_family_pkey:
      return r'ingredient_family_pkey';
    case Enum$ingredient_family_constraint.$unknown:
      return r'$unknown';
  }
}

Enum$ingredient_family_constraint fromJson$Enum$ingredient_family_constraint(
    String value) {
  switch (value) {
    case r'ingredient_family_pkey':
      return Enum$ingredient_family_constraint.ingredient_family_pkey;
    default:
      return Enum$ingredient_family_constraint.$unknown;
  }
}

enum Enum$ingredient_family_select_column {
  iconPath,
  id,
  name,
  slug,
  type,
  $unknown
}

String toJson$Enum$ingredient_family_select_column(
    Enum$ingredient_family_select_column e) {
  switch (e) {
    case Enum$ingredient_family_select_column.iconPath:
      return r'iconPath';
    case Enum$ingredient_family_select_column.id:
      return r'id';
    case Enum$ingredient_family_select_column.name:
      return r'name';
    case Enum$ingredient_family_select_column.slug:
      return r'slug';
    case Enum$ingredient_family_select_column.type:
      return r'type';
    case Enum$ingredient_family_select_column.$unknown:
      return r'$unknown';
  }
}

Enum$ingredient_family_select_column
    fromJson$Enum$ingredient_family_select_column(String value) {
  switch (value) {
    case r'iconPath':
      return Enum$ingredient_family_select_column.iconPath;
    case r'id':
      return Enum$ingredient_family_select_column.id;
    case r'name':
      return Enum$ingredient_family_select_column.name;
    case r'slug':
      return Enum$ingredient_family_select_column.slug;
    case r'type':
      return Enum$ingredient_family_select_column.type;
    default:
      return Enum$ingredient_family_select_column.$unknown;
  }
}

enum Enum$ingredient_family_update_column {
  iconPath,
  id,
  name,
  slug,
  type,
  $unknown
}

String toJson$Enum$ingredient_family_update_column(
    Enum$ingredient_family_update_column e) {
  switch (e) {
    case Enum$ingredient_family_update_column.iconPath:
      return r'iconPath';
    case Enum$ingredient_family_update_column.id:
      return r'id';
    case Enum$ingredient_family_update_column.name:
      return r'name';
    case Enum$ingredient_family_update_column.slug:
      return r'slug';
    case Enum$ingredient_family_update_column.type:
      return r'type';
    case Enum$ingredient_family_update_column.$unknown:
      return r'$unknown';
  }
}

Enum$ingredient_family_update_column
    fromJson$Enum$ingredient_family_update_column(String value) {
  switch (value) {
    case r'iconPath':
      return Enum$ingredient_family_update_column.iconPath;
    case r'id':
      return Enum$ingredient_family_update_column.id;
    case r'name':
      return Enum$ingredient_family_update_column.name;
    case r'slug':
      return Enum$ingredient_family_update_column.slug;
    case r'type':
      return Enum$ingredient_family_update_column.type;
    default:
      return Enum$ingredient_family_update_column.$unknown;
  }
}

enum Enum$ingredients_constraint { ingredients_pkey, $unknown }

String toJson$Enum$ingredients_constraint(Enum$ingredients_constraint e) {
  switch (e) {
    case Enum$ingredients_constraint.ingredients_pkey:
      return r'ingredients_pkey';
    case Enum$ingredients_constraint.$unknown:
      return r'$unknown';
  }
}

Enum$ingredients_constraint fromJson$Enum$ingredients_constraint(String value) {
  switch (value) {
    case r'ingredients_pkey':
      return Enum$ingredients_constraint.ingredients_pkey;
    default:
      return Enum$ingredients_constraint.$unknown;
  }
}

enum Enum$ingredients_select_column {
  _family,
  country,
  id,
  imagePath,
  name,
  slug,
  type,
  $unknown
}

String toJson$Enum$ingredients_select_column(Enum$ingredients_select_column e) {
  switch (e) {
    case Enum$ingredients_select_column._family:
      return r'_family';
    case Enum$ingredients_select_column.country:
      return r'country';
    case Enum$ingredients_select_column.id:
      return r'id';
    case Enum$ingredients_select_column.imagePath:
      return r'imagePath';
    case Enum$ingredients_select_column.name:
      return r'name';
    case Enum$ingredients_select_column.slug:
      return r'slug';
    case Enum$ingredients_select_column.type:
      return r'type';
    case Enum$ingredients_select_column.$unknown:
      return r'$unknown';
  }
}

Enum$ingredients_select_column fromJson$Enum$ingredients_select_column(
    String value) {
  switch (value) {
    case r'_family':
      return Enum$ingredients_select_column._family;
    case r'country':
      return Enum$ingredients_select_column.country;
    case r'id':
      return Enum$ingredients_select_column.id;
    case r'imagePath':
      return Enum$ingredients_select_column.imagePath;
    case r'name':
      return Enum$ingredients_select_column.name;
    case r'slug':
      return Enum$ingredients_select_column.slug;
    case r'type':
      return Enum$ingredients_select_column.type;
    default:
      return Enum$ingredients_select_column.$unknown;
  }
}

enum Enum$ingredients_update_column {
  _family,
  country,
  id,
  imagePath,
  name,
  slug,
  type,
  $unknown
}

String toJson$Enum$ingredients_update_column(Enum$ingredients_update_column e) {
  switch (e) {
    case Enum$ingredients_update_column._family:
      return r'_family';
    case Enum$ingredients_update_column.country:
      return r'country';
    case Enum$ingredients_update_column.id:
      return r'id';
    case Enum$ingredients_update_column.imagePath:
      return r'imagePath';
    case Enum$ingredients_update_column.name:
      return r'name';
    case Enum$ingredients_update_column.slug:
      return r'slug';
    case Enum$ingredients_update_column.type:
      return r'type';
    case Enum$ingredients_update_column.$unknown:
      return r'$unknown';
  }
}

Enum$ingredients_update_column fromJson$Enum$ingredients_update_column(
    String value) {
  switch (value) {
    case r'_family':
      return Enum$ingredients_update_column._family;
    case r'country':
      return Enum$ingredients_update_column.country;
    case r'id':
      return Enum$ingredients_update_column.id;
    case r'imagePath':
      return Enum$ingredients_update_column.imagePath;
    case r'name':
      return Enum$ingredients_update_column.name;
    case r'slug':
      return Enum$ingredients_update_column.slug;
    case r'type':
      return Enum$ingredients_update_column.type;
    default:
      return Enum$ingredients_update_column.$unknown;
  }
}

enum Enum$order_by {
  asc,
  asc_nulls_first,
  asc_nulls_last,
  desc,
  desc_nulls_first,
  desc_nulls_last,
  $unknown
}

String toJson$Enum$order_by(Enum$order_by e) {
  switch (e) {
    case Enum$order_by.asc:
      return r'asc';
    case Enum$order_by.asc_nulls_first:
      return r'asc_nulls_first';
    case Enum$order_by.asc_nulls_last:
      return r'asc_nulls_last';
    case Enum$order_by.desc:
      return r'desc';
    case Enum$order_by.desc_nulls_first:
      return r'desc_nulls_first';
    case Enum$order_by.desc_nulls_last:
      return r'desc_nulls_last';
    case Enum$order_by.$unknown:
      return r'$unknown';
  }
}

Enum$order_by fromJson$Enum$order_by(String value) {
  switch (value) {
    case r'asc':
      return Enum$order_by.asc;
    case r'asc_nulls_first':
      return Enum$order_by.asc_nulls_first;
    case r'asc_nulls_last':
      return Enum$order_by.asc_nulls_last;
    case r'desc':
      return Enum$order_by.desc;
    case r'desc_nulls_first':
      return Enum$order_by.desc_nulls_first;
    case r'desc_nulls_last':
      return Enum$order_by.desc_nulls_last;
    default:
      return Enum$order_by.$unknown;
  }
}

enum Enum$recipes_constraint { recipes_pkey, $unknown }

String toJson$Enum$recipes_constraint(Enum$recipes_constraint e) {
  switch (e) {
    case Enum$recipes_constraint.recipes_pkey:
      return r'recipes_pkey';
    case Enum$recipes_constraint.$unknown:
      return r'$unknown';
  }
}

Enum$recipes_constraint fromJson$Enum$recipes_constraint(String value) {
  switch (value) {
    case r'recipes_pkey':
      return Enum$recipes_constraint.recipes_pkey;
    default:
      return Enum$recipes_constraint.$unknown;
  }
}

enum Enum$recipes_select_column {
  country,
  description,
  descriptionMarkdown,
  difficulty,
  headline,
  id,
  imagePath,
  name,
  prepTime,
  slug,
  steps,
  totalTime,
  yields_json,
  $unknown
}

String toJson$Enum$recipes_select_column(Enum$recipes_select_column e) {
  switch (e) {
    case Enum$recipes_select_column.country:
      return r'country';
    case Enum$recipes_select_column.description:
      return r'description';
    case Enum$recipes_select_column.descriptionMarkdown:
      return r'descriptionMarkdown';
    case Enum$recipes_select_column.difficulty:
      return r'difficulty';
    case Enum$recipes_select_column.headline:
      return r'headline';
    case Enum$recipes_select_column.id:
      return r'id';
    case Enum$recipes_select_column.imagePath:
      return r'imagePath';
    case Enum$recipes_select_column.name:
      return r'name';
    case Enum$recipes_select_column.prepTime:
      return r'prepTime';
    case Enum$recipes_select_column.slug:
      return r'slug';
    case Enum$recipes_select_column.steps:
      return r'steps';
    case Enum$recipes_select_column.totalTime:
      return r'totalTime';
    case Enum$recipes_select_column.yields_json:
      return r'yields_json';
    case Enum$recipes_select_column.$unknown:
      return r'$unknown';
  }
}

Enum$recipes_select_column fromJson$Enum$recipes_select_column(String value) {
  switch (value) {
    case r'country':
      return Enum$recipes_select_column.country;
    case r'description':
      return Enum$recipes_select_column.description;
    case r'descriptionMarkdown':
      return Enum$recipes_select_column.descriptionMarkdown;
    case r'difficulty':
      return Enum$recipes_select_column.difficulty;
    case r'headline':
      return Enum$recipes_select_column.headline;
    case r'id':
      return Enum$recipes_select_column.id;
    case r'imagePath':
      return Enum$recipes_select_column.imagePath;
    case r'name':
      return Enum$recipes_select_column.name;
    case r'prepTime':
      return Enum$recipes_select_column.prepTime;
    case r'slug':
      return Enum$recipes_select_column.slug;
    case r'steps':
      return Enum$recipes_select_column.steps;
    case r'totalTime':
      return Enum$recipes_select_column.totalTime;
    case r'yields_json':
      return Enum$recipes_select_column.yields_json;
    default:
      return Enum$recipes_select_column.$unknown;
  }
}

enum Enum$recipes_update_column {
  country,
  description,
  descriptionMarkdown,
  difficulty,
  headline,
  id,
  imagePath,
  name,
  prepTime,
  slug,
  steps,
  totalTime,
  yields_json,
  $unknown
}

String toJson$Enum$recipes_update_column(Enum$recipes_update_column e) {
  switch (e) {
    case Enum$recipes_update_column.country:
      return r'country';
    case Enum$recipes_update_column.description:
      return r'description';
    case Enum$recipes_update_column.descriptionMarkdown:
      return r'descriptionMarkdown';
    case Enum$recipes_update_column.difficulty:
      return r'difficulty';
    case Enum$recipes_update_column.headline:
      return r'headline';
    case Enum$recipes_update_column.id:
      return r'id';
    case Enum$recipes_update_column.imagePath:
      return r'imagePath';
    case Enum$recipes_update_column.name:
      return r'name';
    case Enum$recipes_update_column.prepTime:
      return r'prepTime';
    case Enum$recipes_update_column.slug:
      return r'slug';
    case Enum$recipes_update_column.steps:
      return r'steps';
    case Enum$recipes_update_column.totalTime:
      return r'totalTime';
    case Enum$recipes_update_column.yields_json:
      return r'yields_json';
    case Enum$recipes_update_column.$unknown:
      return r'$unknown';
  }
}

Enum$recipes_update_column fromJson$Enum$recipes_update_column(String value) {
  switch (value) {
    case r'country':
      return Enum$recipes_update_column.country;
    case r'description':
      return Enum$recipes_update_column.description;
    case r'descriptionMarkdown':
      return Enum$recipes_update_column.descriptionMarkdown;
    case r'difficulty':
      return Enum$recipes_update_column.difficulty;
    case r'headline':
      return Enum$recipes_update_column.headline;
    case r'id':
      return Enum$recipes_update_column.id;
    case r'imagePath':
      return Enum$recipes_update_column.imagePath;
    case r'name':
      return Enum$recipes_update_column.name;
    case r'prepTime':
      return Enum$recipes_update_column.prepTime;
    case r'slug':
      return Enum$recipes_update_column.slug;
    case r'steps':
      return Enum$recipes_update_column.steps;
    case r'totalTime':
      return Enum$recipes_update_column.totalTime;
    case r'yields_json':
      return Enum$recipes_update_column.yields_json;
    default:
      return Enum$recipes_update_column.$unknown;
  }
}

enum Enum$tags_constraint { tags_pkey, $unknown }

String toJson$Enum$tags_constraint(Enum$tags_constraint e) {
  switch (e) {
    case Enum$tags_constraint.tags_pkey:
      return r'tags_pkey';
    case Enum$tags_constraint.$unknown:
      return r'$unknown';
  }
}

Enum$tags_constraint fromJson$Enum$tags_constraint(String value) {
  switch (value) {
    case r'tags_pkey':
      return Enum$tags_constraint.tags_pkey;
    default:
      return Enum$tags_constraint.$unknown;
  }
}

enum Enum$tags_select_column {
  id,
  name,
  numberOfRecipesByCountry,
  slug,
  type,
  $unknown
}

String toJson$Enum$tags_select_column(Enum$tags_select_column e) {
  switch (e) {
    case Enum$tags_select_column.id:
      return r'id';
    case Enum$tags_select_column.name:
      return r'name';
    case Enum$tags_select_column.numberOfRecipesByCountry:
      return r'numberOfRecipesByCountry';
    case Enum$tags_select_column.slug:
      return r'slug';
    case Enum$tags_select_column.type:
      return r'type';
    case Enum$tags_select_column.$unknown:
      return r'$unknown';
  }
}

Enum$tags_select_column fromJson$Enum$tags_select_column(String value) {
  switch (value) {
    case r'id':
      return Enum$tags_select_column.id;
    case r'name':
      return Enum$tags_select_column.name;
    case r'numberOfRecipesByCountry':
      return Enum$tags_select_column.numberOfRecipesByCountry;
    case r'slug':
      return Enum$tags_select_column.slug;
    case r'type':
      return Enum$tags_select_column.type;
    default:
      return Enum$tags_select_column.$unknown;
  }
}

enum Enum$tags_update_column {
  id,
  name,
  numberOfRecipesByCountry,
  slug,
  type,
  $unknown
}

String toJson$Enum$tags_update_column(Enum$tags_update_column e) {
  switch (e) {
    case Enum$tags_update_column.id:
      return r'id';
    case Enum$tags_update_column.name:
      return r'name';
    case Enum$tags_update_column.numberOfRecipesByCountry:
      return r'numberOfRecipesByCountry';
    case Enum$tags_update_column.slug:
      return r'slug';
    case Enum$tags_update_column.type:
      return r'type';
    case Enum$tags_update_column.$unknown:
      return r'$unknown';
  }
}

Enum$tags_update_column fromJson$Enum$tags_update_column(String value) {
  switch (value) {
    case r'id':
      return Enum$tags_update_column.id;
    case r'name':
      return Enum$tags_update_column.name;
    case r'numberOfRecipesByCountry':
      return Enum$tags_update_column.numberOfRecipesByCountry;
    case r'slug':
      return Enum$tags_update_column.slug;
    case r'type':
      return Enum$tags_update_column.type;
    default:
      return Enum$tags_update_column.$unknown;
  }
}

const possibleTypesMap = {};