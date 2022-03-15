/// States to be used in both [Bloc] and [ValueNotifier]

enum ListStatus { initial, loadingList, loadedList, addingItem, error }

class ListState {
  final String error;
  final List<String> items;
  final ListStatus status;

  ListState({
    this.error = '',
    this.items = const [],
    this.status = ListStatus.initial,
  });

  ListState copyWith({
    String? error,
    List<String>? items,
    ListStatus? status,
  }) {
    return ListState(
      error: error ?? this.error,
      items: items ?? this.items,
      status: status ?? this.status,
    );
  }
}