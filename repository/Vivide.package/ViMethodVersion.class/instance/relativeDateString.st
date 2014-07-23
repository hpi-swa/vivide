printing
relativeDateString

	self timeStamp ifNil: [^ 'Unknown'].

	self date = Date today ifTrue: [^ 'Today'].
	self date = Date yesterday ifTrue: [^ 'Yesterday'].
	
"	self date monthIndex \\ 12 + 1 == Date today monthIndex
		ifTrue: [^ 'Last Month'].
"		
	"self date monthIndex < Date today monthIndex
		ifTrue: [^ 'Older'].
"
	self date weekdayIndex <= Date today weekdayIndex ifTrue: [ | delta |
		delta := (Date today - self date) days - Date today weekdayIndex + self date weekdayIndex.
		delta == 7 ifTrue: [^ 'Last Week'].
		delta < 7 ifTrue: [^ 'This Week'].
		delta > 7 ifTrue: [^ 'Older']].

	self date weekdayIndex > Date today weekdayIndex ifTrue: [
		(Date today - self date) days < 7
			ifTrue: [^ 'Last Week']
			ifFalse: [^ 'Older']].