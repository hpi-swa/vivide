history
addObject: anObject
	"Adds the object to all known histories."
	
	anObject isCompiledMethod
		ifTrue: [
			"Do not add deleted methods."
			anObject methodReference ifNotNil: [:ref |
				ref isValid ifTrue: [^ self recentMethods addObject: ref]]].
			
	(anObject isKindOf: MethodReference)
		ifTrue: [^ self recentMethods addObject: anObject].

	(anObject isKindOf: ClassDescription)  
		ifTrue: [^ self recentClasses addObject: anObject].

	(anObject isKindOf: PackageInfo)
		ifTrue: [^ self recentPackages addObject: anObject].
	
"	self recently addObject: anObject."
"	self frequently addObject: anObject."