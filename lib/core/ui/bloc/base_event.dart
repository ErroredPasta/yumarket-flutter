abstract class BaseEvent {
  const BaseEvent();
}

class Loading extends BaseEvent {
  const Loading();
}

class LoadingDone extends BaseEvent {
  const LoadingDone();
}

class DataReceived<T> extends BaseEvent {
  final T data;

  const DataReceived(this.data);
}

class ExceptionOccurred extends BaseEvent {
  final Exception exception;

  const ExceptionOccurred(this.exception);
}

class ExceptionHandled extends BaseEvent {
  const ExceptionHandled();
}
