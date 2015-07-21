actions
copyEditor

	self pane currentQuery ifNil: [^ self].
	
	^ ((self pane currentQuery deepCopy 
		setProperty: #color toValue: Color random;
		yourself)
			openScriptWith: self objects copy) editor in: [:editor |
				editor extentInOwner: self extent.
				editor]