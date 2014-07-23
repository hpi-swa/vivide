memento - data
acceptChanges

	(self view respondsTo: #acceptChanges)
		ifTrue: [self view acceptChanges].