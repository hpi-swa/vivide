serialization
asDictionary

	super asDictionary in: [:dict |
		"simple values"
		dict
			at: #label put: self label;
			at: #iconCode put: self iconCode.
		"references to other steps and definitions"
		dict
			at: #definition put: self definition id.
			
		^ dict]