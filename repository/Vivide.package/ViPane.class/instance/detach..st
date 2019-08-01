connections and tuples
detach: connection

	self connections remove: connection.
	forceUpdate := #never.

	self flag: #metaScript.
	self layoutChanged.