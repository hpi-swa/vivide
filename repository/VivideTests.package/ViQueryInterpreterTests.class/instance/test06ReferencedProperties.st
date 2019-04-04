tests
test06ReferencedProperties

	| inner outer |
	inner := {
		[:num | num * num] -> {#id -> #inner}.
		[:num | #value -> num sqrt]} asScript.
	
	"To actually find #inner and create a reference to it"
	ViActiveOrganizer
		value: inner organization
		during: [outer := {
			#inner.
			[:num | #stringSize -> num asString size]} asScript].
	outer adoptOrganization: inner organization.
	
	"Did our construction work?"
	self assert: outer isReference.
	self assert: outer reference == inner.
	
	sut := ViQueryInterpreter on: outer using: #(1 2 3 4).
	sut upToNextProperties.

	self
		assert: outer isHomogeneous;
		assert: 4 equals: ((sut propertiesFor: 16 "sqrt(16)") at: #'1_value');
		assert: 2 equals: ((sut propertiesFor: 16 "'16' size") at: #'2_stringSize').