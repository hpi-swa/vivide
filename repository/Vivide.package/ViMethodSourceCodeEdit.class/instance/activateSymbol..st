actions - activation
activateSymbol: aSymbol

	| a b |
	a := self theClass.
	b := (self theClass isMeta
		ifTrue: [self theClass theNonMetaClass]
		ifFalse: [self theClass theMetaClass]).

	self selector = aSymbol
		ifFalse: [
			"Avoid requesting this method again."
			((a lookupSelector: aSymbol) ifNil: [b lookupSelector: aSymbol])
				ifNotNil: [:method | ^ self artifactRequested: method]]
		ifTrue: [
			"The one *other* implementor of a symbol."
			(SystemNavigation default allImplementorsOf: aSymbol)
				ifNotNil: [:refs | refs size = 2 ifTrue: [^ self artifactRequested: (refs detect: [:ref | ref ~= self methodReference])]]].

	^ super activateSymbol: aSymbol  