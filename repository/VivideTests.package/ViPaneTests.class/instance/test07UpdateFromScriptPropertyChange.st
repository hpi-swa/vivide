tests - updates and script selection
test07UpdateFromScriptPropertyChange

	| pane script |
	pane := ViPane new.
	script := self addScript: {
		[#(1 2 3)].
		[:number | #text -> number asString]}. "Needed for test-local notifiers."
	pane script: script.
	
	script setProperty: #view toValue: ViTextView.
	self forceGuiUpdate.	
	self assert: (pane view isKindOf: ViTextView).
	
	script setProperty: #view toValue: ViTreePlainView.
	self forceGuiUpdate.	
	self assert: (pane view isKindOf: ViTreePlainView).

	script next setProperty: #hAlignment toValue: #right.
	self forceGuiUpdate.
	self assert: #right equals: pane view currentVisibleView columnSpecs first hAlignment.

	script next setProperty: #hAlignment toValue: #center.
	self forceGuiUpdate.
	self assert: #center equals: pane view currentVisibleView columnSpecs first hAlignment.