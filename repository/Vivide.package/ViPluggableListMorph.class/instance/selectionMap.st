as yet unclassified
selectionMap

	selectionMap size ~= self model childCount
		ifTrue: [
			selectionMap := Array new: self model childCount withAll: false.
			self selectionChanged: {}].
	^ selectionMap