// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome Back`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to keep track of your expenses`
  String get loginSubtitle {
    return Intl.message(
      'Sign in to keep track of your expenses',
      name: 'loginSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Enter your email`
  String get enterEmail {
    return Intl.message(
      'Enter your email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get login {
    return Intl.message('Log In', name: 'login', desc: '', args: []);
  }

  /// `Don't have an account ?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account ?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get Or {
    return Intl.message('OR', name: 'Or', desc: '', args: []);
  }

  /// `I agree to the Privacy Policy and Terms`
  String get agreeToTerms {
    return Intl.message(
      'I agree to the Privacy Policy and Terms',
      name: 'agreeToTerms',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Start tracking your expenses in just one minute`
  String get signupSubtitle {
    return Intl.message(
      'Start tracking your expenses in just one minute',
      name: 'signupSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get continueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get emailRequired {
    return Intl.message(
      'Please enter your email',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address`
  String get emailInvalid {
    return Intl.message(
      'Invalid email address',
      name: 'emailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get passwordRequired {
    return Intl.message(
      'Please enter your password',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get passwordTooShort {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your name`
  String get nameRequired {
    return Intl.message(
      'Please enter your name',
      name: 'nameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Name is too short`
  String get nameTooShort {
    return Intl.message(
      'Name is too short',
      name: 'nameTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your password`
  String get confirmPasswordRequired {
    return Intl.message(
      'Please confirm your password',
      name: 'confirmPasswordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsDoNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Name must contain letters only`
  String get nameInvalid {
    return Intl.message(
      'Name must contain letters only',
      name: 'nameInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Use an uppercase letter (A), a lowercase letter (a), and a special character (@ or #).`
  String get passwordInvalid {
    return Intl.message(
      'Use an uppercase letter (A), a lowercase letter (a), and a special character (@ or #).',
      name: 'passwordInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Start tracking your expenses in just one minute`
  String get startTrackingExpenses {
    return Intl.message(
      'Start tracking your expenses in just one minute',
      name: 'startTrackingExpenses',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Enter your full name`
  String get enterFullName {
    return Intl.message(
      'Enter your full name',
      name: 'enterFullName',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the`
  String get iAgreeTo {
    return Intl.message('I agree to the', name: 'iAgreeTo', desc: '', args: []);
  }

  /// `Terms`
  String get termsAndConditions {
    return Intl.message(
      'Terms',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message('and', name: 'and', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `You must accept the terms and privacy policy to continue`
  String get mustAcceptTerms {
    return Intl.message(
      'You must accept the terms and privacy policy to continue',
      name: 'mustAcceptTerms',
      desc: '',
      args: [],
    );
  }

  /// `Acceptance of Terms`
  String get termsAcceptanceTitle {
    return Intl.message(
      'Acceptance of Terms',
      name: 'termsAcceptanceTitle',
      desc: '',
      args: [],
    );
  }

  /// `By accessing or using the Hesba application, you expressly acknowledge and agree unconditionally to comply with all the terms of this agreement and its associated Privacy Policy.`
  String get termsAcceptanceDescription {
    return Intl.message(
      'By accessing or using the Hesba application, you expressly acknowledge and agree unconditionally to comply with all the terms of this agreement and its associated Privacy Policy.',
      name: 'termsAcceptanceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Application Usage`
  String get appUsageTitle {
    return Intl.message(
      'Application Usage',
      name: 'appUsageTitle',
      desc: '',
      args: [],
    );
  }

  /// `The application is available for personal, non-commercial use to manage and track daily expenses. It is prohibited to use it for any unlawful activities or attempt to disrupt its servers or systems.`
  String get appUsageDescription {
    return Intl.message(
      'The application is available for personal, non-commercial use to manage and track daily expenses. It is prohibited to use it for any unlawful activities or attempt to disrupt its servers or systems.',
      name: 'appUsageDescription',
      desc: '',
      args: [],
    );
  }

  /// `Account and Responsibility`
  String get accountResponsibilityTitle {
    return Intl.message(
      'Account and Responsibility',
      name: 'accountResponsibilityTitle',
      desc: '',
      args: [],
    );
  }

  /// `The user is fully responsible for maintaining the confidentiality of their login credentials and password, as well as all activities and transactions performed through their account.`
  String get accountResponsibilityDescription {
    return Intl.message(
      'The user is fully responsible for maintaining the confidentiality of their login credentials and password, as well as all activities and transactions performed through their account.',
      name: 'accountResponsibilityDescription',
      desc: '',
      args: [],
    );
  }

  /// `Data Accuracy`
  String get dataAccuracyTitle {
    return Intl.message(
      'Data Accuracy',
      name: 'dataAccuracyTitle',
      desc: '',
      args: [],
    );
  }

  /// `The user acknowledges that all financial information and expenses entered are their direct responsibility. The application provides reports based on the information supplied without providing binding financial advice.`
  String get dataAccuracyDescription {
    return Intl.message(
      'The user acknowledges that all financial information and expenses entered are their direct responsibility. The application provides reports based on the information supplied without providing binding financial advice.',
      name: 'dataAccuracyDescription',
      desc: '',
      args: [],
    );
  }

  /// `Account Deletion and Suspension`
  String get accountDeletionTitle {
    return Intl.message(
      'Account Deletion and Suspension',
      name: 'accountDeletionTitle',
      desc: '',
      args: [],
    );
  }

  /// `The user has the right to request account closure and deletion of all saved financial data at any time through the application settings. The application management also reserves the right to suspend any account that violates these terms.`
  String get accountDeletionDescription {
    return Intl.message(
      'The user has the right to request account closure and deletion of all saved financial data at any time through the application settings. The application management also reserves the right to suspend any account that violates these terms.',
      name: 'accountDeletionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Data Collection`
  String get dataCollectionTitle {
    return Intl.message(
      'Data Collection',
      name: 'dataCollectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Hesba collects the data necessary to provide its services and improve the user experience.`
  String get dataCollectionDescription {
    return Intl.message(
      'Hesba collects the data necessary to provide its services and improve the user experience.',
      name: 'dataCollectionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Data Usage`
  String get dataUsageTitle {
    return Intl.message(
      'Data Usage',
      name: 'dataUsageTitle',
      desc: '',
      args: [],
    );
  }

  /// `We use data to provide expense management and tracking services and improve application performance.`
  String get dataUsageDescription {
    return Intl.message(
      'We use data to provide expense management and tracking services and improve application performance.',
      name: 'dataUsageDescription',
      desc: '',
      args: [],
    );
  }

  /// `Data Protection`
  String get dataProtectionTitle {
    return Intl.message(
      'Data Protection',
      name: 'dataProtectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `We take appropriate measures to protect users' data against unauthorized access or use.`
  String get dataProtectionDescription {
    return Intl.message(
      'We take appropriate measures to protect users\' data against unauthorized access or use.',
      name: 'dataProtectionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Data Sharing`
  String get dataSharingTitle {
    return Intl.message(
      'Data Sharing',
      name: 'dataSharingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Users' data is not shared with third parties except when necessary to provide the service or comply with legal requirements.`
  String get dataSharingDescription {
    return Intl.message(
      'Users\' data is not shared with third parties except when necessary to provide the service or comply with legal requirements.',
      name: 'dataSharingDescription',
      desc: '',
      args: [],
    );
  }

  /// `User Rights`
  String get userRightsTitle {
    return Intl.message(
      'User Rights',
      name: 'userRightsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Users have the right to access, modify, or request deletion of their data according to the options available in the application.`
  String get userRightsDescription {
    return Intl.message(
      'Users have the right to access, modify, or request deletion of their data according to the options available in the application.',
      name: 'userRightsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy Updates`
  String get policyUpdatesTitle {
    return Intl.message(
      'Privacy Policy Updates',
      name: 'policyUpdatesTitle',
      desc: '',
      args: [],
    );
  }

  /// `The Privacy Policy may be updated from time to time, and the latest update date will be displayed in the application.`
  String get policyUpdatesDescription {
    return Intl.message(
      'The Privacy Policy may be updated from time to time, and the latest update date will be displayed in the application.',
      name: 'policyUpdatesDescription',
      desc: '',
      args: [],
    );
  }

  /// `The password is too weak`
  String get weakPassword {
    return Intl.message(
      'The password is too weak',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `This email address is already in use`
  String get emailAlreadyInUse {
    return Intl.message(
      'This email address is already in use',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `The email address is invalid`
  String get invalidEmail {
    return Intl.message(
      'The email address is invalid',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred. Please try again`
  String get unknownError {
    return Intl.message(
      'An unexpected error occurred. Please try again',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Network request failed. Please check your internet connection and try again.`
  String get networkRequestFailed {
    return Intl.message(
      'Network request failed. Please check your internet connection and try again.',
      name: 'networkRequestFailed',
      desc: '',
      args: [],
    );
  }

  /// `No user found for this email address`
  String get userNotFound {
    return Intl.message(
      'No user found for this email address',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `The password is incorrect`
  String get wrongPassword {
    return Intl.message(
      'The password is incorrect',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Account created successfully`
  String get accountCreatedSuccessfully {
    return Intl.message(
      'Account created successfully',
      name: 'accountCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Logged in successfully`
  String get loginSuccessfully {
    return Intl.message(
      'Logged in successfully',
      name: 'loginSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Google Sign-In was cancelled`
  String get googleSignInCancelled {
    return Intl.message(
      'Google Sign-In was cancelled',
      name: 'googleSignInCancelled',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
