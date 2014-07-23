accessing
nextMethodContainerAfter: anotherEditor

	| editors index container |
	editors := self editors.
	index := (editors indexOf: anotherEditor) + 1.
	
	^ ((index <= editors size
		and: [(container := (editors at: index)) isKindOf: ViObjectListEditor])
		and: [container currentPageIndex = 1 "extensional list"])
		ifTrue: [container]
		ifFalse: [nil]