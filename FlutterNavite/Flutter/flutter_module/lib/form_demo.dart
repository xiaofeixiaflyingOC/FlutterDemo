import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
          data: Theme.of(context).copyWith(//除了这个页面主题更改，其他的不变
            primaryColor: Colors.blue,
          ),
          child:Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RegisterForm(),
              ],
            ),
          ),
      ),

    );
  }
}
class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

 final registerForKey = GlobalKey<FormState>();
 String userName,passWord;
 bool autoV = false;//首次不执行自动判断

 void submitRegisterForm(){

   if(registerForKey.currentState.validate()){
     registerForKey.currentState.save();//保存表单里面填写的数据
     registerForKey.currentState.validate();//
     debugPrint('userName:$userName  password:$passWord');
   }else{
     setState(() {
       autoV = true;
     });
   }



}
String validateUsername(value){
   if(value.isEmpty){
     return 'UserName is Required';
   }
   return null;
}
 String validatePassword(value){
   if(value.isEmpty){
     return 'Password is Required';
   }
   return null;
 }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerForKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'UserName',
            ),
            onSaved: (value){
               userName = value;
            },
            validator: validateUsername,
            autovalidate: autoV,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
            onSaved: (value){
              passWord = value;
            },
            autovalidate: autoV,
            validator: validatePassword,
          ),
          SizedBox(height: 32.0),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text('Register',style:TextStyle(color:Colors.white) ),
              elevation: 0,
              onPressed: submitRegisterForm,
            ),
          )

        ],
      ),
    );
  }
}




class ThemeDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();
  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }
  @override
  void initState(){

    super.initState();

    textEditingController.addListener(
        (){
          debugPrint('input: ${textEditingController.text}');
        });

  }


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:  textEditingController,
//      onChanged: (value){
//        debugPrint('change $value');
//      },
//      onSubmitted: (value){
//        debugPrint('submit $value');
//      },

decoration:  InputDecoration(
  icon: Icon(Icons.subject),
  labelText: 'Title',
  hintText: 'Enter the post title',//初始值
//  border: InputBorder.none,
//border: OutlineInputBorder()
filled: true,
  fillColor: Colors.redAccent
),
    );
  }
}
