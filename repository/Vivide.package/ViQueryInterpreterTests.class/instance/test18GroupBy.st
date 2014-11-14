as yet unclassified
test18GroupBy

	self fail.

	self
		assert: { {#odd. {1. 3. 5}}. {#even. {2. 4. 6}} }
		equals: ({
			[:n | {n odd. n} asTuples].
			[:tuples | tuples asGroups].
			[:group :content | {group ifTrue: [#odd] ifFalse: [#even]. content}]
		} asScript process: #(1 2 3 4 5 6)).