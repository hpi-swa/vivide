merging
mergeSingleSelector: selector

	| profile serializer |
	
	profile := self profile.
		
	serializer := ViQuerySerializer
		fromArchive: self
		intoOrganizer: profile organization.
	
	(selector beginsWith: #step)
		ifTrue: [serializer mergeStep: selector].	
	(selector beginsWith: #def)
		ifTrue: [serializer mergeDefinition: selector].	

	serializer resolveReferences.
	
	"Everything was silent. Do some updates."
	ViPane allInstancesDo: [:pane |
		(pane currentQuery notNil and: [pane currentQuery organization == profile organization])
			ifTrue: [pane currentQuery: pane currentQuery]].
	ViScriptEditor allInstancesDo: [:editor |
		editor object organization == profile organization
			ifTrue: [editor clear]].