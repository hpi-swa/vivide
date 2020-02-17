connections and tuples
detach: connection

	self connections remove: connection.
	forceUpdate := self hasLocalCycle ifTrue: [#never] ifFalse: [#always].
	
	self flag: #metaScript.
	self layoutChanged.