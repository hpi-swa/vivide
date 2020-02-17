collection handling
collapseTuples: someTuples
	"Merge (a, b, c) and (a, d, e) to (a, ((b, c), (d, e)))"
	
	| tmp |
	tmp := OrderedDictionary new.
	someTuples do: [:tuple |
		(tmp at: tuple first ifAbsentPut: [OrderedCollection new])
			add: tuple allButFirst].
	^ tmp associations collect: [:assoc | {assoc key. assoc value asArray}]