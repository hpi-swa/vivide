as yet unclassified
selectionMap

	self model ifNil: [^ selectionMap].
	
	selectionMap size ~= self model childCount
		ifTrue: [
			selectionMap := Array new: self model childCount withAll: false.
			self selectionChanged: {}].
	^ selectionMap