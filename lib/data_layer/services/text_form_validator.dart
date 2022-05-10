

class TextFormValidator{

  String char="abcdefghijklmnopqrstuvwxyz ";
  String char1="abcdefghijklmnopqrstuvwxyz";

  String nameValidator(String name){

    if(name.isEmpty){
      return "Name shouldn't be empty";
    }
    if(name.contains(" ")){
      return "Enter name without spaces";
    }
    for(int i=0;i<name.length;i++){
      if(!char.contains(name[i].toLowerCase())){
        return "Enter only letters";
      }
    }

    if(name.length<4){
      return "Enter at least 4 letters";
    }


    return "Valid name";
  }

  String usernameValidator(String name){

    if(name.isEmpty){
      return "Username shouldn't be empty";
    }
    if(name.contains(" ")){
      return "Enter username without spaces";
    }

    for(int i=0;i<name.length;i++){
      if(!char1.contains(name[i].toLowerCase())){
        return "Enter only letters";
      }
    }
    if(name.length<4){
      return "Enter at least 4 letters";
    }

    return "Valid username";
  }


  String emailValidator(String email){
    Pattern pattern =
        r"^[a-zA-Z0-9.!#$%&'+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)$";
    RegExp regex = RegExp(pattern as String);

    if(!regex.hasMatch(email)){
      return "Un valid email";
    }

    return "Valid email";
  }

   String passValidator(String pass){
     String charCapital="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    if(pass.length<8){
      return "Enter at least 8 letters";
    }
    int haveCapitalOrNot=0;
     for(int i=0;i<pass.length;i++){
       if(charCapital.contains(pass[i])){
         haveCapitalOrNot++;
       }
     }
     if(haveCapitalOrNot==0){
       return "Enter at least one capital letter";
     }
     if(pass.contains(" ")){
       return "Enter password without spaces";
     }

    return "Valid password";
   }

  String rePassValidator(String pass,String rePass){

    if(pass!=rePass){
      return "Password not match";
    }

    return "Password match";
  }

  String phoneValidator(String phone){
    String num="1234567890";
    for(int i=0;i<phone.length;i++){
      if(!num.contains(phone[i])){
        return "Enter only numbers";
      }
    }
    if(phone.length<10){
      return "Please enter 10 numbers";
    }else if(phone.length>10){
      return "Please enter 10 numbers";
    }else{
      String begin=phone.substring(0,3);
      if(begin!="077"&&begin!="078"&&begin!="079"){
        return "Number must start with 079 , 078 or 077";
      }
    }

    return "Valid phone number";
  }

  String dateValidator(String date){

    String year=date.substring(0,4);
    if(int.parse(year)>2010){
      return "Too young";
    }

    return "Valid birth date";
  }


  String studentNumberValidator(String stdNumber){
    String num="1234567890";

    for(int i=0;i<stdNumber.length;i++){
      if(!num.contains(stdNumber[i])){
        return "Enter only numbers";
      }
    }
    if(stdNumber.length!=11){
      return "Please enter at least 11 number";
    }

    return "Valid student number";
  }



}