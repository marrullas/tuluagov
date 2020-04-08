enum CallingStatus{loading, success, error, none}

extension CallingStatusExt on CallingStatus{
  static var _value;
  get value => _value;
  set value(value) => _value = value;
}