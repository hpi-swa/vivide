tests
test07MetaScriptWithoutForeignReferences
	"It might happen that a pane stores several recent scripts that originate from another organization than the current one. We must not copy those other scripts."
	
	| anotherPane recentScripts |
	recentScripts := OrderedCollection new.
	anotherPane := ViPane new
		script: [:num | num + 5] asScript;
		yourself.
	anotherPane script adoptOrganization: organization.
	self assert: anotherPane isTopLevel.
	self assert: anotherPane script isDefault.
	recentScripts add: anotherPane script.
	
	anotherPane addQuery.
	self deny: anotherPane script isDefault.
	recentScripts add: anotherPane script.
	
	anotherPane addQuery.
	anotherPane script setProperty: #isNew toValue: false.
	recentScripts add: anotherPane script.
	
	anotherPane addQuery.
	anotherPane script
		adoptOrganization: anotherPane recentScripts third organization;
		setProperty: #isNew toValue: false.
	recentScripts add: anotherPane script.
	
	self assert: 4 equals: anotherPane recentScripts size.
	self assert: (recentScripts hasEqualElements: anotherPane recentScripts).

	sut acceptDroppingPane: anotherPane at: 50@50 from: Morph new. 
	
	self deny: self metaScript isDefault.
	self assert: (sut panes identityIncludes: anotherPane).

	(self metaScript steps detect: [:step | step metaReference == anotherPane script]) in: [:s |
		"Skip new scripts and default scripts because those have a different organization. Pane state and meta script are consistent here because multi-pane widget updates recent script list in panes immediately."
		self assert: 2 equals: anotherPane recentScripts size.
		self assert: 2 equals: s metaScriptReferences size.
		self assert: ((recentScripts last: 2) hasEqualElements: s metaScriptReferences)].