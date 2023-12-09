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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `E-Book`
  String get appName {
    return Intl.message(
      'E-Book',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Read Anywhere`
  String get onBoardingTitle1 {
    return Intl.message(
      'Read Anywhere',
      name: 'onBoardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Your personalized e-book sanctuary. Dive into a world of endless stories, right at your fingertips. Read Anywhere, Anytime`
  String get onBoardingDescription1 {
    return Intl.message(
      'Your personalized e-book sanctuary. Dive into a world of endless stories, right at your fingertips. Read Anywhere, Anytime',
      name: 'onBoardingDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Literary Escape`
  String get onBoardingTitle2 {
    return Intl.message(
      'Literary Escape',
      name: 'onBoardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Embark on a journey of literary wonders with Literary Escape. Your passport to immersive storytelling awaits. Let the reading adventure begin`
  String get onBoardingDescription2 {
    return Intl.message(
      'Embark on a journey of literary wonders with Literary Escape. Your passport to immersive storytelling awaits. Let the reading adventure begin',
      name: 'onBoardingDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Book Verse`
  String get onBoardingTitle3 {
    return Intl.message(
      'Book Verse',
      name: 'onBoardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `where every page turns into a new chapter of discovery. Unleash the magic of books with our curated collection. Start your reading odyssey today`
  String get onBoardingDescription3 {
    return Intl.message(
      'where every page turns into a new chapter of discovery. Unleash the magic of books with our curated collection. Start your reading odyssey today',
      name: 'onBoardingDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get onBoardingButtonText {
    return Intl.message(
      'Next',
      name: 'onBoardingButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get onBoardingTextButtonText {
    return Intl.message(
      'Skip',
      name: 'onBoardingTextButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Log`
  String get loginScreenTitlePartOne {
    return Intl.message(
      'Log',
      name: 'loginScreenTitlePartOne',
      desc: '',
      args: [],
    );
  }

  /// ` In`
  String get loginScreenTitlePartTwo {
    return Intl.message(
      ' In',
      name: 'loginScreenTitlePartTwo',
      desc: '',
      args: [],
    );
  }

  /// `Unlock a world of literary treasures with a single login, where every word awaits to captivate your imagination in our e-book haven`
  String get loginDesc {
    return Intl.message(
      'Unlock a world of literary treasures with a single login, where every word awaits to captivate your imagination in our e-book haven',
      name: 'loginDesc',
      desc: '',
      args: [],
    );
  }

  /// `Join our literary community and unlock a world of captivating stories – sign up now to embark on your personalized e-book adventure`
  String get registerScreenDescription {
    return Intl.message(
      'Join our literary community and unlock a world of captivating stories – sign up now to embark on your personalized e-book adventure',
      name: 'registerScreenDescription',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get loginScreenEmail {
    return Intl.message(
      'Email',
      name: 'loginScreenEmail',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get loginScreenPass {
    return Intl.message(
      'password',
      name: 'loginScreenPass',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginScreenButton {
    return Intl.message(
      'Login',
      name: 'loginScreenButton',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account ? `
  String get loginScreenHaveNotAccount {
    return Intl.message(
      'Don\'t have an account ? ',
      name: 'loginScreenHaveNotAccount',
      desc: '',
      args: [],
    );
  }

  /// `create account`
  String get loginScreenCreateAccount {
    return Intl.message(
      'create account',
      name: 'loginScreenCreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get loginScreenForgetPass {
    return Intl.message(
      'Forget Password ?',
      name: 'loginScreenForgetPass',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get registerFullName {
    return Intl.message(
      'Full name',
      name: 'registerFullName',
      desc: '',
      args: [],
    );
  }

  /// `Sign `
  String get sign {
    return Intl.message(
      'Sign ',
      name: 'sign',
      desc: '',
      args: [],
    );
  }

  /// `up`
  String get up {
    return Intl.message(
      'up',
      name: 'up',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account`
  String get registerScreenHaveAccount {
    return Intl.message(
      'Already have an account',
      name: 'registerScreenHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get otpCodeEnter {
    return Intl.message(
      'Enter',
      name: 'otpCodeEnter',
      desc: '',
      args: [],
    );
  }

  /// ` OTP`
  String get otpCodeCode {
    return Intl.message(
      ' OTP',
      name: 'otpCodeCode',
      desc: '',
      args: [],
    );
  }

  /// `Verify OTP`
  String get submit {
    return Intl.message(
      'Verify OTP',
      name: 'submit',
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
