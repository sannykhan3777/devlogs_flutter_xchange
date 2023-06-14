import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:devlogs_flutter_xchange/ui/user_details/user_details_cubit.dart';
import 'package:devlogs_flutter_xchange/ui/user_details/user_details_state.dart';

class UserDetailsPage extends StatefulWidget {
  final UserDetailsCubit cubit;

  const UserDetailsPage({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {

  UserDetailsCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            state as UserDetailsState;
            return ListTile(
              title: Text(state.user.name),
              subtitle: Text(state.user.email),
            );
          }
        ),
      ),
    );
  }
}
