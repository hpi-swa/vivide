definitions
deftextView
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 December 2013 4:09:38 pm'); yourself)); add: (#id->#textView); add: (#block->[:query :view :environment | | newView newSpecs |
			newView := (view valueOfProperty: #viewId) = #text
				ifTrue: [view]
				ifFalse: [	ViTextView new
					setProperty: #viewId toValue: #text;
					yourself].
						
			newSpecs := (1 to: query maxPropertyCount) collect: [:idx |
				(ViTextViewSpec newFrom: (#(text icon color morph balloonText)
					collect: [:p | p -> ('{1}_{2}' format: {idx.p}) asSymbol]))
						labelColor: (idx > 1 ifTrue: [Color fromString: #AAAAAA] ifFalse: []);
						yourself].
			
			query isHomogeneous ifTrue: [ 
				newSpecs with: query allPropertySteps do: [:col :prop |
					#(hAlignment vAlignment itemOrientation labelColor) do: [:colProp | col
						perform: (colProp, #:) asSymbol
						with: (prop valueOfProperty: colProp)]]].
			
			newView specs: newSpecs.
				
			newView]); add: (#sourceCode->'[:query :view :environment | | newView newSpecs |
			newView := (view valueOfProperty: #viewId) = #text
				ifTrue: [view]
				ifFalse: [	ViTextView new
					setProperty: #viewId toValue: #text;
					yourself].
						
			newSpecs := (1 to: query maxPropertyCount) collect: [:idx |
				(ViTextViewSpec newFrom: (#(text icon color morph balloonText)
					collect: [:p | p -> (''{1}_{2}'' format: {idx.p}) asSymbol]))
						labelColor: (idx > 1 ifTrue: [Color fromString: #AAAAAA] ifFalse: []);
						yourself].
			
			query isHomogeneous ifTrue: [ 
				newSpecs with: query allPropertySteps do: [:col :prop |
					#(hAlignment vAlignment itemOrientation labelColor) do: [:colProp | col
						perform: (colProp, #:) asSymbol
						with: (prop valueOfProperty: colProp)]]].
			
			newView specs: newSpecs.
				
			newView]'); yourself)