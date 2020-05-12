func @_BusinessService.Api.UnitOfWork.Commit$$() -> () loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\UnitOfWork.cs" :18 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\UnitOfWork.cs" :20 :12) // this (ThisExpression)
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\UnitOfWork.cs" :20 :12) // this._DbContext (SimpleMemberAccessExpression)
%2 = cbde.unknown : i32 loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\UnitOfWork.cs" :20 :12) // this._DbContext.SaveChanges() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function Dispose(i1), it contains poisonous unsupported syntaxes

func @_BusinessService.Api.UnitOfWork.Dispose$$() -> () loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\UnitOfWork.cs" :34 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Dispose
%0 = constant 1 : i1 loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\UnitOfWork.cs" :36 :20) // true
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\UnitOfWork.cs" :36 :12) // Dispose(true) (InvocationExpression)
// Entity from another assembly: GC
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\UnitOfWork.cs" :37 :32) // this (ThisExpression)
%3 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Api\\UnitOfWork.cs" :37 :12) // GC.SuppressFinalize(this) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
