actions
copyEditor

	self pane script ifNil: [^ self].
	
	^ ((self pane script deepCopy 
		setProperty: #color toValue: (Color h: ThreadSafeRandom value next * 360.0 s: 0.3 v: 0.95);
		yourself)
			openScriptWith: self objects copy) editor in: [:editor |
				editor extentInOwner: self extent.
				self flag: #hacky.
				editor owner fullBounds.
				editor]