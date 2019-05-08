as yet unclassified
allNodesInto: result

	self flag: #performance.
	self flag: #magicNumber.
	"mt: Cycle-detection is tricky at this level. We can have two nodes that look the same but do not indicate an infinite tree. So, for now, be careful after level 0, which means duplicates in list models are fine."	
	self children valuesDo: [:nodes |
		nodes do: [:node |
			(self depth > 0 and: [result includes: node])
				ifTrue: [^ result "avoid cycles"]
				ifFalse: [result add: node]]].
	
	self children valuesDo: [:nodes |
		nodes do: [:node |
			node allNodesInto: result]].
	
	^ result