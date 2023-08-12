// ignore_for_file: unused_local_variable
import '../constants/constants.dart';

validateName(String value) {
  if (value.isEmpty) {
    return translateString(
      'you should enter user name',
      'يرجي ادخال اسم المستخدم',
    );
  } else {
    if (value.length < 3 || value.length >= 18) {
      return 'Name Between 3 To 18 Charaters';
    }
  }
  // else if (!regExp.hasMatch(value)) {
  //   return "Name must be a-z and A-Z";
  //}
  return null;
}

// validateCity(String value) {
//   if (value.isEmpty) {
//     return translateString(
//       'City Required',
//       'مطلوب المدينة',
//     );
//   } else {
//     if (value.length < 2 || value.length >= 15) {
//       return 'Wrong City';
//     }
//   }

// else if (!regExp.hasMatch(value)) {
//   return "Name must be a-z and A-Z";
//}
//   return null;
// }
// validatePlace(String value) {
//   if (value.isEmpty) {
//     return translateString(
//       'Place Required',
//       'مطلوب المكان',
//     );
//   } else {
//     if (value.length < 2 || value.length >= 15) {
//       return 'Wrong Place';
//     }
//   }
// else if (!regExp.hasMatch(value)) {
//   return "Name must be a-z and A-Z";
//}
//   return null;
// }

validate(String value) {
  if (value.isEmpty) {
    return translateString(
      "This field is required",
      "هذا الحقل مطلوب",
    );
  }
  return null;
}

// validateNumber(String value, String message) {
//   Pattern pattern = r'^[0-9]+$';
//   if (value[0] != '5') {
//     return "يجب ان يبدا رقم الجوال ب5";
//   }
//   if (value.length != 9) {
//     return " يجب ان يكون 9 ارقام ";
//   }
//   RegExp regex = RegExp(pattern.toString());
//   if (!regex.hasMatch(value)) return message;
//   return null;
// }

validatePassword(String value) {
  Pattern pattern = r'^.{6,}$';
  RegExp regex = RegExp(pattern.toString());
  if (value.isEmpty) {
    return translateString("Enter password", "ادخل كلمة المرور");
  } else if (!regex.hasMatch(value)) {
    return translateString(
      'password must be more than 6',
      'يجب ان تكون كلمه المرور اكبر من 6 ارقام ', // '',
    );
  }
  return null;
}

validateConfirmPassword(String value, String confirm) {
  Pattern pattern = r'^.{6,}$';
  RegExp regex = RegExp(pattern.toString());
  if (value.isEmpty) {
    return translateString(
      'you should enter password',
      'ادخال كلمة المرور', // 'يجب ادخال كلمة المرور',
    );
  } else if (value != confirm) {
    return translateString(
      'passwords must be equal',
      'يجب ان تكونا كلمتا المرور متطابقتين',
    );
  }
  return null;
}

validateEmail(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return translateString("Enter Valid Email", "أدخل البريد الالكتروني");
  } else {
    return null;
  }
}

// validateMobile(String value) {
//   String pattern = r'(^(?:[0]1)?[0-9]{11}$)';
//   // String pattern = r'(^(?:[+2]0)?[0-9]{11}$)';

//   RegExp regExp = RegExp(pattern);
//   if (value.isEmpty) {
//     return 'you should enter phone number';
//   } else {
//     if (!regExp.hasMatch(value)) {
//       return 'Please enter valid mobile number';
//     }
//   }
//   return null;
// }

validateMobile(String value) {
  String patttern = r'(^[0-9]*$)';
  RegExp regExp = RegExp(patttern);
  if (value.isEmpty) {
    return translateString("Phone is required", "رقم الجوال مطلوب");
  } else if (value.length != 11) {
    return translateString(
        "Mobile number must 11 Number", "رقم الجوال يجب ان يكون 11 رقم");
  } else if (!value.startsWith('01')) {
    return translateString(
        "Mobile number Must start With 01", "رقم الجوال يبدأ ب 01");
  }
  // else if (!regExp.hasMatch(value)) {
  //   return "Mobile Number must be digits";
  // }
  return null;
}
