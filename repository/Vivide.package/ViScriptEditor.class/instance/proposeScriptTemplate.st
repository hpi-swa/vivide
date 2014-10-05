as yet unclassified
proposeScriptTemplate

	| code node template properties tmp |
	code := edit theText asString.
	node := RBParser parseExpression: code.
	properties := self object properties copy.
	template := self class templateStandard.

	(node sentMessages anySatisfy: [:msg |
		#(collect select gather reject reduce inject) anySatisfy: [:verb |  
			msg includesSubstring: verb caseSensitive: false]]) ifTrue: [
			template := self class templateAllAtOnce].
	
	node isBlock ifTrue: [
		node arguments size = 0 ifTrue: [template := self class templateGlobal].
		node arguments size > 1 ifTrue: [template := self class templateTuples].
	].

	(node allChildren anySatisfy: [:child |
		tmp := child.
		((child isMessage
			and: [child selector = #->])
			and: [child receiver isLiteral])
			and: [#(text icon color morph icon) includes: child receiver value]])
				ifTrue: [ "So we have an association with suspicious keys..."
					properties at: #modelClass put: ViQueryNode. "Skip default?"
					(node isBlock and: [node children last "sequence" children first isMessage "->"])
						ifTrue: [template := self class templateProperty]
						ifFalse: [template := self class templateProperties]].  
	


	"New pointer."
	scriptPointer := template key.
	script := template value, String cr, '-> {}'.
	shouldPropose := false.