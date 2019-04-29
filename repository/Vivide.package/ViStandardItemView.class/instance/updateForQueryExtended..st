updating
updateForQueryExtended: query
	"Use another column spec for more elaborate item rendering."

	| newCols newResizeModes newHorizontalHeaderVisible commandsVisible |
	self
		setProperty: #expandAll
		toValue: (query valueOfProperty: #expandAll ifAbsent: [false]).

	newCols := (1 to: query maxPropertyCount) collect: [:idx |
					(UiItemViewColumnSpec newFrom: (#(icon color morph balloonText checkable checked editable selectable)
						collect: [:p | p -> ('{1}_{2}' format: {idx.p}) asSymbol]))
							"Provide print-string default if text property is missing."
							textSelector: #yourself;
							textConverter: [:node | 
								| allBold text |
								allBold := node at: ('{1}_bold' format: {idx}) asSymbol ifAbsent: [false].
								text := (node at: ('{1}_text' format: {idx}) asSymbol ifAbsent: [node object printString]).
								allBold ifFalse: [text] ifTrue: [text asText addAttribute: TextEmphasis bold; yourself]
								];
							overrideStandardListFont: true].
	newResizeModes := OrderedCollection new.
	commandsVisible := true.
	
	query isHomogeneousRelaxed
		ifFalse: [newHorizontalHeaderVisible := false]
		ifTrue: [ | wantsHeader |
			wantsHeader := false.
			newCols with: (query nextExtractionSteps ifEmpty: [{[:fake | #object -> fake] asScript}])  do: [:col :prop |
				commandsVisible := commandsVisible and: [prop valueOfProperty: #showCommands ifAbsent: [true]].
				newResizeModes add: (prop valueOfProperty: #resizeMode ifAbsent: [#shrinkWrap]).
				#(headerText headerIcon headerBalloonText) do: [:colProp | col
					perform: colProp asSymbol asMutator
					with: ((prop valueOfProperty: colProp) ifNotNil: [:val | wantsHeader := true. val])].
				#(hAlignment vAlignment itemOrientation) do: [:colProp | col
					perform: colProp asSymbol asMutator
					with: (prop valueOfProperty: colProp)].
			
				(prop valueOfProperty: #selectionMode) ifNotNil: [:sm |
					self currentViews do: [:view | view selectionMode: sm]]].
			newHorizontalHeaderVisible := wantsHeader].

	commandsVisible
		ifTrue: [self showCommandsBar]
		ifFalse: [self hideCommandsBar].

	"Update visible changes such as #labelColor, #itemOrientation..."
	self currentViews do: [:view |
		view
			horizontalHeaderVisible: newHorizontalHeaderVisible;
			removeAllColumns;
			rootIsDecorated: (query isHomogeneous not or: [query isRecursive]);
			addColumns: newCols.
	
		newResizeModes withIndexDo: [:resizeMode :idx |
			view setResizeModeForColumn: idx to: resizeMode]].