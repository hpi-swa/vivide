as yet unclassified
buttonBarCreator

	^ [:query :view :env | ViButtonBarView new in: [:v |
			| specs |
			specs := (1 to: query maxPropertyCount) collect: [:idx |
				ViButtonSpec newFrom: (#(text icon color balloonText clicked enabled)
					collect: [:p | p -> ('{1}_{2}' format: {idx.p}) asSymbol])
					].
			v specs: specs.
			"self connect: v signal: #selectionChanged: to: env selector: #onSelectionChanged:."
			v]]