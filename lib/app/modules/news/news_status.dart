enum NewsStatus{loading, success, error, none}

extension NewsStatusExt on NewsStatus{
  static var _value;
  get value => _value;
  set value(value) => _value = value;
}