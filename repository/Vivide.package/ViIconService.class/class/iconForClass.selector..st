method icons
iconForClass: aClassDescription selector: aSelector
	"Answer an icon to be shown for the selector aSymbol in aClassDescription."

	| method |
	((aClassDescription inheritsFrom: TestCase) and: [aSelector beginsWith: #test])
		ifTrue: [^ self iconForTestClass: aClassDescription selector: aSelector].

	method := aClassDescription methodDictionary at: aSelector ifAbsent: [^ self blankIcon].
	
	"Indicate methods with primitive sends above all."
	(method primitive between: 1 and: 255) ifTrue: [^ ViIcons icons8LowPriority64pxIcon ].

	method literalsDo: [ :literal |
		(literal == #halt or: [ literal == #halt: or: [ literal == #haltIfNil or: [ literal == #haltIf: or: [ literal == #haltOnce or: [ literal == #haltOnce: or: [ literal == #haltOnCount: or: [ literal == #halt:onCount: ] ] ] ] ] ] ])
			ifTrue: [^ ViIcons redFlagIcon].
		(literal == #flag: or: [ literal == #needsWork or: [ literal == #notYetImplemented ] ])
			ifTrue: [^ ViIcons blueFlagIcon].

		literal == #emit
			ifTrue: [^ UiSilkIcons bulletFeedIcon].
		literal == #emitAlways
			ifTrue: [^ UiSilkIcons bulletFeedIcon].
		literal == #emitInOwnerChain
			ifTrue: [^ self signalOwnerChainIcon].
		(literal == #shouldBeImplemented or: [literal == #subclassResponsibility])
			ifTrue: [^ ViIcons icons8UncheckedCheckbox64pxIcon ].
		literal == #shouldNotImplement
			ifTrue: [^ ViIcons icons8NoEntry64pxIcon ].
			
		(aClassDescription isMeta and: [(literal == #new or: [literal == #basicNew]) or: [literal == #new:]])
			ifTrue: [^ ViIcons icons8Asterisk64pxIcon ].
				
	 ]. 
		
	(self isOverride: aSelector in: aClassDescription)
		ifTrue: [
			^ (self isOverridden: aSelector in: aClassDescription)
				ifTrue: [ ViIcons icons8UpDown64pxIcon  ]
				ifFalse: [ ViIcons icons8SortUp64pxIcon ] ].
	(self isOverridden: aSelector in: aClassDescription)
		ifTrue: [ ^ ViIcons icons8SortDown64pxIcon ].

	"Indicate quick returns as low priority."
	method isQuick ifTrue: [^ ViIcons icons8ReplyArrow64pxIcon ].
		
	^ self blankIcon