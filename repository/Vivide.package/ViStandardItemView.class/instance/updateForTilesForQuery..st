updating
updateForTilesForQuery: query

	self currentViews do: [:view |
		self assert: (view isKindOf: UiListView).
		view
			listOrientation: #vertical;
			listSpec: ((UiItemViewColumnSpec newFrom: (#(text icon color morph balloonText editable)
				collect: [:p | p -> ('1_{1}' format: {p}) asSymbol]))
					hAlignment: #left;
					vAlignment: #top;
					itemOrientation: #horizontalMaxHeight;
					yourself)].