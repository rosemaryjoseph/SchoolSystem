func @_BusinessService.Api.Controllers.StudentsController.GetStudent$$() -> none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :23 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :26 :12) // Not a variable of known type: _logger
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :26 :35) // "GetFirstFiveStudents method was called" (StringLiteralExpression)
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :26 :12) // _logger.LogInformation("GetFirstFiveStudents method was called") (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :27 :19) // this (ThisExpression)
%4 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :27 :19) // this._uow (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :27 :19) // this._uow.StudentService (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :27 :19) // this._uow.StudentService.GetFirstFiveStudents() (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :27 :19) // this._uow.StudentService.GetFirstFiveStudents().ToList() (InvocationExpression)
return %7 : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :27 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BusinessService.Api.Controllers.StudentsController.GetStudent$int$(i32) -> none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :30 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :31 :48)
cbde.store %_id, %0 : memref<i32> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :31 :48)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :33 :26) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :33 :26) // this._uow (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :33 :26) // this._uow.StudentService (SimpleMemberAccessExpression)
%4 = cbde.load %0 : memref<i32> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :33 :59)
%5 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :33 :26) // this._uow.StudentService.GetById(id) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :34 :16) // Not a variable of known type: student
%8 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :34 :27) // null (NullLiteralExpression)
%9 = cbde.unknown : i1  loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :34 :16) // comparison of unknown type: student == null
cond_br %9, ^1, ^2 loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :34 :16)

^1: // SimpleBlock
%10 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :36 :16) // Not a variable of known type: _logger
%11 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :36 :39) // "Student not Found" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :36 :16) // _logger.LogInformation("Student not Found") (InvocationExpression)
br ^2

^2: // JumpBlock
%13 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :38 :19) // this (ThisExpression)
%14 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :38 :19) // this._uow (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :38 :19) // this._uow.StudentService (SimpleMemberAccessExpression)
%16 = cbde.load %0 : memref<i32> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :38 :52)
%17 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :38 :19) // this._uow.StudentService.GetById(id) (InvocationExpression)
return %17 : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :38 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_BusinessService.Api.Controllers.StudentsController.PutSchool$int.BusinessService.Domain.Student$(i32, none) -> none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :41 :8) {
^entry (%_id : i32, %_student : none):
%0 = cbde.alloca i32 loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :42 :60)
cbde.store %_id, %0 : memref<i32> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :42 :60)
%1 = cbde.alloca none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :42 :68)
cbde.store %_student, %1 : memref<none> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :42 :68)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :44 :12) // this (ThisExpression)
%3 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :44 :12) // this._uow (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :44 :12) // this._uow.StudentService (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :44 :44) // Not a variable of known type: student
%6 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :44 :12) // this._uow.StudentService.Update(student) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :45 :19) // this (ThisExpression)
%8 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :45 :19) // this._uow (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :45 :19) // this._uow.StudentService (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :45 :19) // this._uow.StudentService.GetAll() (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :45 :19) // this._uow.StudentService.GetAll().ToList() (InvocationExpression)
return %11 : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\Controllers\\StudentsController.cs" :45 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function AddStudent(none), it contains poisonous unsupported syntaxes

// Skipping function DeleteStudent(i32), it contains poisonous unsupported syntaxes

