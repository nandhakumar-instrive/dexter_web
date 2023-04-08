class Validator{

  static validateNonNullOrEmpty(value, fieldName){
    if(value == null || value.toString().isEmpty){
      return '$fieldName is required';
    }else{
      return null;
    }
  }

  static validatePhoneNumber(value, {fieldName}){
    if(value == null || value.toString().isEmpty){
      return '${fieldName??'Mobile Number'} is required';
    }else if(value.length!=10){
      return 'Enter a valid mobile number';
    }
  }

  static validatePinPut(value, {fieldName}){
    if(value == null || value.toString().isEmpty){
      return '${fieldName??'OTP'} is required';
    }else if(value.length!=6){
      return 'OTP should be 6 digit';
    }
  }

  static validateEmail(value) {
    if(value == null || value.toString().isEmpty){
      return 'Email address is required';
    }else{
      final emailRegex = RegExp(
        r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
      );
      if(!emailRegex.hasMatch(value)){
        return 'Enter a valid email address';
      }else{
        return null;
      }
    }
  }

}