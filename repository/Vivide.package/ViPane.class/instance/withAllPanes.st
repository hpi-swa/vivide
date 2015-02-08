as yet unclassified
withAllPanes

	^ Array streamContents: [:strm |
		self withAllPanesDo: [:pane | strm nextPut: pane]]  