abstract class MaskanStates{}

class MaskanInitialState extends MaskanStates{}

class MaskanChangeBottomNavBarState extends MaskanStates{}

class MaskanGetPropertiesLoadingState extends MaskanStates{}

class MaskanGetPropertiesSuccessState extends MaskanStates{}

class MaskanGetPropertiesErrorState extends MaskanStates{
  final String error;

  MaskanGetPropertiesErrorState(this.error);
}