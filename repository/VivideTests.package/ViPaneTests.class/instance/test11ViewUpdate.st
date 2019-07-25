tests
test11ViewUpdate

	| script |
	script := {
		[#(1 2 3)].
		[:number | #text -> number asString]} asScript.
	sut script: script.

	script setProperty: #view toValue: ViTextView.
	self forceGuiUpdate.	
	self assert: (sut view isKindOf: ViTextView).
	
	script setProperty: #view toValue: ViTreePlainView.
	self forceGuiUpdate.	
	self assert: (sut view isKindOf: ViTreePlainView).

	script next setProperty: #hAlignment toValue: #right.
	self forceGuiUpdate.
	self assert: #right equals: sut view currentVisibleView columnSpecs first hAlignment.

	script next setProperty: #hAlignment toValue: #center.
	self forceGuiUpdate.
	self assert: #center equals: sut view currentVisibleView columnSpecs first hAlignment.