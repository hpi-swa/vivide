defaults - views
tileView

	^ (ViQueryOrganizer default definitionById: #tileView) ifNil: [
		
	ViQueryViewDefinition new
		id: #tileView;
		sourceCode: '[:query :view :environment | | newView |
			newView := (view valueOfProperty: #viewId) = #tileView ifTrue: [view] ifFalse: [
				UiListView new in: [:v |
					v setProperty: #viewId toValue: #tileView.
					v selectionMode: UiViewExtendedSelection.
					v listOrientation: #vertical.
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
				listSpec: ((UiItemViewColumnSpec newFrom: (#(text icon color morph balloonText)
					collect: [:p | p -> (''1_{1}'' format: {p}) asSymbol]))
						hAlignment: #left;
						vAlignment: #top;
						itemOrientation: #horizontalMaxHeight;
						yourself).
			newView]';
		register;
		yourself]