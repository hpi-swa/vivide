accessing
visibleNodes
	"Return a list of all visible nodes, that is, the nodes that have been used from the model so far."

	^ self model ifNil: [#()] ifNotNil: [:model | model childrenAllGroups]