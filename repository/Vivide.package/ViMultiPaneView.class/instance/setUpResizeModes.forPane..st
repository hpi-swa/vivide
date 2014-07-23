as yet unclassified
setUpResizeModes: steps forPane: itemView

	steps withIndexDo: [:prop :idx |
		itemView 
			setResizeModeForColumn: idx
			to: ((prop valueOfProperty: #resizeMode) ifNil: [#shrinkWrap])].