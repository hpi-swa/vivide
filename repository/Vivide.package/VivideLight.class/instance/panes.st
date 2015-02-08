as yet unclassified
panes

	| result |
	result := OrderedCollection new.
	self toolWindows do: [:wnd |
		(wnd editor isKindOf: ViSinglePaneEditor)
			ifTrue: [result addAll: wnd editor pane withAllPanes]].
	^ result