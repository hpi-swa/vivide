*VivideDynamicAnalysis
doMethodCallNodeOLD: aMethodCallNode

	aMethodCallNode isInstantiation ifTrue: [
		^ ('<font color="#{2}">Instantiate <b>{1}</b></font>' format: {
			aMethodCallNode clientClass theNonMetaClass.
			(aMethodCallNode clientClass theNonMetaClass inheritsFrom: TestCase)
				ifTrue: ['AAAAAA']
				ifFalse: ['008000']})].
			
	aMethodCallNode clientMethod isTestMethod ifTrue: [
		^ ('<font color="#AAAAAA">Run <b>{1}</b></font>' format: {
			aMethodCallNode clientSelector})].
			
	^ aMethodCallNode receiverClass = aMethodCallNode clientClass
		ifTrue: [('{1} \\>\\> <b>{2}</b>' format: {
			aMethodCallNode receiverClass.
			aMethodCallNode clientSelector})]
		ifFalse: [	('{1} <i>({2})</i> \\>\\> <b>{3}</b>' format: {
			aMethodCallNode receiverClass.
			aMethodCallNode clientClass.
			aMethodCallNode clientSelector})].    