as yet unclassified
attachSilently
	"Do not notify."

	(self isValid not or: [self target connections
		anySatisfy: [:connection | connection source == self source]])
			ifTrue: [^ false "Not allowed."].

	self source in: [:pane |		
		(pane connections includes: self)
				ifFalse: [
					self flag: #metaScript.
					pane layoutChanged.

					pane connections add: self]].
	self target in: [:pane |
		(pane connections includes: self)
				ifFalse: [
					self flag: #metaScript.
					pane layoutChanged.
					
					pane connections add: self]].
	^ true