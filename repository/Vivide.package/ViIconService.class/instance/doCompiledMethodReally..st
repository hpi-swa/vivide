operations
doCompiledMethodReally: aMethod

	self flag: #performance. "mt: Is it slow?"
	(aMethod methodClass isMeta and: [aMethod selector endsWith: #Icon]) ifTrue: [
		| result |
		result := aMethod methodClass theNonMetaClass perform: aMethod selector.
		result class == Form ifTrue: [^ result]].

	^ self class
		iconForClass: aMethod methodClass
		selector: aMethod selector