as yet unclassified
updateScript

	| paneSpecs scripts |
	self setProperty: #isUpdatingScript toValue: true.   

	paneSpecs := self panes collect: [:pane |
		| spec |
		spec := Dictionary new.
		spec
			at: #id put: pane id;
			at: #bounds put: (pane bounds translateBy: self topLeft negated);
			"at: #scripts put: (pane queries value collect: [:script | script id]) asArray;"
			at: #current put: pane currentQuery id;
			at: #in put: (pane validConnections
				select: [:connection | connection target == pane]
				thenCollect: [:connection | {
					connection class connectionKind.
					connection source id}]) asArray;
			at: #out put: (pane validConnections
				select: [:connection | connection source == pane]
				thenCollect: [:connection | {
					connection class connectionKind.
					connection target id}]) asArray.
		spec].

	ViQueryChangeNotifier uniqueInstance doSilently: [  
		scripts := self currentQuery
			ifNil: [OrderedCollection with: ViScriptPart new]
			ifNotNil: [:s | s steps asOrderedCollection].
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
			"Ensure same tool-local organization."
			script organization: self organizer.
			script definition organization: self organizer]].
	
	self currentQuery: scripts first.

	self removeProperty: #isUpdatingScript.

	^ scripts first