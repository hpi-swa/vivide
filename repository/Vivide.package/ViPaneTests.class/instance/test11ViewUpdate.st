as yet unclassified
test11ViewUpdate

	| script |
	script := {
		[#(1 2 3)].
		[:number | #text -> number asString]} asScript.
	sut currentQuery: script.

	script setProperty: #view toValue: ViTextView.
	self forceUpdate.	
	self assert: (sut view isKindOf: ViTextView).
	
	script setProperty: #view toValue: ViTreePlainView.
	self forceUpdate.	
	self assert: (sut view isKindOf: ViTreePlainView).

	script next setProperty: #hAlignment toValue: #right.
	self forceUpdate.
	self assert: #right equals: sut view currentVisibleView columnSpecs first hAlignment.

	script next setProperty: #hAlignment toValue: #center.
	self forceUpdate.
	self assert: #center equals: sut view currentVisibleView columnSpecs first hAlignment.