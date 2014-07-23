as yet unclassified
doMethodReferenceReally: aMethodReference

	self flag: #performance. "mt: Is it slow?"
	(aMethodReference classIsMeta and: [aMethodReference selector endsWith: #Icon]) ifTrue: [
		| result |
		result := aMethodReference actualClass theNonMetaClass perform: aMethodReference selector.
		result class == Form ifTrue: [^ result]].

	^ self class
		iconForClass: aMethodReference actualClass
		selector: aMethodReference selector