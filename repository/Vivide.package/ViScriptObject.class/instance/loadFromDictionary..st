serialization
loadFromDictionary: dict
	"Resets all state of this script object to the given dict."
	
	self id: (dict at: #id ifAbsent: [self id]).	"No change if missing."
	self properties: (dict at: #properties ifAbsent: [Dictionary new]).