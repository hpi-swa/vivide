tests
test07GroupBy

	self
		assert: {#odd->1.#even->2.#odd->3.#even->4.#odd->5.#even->6}
		equals: ((ViQueryStep groupBy: '[:number | number odd ifTrue: [#odd] ifFalse: [#even]]') process: #(1 2 3 4 5 6)).