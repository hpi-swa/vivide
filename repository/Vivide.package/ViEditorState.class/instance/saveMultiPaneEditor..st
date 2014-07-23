as yet unclassified
saveMultiPaneEditor: editor

	"Add names for storing internal dataflow connections."
	editor panes withIndexDo: [:pane :idx | pane name: idx asString].
	
	"Save self-contained pane state."
	editor panes do: [:pane | pane saveState: self newState].
	
	"Save mediating properties for all panes."
	self properties at: #bounds put: editor bounds.
	#(providersForSelections providersForResults) do: [:symbol |
		self properties at: symbol put: OrderedCollection new.
		editor panes do: [:listener |
			(listener perform: symbol) do: [:providers |
				providers ifNotNil: [:provider | provider knownName ifNotNil: [
					(self properties at: symbol) add: (provider knownName -> listener knownName)]]]]].