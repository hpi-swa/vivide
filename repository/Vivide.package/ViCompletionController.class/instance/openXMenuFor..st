menu morph
openXMenuFor: anEditor

	super openXMenuFor: anEditor.
	
	menuMorph ifNotNil: [
		menuMorph position: (anEditor morph editView localPointToGlobal: menuMorph position)].