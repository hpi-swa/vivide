connections and tuples
attach: connection

	self connections add: connection.
	forceUpdate := self hasLocalCycle ifTrue: [#never] ifFalse: [#always].