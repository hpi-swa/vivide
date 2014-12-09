accessing
id: symbol

	symbol = id ifTrue: [^ self].

	id := symbol.

	self flag: #metaScript.
	self layoutChanged.