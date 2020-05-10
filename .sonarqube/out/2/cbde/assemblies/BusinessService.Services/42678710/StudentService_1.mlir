func @_BusinessService.Services.StudentService.GetFirstFiveStudents$$() -> none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Services\\StudentService.cs" :17 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Services\\StudentService.cs" :19 :19) // this (ThisExpression)
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Services\\StudentService.cs" :19 :19) // this._DbContext (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Services\\StudentService.cs" :19 :19) // this._DbContext.Students (SimpleMemberAccessExpression)
%3 = constant 5 : i32 loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Services\\StudentService.cs" :19 :49)
%4 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Services\\StudentService.cs" :19 :19) // this._DbContext.Students.Take(5) (InvocationExpression)
return %4 : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Services\\StudentService.cs" :19 :12)

^1: // ExitBlock
cbde.unreachable

}
