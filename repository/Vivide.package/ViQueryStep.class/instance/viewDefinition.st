accessing
viewDefinition

	^ viewDefinition ifNil: [viewDefinition := self class defaultViewDefinition]