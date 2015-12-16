actions
copyEditor

	self pane currentQuery ifNil: [^ self].
	
	^ ((self pane currentQuery deepCopy 
		setProperty: #color toValue: (Color h: ThreadSafeRandom value next * 360.0 s: 0.3 v: 0.95);
		yourself)
			openScriptWith: self objects copy) editor in: [:editor |
				editor extentInOwner: self extent.
				editor]