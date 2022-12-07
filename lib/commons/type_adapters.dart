import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';

class OptionUriAdapter extends TypeAdapter<Option<Uri>> {
  @override
  final int typeId = 100;

  @override
  Option<Uri> read(final BinaryReader reader) => optionOf(reader.read());

  @override
  void write(final BinaryWriter writer, final Option<Uri> obj) {
    writer.write(obj.toNullable());
  }
}

class OptionDoubleAdapter extends TypeAdapter<Option<double>> {
  @override
  final int typeId = 101;

  @override
  Option<double> read(final BinaryReader reader) => optionOf(reader.read());

  @override
  void write(final BinaryWriter writer, final Option<double> obj) {
    writer.write(obj.toNullable());
  }
}

class OptionStringAdapter extends TypeAdapter<Option<String>> {
  @override
  final int typeId = 102;

  @override
  Option<String> read(final BinaryReader reader) => optionOf(reader.read());

  @override
  void write(final BinaryWriter writer, final Option<String> obj) {
    writer.write(obj.toNullable());
  }
}

class UriAdapter extends TypeAdapter<Uri> {
  @override
  final int typeId = 103;

  @override
  Uri read(final BinaryReader reader) => Uri.parse(reader.read());

  @override
  void write(final BinaryWriter writer, final Uri obj) {
    writer.write(obj.toString());
  }
}
