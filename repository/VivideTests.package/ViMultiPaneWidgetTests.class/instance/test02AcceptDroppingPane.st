tests
test02AcceptDroppingPane

	| pane |
	pane := ViPane new
		script: [:num | num + 5] asScript;
		yourself.

	self assert: pane script organization ~~ self metaScript organization.
	sut acceptDroppingPane: pane at: 0@0 from: Morph new.
	self assert: pane script organization == self metaScript organization.