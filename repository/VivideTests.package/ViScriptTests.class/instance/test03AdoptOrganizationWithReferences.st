tests - organization
test03AdoptOrganizationWithReferences

	| far near organization |
	far := {[:num | num * num] -> { #id -> #far }} asScript.
	near := [:object | object] asScript.
	near after: #far.
	organization := ViScriptOrganizer new.
	
	self
		assert: near afterScripts isEmpty;
		deny: near organization == far organization;
		deny: near organization == organization;
		deny: far organization == organization.
	
	"Bring far and near together."
	far adoptOrganization: near organization.
	self
		assert: near afterScripts first == far;
		assert: near organization == far organization;
		deny: near organization == organization;
		deny: far organization == organization.
	
	"Move far and near to a new organization."
	near adoptOrganization: organization.
	self
		assert: near organization == far organization;
		assert: near organization == organization;
		assert: far organization == organization.