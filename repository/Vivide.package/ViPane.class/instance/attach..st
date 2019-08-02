connections and tuples
attach: connection

	self flag: #metaScript.
	self layoutChanged.

	self connections add: connection.
	forceUpdate := self hasLocalCycle ifTrue: [#never] ifFalse: [#always].