as yet unclassified
attach

	(self isValid not or: [self target connections
		anySatisfy: [:connection | connection source == self source]])
			ifTrue: [^ self "Not allowed."].

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
	
	self notify.
	self checkTargetScript.