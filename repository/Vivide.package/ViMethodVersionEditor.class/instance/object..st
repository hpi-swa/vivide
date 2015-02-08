accessing - object
object: aMethodVersion

	version = aMethodVersion ifTrue: [^ self].
	version := aMethodVersion.
	
	self artifact
		theClass: self version theClass;
		sourceCode: self version source.