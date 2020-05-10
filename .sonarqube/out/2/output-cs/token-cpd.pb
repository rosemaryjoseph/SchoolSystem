Â

oC:\Users\cognizantdotnet31\source\repos\SchoolSystem\BusinessService\BusinessService.Services\StudentService.cs
	namespace 	
BusinessService
 
. 
Services "
{		 
public

 

class

 
StudentService

 
:

  !
GenericRepository

" 3
<

3 4
Student

4 ;
>

; <
,

< =
IStudentRepository

> P
{ 
private 
readonly $
BusinessServiceDbContext 1

_DbContext2 <
;< =
public 
StudentService 
( $
BusinessServiceDbContext 6
context7 >
)> ?
:? @
base@ D
(D E
contextE L
)L M
{ 	
this 
. 

_DbContext 
= 
context %
;% &
} 	
public 
IEnumerable 
< 
Student "
>" # 
GetFirstFiveStudents$ 8
(8 9
)9 :
{ 	
return 
this 
. 

_DbContext "
." #
Students# +
.+ ,
Take, 0
(0 1
$num1 2
)2 3
;3 4
} 	
} 
} 