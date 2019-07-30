tests - organization
test09AdoptOrganizationMix
	"For steps in different organizations - which happens via dynamic lookup - only adopt the steps that share the first step's organization."

	| organization default script |
	organization := ViScriptOrganizer new.
	default := { [:obj | #text -> obj asString] -> { #id -> #someProperties } } asScript.
	default adoptOrganization: organization.
	
	ViActiveScriptOrganizer value: organization during: [
		script := { [:num | num * num] -> {#after -> #someProperties} } asScript.	
		self
			deny: default organization equals: script organization;
			assert: (script allSteps includes: default).
	
		script adoptOrganization: ViScriptOrganizer new.
		self
			deny: default organization equals: script organization;
			assert: (script allSteps includes: default).
	]