updating
updateForQuery: query

	| newCols newResizeModes newHorizontalHeaderVisible commandsVisible |
	self
		setProperty: #expandAll
		toValue: (query valueOfProperty: #expandAll ifAbsent: [false]).
	
	self flag: #performance. "mt: Avoid unnecessary updates, e.g., if no property step changed."
	
	newCols := (1 to: query maxPropertyCount) collect: [:idx |
		(UiItemViewSimpleColumnSpec newFrom: (#(icon color morph balloonText editable selectable)
			collect: [:p | p -> ('{1}_{2}' format: {idx.p}) asSymbol]))
				"Provide print-string default if text property is missing."
				textSelector: #yourself;
				textConverter: [:node | (node at: ('{1}_text' format: {idx}) asSymbol ifAbsent: [node object printString])];
				labelColor: (idx > 1 ifTrue: [Color fromString: #AAAAAA] ifFalse: []);
				yourself].
	newResizeModes := OrderedCollection new.
	commandsVisible := true.
	
	query isHomogeneous
		ifFalse: [newHorizontalHeaderVisible := false]
		ifTrue: [ | wantsHeader |
			wantsHeader := false.
			newCols with: (query allExtractionSteps ifEmpty: [{[:fake | #object -> fake] asScript}]) 
			do: [:col :prop |
				commandsVisible := commandsVisible and: [prop valueOfProperty: #showCommands ifAbsent: [true]].
				newResizeModes add: (prop valueOfProperty: #resizeMode ifAbsent: [#shrinkWrap]).
				#(headerText headerIcon headerBalloonText) do: [:colProp | col
					perform: colProp asSymbol asMutator
					with: ((prop valueOfProperty: colProp) ifNotNil: [:val | wantsHeader := true. val])].
				#(hAlignment vAlignment itemOrientation labelColor) do: [:colProp | col
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