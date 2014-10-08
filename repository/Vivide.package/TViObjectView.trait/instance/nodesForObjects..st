support
nodesForObjects: someObjects
	"Scan the model for corresponding nodes."
	
	| nodes |
	nodes := OrderedCollection new.
	self model ifNotNil: [:m |
		m groups do: [:group | (1 to: (m childCountInGroup: group)) do: [:idx |
			(m childAt: idx inGroup: group) in: [:node |
				(someObjects includes: (node at: #object)) ifTrue: [
					nodes add: node]]]]].
	^ nodes