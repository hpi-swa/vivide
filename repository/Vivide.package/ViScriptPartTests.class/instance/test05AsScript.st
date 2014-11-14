as yet unclassified
test05AsScript

	[:num | num * num] asScript in: [:script |
		self deny: script isPropertyExtraction].

	[:num | #text -> num asString] asScript in: [:script |
		self assert: script isPropertyExtraction].