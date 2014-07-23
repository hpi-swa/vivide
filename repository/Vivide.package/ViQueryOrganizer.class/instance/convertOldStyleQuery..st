maintenance
convertOldStyleQuery: query

	| from select groupBy tree columns headers sortBy sortGroupBy q |
	from := ViQueryStep oldFrom: (query statementsWithoutCommentsFor: #from).
	from definition inputKind: query baseClass.

	"set context properties"
	from
		icon: query icon;
		label: query label;
		viewDefinition: (query view = #listVertical
			ifTrue: [ViQueryStepDefinition tileView]
			ifFalse: [ViQueryStepDefinition treeView]).

	select := ViQueryStep oldSelect: (query statementsWithoutCommentsFor: #select).
	groupBy := ((query statementsWithoutCommentsFor: #groupBy) collect: [:src | ViQueryStep groupBy: src])
		ifEmpty: [] ifNotEmpty: [:steps | steps first].

	columns := (query statementsWithoutCommentsFor: #column) collect: [:src |
		(RBParser parseExpression: src) in: [:node |
			node isMessage ifFalse: [] ifTrue: [
				node children second in: [:blockNode |
					ViQueryStep property:
						(blockNode source copyFrom: blockNode start to: blockNode stop)]]]].
	columns := columns reject: [:col | col isNil].
	"Default properties."
	columns ifEmpty: [columns := {ViQueryStep reference: ViQueryStep defaultProperties}].
	"Concatenate properties."
	columns overlappingPairsDo: [:p1 :p2 | p1 next: p2].

	"Store old meta-data in property steps for now."
	headers := (query blocksFor: #column) ifNotEmpty: [:specs |
		(specs collect: [:assoc | assoc key isString
			ifTrue: [Dictionary newFrom: {#text -> assoc key}]
			ifFalse: [Dictionary newFrom: assoc key]])
				with: columns do: [:h :c |
					h keysAndValuesDo: [:colPropKey :colPropVal |
						| transformedPropKey |
						transformedPropKey := colPropKey caseOf: {
							[#text] -> [#headerText].
							[#icon] -> [#headerIcon].
							[#orientation] -> [#itemOrientation].
							[#textColor] -> [#labelColor]}
								otherwise: [colPropKey].
						c setProperty: transformedPropKey toValue: colPropVal]
					
					]].
	
	sortBy := ((query statementsWithoutCommentsFor: #sortBy) collect: [:src | ViQueryStep sorted2: src])
		ifEmpty: [] ifNotEmpty: [:steps | steps first].
	sortGroupBy := ((query statementsWithoutCommentsFor: #sortGroupBy) collect: [:src | ViQueryStep groupSorted: src])
		ifEmpty: [] ifNotEmpty: [:steps | steps first].
	
	"Create new style query."
	q := {from.select.sortBy.groupBy.sortGroupBy} select: [:s | s notNil].
	q overlappingPairsDo: [:s1 :s2 | s1 next: s2].

	tree := ViQueryStep oldTreeRecursive: 
	(((query statementsWithoutCommentsFor: #tree) collect: [:src |
		(RBParser parseExpression: src) in: [:node |
			node isMessage
				ifFalse: []
				ifTrue: ["'header' -> [:obj | obj children]"
					node children second in: [:blockNode |
						blockNode source copyFrom: blockNode start to: blockNode stop]]]])
		reject: [:stmt | stmt isNil]).
	
	tree ifNotNil: [
		"Recursive tree AFTER showing current objects at toplevel."
		q last next: columns first.
		columns last next: tree.
		tree next: columns first].
	
	tree ifNil: [
		(query statementsWithoutCommentsFor: #tree) ifNotEmpty: [:stmts |
			"Tricky tree queries..."
			tree := ViQueryStep oldTreePaths: stmts first].
		tree
			ifNil: [q last next: columns first]
			ifNotNil: [
				((tree valueOfProperty: #oldTreePaths) includesSubstring: 'class' caseSensitive: false)
					ifTrue: [
						"Subclasses."
						from next: ((ViQueryStep transformBy: ViQueryStepDefinition defCopyToContext)
							next: from next).
						q last
							next: ((ViQueryStep transformBy: ViQueryStepDefinition defToplevelClasses)
							next: columns first).
						columns last
							next: ((ViQueryStep transformBy: ViQueryStepDefinition defSubclasses)
							next: ((ViQueryStep transformBy: ViQueryStepDefinition defSelectByContext)
							next: columns first))]
					ifFalse: [(((tree valueOfProperty: #oldTreePaths) includesSubstring: 'assoc' caseSensitive: false) or: [(tree valueOfProperty: #oldTreePaths) includesSubstring: 'key' caseSensitive: false])
						ifTrue: [
							"2-level tree for list of associations: 1st level key, 2nd level value"
							q last
								next: ((ViQueryStep transformBy: ViQueryStepDefinition defMergeAssociations)
								next: ((ViQueryStep transformBy: ViQueryStepDefinition defCopyToContext)
								next: ((ViQueryStep collect: '[:dict | dict keys sorted: [:k1 :k2 | k1 asString <= k2 asString]]')
								next: columns first))).
							columns last
								next: (ViQueryStep collect: '[:key :context | context contents first at: key]')
							
							
							
							
							
							]
						ifFalse: [q last next: tree.tree next: columns first]]]].
		
	^ from