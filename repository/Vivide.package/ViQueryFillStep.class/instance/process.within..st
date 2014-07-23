processing
process: someObjects within: aContext
	"Ignore input. Root only."	
	
	^ (self next isNil or: [self next inputCount = 1])
		ifTrue: [
			self flag: #hideCollections. "mt: There should be no difference from an interaction perspective."
			self flattenedObjects]
		ifFalse: [
			ViQueryInterpreter productOfCollections: 	self objects]