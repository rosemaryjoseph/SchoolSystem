¸
jC:\Users\cognizantdotnet31\source\repos\SchoolSystem\BusinessService\BusinessService.Domain\IUnitofWork.cs
	namespace 	
BusinessService
 
. 
Domain  
{ 
public 

	interface 
IUnitofWork  
:  !
IDisposable! ,
{ 
void 
Commit 
( 
) 
; 
} 
}		 Æ
lC:\Users\cognizantdotnet31\source\repos\SchoolSystem\BusinessService\BusinessService.Domain\Models\School.cs
	namespace 	
BusinessService
 
. 
Domain  
{ 
public 

class 
School 
{ 
[ 
Required 
] 
[		 
DatabaseGenerated		 
(		 #
DatabaseGeneratedOption		 6
.		6 7
Identity		7 ?
)		? @
]		@ A
public

 
int

 
SchoolID

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
string 

SchoolName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 	
} Š	
nC:\Users\cognizantdotnet31\source\repos\SchoolSystem\BusinessService\BusinessService.Domain\Models\Standard.cs
	namespace 	
BusinessService
 
. 
Domain  
{ 
public 

class 
Standard 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
public		 
int		 

StandardId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
StandardName

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
string 
Division 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
ICollection 
< 
Student "
>" #
Students$ ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} ý
mC:\Users\cognizantdotnet31\source\repos\SchoolSystem\BusinessService\BusinessService.Domain\Models\Student.cs
	namespace 	
BusinessService
 
. 
Domain  
{ 
public 

class 
Student 
{ 
[ 	
Required	 
] 
[		 	
DatabaseGenerated			 
(		 #
DatabaseGeneratedOption		 2
.		2 3
Identity		3 ;
)		; <
]		< =
public

 
int

 
	StudentID

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
int 
SchoolID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 

StandardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
FirstMidName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
virtual 
Standard 
Standard  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
virtual 
School 
School $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ¼
wC:\Users\cognizantdotnet31\source\repos\SchoolSystem\BusinessService\BusinessService.Domain\Repositories\IRepository.cs
	namespace 	
BusinessService
 
. 
Domain  
.  !
Repositories! -
{ 
public 

	interface 
IRepository  
<  !
T! "
>" #
where$ )
T* +
:+ ,
class, 1
{ 
IEnumerable 
< 
T 
> 
GetAll 
( 
) 
;  
T		 	
GetById		
 
(		 
int		 
id		 
)		 
;		 
void

 
Add

 
(

 
T

 
entity

 
)

 
;

 
void 
Update 
( 
T 
entity 
) 
; 
void 
Delete 
( 
T 
entity 
) 
; 
} 
} ”
zC:\Users\cognizantdotnet31\source\repos\SchoolSystem\BusinessService\BusinessService.Domain\Services\IStudentRepository.cs
	namespace 	
BusinessService
 
. 
Domain  
.  !
Services! )
{ 
public 

	interface 
IStudentRepository '
{ 
IEnumerable 
< 
Student 
>  
GetFirstFiveStudents 1
(1 2
)2 3
;3 4
} 
}		 