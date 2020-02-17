tests - single
test08UpdateOnChangedProperties

	script := {[:num | num * 2] -> {#foo -> #bar}} asScript.
	editor object: script.
	
	editor scriptScriptProperties in: [:properties |
		self
			assert: #bar equals: (properties at: #foo);
			deny: (properties includesKey: #color)].
	
	script
		setProperty: #foo toValue: nil; "Remove existing #foo property."
		setProperty: #color toValue: #yellow. "Add new #color property."
	
	self forceGuiUpdate. "Update is deferred."
	editor scriptScriptProperties in: [:properties |
		self
			deny: (properties includesKey: #foo);
			assert: #yellow equals: (properties at: #color)].	