func @_BusinessService.Data.Repositories.GenericRepository$T$.Add$T$(none) -> () loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :17 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :17 :24)
cbde.store %_entity, %0 : memref<none> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :17 :24)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :19 :12) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :19 :12) // this._DbSet (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :19 :28) // Not a variable of known type: entity
%4 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :19 :12) // this._DbSet.Add(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BusinessService.Data.Repositories.GenericRepository$T$.Delete$T$(none) -> () loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :22 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :22 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :22 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :24 :12) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :24 :12) // this._DbSet (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :24 :31) // Not a variable of known type: entity
%4 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :24 :12) // this._DbSet.Remove(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BusinessService.Data.Repositories.GenericRepository$T$.GetAll$$() -> none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :27 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :29 :19) // this (ThisExpression)
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :29 :19) // this._DbSet (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :29 :19) // this._DbSet.ToList() (InvocationExpression)
return %2 : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :29 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BusinessService.Data.Repositories.GenericRepository$T$.GetById$int$(i32) -> none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :32 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :32 :25)
cbde.store %_id, %0 : memref<i32> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :32 :25)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :34 :19) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :34 :19) // this._DbSet (SimpleMemberAccessExpression)
%3 = cbde.load %0 : memref<i32> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :34 :36)
%4 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :34 :19) // this._DbSet.Find(id) (InvocationExpression)
return %4 : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :34 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BusinessService.Data.Repositories.GenericRepository$T$.Update$T$(none) -> () loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :37 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :37 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :37 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :39 :12) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :39 :12) // this._DbContext (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :39 :34) // Not a variable of known type: entity
%4 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :39 :12) // this._DbContext.Entry(entity) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :39 :12) // this._DbContext.Entry(entity).State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%6 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :39 :50) // EntityState.Detached (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :40 :12) // this (ThisExpression)
%8 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :40 :12) // this._DbSet (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :40 :31) // Not a variable of known type: entity
%10 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :40 :12) // this._DbSet.Attach(entity) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :41 :12) // this (ThisExpression)
%12 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :41 :12) // this._DbContext (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :41 :34) // Not a variable of known type: entity
%14 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :41 :12) // this._DbContext.Entry(entity) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :41 :12) // this._DbContext.Entry(entity).State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%16 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Repositories\\GenericRepository.cs" :41 :50) // EntityState.Modified (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
