menu morph
openMenuFor: anEditor

	super openMenuFor: anEditor.
	
	"menuMorph ifNotNil: [
		menuMorph position: (anEditor morph editView localPointToGlobal: menuMorph position)]."