updating - kernel
beginUpdateChain

	ActiveEvent ifNotNil: [:evt |
		"Mouse-over events spoil things. Ignore them."
		"self flag: #remove."
		"evt type == #mouseOver ifTrue: [^ self]."
		lastUpdateId == evt ifTrue: [^ self].
				
		self hasLocalCycle
			ifTrue: [forceUpdate := #once]
			ifFalse: [forceUpdate := #always].

		"Set the update identifier to transfer along all connected panes."
		lastUpdateId := evt].