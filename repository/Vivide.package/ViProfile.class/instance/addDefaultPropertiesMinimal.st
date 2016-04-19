initialization - scripts
addDefaultPropertiesMinimal
	"Bare minimum. Depends on widgets to call print-string on the object to show something."
	
	self addScript: {
	
		[:in :out | in do: [:ea | out add: {#object -> ea}]]
			-> {#id -> #defaultPropertiesMinimal. #isProperty -> true}.
	
	} asScript.