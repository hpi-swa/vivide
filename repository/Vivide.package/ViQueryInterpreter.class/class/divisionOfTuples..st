collection handling
divisionOfTuples: someTuples
	"Merge same objects. Undo operation for #productOfCollections."
	
	| result |
	result := Array new: someTuples first size.
	1 to: result size do: [:i | result at: i put: OrderedCollection new].
	someTuples do: [:tuple | tuple withIndexDo: [:obj :idx |
		obj ifNotNil: [
			((result at: idx) identityIncludes: obj)
				ifFalse: [(result at: idx) add: obj]
			
			]]].
	^ result collect: [:objects | objects asArray]