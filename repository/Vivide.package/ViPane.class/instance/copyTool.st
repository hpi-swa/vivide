actions
copyTool
	"Duplicate the current script and open it with this pane's object."
	
	^ ((self script deepCopy 
		setProperty: #color toValue: (Color h: ThreadSafeRandom value next * 360.0 s: 0.3 v: 0.95);
		yourself)
			openScriptWith: self objects copy)
				extent: self extent;
				yourself