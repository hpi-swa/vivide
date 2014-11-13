as yet unclassified
isPropertyExtractionChanged

	| d1 d2 |
	self isPropertiesChanged ifFalse: [^ false].
	self flag: #refactor. "mt: Unsound with other API in this class."
	
	d1 := Dictionary newFrom: self oldItem second.
	d2 := Dictionary newFrom: self oldItem third.

	^ (d1 at: #isProperty) xor: (d2 at: #isProperty)