as yet unclassified
selectionMap

	self model ifNil: [^ selectionMap].
	
	"Update the map size according to the current model."
	selectionMap size ~= self model childCount
		ifTrue: [selectionMap := Array new: self model childCount withAll: false].
		
	^ selectionMap