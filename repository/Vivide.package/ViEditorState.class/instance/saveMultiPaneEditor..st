saving - editors
saveMultiPaneEditor: editor

	"Add names for storing internal dataflow connections."
	editor panes withIndexDo: [:pane :idx | pane name: idx asString].
	
	"Save self-contained pane state."
	editor panes do: [:pane | pane saveState: self newState].
	
	"Save mediating properties for all panes."
	self properties at: #bounds put: editor bounds.

	self properties at: #connections put: OrderedCollection new.
	editor panes do: [:p | p connections select: [:c | c isValid] thenDo: [:c |
		(self properties at: #connections) add: c class name -> (c source knownName -> c target knownName)]].
	self properties at: #connections put: (self properties at: #connections) asSet asOrderedCollection.