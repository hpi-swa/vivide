merging
mergeSingleSelectorInLocalArchive: selector

	| serializer organization step def |
	
	self flag: #todo. "mt: Are there other was to find the correct organization of a temporary script, which is not part of any profile?"
	(selector beginsWith: #step)
		ifTrue: [organization := (ViScriptStep allInstances
					detect: [:s | (s isDefault not
						and: [s archive == self localArchive])
						and: [s referenceInArchive selector = selector]]
					ifFound: [:s | s organization]
					ifNone: [self localOrganization])].	
	(selector beginsWith: #def)
		ifTrue: [organization := (ViScriptDefinition allInstances
					detect: [:d | (d isDefault not
						and: [d archive == self localArchive])
						and: [d referenceInArchive selector = selector]]
					ifFound: [:d | d organization]
					ifNone: [self localOrganization])].	
	organization ifNil: [Error signal: 'Unknown selector!'].
	
	serializer := ViQuerySerializer
		fromArchive: self localArchive
		intoOrganizer: organization.
	
	(selector beginsWith: #step)
		ifTrue: [step := serializer mergeStep: selector].	
	(selector beginsWith: #def)
		ifTrue: [def := serializer mergeDefinition: selector].	

	organization resolveReferences.
	def ifNotNil: [(organization referencesToDefinition: def)
		ifNotEmpty: [:steps | step := steps first]].
	
	"Everything was silent. Do some updates."
	self flag: #hacky. "mt: Can we use the script/query change notifier?"
	ViPane allInstancesDo: [:pane |
		(pane currentQuery notNil and: [pane currentQuery organization == organization])
			ifTrue: [pane currentQuery: pane currentQuery]].
	ViScriptEditor allInstancesDo: [:editor |
		editor object organization == organization
			ifTrue: [editor clear]].
	
	(step notNil and: [step isValid "Unresolved references?"])
		ifTrue: [VivideLight active editOrFocusScript: step].