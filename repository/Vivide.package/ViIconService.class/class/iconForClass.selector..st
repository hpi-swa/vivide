method icons
iconForClass: aClassDescription selector: aSelector
	"Answer an icon to be shown for the selector aSymbol in aClassDescription."

	((aClassDescription inheritsFrom: TestCase) and: [aSelector beginsWith: #test])
		ifTrue: [^ self iconForTestClass: aClassDescription selector: aSelector].

	aClassDescription methodDictionary at: aSelector ifPresent: [ :method |
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
				ifTrue: [^ UiFugueIcons controlStopSquareSmallIcon] ] ].
		
		
		
	^ (self isOverride: aSelector in: aClassDescription)
		ifTrue: [
			(self isOverridden: aSelector in: aClassDescription)
				ifTrue: [ self arrowUpDownIcon ]
				ifFalse: [ UiFugueIcons control090SmallIcon ] ]
		ifFalse: [
			(self isOverridden: aSelector in: aClassDescription)
				ifTrue: [ UiFugueIcons control270SmallIcon ]
				ifFalse: [ self blankIcon ] ]