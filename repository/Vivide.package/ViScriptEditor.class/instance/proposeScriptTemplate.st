as yet unclassified
proposeScriptTemplate

	| code node template properties tmp |
	code := edit theText asString.
	node := RBParser parseExpression: code.
	properties := self object properties copy.
	template := self class templateStandard.

	(node sentMessages anySatisfy: [:msg |
		#(collect select gather reject reduce inject asGroups) anySatisfy: [:verb |  
			msg includesSubstring: verb caseSensitive: false]]) ifTrue: [
			template := self class templateAllAtOnce].
	
	node isBlock ifTrue: [
		node arguments size = 0 ifTrue: [template := self class templateGlobal].
		node arguments size > 1 ifTrue: [template := self class templateTuples].

		(node allChildren anySatisfy: [:child |
			tmp := child.
			((child isMessage
				and: [child selector = #->])
				and: [child receiver isLiteral])
				"and: [#(text icon color morph icon) includes: child receiver value]"])
					ifTrue: [ "So we have an association with suspicious keys..."
						properties at: #modelClass put: ViQueryNode. "Skip default?"
						properties at: #isProperty put: true.
						
						node arguments size = 0
							ifTrue: [template := self class templateWrapper]
							ifFalse: [
								(node children last "sequence" children first isMessage "->")
									ifTrue: [template := node arguments size = 1
										ifTrue: [self class templateProperty]
										ifFalse: [self class templateTuplesProperty]]
									ifFalse: [template := node arguments size = 1
										ifTrue: [self class templateProperties]
										ifFalse: [self class templateTuplesProperties]]]].  
	].

	(node isMessage and: [node selector = #->]) ifTrue: [
		template := nil -> ''.
		"Full block in script properties detected!"
		(Compiler evaluate: code) value do: [:assoc |
			properties at: assoc key put: assoc value].
		
		self flag: #todo. "mt: Detect script references."].


	"New pointer."
	script := template value, String cr, '-> ', (self propertiesToStringFrom: properties).
	scriptPointer := template key ifNil: [1 to: script size].
	
	shouldPropose := false.