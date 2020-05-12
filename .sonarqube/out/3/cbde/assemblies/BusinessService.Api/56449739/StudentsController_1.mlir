func @_BusinessService.Api.Controllers.StudentsController.GetStudent$$() -> none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :24 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :27 :12) // Not a variable of known type: _logger
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :27 :35) // "GetFirstFiveStudents method was called" (StringLiteralExpression)
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :27 :12) // _logger.LogInformation("GetFirstFiveStudents method was called") (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :28 :20) // this (ThisExpression)
%4 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :28 :20) // this._uow (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :28 :20) // this._uow.StudentService (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :28 :20) // this._uow.StudentService.GetFirstFiveStudents() (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :28 :20) // this._uow.StudentService.GetFirstFiveStudents().ToList() (InvocationExpression)
return %7 : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :28 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BusinessService.Api.Controllers.StudentsController.GetStudent$int$(i32) -> none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :31 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :32 :48)
cbde.store %_id, %0 : memref<i32> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :32 :48)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :34 :26) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :34 :26) // this._uow (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :34 :26) // this._uow.StudentService (SimpleMemberAccessExpression)
%4 = cbde.load %0 : memref<i32> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :34 :59)
%5 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :34 :26) // this._uow.StudentService.GetById(id) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :35 :16) // Not a variable of known type: student
%8 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :35 :27) // null (NullLiteralExpression)
%9 = cbde.unknown : i1  loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :35 :16) // comparison of unknown type: student == null
cond_br %9, ^1, ^2 loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :35 :16)

^1: // SimpleBlock
%10 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :37 :16) // Not a variable of known type: _logger
%11 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :37 :39) // "Student not Found" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :37 :16) // _logger.LogInformation("Student not Found") (InvocationExpression)
br ^2

^2: // JumpBlock
%13 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :39 :19) // this (ThisExpression)
%14 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :39 :19) // this._uow (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :39 :19) // this._uow.StudentService (SimpleMemberAccessExpression)
%16 = cbde.load %0 : memref<i32> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :39 :52)
%17 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :39 :19) // this._uow.StudentService.GetById(id) (InvocationExpression)
return %17 : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :39 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function PutSchool(i32, none), it contains poisonous unsupported syntaxes

// Skipping function AddStudent(none), it contains poisonous unsupported syntaxes

// Skipping function DeleteStudent(i32), it contains poisonous unsupported syntaxes

