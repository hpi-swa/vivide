serialization
loadFromDictionary: dict

	self id: (dict at: #id ifAbsent: [self id]). "No change if missing."
	self label: (dict at: #label ifAbsent: [nil]).
	self defaultView: (dict at: #defaultView ifAbsent: [nil]).