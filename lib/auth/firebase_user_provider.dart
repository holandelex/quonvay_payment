import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class QonvayPaymentDevFirebaseUser {
  QonvayPaymentDevFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

QonvayPaymentDevFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<QonvayPaymentDevFirebaseUser> qonvayPaymentDevFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<QonvayPaymentDevFirebaseUser>(
            (user) => currentUser = QonvayPaymentDevFirebaseUser(user));
