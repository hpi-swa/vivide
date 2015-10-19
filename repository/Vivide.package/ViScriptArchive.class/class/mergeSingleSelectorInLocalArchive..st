merging
mergeSingleSelectorInLocalArchive: selector

	| serializer organization |
	
	(selector beginsWith: #step)
		ifTrue: [organization := (ViScriptPart allInstances
					detect: [:step | (step isDefault not
						and: [step archive == ViProfile localArchive])
						and: [step referenceInArchive selector = selector]]
					ifFound: [:step | step organization]
					ifNone: [Error signal: 'Not found!'])].	
	(selector beginsWith: #def)
		ifTrue: [organization := (ViQueryStepDefinition allInstances
					detect: [:def | (def isDefault not
						and: [def archive == ViProfile localArchive])
						and: [def referenceInArchive selector = selector]]
					ifFound: [:def | def organization]
					ifNone: [Error signal: 'Not found!'])].	
	organization ifNil: [Error signal: 'Unknown selector!'].
	
	serializer := ViQuerySerializer
		fromArchive: ViProfile localArchive
		intoOrganizer: organization.
	
	(selector beginsWith: #step)
		ifTrue: [serializer mergeStep: selector].	
	(selector beginsWith: #def)
		ifTrue: [serializer mergeDefinition: selector].	

	serializer resolveReferences.
	
	"Everything was silent. Do some updates."
	ViPane allInstancesDo: [:pane |
		(pane currentQuery notNil and: [pane currentQuery organization == organization])
			ifTrue: [pane currentQuery: pane currentQuery]].
	ViScriptEditor allInstancesDo: [:editor |
		editor object organization == organization
			ifTrue: [editor clear]].