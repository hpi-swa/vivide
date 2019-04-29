printing
printOn: stream

	self isMeta ifTrue: [stream nextPutAll: ' <meta>'].
	self isPropertyExtraction ifTrue: [stream nextPutAll: ' <property>'].

	self nextLabel ifNotNil: [:lbl |
		stream nextPut: Character space; nextPutAll: lbl].
	
	stream
		nextPut: Character space;
		print: self definition.