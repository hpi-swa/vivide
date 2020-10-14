as yet unclassified
hasDropShadow: aBoolean

	| w |
	^ (w := self decoration window) visible
		ifTrue: [w hasDropShadow: aBoolean]
		ifFalse: [super hasDropShadow: aBoolean]