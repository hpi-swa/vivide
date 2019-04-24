tests - construction
test01NewInstance

	| script |
	script := ViScriptPart new.
	self
		assert: script id notEmpty;
		assert: script sourceCode isEmpty;
		assert: script next isNil;
		
		assert: script properties notEmpty;
		assert: (script hasProperty: #creationAuthor);
		assert: (script hasProperty: #creationTimeStamp);
		
		assert: script organization notNil;
		assert: script notifier notNil;
		assert: script archive notNil;
		
		assert: script isRegistered;
		assert: script label isNil;
		assert: script icon isNil;
		
		assert: script isValid;
		deny: script isDefault;
		deny: script isSpecial;
		deny: script isGlobal.