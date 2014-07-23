as yet unclassified
test33MultipleKinds

	(ViQueryStep convert: (
		[:method | {
			method methodClass organization categoryOfElement: method selector.
			method}]
			-> {CompiledMethod. {String.CompiledMethod}})) in: [:query | 
				self assert: query definition outputKind = {String.CompiledMethod}].
	(ViQueryStep convert: (
		[:protocol :method | #text -> protocol]
			-> {{String.CompiledMethod}.Object})) in: [:query |
				self assert: query definition inputKind = {String.CompiledMethod}].