tests - script definition
test04SharedProperties
	"Script steps share properties with their script definitions. Lookup happends first in the step, then in the definition."

	| step definition |
	step := [:objs | objs] asScript.
	definition := step definition.

	self assert: (step valueOfProperty: #testProperty) isNil.
	definition setProperty: #testProperty toValue: #check.

	self assert: (step valueOfProperty: #testProperty) = #check.
	step setProperty: #testProperty toValue: #flower.

	self assert: (step valueOfProperty: #testProperty) = #flower.
	self assert: (definition valueOfProperty: #testProperty) = #check.