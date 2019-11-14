initialization - scripts
addMessageSet

	self addScript: {
	
[:methodReference | {
	PackageOrganizer default packageOfMethod: methodReference ifNone: ['(no package)'].
	methodReference
} asTuples] -> {
	#inputKind -> MethodReference.
	#view -> ViTreePlainView.
	#label -> 'Message Set'.
	#id -> #messageSet.
	#priority -> 210}.
	
#groups.

[:object | {
	#text -> (object class == ViSeparator ifFalse: [object className]).
	#selectable -> (object class ~~ ViSeparator)}].
[:object | {
	#text -> (object class == ViSeparator ifFalse: [object category]).
	#selectable -> (object class ~~ ViSeparator)}].
			
	} asScript.