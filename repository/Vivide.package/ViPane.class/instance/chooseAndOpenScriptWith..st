script selection
chooseAndOpenScriptWith: someObjects
	"Interactive dialog version for #openScriptWith:. Let the user pick a script for the given objects. Use that script in a new pane with those objects."

	| objects scripts |
	objects := someObjects asList.
	
	self flag: #noTupleSupport. "mt: For context menus in standard views."
	objects first isList ifTrue: [
		self flag: #hacky. "mt: ByteArrays should never be flattened."
		objects := objects flatten].

	objects ifEmpty: [^ self].
	
	LastHelperPane := ViPane new.
	"For better performance not use #objects: to avoid model updates."
	LastHelperPane model inputForChildren:
		 (Sensor shiftPressed
			ifTrue: [objects collect: [:o | o value]]
			ifFalse: [objects]).
	
	"This is a class-side version. So use the global organization. Maybe we can also provide a instance side version of this?"
	scripts := ViActiveScriptOrganizer
		value: self organization "Use my current scope."
		during: [LastHelperPane appropriateScripts].
	
	ViPane new
		script: #formattedScripts asScript;
		objects: scripts;
		
		flag: #fishy; "mt: We need this for some pluggable morphs as views who would otherwise eat this pane immediately... *sigh*"
		"grabMouse;"

		chooseObjectAt: ActiveHand cursorPoint - (5@5)
		thenNotify: LastHelperPane
		with: #openScript:.

	ViLoggingService trigger: {#message -> 'Script list opened.'}.