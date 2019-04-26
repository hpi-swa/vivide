tests - organization
test04ReferenceAcrossOrganizations
	"Without merging two organizations, references can be made if the active organizer is included in the script lookup."
	
	| far near |
	far := {[:num | num * num] -> { #id -> #far }} asScript.
	near := [#far] asScript.
	
	self
		assert: near reference isNil;
		deny: near organization == far organization.
	
	ViActiveScriptOrganizer value: far organization during: [
		self
			assert: near reference == far;
			deny: near organization == far organization.
	].