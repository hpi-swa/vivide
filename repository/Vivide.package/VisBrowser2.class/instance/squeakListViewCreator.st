as yet unclassified
squeakListViewCreator

	^ [:query :view :pane | ViSqueakListView new in: [:v |
		self connect: v signal: #selectionChanged: to: pane selector: #onSelectionChanged:.
		v]]