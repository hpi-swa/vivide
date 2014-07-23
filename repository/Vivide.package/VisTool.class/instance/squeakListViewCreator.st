as yet unclassified
squeakListViewCreator

	^ [:query :view :env | ViSqueakListView new in: [:v |
		self connect: v signal: #selectionChanged: to: env selector: #onSelectionChanged:.
		v]]