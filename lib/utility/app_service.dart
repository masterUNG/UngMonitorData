import 'package:firebase_auth/firebase_auth.dart';

class AppService {
  Future<void> processSentOTP({required String phoneNumber}) async {
    String userPhoneNumber = phoneNumber;

    userPhoneNumber = '+66${userPhoneNumber.substring(1)}';

    print('##22oct userPhoneNumber ---> $userPhoneNumber');

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: userPhoneNumber,
      timeout: const Duration(seconds: 60),
      verificationCompleted: (phoneAuthCredential) {},
      verificationFailed: (error) {},
      codeSent: (verificationId, forceResendingToken) {
        String verId = verificationId;
        print('##22oct verId ====> $verId');
      },
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }
}
