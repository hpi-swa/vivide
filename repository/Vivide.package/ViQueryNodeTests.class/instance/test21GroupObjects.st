as yet unclassified
test21GroupObjects

	| q testClass |
	testClass := Integer.
	q := ViQueryStep convertList: {
		[:class | {class organization categories. class}] -> {ClassDescription.{String.ClassDescription}}.
		[:protocol :class | #text -> protocol] -> {{String.ClassDescription}.Object}.
		[:protocol :class | {
			class organization listAtCategoryNamed: protocol.
			class}] -> {{String.ClassDescription}.{Symbol.ClassDescription}}.
		[:selector :class | MethodReference class: class selector: selector] -> {{Symbol.ClassDescription}. MethodReference}.
		[:ref | #text -> ref selector].
	}.
	
	sut firstStep: (ViQueryStep use: {testClass} in: q).
	self assert: sut childCount = testClass organization categories size.
	sut nodes with: testClass organization categories do: [:node :protocol |
		self
			assert: protocol equals: (node at: '1_text');
			assert: protocol equals: node object;
			assert: protocol equals: (node at: '1_object').
		node nodes with: (testClass organization listAtCategoryNamed: protocol) do: [:node2 :selector |
			self
				assert: selector equals: (node2 at: '1_text');
				assert: selector equals: node2 object selector;
				assert: selector equals: (node2 at: '1_object') selector]].