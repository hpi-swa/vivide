as yet unclassified
addColumnFor: node

	| column |
	column := UiListView new.
	column
		vResizing: #spaceFill;
		hResizing: #rigid.
	column selectionMode: UiViewSingleSelection.
	column listSpec: (UiItemViewColumnSpec newFrom: (
		#(text icon color morph balloonText editable checked checkable)
			collect: [:p | p -> p])).
	
	column model: node.
	self connect: column signal: #selectionChanged: toSelector: #updateColumnsIn:for: pattern: #(0 1) .
	
	self widget addMorphBack: column.