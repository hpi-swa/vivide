as yet unclassified
storeDataOn: aStream
	"Evaluate blocks or ignore them. Whatever possible."
	
	| maskedBlocks |
	maskedBlocks := OrderedCollection new.
	self properties associationsDo: [:assoc |
		assoc value isBlock ifTrue: [
			maskedBlocks add: assoc copy.
			assoc value numArgs = 0
				ifTrue: [assoc value: assoc value value]
				ifFalse: [assoc value: nil]]].
	
	maskedBlocks add: (#objects -> self objects).
	self objects: (self objects select: [:obj | obj isCompiledMethod not and: [obj isBlock not]]).
	
	super storeDataOn: aStream.
	
	maskedBlocks do: [:assoc |
		self properties at: assoc key put: assoc value].