loading - editors
loadMultiPaneEditor: editor

	editor panes: (self states collect: [:state |
		ViPane new loadState: state]).
	editor bounds: (self properties at: #bounds ifAbsent: [0@0 corner: 300@300]).

	(self properties at: #providersForSelections) do: [:sourceToTarget |
		(editor panes detect: [:pane | pane knownName = sourceToTarget value])
			listenForSelectionsFrom: (editor panes detect: [:pane | pane knownName = sourceToTarget key])].
	(self properties at: #providersForResults) do: [:sourceToTarget |
		(editor panes detect: [:pane | pane knownName = sourceToTarget value])
			listenForResultsFrom: (editor panes detect: [:pane | pane knownName = sourceToTarget key])].