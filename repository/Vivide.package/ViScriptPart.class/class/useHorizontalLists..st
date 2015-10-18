preferences
useHorizontalLists: aBoolean

	self useHorizontalLists = aBoolean ifTrue: [^ self].
	UseHorizontalLists := aBoolean.
	ViPane allInstancesDo: [:pane | pane triggerUpdateView].