processing
process: someObjects within: aContext
	"Ignore input. Root only."	
	
	^ self objects
	
	"(self next isNil or: [self next inputCount = 1])
		ifTrue: [

			self flattenedObjects]
		ifFalse: [
			ViQueryInterpreter productOfCollections: 	self objects]"