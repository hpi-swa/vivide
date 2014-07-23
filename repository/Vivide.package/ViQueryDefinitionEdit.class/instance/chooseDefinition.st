actions
chooseDefinition

	| pg |
	pg := ViPane new
		extent: 500@200.
	
	self definition isMapDefinition ifTrue: [
		pg currentQuery: (self definition organization
			stepById: #similarDefinitions).
		pg objects: {self definition}].
	
	self definition isViewDefinition ifTrue: [
		pg currentQuery: (self definition organization stepById: #viewDefinitions).
		pg objects: {self definition organization}].
	
	self definition isUpdateDefinition ifTrue: [
		pg currentQuery: (self definition organization stepById: #updateDefinitions).
		pg objects: {self definition organization}].
	
	pg
		chooseObjectAt: idBtn boundsInWorld bottomLeft
		thenNotify: self
		with: #definition:.