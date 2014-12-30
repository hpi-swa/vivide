as yet unclassified
detach

	self source ifNotNil: [:pane |
		(pane connections includes: self)
			ifTrue: [
				self flag: #metaScript.
				pane layoutChanged.

				pane connections remove: self]].
	self target ifNotNil: [:pane |
		(pane connections includes: self)
			ifTrue: [
				self flag: #metaScript.
				pane layoutChanged.

				pane connections remove: self]].