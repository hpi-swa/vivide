accessing
category
	^ category = 'nil'
		ifFalse: [category]
		ifTrue: [nil]