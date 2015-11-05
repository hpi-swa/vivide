as yet unclassified
exportInto: folder

	| filename directory |
	directory := FileDirectory on: folder.
	filename := (self fullname ifEmpty: [(self organization) ifEmpty: [self email]]), '.vcf'.
	
	(directory fileOrDirectoryExists: filename) ifTrue: [Warning signal: 'Exists!'].

	FileStream
		forceNewFileNamed: (directory fullNameFor: filename)
		do: [:stream | stream nextPutAll: self raw].