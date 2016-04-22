as yet unclassified
view
	"Returns the view class that will be used when opening the complete script in the current context."

	self flag: #crosscutting. "mt: See ViScriptPart >> #updateView:forEnvironment:."
	^ ((self firstStep valueOfProperty: #view)
		ifNil: [ViProfile active ifNil: [ViTreePlainView] ifNotNil: #defaultView])
			value "Supports blocks."