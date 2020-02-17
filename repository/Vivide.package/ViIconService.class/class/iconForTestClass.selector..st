method icons
iconForTestClass: aClassDescription selector: aSelector
	"Answer an icon to be shown for the selector aSymbol in aClassDescription."

	"((aClassDescription inheritsFrom: TestCase) and: [aSelector startsWith: #test])
		ifFalse: [^ nil]."
	
	(aClassDescription >> aSelector) isReturnSelf ifTrue: [^ ViIcons icons8Error64pxIcon].
	
	^ ((aClassDescription lastRun at: #errors) includes: aSelector)
		ifTrue: [ViIcons icons8CancelBlack64pxIcon ]
		ifFalse: [((aClassDescription lastRun at: #failures) includes: aSelector)
			ifTrue: [ViIcons icons8Cancel64px1Icon ]
			ifFalse: [((aClassDescription lastRun at: #passed) includes: aSelector)
				ifTrue: [ViIcons icons8Checkmark64pxIcon ]
				ifFalse: [ViIcons icons8QuestionMark64pxIcon ]]]
