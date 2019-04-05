as yet unclassified
isGlobal

	"Here is a manual approach:
	
	| result |
	result := OrderedCollection new.
	(ViProfile active organization orderedSteps
		select: [:ea | (ea isGlobal not
			and: [ea nextLabel notNil or: [ea isSpecial]]
			and: [ea isReference not])])
				do: [:step | (step process: #()) ifNotEmpty: [result add: step]]
				displayingProgress: [:step | step nextLabel ifNil: [step id]].
	result do: [:step | step setProperty: #isGlobal toValue: true]	.
	ViProfile active serializeIntoArchive.
	
	"

	self flag: #refactor. "mt: We might find that out by analysing the code?"
	^ self valueOfProperty: #isGlobal ifAbsent: [false]