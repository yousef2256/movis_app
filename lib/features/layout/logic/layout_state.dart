part of 'layout_cubit.dart';

@freezed
class LayoutState with _$LayoutState {
  const factory LayoutState.initial() = _Initial;
  
  // change current page
  const factory LayoutState.currentPage(int index) = _CurrentPage;
}
