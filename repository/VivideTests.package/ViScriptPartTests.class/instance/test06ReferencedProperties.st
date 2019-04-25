as yet unclassified
test06ReferencedProperties
	"... keep script homogeneuous across references."
	
	| inner outer |
	inner := {
		[:num | num * num] -> {#id -> #inner}.
		[:num | #value -> num sqrt]
	} asScript.
	outer := inner asReference.
	outer adoptOrganization: inner organization.
	outer next: ([:num | #stringSize -> num asString size] asScript
					adoptOrganization: outer organization;
					yourself).
	
	"Did our construction work?"
	self
		assert: outer isReference;
		assert: inner equals: outer reference;
		assert: outer isHomogeneous;
		assert: 2 equals: outer allExtractionSteps size.