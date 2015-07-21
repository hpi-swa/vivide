tests
test07MetaScriptWithoutForeignReferences
	"It might happen that a pane stores several recent scripts that originate from another organization than the current one. We must not copy those other scripts."
	
	| anotherPane recentQueries |
	recentQueries := OrderedCollection new.
	anotherPane := ViPane new
		currentQuery: [:num | num + 5] asScript;
		yourself.
	anotherPane currentQuery adoptOrganization: organization.
	self assert: anotherPane isTopLevel.
	self assert: anotherPane currentQuery isDefault.
	recentQueries add: anotherPane currentQuery.
	
	anotherPane addQuery.
	self deny: anotherPane currentQuery isDefault.
	recentQueries add: anotherPane currentQuery.
	
	anotherPane addQuery.
	anotherPane currentQuery setProperty: #isNew toValue: false.
	recentQueries add: anotherPane currentQuery.
	
	anotherPane addQuery.
	anotherPane currentQuery
		adoptOrganization: anotherPane recentQueries third organization;
		setProperty: #isNew toValue: false.
	recentQueries add: anotherPane currentQuery.
	
	self assert: 4 equals: anotherPane recentQueries size.
	self assert: (recentQueries hasEqualElements: anotherPane recentQueries).

	sut acceptDroppingPane: anotherPane at: 50@50 from: Morph new. 
	
	self deny: self metaScript isDefault.
	self assert: (sut panes identityIncludes: anotherPane).

	(self metaScript steps detect: [:step | step metaReference == anotherPane currentQuery]) in: [:s |
		"Skip new scripts and default scripts because those have a different organization. Pane state and meta script are consistent here because multi-pane widget updates recent script list in panes immediately."
		self assert: 2 equals: anotherPane recentQueries size.
		self assert: 2 equals: s metaScriptReferences size.
		self assert: ((recentQueries last: 2) hasEqualElements: s metaScriptReferences)].