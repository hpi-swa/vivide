instance creation
named: aString inClass: aClass

	(aClass organization categories includes: aString)
		ifFalse: [aClass organization addCategory: aString].
		
	^ self new protocolname: aString; theClass: aClass