//solution for  "setState() or markNeedsBuild called during build" and " !_debuglocked': is not true. "

 //-if you want to show popup or dialog and getting this errors. do this 

  WidgetsBinding.instance.addPostFrameCallback((_){

        //your popup  code here.
        _showMyDialog(context);

      });


//this is asyn so popup can be duplicated.if you see popup more than 1. check with boolean.


  SchedulerBinding.instance.addPostFrameCallback((_){
        if(!showing)
        _showMyDialog(context);


     });





Future<void> _showMyDialog(context) async {
 QuestionSource.showing=true;

  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('AlertDialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text("0-5 Depreyon Yok \n 6-10 Normal ama mutsuz \n 11-25 Hafif Depresyon \n 26-50 Orta Depresyon \n 51-75 Ağır Depresyon \n 76-100 Aşırı Depresyon"),
              
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
              QuestionSource.showing =false;
            },
          ),
        ],
      );
    },
  );
}
