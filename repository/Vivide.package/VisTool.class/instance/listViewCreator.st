ui building - views
listViewCreator

	^ [:query :view :env | UiListView new in: [:v |
		v
			listSpec: (UiItemViewSimpleColumnSpec newFrom: {#text -> #'1_text'. #icon -> #'1_icon'});
			selectionMode: UiViewExtendedSelection.
		self connect: v signal: #selectionChanged: to: env selector: #onSelectionChanged:.
		v]]