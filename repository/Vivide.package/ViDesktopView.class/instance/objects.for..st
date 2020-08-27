as yet unclassified
objects: someObjects for: pane
	"Create a hidden pane and connection to forward the model's objects."
	
	| hidden |
	hidden := ViPane new.
	hidden setProperty: #paneViewInput toValue: true.
	hidden assureExtension externalName: #paneViewInput.
	hidden objectsAsIs: someObjects unwrapList asList.
	hidden ~~~ #auto ~~> pane.
	pane setProperty: #inputPane toValue: hidden.