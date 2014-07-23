add/remove
addObject: anObject
	"Adds the object to all known histories."
	
	anObject isCompiledMethod "mt: Avoid saving old methods but only current references."
		ifTrue: [^ self recentMethods addObject: anObject methodReference].
		
	(anObject isKindOf: MethodReference)
		ifTrue: [^ self recentMethods addObject: anObject].

	(anObject isKindOf: ClassDescription)  
		ifTrue: [^ self recentClasses addObject: anObject].

	(anObject isKindOf: PackageInfo)
		ifTrue: [^ self recentPackages addObject: anObject].
	
"	self recently addObject: anObject."
"	self frequently addObject: anObject."