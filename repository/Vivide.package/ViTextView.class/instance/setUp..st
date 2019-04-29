initialization
setUp: query

	| newSpecs |						
	newSpecs := (1 to: query maxPropertyCount) collect: [:idx |
		(ViTextViewSpec newFrom: (#(text icon color morph balloonText editable)
			collect: [:p | p -> ('{1}_{2}' format: {idx.p}) asSymbol]))
				labelColor: (idx > 1 ifTrue: [Color fromString: #AAAAAA] ifFalse: []);
				yourself].
	
	query isHomogeneousRelaxed ifTrue: [ 
		newSpecs with: (query nextExtractionSteps ifEmpty: [{[:fake | #object -> fake] asScript}]) do: [:col :prop |
			#(hAlignment vAlignment itemOrientation labelColor) do: [:colProp | col
				perform: colProp asSymbol asMutator
				with: (prop valueOfProperty: colProp)]]].
	
	self specs: newSpecs.