as yet unclassified
convertList: someObjects
	"Default scripts will be wrapped as reference. Numbers can be used to refer to locally defined scripts and, for example, describe recursive structures."

	^ (someObjects collect: [:o | self convert: o])
		in: [:stepsAndIndices |
			| steps |
			steps := stepsAndIndices collect: [:stepOrIndex |
				stepOrIndex isNumber
					ifTrue: [(stepsAndIndices at: stepOrIndex) asReference]
					ifFalse: [stepOrIndex isDefault
						ifTrue: [stepOrIndex asReference]
						ifFalse: [stepOrIndex]]].
			steps overlappingPairsDo: [:s1 :s2 | s1 next: s2].
			
			"It is very important to give all script parts the same organization."
			steps first adoptOrganization: steps first organization.
			
			steps first]