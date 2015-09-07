initialization
setUp: query

	| specs |
	specs := (1 to: query maxPropertyCount) collect: [:idx |
		ViButtonSpec newFrom: (#(text icon color balloonText clicked enabled)
			collect: [:p | p -> ('{1}_{2}' format: {idx.p}) asSymbol])
			].
	self specs: specs.