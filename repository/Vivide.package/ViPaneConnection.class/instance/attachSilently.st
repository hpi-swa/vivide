as yet unclassified
attachSilently
	"Do not notify."

	(self isValid not or: [self target connections
		anySatisfy: [:connection | connection source == self source]])
			ifTrue: [^ false "Not allowed."].

	self source ifNotNil: [:pane |		
		(pane connections includes: self)
				ifFalse: [
					self flag: #metaScript.
					pane layoutChanged.

					pane connections add: self]].
	self target ifNotNil: [:pane |
		(pane connections includes: self)
				ifFalse: [
					self flag: #metaScript.
					pane layoutChanged.
					
					pane connections add: self]].
	^ true