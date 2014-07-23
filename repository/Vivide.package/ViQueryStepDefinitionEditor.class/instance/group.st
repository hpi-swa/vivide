accessing - object
group

	^ self definition
		ifNil: ['Step Definitions']
		ifNotNil: [:def | def class name]