memento - data
acceptLabel

	self ui labelEdit hasUnacceptedChanges
		ifTrue: [^ self ui labelEdit acceptChanges].
	self step label: self currentLabel.