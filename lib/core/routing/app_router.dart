import 'package:go_router/go_router.dart';
import '../helpers/build_slide_transition_page.dart';
import '../../features/Auth/presentation/views/auth_view.dart';
import '../../features/Auth/presentation/views/forget_password_view.dart';
import '../../features/Auth/presentation/views/login_success_view.dart';
import '../../features/Auth/presentation/views/otp_verification_view.dart';
import '../../features/Auth/presentation/views/reset_password_success_view.dart';
import '../../features/Auth/presentation/views/reset_password_view.dart';
import '../../features/Auth/presentation/views/signup_success_view.dart';
import '../../features/Splash/splash_view.dart';
import '../../features/app/main_view.dart';
import '../../features/app/views/brands_view.dart';
import '../../features/home/presentation/views/babies_products_view.dart';
import '../../features/home/presentation/views/categories_view.dart';
import '../../features/home/presentation/views/hot_offers_view.dart';
import '../../features/home/presentation/views/top_selling_products_view.dart';
import '../../features/onboarding/onboarding_view.dart';
import '../../features/select_language/select_language_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      routes: [
        GoRoute(
          path: Routes.splashView,
          pageBuilder: (context, state) =>
              buildSlideTransitionPage(child: const SplashView(), state: state),
        ),
        GoRoute(
          path: Routes.onboardingView,
          pageBuilder: (context, state) => buildSlideTransitionPage(
            child: const OnboardingView(),
            state: state,
          ),
        ),
        GoRoute(
          path: Routes.selectLanguage,
          pageBuilder: (context, state) => buildSlideTransitionPage(
            child: const SelectLanguageView(),
            state: state,
          ),
        ),
        GoRoute(
          path: Routes.authView,
          pageBuilder: (context, state) =>
              buildSlideTransitionPage(child: const AuthView(), state: state),
        ),
        GoRoute(
          path: Routes.otpVerificationView,
          pageBuilder: (context, state) {
            final bool isForResetPassword = state.extra as bool? ?? false;
            return buildSlideTransitionPage(
              child: OtpVerificationView(
                isForResetPassword: isForResetPassword,
              ),
              state: state,
            );
          },
        ),
        GoRoute(
          path: Routes.signupSuccessView,
          pageBuilder: (context, state) => buildSlideTransitionPage(
            child: const SignupSuccessView(),
            state: state,
          ),
        ),
        GoRoute(
          path: Routes.forgotPasswordView,
          pageBuilder: (context, state) => buildSlideTransitionPage(
            child: const ForgetPasswordView(),
            state: state,
          ),
        ),
        GoRoute(
          path: Routes.resetPasswordView,
          pageBuilder: (context, state) => buildSlideTransitionPage(
            child: const ResetPasswordView(),
            state: state,
          ),
        ),
        GoRoute(
          path: Routes.resetPasswordSuccessView,
          pageBuilder: (context, state) => buildSlideTransitionPage(
            child: const ResetPasswordSuccessView(),
            state: state,
          ),
        ),
        GoRoute(
          path: Routes.loginSuccessView,
          pageBuilder: (context, state) => buildSlideTransitionPage(
            child: const LoginSuccessView(),
            state: state,
          ),
        ),
        GoRoute(
          path: Routes.mainView,
          pageBuilder: (context, state) =>
              buildSlideTransitionPage(child: const MainView(), state: state),
        ),
        GoRoute(
          path: Routes.categoriesView,
          pageBuilder: (context, state) => buildSlideTransitionPage(
            child: const CategoriesView(),
            state: state,
          ),
        ),
        GoRoute(
          path: Routes.topSellingProductsView,
          pageBuilder: (context, state) => buildSlideTransitionPage(
            child: const TopSellingProductsView(),
            state: state,
          ),
        ),
        GoRoute(
          path: Routes.hotOffersView,
          pageBuilder: (context, state) => buildSlideTransitionPage(
            child: const HotOffersView(),
            state: state,
          ),
        ),
        GoRoute(
          path: Routes.babiesProductsView,
          pageBuilder: (context, state) => buildSlideTransitionPage(
            child: const BabiesProductsView(),
            state: state,
          ),
        ),
        GoRoute(
          path: Routes.brandsView,
          pageBuilder: (context, state) =>
              buildSlideTransitionPage(child: const BrandsView(), state: state),
        ),
      ],
    );
  }
}
