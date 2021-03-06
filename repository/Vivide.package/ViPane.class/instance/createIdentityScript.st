script generation
createIdentityScript
	"Use #tupleSizeInput and #baseClass, which both use the current input objects, not the connection configuration."

	| script tupleSize |
	tupleSize := self tupleSizeInput.
	script := tupleSize = 0 "Global scripts only."
		ifTrue: [ViScriptTemplate createIdentityForGlobal]
		ifFalse: [ViScriptTemplate createIdentityForTuple: self baseClass asList].

	script setProperty: #isNew toValue: true.

	"Adopt the organization of any source script or the recent scripts."
	self validInputConnections
		detect: [:c | c source script notNil]
		ifFound: [:c | script adoptOrganization: c source script organization]
		ifNone: [self recentScripts "includes current script"
			ifEmpty: ["Keep the current organization."]
			ifNotEmpty: [:scripts | script adoptOrganization: scripts first organization]].
	^ script