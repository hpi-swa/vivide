serialization
mergeFromDictionary: dict
	"Updates all state of this script object with the given dict. No id update."
	
	(dict includesKey: #label) ifTrue: [
		self label: (dict at: #label)].
	(dict includesKey: #defaultView) ifTrue: [
		self defaultView: (dict at: #defaultView)].