tests - single
test02Filter

	| script inner |
	script := [:in :out | ([in collect: [:each | [:num | num * num] value: each]] value: in) in: [:result | out addAll: result asList]] asRawScript.
	editor object: script.

	self assert: editor scriptSourceCode ~= editor visibleSourceCode.

	inner := '[:num | num * num]'.
	self
		assert: ((0 to: inner size - 1) + (editor scriptSourceCode findString: inner))
		equals: editor fullSourceCodeInterval;
		assert: (9 to: 8)
		equals: editor textField selection.

	editor goUp.
	inner := '[:each | [:num | num * num]
				value: each]'.
	self
		assert: ((0 to: inner size - 1) + (editor scriptSourceCode findString: inner))
		equals: editor fullSourceCodeInterval.

	"See everything including the codified script properties."
	editor goUpToTop.
	inner := editor fullSourceCode.
	self
		assert: editor areScriptPropertiesVisible;
		assert: (1 to: inner size)
		equals: editor fullSourceCodeInterval.

	"See the raw transformation script only."
	editor goDown.
	inner := editor scriptSourceCode.
	self
		assert: (1 to: inner size)
		equals: editor fullSourceCodeInterval.

	editor goDown.
	inner := '[in
		collect: [:each | [:num | num * num]
				value: each]]'.
	self
		assert: ((0 to: inner size - 1) + (editor scriptSourceCode findString: inner))
		equals: editor fullSourceCodeInterval.

	editor goDownToBottom.
	inner := '[:num | num * num]'.
	self
		assert: ((0 to: inner size - 1) + (editor scriptSourceCode findString: inner))
		equals: editor fullSourceCodeInterval.
			