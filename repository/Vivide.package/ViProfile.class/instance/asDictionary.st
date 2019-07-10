serialization
asDictionary

	^ Dictionary new in: [:dict |
		dict
			at: #id put: self id;
			at: #label put: self label;
			at: #defaultView put: self defaultView;
			yourself]