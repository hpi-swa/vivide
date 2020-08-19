accessing
panes

	| result |
	result := OrderedCollection new.
	self toolWindows do: [:wnd |
		(wnd editor isKindOf: ViSinglePaneEditor)
			ifTrue: [result addAll: wnd editor pane withAllPanes]].
	result addAll: (self world submorphsSatisfying: [:m |
		m isKindOf: ViPane]).
	^ result