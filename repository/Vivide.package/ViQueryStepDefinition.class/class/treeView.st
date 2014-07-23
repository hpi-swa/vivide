defaults - views
treeView

	^ (ViQueryOrganizer default definitionById: #treeView) ifNil: [
		
	ViQueryViewDefinition new
		id: #treeView;
		sourceCode: '[:query :view :environment | | newView |
			newView := (view valueOfProperty: #viewId) = #tree ifTrue: [view] ifFalse: [
				UiTreeView new in: [:v |
					v setProperty: #viewId toValue: #tree.
					v selectionMode: UiViewExtendedSelection.
					v groupSpec hideIfFirst: false; hideIfEmpty: true.
					v dragDropSpec: (ViUnboxingDragDropSpec new
						dropEnabled: false;
						key: #object;
						dragTransferType: #objects;
						source: self).
			
					self connect: v signal: #selectionChanged: to: environment selector: #onView:selectionChanged: pattern: #(0 1).

					v disconnectDefaultSignals.
					self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
					self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
					self connect: v signal: #hovered: to: environment selector: #triggerPreview:.
					v]].
			
			newView
				removeAllColumns;
				rootIsDecorated: query isHomogeneous not | query hasCycle;
				addColumns: ((1 to: query maxPropertyCount) collect: [:idx |
					(UiItemViewSimpleColumnSpec newFrom: (#(text icon color morph balloonText)
						collect: [:p | p -> (''{1}_{2}'' format: {idx.p}) asSymbol]))
							labelColor: (idx > 1 ifTrue: [Color fromString: #AAAAAA] ifFalse: []);
							yourself]).
						
			query isHomogeneous
				ifFalse: [newView horizontalHeaderVisible: false]
				ifTrue: [
					| wantsHeader |
					wantsHeader := false.
					newView columnSpecs with: query allPropertySteps do: [:col :prop |
						#(headerText headerIcon headerBalloonText) do: [:colProp | col
							perform: (colProp, #:) asSymbol
							with: ((prop valueOfProperty: colProp) ifNotNil: [:val | wantsHeader := true. val])].
						#(hAlignment vAlignment itemOrientation labelColor) do: [:colProp | col
							perform: (colProp, #:) asSymbol
							with: (prop valueOfProperty: colProp)]].
					newView horizontalHeaderVisible: wantsHeader].
			
			newView]';
		register;
		yourself]