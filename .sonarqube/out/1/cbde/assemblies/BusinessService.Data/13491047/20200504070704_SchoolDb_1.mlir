// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_BusinessService.Data.Migrations.SchoolDb.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Migrations\\20200504070704_SchoolDb.cs" :74 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Migrations\\20200504070704_SchoolDb.cs" :74 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Migrations\\20200504070704_SchoolDb.cs" :74 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Migrations\\20200504070704_SchoolDb.cs" :76 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Migrations\\20200504070704_SchoolDb.cs" :77 :22) // "Students" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Migrations\\20200504070704_SchoolDb.cs" :76 :12) // migrationBuilder.DropTable(                  name: "Students") (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Migrations\\20200504070704_SchoolDb.cs" :79 :12) // Not a variable of known type: migrationBuilder
%5 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Migrations\\20200504070704_SchoolDb.cs" :80 :22) // "Grades" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Migrations\\20200504070704_SchoolDb.cs" :79 :12) // migrationBuilder.DropTable(                  name: "Grades") (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Migrations\\20200504070704_SchoolDb.cs" :82 :12) // Not a variable of known type: migrationBuilder
%8 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Migrations\\20200504070704_SchoolDb.cs" :83 :22) // "Schools" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\cognizantdotnet31\\source\\repos\\SchoolSystem\\BusinessService\\BusinessService.Data\\Migrations\\20200504070704_SchoolDb.cs" :82 :12) // migrationBuilder.DropTable(                  name: "Schools") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
