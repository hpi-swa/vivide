initialization
viewSpecs

	^ Dictionary newFrom: {
		#tree -> UiTreeView.
		#list -> UiListView.
		#table -> UiTableView}