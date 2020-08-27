accessing
nodes: someNodes

	| newPanes paneIndex currentPane |
	newPanes := OrderedCollection new.
	paneIndex := 1.
	
	someNodes do: [:node |
		((self panes at: paneIndex ifAbsent: [])
			ifNil: [false] ifNotNil: [:pane |
				self isPane: (currentPane := pane) forNode: node])
			ifTrue: [
				paneIndex := paneIndex + 1.
				newPanes add: currentPane]
			ifFalse: [newPanes add: (self createPane: node)]].
	
	self panes: newPanes.