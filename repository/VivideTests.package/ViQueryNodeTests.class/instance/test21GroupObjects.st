tests
test21GroupObjects
	"Via the tree structure."
	
	| q testClass |
	testClass := Integer.
	q := {
		[:class | {class organization categories. class} asTuples].
		[:protocol :class | #text -> protocol].
		[:protocol :class | {
			class organization listAtCategoryNamed: protocol.
			class} asTuples].
		[:selector :class | MethodReference class: class selector: selector].
		[:ref | #text -> ref selector].
	} asScript.
	
	sut
		inputForChildren: {testClass};
		firstStep: q.
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