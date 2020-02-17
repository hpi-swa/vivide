*vivide
allLocalAccessesTo: instVarName from: aClass
	"Return a sequence of MethodReferences of all methods of aClass or it's sub/superclass that refer to the instance variable instVarName -- BUT only for aClass methods."
	
	| result |
	result := OrderedCollection new.
	(aClass whichSelectorsAccess: instVarName) do: [:selector |
		result add: (MethodReference class: aClass selector: selector) ].
	^result