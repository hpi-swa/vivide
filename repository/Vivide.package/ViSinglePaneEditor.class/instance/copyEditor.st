actions
copyEditor

	self pane currentQuery ifNotNil: [:script |
		(script deepCopy openScriptWith: self objects copy)
			extent: self extent]