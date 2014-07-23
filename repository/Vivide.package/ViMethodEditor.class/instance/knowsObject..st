testing - object
knowsObject: anObject

	self method ifNil: [^ nil].

	(anObject isKindOf: CompiledMethod)
		ifFalse: [^ super knowsObject: anObject].

	self selector == anObject selector
		ifTrue: [
			(self theClass inheritsFrom: anObject methodClass)
				ifTrue: [^ #overriddenBy].
			(anObject methodClass inheritsFrom: self theClass)
				ifTrue: [^ #overrides]]
		ifFalse: [
			(anObject literals includes: self selector)
				ifTrue: [^ #send]].
			
	^ nil