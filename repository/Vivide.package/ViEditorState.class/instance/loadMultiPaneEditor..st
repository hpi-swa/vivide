loading - editors
loadMultiPaneEditor: editor

	editor panes: (self states collect: [:state |
		ViPane new loadState: state]).
	editor bounds: (self properties at: #bounds ifAbsent: [0@0 corner: 300@300]).

	(self properties at: #connections ifAbsent: [#()]) do: [:spec |
		((Smalltalk at: spec key)
			from: (editor panes detect: [:pane | pane knownName = spec value key])
			to: (editor panes detect: [:pane | pane knownName = spec value value]))
				attach].
	
	self flag: #removeLater. "mt: The following code is for old editor states only."
	(self properties includesKey: #providersForSelections)
		ifFalse: [^ self].
	(self properties at: #providersForSelections) do: [:sourceToTarget |
		(ViSelectionConnection
			from: (editor panes detect: [:pane | pane knownName = sourceToTarget key])
			to: (editor panes detect: [:pane | pane knownName = sourceToTarget value]))
				attach].
	(self properties at: #providersForResults) do: [:sourceToTarget |
		(ViResultsConnection
			from: (editor panes detect: [:pane | pane knownName = sourceToTarget key])
			to: (editor panes detect: [:pane | pane knownName = sourceToTarget value]))
				attach].
			
