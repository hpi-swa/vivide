tests
test10DefaultLookup
	"If a symbol cannot be resolved in the local organization, use the project-local one."
	
	self assert: self metaScript organization ~~ organization.

	self metaScript metaReference: #defaultProperties asScript.
	self assert: #defaultProperties asScript organization == organization.
	self assert: #defaultProperties equals: self metaScript metaReferenceId.
	self assert: #defaultProperties asScript == self metaScript metaReference.