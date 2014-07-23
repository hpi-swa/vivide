method icons
iconForTestClass: aClassDescription selector: aSelector
	"Answer an icon to be shown for the selector aSymbol in aClassDescription."

	"((aClassDescription inheritsFrom: TestCase) and: [aSelector startsWith: #test])
		ifFalse: [^ nil]."
		
	^ ((aClassDescription lastRun at: #errors) includes: aSelector)
		ifTrue: [UiSilkIcons bulletRedIcon]
		ifFalse: [((aClassDescription lastRun at: #failures) includes: aSelector)
			ifTrue: [UiSilkIcons bulletYellowIcon]
			ifFalse: [((aClassDescription lastRun at: #passed) includes: aSelector)
				ifTrue: [UiSilkIcons bulletGreenIcon]
				ifFalse: [UiSilkIcons bulletWhiteIcon]]]
