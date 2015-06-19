initialization - scripts
addClassOutline

	self addScript: {
	
		[:cls | cls theNonMetaClass methodDict values, cls theMetaClass methodDict values] -> {
			#inputKind -> ClassDescription. #outputKind -> CompiledMethod.
			#label -> 'Class Outline'.
			#view -> ViTreeView.
			#id -> #outline.
			#priority -> 40}.
		[:methods | methods sorted: [:m1 :m2 | m1 selector <= m2 selector]].
		[:method | {
			method methodClass organization categoryOfElement: method selector.
			method} asTuples].
		[#groups] -> {#isReference -> true}
	
	} asScript.