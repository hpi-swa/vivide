printing
printOn: stream

	self isMeta ifTrue: [stream nextPutAll: ' <meta>'].
	"self isPropertyExtraction ifTrue: [stream nextPutAll: ' <property>']."

	self isSpecial ifTrue: [
		stream
			space;
			print: self id].

	self nextLabel ifNotNil: [:lbl |
		stream
			nextPut: Character space; 
			print: lbl].
	
	stream
		nextPut: Character space;
		print: self definition.