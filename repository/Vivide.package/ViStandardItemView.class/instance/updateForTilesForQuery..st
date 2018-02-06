updating
updateForTilesForQuery: query

	self currentViews do: [:view |
		self assert: (view isKindOf: UiListView).
		view
			listOrientation: #vertical;
			listSpec: ((UiItemViewColumnSpec newFrom: (#(text icon color morph balloonText editable)
				collect: [:p | p -> ('1_{1}' format: {p}) asSymbol]))
					hAlignment: (query valueOfProperty: #hAlignment ifAbsent: [#left]);
					vAlignment: (query valueOfProperty: #vAlignment ifAbsent: [#top]);
					itemOrientation: (query valueOfProperty: #itemOrientation ifAbsent: [#horizontalMaxHeight]);
					yourself)].