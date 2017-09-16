operations
doCompiledMethodReally: aMethod

	self flag: #performance. "mt: Is it slow?"
	(aMethod methodClass isMeta and: [(aMethod selector endsWith: #Icon) or: [aMethod selector beginsWith: #icon]]) ifTrue: [
		| result |
		result := aMethod methodClass theNonMetaClass perform: aMethod selector.
		result class == Form ifTrue: [^ result]].

	(aMethod methodClass == Color class and: [(aMethod methodClass organization categoryOfElement: aMethod selector) endsWith: #colors])
		ifTrue: [^ (Form extent: 12@12 depth: 32) fillColor: (Color perform: aMethod selector)].

	^ self class
		iconForClass: aMethod methodClass
		selector: aMethod selector