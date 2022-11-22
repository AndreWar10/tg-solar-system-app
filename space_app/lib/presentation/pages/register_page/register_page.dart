import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../widgets/loading/custom_loading_widget.dart';
import '../../widgets/register_widgets/form_register_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: Colors.grey[300],
          body: BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
            if (state is Authenticated) {
              context.read<AuthBloc>().add(SignOutRequested());

              Navigator.of(context).pushNamedAndRemoveUntil(
                '/login',
                (route) => false,
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.deepPurpleAccent,
                  content: Text(state.sucess),
                ),
              );
            }

            if (state is AuthError) {
              //Display the error message if the user is not authenticated
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(state.error),
                ),
              );
            }
          }, builder: (context, state) {
            if (state is Loading) {
              //Display the custom loading indicator while user is signing up
              return CustomLoadingWidget();
            }
            if (state is UnAuthenticated) {
              //Displaying the sign up form if the user is not authenticated
              return FormRegisterWidget(
                formKey: _formKey,
                emailController: _emailController,
                passwordController: _passwordController,
                confirmPasswordController: _confirmPasswordController,
                nameController: _nameController,
              );
            }
            return Container();
          })),
    );
  }
}
