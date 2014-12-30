support
convertPanes: paneSpecs toScript: firstPart

	| scripts |
	scripts := firstPart steps asOrderedCollection.

	firstPart notifier doSilently: [  
		(scripts size - paneSpecs size max: 0) timesRepeat: [
			"Remove trailing scripts."
			(scripts atLast: 2) next: nil.
			scripts removeLast].
		(paneSpecs size - scripts size max: 0) timesRepeat: [
			"Append trailing scripts."
			scripts add: ViScriptPart new.
			(scripts atLast: 2) next: scripts last].
		scripts with: paneSpecs do: [:script :spec |
			| template |
			template := '[:in :out | out add: \{#objects -> in\}, [\{{1}\}] value]'.
			script sourceCode: (template format: {
				spec associations
					inject: String cr
					into: [:src :assoc | src, String tab,
						assoc key storeString, ' -> ', assoc value storeString, '.',
						String cr] }).
			script setProperty: #view toValue: ViMultiPaneWidget.
			script setProperty: #isProperty toValue: true].
	].

	^ firstPart