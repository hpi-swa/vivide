instance creation
named: aStringOrNil inClass: aClass

	| protocolname |
	protocolname := aStringOrNil ifNil: [Categorizer default].
	
	"Add category if not present."
	(aStringOrNil notNil and: [(aClass organization categories includes: aStringOrNil) not])
		ifTrue: [aClass organization addCategory: protocolname].
		
	^ self new protocolname: protocolname; theClass: aClass