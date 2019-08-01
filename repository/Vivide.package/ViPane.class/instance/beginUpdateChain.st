updating - kernel
beginUpdateChain
	"By using ActiveEvent, we can support cycle detection triggered from clicks in views or just do-its on panes, e.g. 'pane objects: #(1 2 3)'."
	
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