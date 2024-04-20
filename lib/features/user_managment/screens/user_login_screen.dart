import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:senior_active_adventure/util/router/router.dart';
import 'package:auto_size_text/auto_size_text.dart';

@RoutePage()
class UserLoginScreen extends HookConsumerWidget {
  const UserLoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailFieldController = useTextEditingController();
    final showPassword = useState(false);

    return Scaffold(
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "Welcome Back!\nGlad to see you again!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: TextFormField(
                controller: emailFieldController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            // Password field with reveal password button
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: TextField(
                obscureText: showPassword
                    .value, // If passenable == true, show **, else show password character.
                decoration: InputDecoration(
                  hintText: "Enter Password Here",
                  labelText: "Password",
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      showPassword.value = !showPassword.value;
                    },
                    icon: Icon(showPassword.value
                        ? Icons.visibility_off
                        : Icons
                            .visibility), // Eye icon if passenable = true, else, Icon is ***__.
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 0.6.sw,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {
                  // Login logic
                  context.navigateTo(const HomeRoute());
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    'Login',
                    maxLines: 1,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
