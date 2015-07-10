actions
copyEditor

	self pane currentQuery ifNotNil: [:script |
		((script deepCopy 
			setProperty: #color toValue: Color random;
			yourself)
				openScriptWith: self objects copy)
			extent: self extent]