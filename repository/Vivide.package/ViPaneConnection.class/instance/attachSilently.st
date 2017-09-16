as yet unclassified
attachSilently
	"Do not notify."

	self isValid ifFalse: [^ false "Not allowed."].

	self source in: [:pane |		
		((pane connections includes: self) and: [self mustBeUnique])
			ifTrue: [^ false]
			ifFalse: [
				self flag: #metaScript.
				pane layoutChanged.
				
				pane connections add: self]].
	self target in: [:pane |
		((pane connections includes: self) and: [self mustBeUnique])
			ifTrue: [^ false]
			ifFalse: [
				self flag: #metaScript.
				pane layoutChanged.
					
				pane connections add: self]].
	^ true