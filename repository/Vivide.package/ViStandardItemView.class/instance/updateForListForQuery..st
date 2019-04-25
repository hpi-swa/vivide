updating
updateForListForQuery: query

	self currentViews do: [:view |
		self assert: (view isKindOf: UiListView).
		view
			listSpec: ((UiItemViewColumnSpec newFrom: (#(text icon color morph balloonText editable checked checkable selectable)
				collect: [:p | p -> ('1_{1}' format: {p}) asSymbol]))
					yourself).
					
		(query allExtractionSteps ifEmpty: [{[:fake | #object -> fake] asScript}]) first in: [:prop |
			#(hAlignment vAlignment itemOrientation) do: [:colProp |
				view listSpec
					perform: colProp asSymbol asMutator
					with: (prop valueOfProperty: colProp)]]].