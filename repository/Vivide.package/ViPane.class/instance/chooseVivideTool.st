script selection
chooseVivideTool
	"Extension point for domain objects, which can provide #hasVivideTools to force application of a certain script. Only overrides #artifacts script at the moment."

	VivideLight useClassicMode ifTrue: [^ self].

	self objects size ~= 1 ifTrue: [^ self].
	self script isNil ifTrue: [^ self].

	self flag: #magicNumber. "mt: Make it programmable and not fixed to #artifacts."
	self script id ~= #artifacts ifTrue: [^ self].
	
	"Note: You can configure the result order of #formattedScripts script to determine the actual tool script to use. By default, that order is based on the script's #priority (script property)."
	self objects first hasVivideTools ifTrue: [
		self recentScripts removeAll. "Clean up UI. Remove trace #artifact script."
		self script: (#formattedScripts asScript interpretScriptWith: self appropriateScripts) firstNode object].