import 'package:devlogs_flutter_xchange/domain/entities/user.dart';
import 'package:devlogs_flutter_xchange/ui/user_details/user_details_initial_params.dart';

class UserDetailsState {
  final User user;

  const UserDetailsState({required this.user});

  factory UserDetailsState.initial({required UserDetailsInitialParams initialParams}) => UserDetailsState(
        user: initialParams.user,
      );

  UserDetailsState copyWith({User? user}) => UserDetailsState(user: user ?? this.user);
}
