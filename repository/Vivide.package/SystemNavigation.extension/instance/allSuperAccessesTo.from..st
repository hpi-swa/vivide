*vivide
allSuperAccessesTo: instVarName from: aClass
	"Return a sequence of MethodReferences of all methods of aClass or it's sub/superclass that refer to the instance variable instVarName -- BUT only for all superclasses of aClass methods."
	
	| result |
	result := OrderedCollection new.
	aClass allSuperclassesDo: [:class |
	(class whichSelectorsAccess: instVarName) do: [:selector |
		result add: (MethodReference class: class selector: selector) ] ].
	^result