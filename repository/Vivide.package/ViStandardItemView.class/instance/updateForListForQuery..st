updating
updateForListForQuery: query

	self currentViews do: [:view |
		self assert: (view isKindOf: UiListView).
		view
			listSpec: ((UiItemViewColumnSpec newFrom: (#(text icon color morph balloonText editable checked checkable)
				collect: [:p | p -> ('1_{1}' format: {p}) asSymbol]))
					yourself)].