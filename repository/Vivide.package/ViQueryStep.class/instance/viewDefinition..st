accessing
viewDefinition: aDefinition

	viewDefinition == aDefinition ifTrue: [^ self].
	
	viewDefinition in: [:oldViewDefinition |
		viewDefinition := aDefinition.
		
		self notifier
			stepViewDefinitionChanged: self
			from: oldViewDefinition to: viewDefinition].