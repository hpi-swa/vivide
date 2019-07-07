serialization
asDictionary

	^ Dictionary new in: [:dict |
		dict
			at: #className put: self class name;
			at: #id put: self id;
			at: #properties put: self properties]