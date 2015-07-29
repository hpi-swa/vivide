as yet unclassified
detach

	self source ifNotNil: [:pane |
		(pane connections includes: self)
			ifTrue: [
				pane connections remove: self.
				
				self flag: #metaScript.
				pane layoutChanged]].
	self target ifNotNil: [:pane |
		(pane connections includes: self)
			ifTrue: [
				pane connections remove: self.
				
				self flag: #metaScript.
				pane layoutChanged]].