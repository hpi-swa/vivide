as yet unclassified
createSpecs: props

	| newCols |	
	
	newCols := props withIndexCollect: [:step :idx|
		((self specClassForStep: props first) newFrom: (#(text icon color morph balloonText checkable checked editable)
			collect: [:p | p -> ('{1}_{2}' format: {idx.p}) asSymbol]))
				"labelColor: (idx > 1 ifTrue: [Color fromString: #AAAAAA] ifFalse: [])				"
				yourself].
	
	newCols with: props do: [:col :prop |
	"		newResizeModes add: ((prop valueOfProperty: #resizeMode) ifNil: [#shrinkWrap])."
			#(headerText headerIcon headerBalloonText) do: [:colProp | col
				perform: (colProp, #:) asSymbol
				with: (prop valueOfProperty: colProp)].
			#(hAlignment vAlignment itemOrientation "labelColor") do: [:colProp | col
				perform: (colProp, #:) asSymbol
				with: (prop valueOfProperty: colProp)]].	
			
	^ newCols