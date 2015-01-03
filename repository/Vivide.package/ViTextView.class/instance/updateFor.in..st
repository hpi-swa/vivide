initialization
updateFor: query in: anEnvironment

	| newSpecs |						
	newSpecs := (1 to: query maxPropertyCount) collect: [:idx |
		(ViTextViewSpec newFrom: (#(text icon color morph balloonText editable)
			collect: [:p | p -> ('{1}_{2}' format: {idx.p}) asSymbol]))
				labelColor: (idx > 1 ifTrue: [Color fromString: #AAAAAA] ifFalse: []);
				yourself].
	
	query isHomogeneous ifTrue: [ 
		newSpecs with: query allPropertySteps do: [:col :prop |
			#(hAlignment vAlignment itemOrientation labelColor) do: [:colProp | col
				perform: (colProp, #:) asSymbol
				with: (prop valueOfProperty: colProp)]]].
	
	self specs: newSpecs.