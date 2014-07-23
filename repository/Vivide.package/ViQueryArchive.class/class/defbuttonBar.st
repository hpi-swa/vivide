definitions
defbuttonBar
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 June 2014 10:01:30 am'); yourself)); add: (#id->#buttonBar); add: (#block->[:query :view :env | ViButtonBarView new in: [:v |
			| specs |
			specs := (1 to: query maxPropertyCount) collect: [:idx |
				ViButtonSpec newFrom: (#(text icon color balloonText clicked enabled)
					collect: [:p | p -> ('{1}_{2}' format: {idx.p}) asSymbol])
					].
			v specs: specs.
			"self connect: v signal: #selectionChanged: to: env selector: #onSelectionChanged:."
			v]]); add: (#sourceCode->'[:query :view :env | ViButtonBarView new in: [:v |
			| specs |
			specs := (1 to: query maxPropertyCount) collect: [:idx |
				ViButtonSpec newFrom: (#(text icon color balloonText clicked enabled)
					collect: [:p | p -> (''{1}_{2}'' format: {idx.p}) asSymbol])
					].
			v specs: specs.
			"self connect: v signal: #selectionChanged: to: env selector: #onSelectionChanged:."
			v]]'); yourself)