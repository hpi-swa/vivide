tests - organization
test04ReferenceAcrossOrganizations
	"Without merging two organizations, references can be made if the active organizer is included in the script lookup."
	
	| far near |
	far := {[:num | num * num] -> { #id -> #far }} asScript.
	near := [:object | object] asScript.
	near after: #far.
	
	self
		assert: near afterScripts isEmpty;
		deny: near organization == far organization.
	
	ViActiveScriptOrganizer value: far organization during: [
		self
			assert: near afterScripts first == far;
			deny: near organization == far organization.
	].