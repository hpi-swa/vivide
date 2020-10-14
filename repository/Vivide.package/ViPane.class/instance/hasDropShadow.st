as yet unclassified
hasDropShadow

	| w |
	^ (w := self decoration window) visible
		ifTrue: [w hasDropShadow]
		ifFalse: [super hasDropShadow]