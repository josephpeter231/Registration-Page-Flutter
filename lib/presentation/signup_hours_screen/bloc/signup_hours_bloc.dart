import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fortyseven_item_model.dart';
import '../models/fifty_item_model.dart';
import 'package:task/presentation/signup_hours_screen/models/signup_hours_model.dart';
part 'signup_hours_event.dart';
part 'signup_hours_state.dart';

/// A bloc that manages the state of a SignupHours according to the event that is dispatched to it.
class SignupHoursBloc extends Bloc<SignupHoursEvent, SignupHoursState> {
  SignupHoursBloc(SignupHoursState initialState) : super(initialState) {
    on<SignupHoursInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<UpdateChipView1Event>(_updateChipView1);
  }

  _onInitialize(
    SignupHoursInitialEvent event,
    Emitter<SignupHoursState> emit,
  ) async {
    emit(state.copyWith(
        signupHoursModelObj: state.signupHoursModelObj?.copyWith(
      fortysevenItemList: fillFortysevenItemList(),
      fiftyItemList: fillFiftyItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SignupHoursState> emit,
  ) {
    List<FortysevenItemModel> newList = List<FortysevenItemModel>.from(
        state.signupHoursModelObj!.fortysevenItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        signupHoursModelObj:
            state.signupHoursModelObj?.copyWith(fortysevenItemList: newList)));
  }

  _updateChipView1(
    UpdateChipView1Event event,
    Emitter<SignupHoursState> emit,
  ) {
    List<FiftyItemModel> newList =
        List<FiftyItemModel>.from(state.signupHoursModelObj!.fiftyItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        signupHoursModelObj:
            state.signupHoursModelObj?.copyWith(fiftyItemList: newList)));
  }

  List<FortysevenItemModel> fillFortysevenItemList() {
    return List.generate(7, (index) => FortysevenItemModel());
  }

  List<FiftyItemModel> fillFiftyItemList() {
    return List.generate(5, (index) => FiftyItemModel());
  }
}
