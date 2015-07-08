tests
test02Filter

	| script inner |
	script := [:in :out | ([in collect: [:each | [:num | num * num] value: each]] value: in) in: [:result | out addAll: result asList]] asRawScript.
	editor object: script.

	self assert: editor sourceCode ~= editor visibleSourceCode.

	inner := '[:num | num * num]'.
	self
		assert: ((0 to: inner size - 1) + (editor sourceCode findString: inner))
		equals: editor scriptPointer.

	editor goUp.
	inner := '[:each | [:num | num * num]
				value: each]'.
	self
		assert: ((0 to: inner size - 1) + (editor sourceCode findString: inner))
		equals: editor scriptPointer.

	"See everything including the codified script properties."
	editor goUpToTop.
	inner := editor script.
	self
		assert: (1 to: inner size)
		equals: editor scriptPointer.

	"See the raw transformation script only."
	editor goDown.
	inner := editor sourceCode.
	self
		assert: (1 to: inner size)
		equals: editor scriptPointer.

	editor goDown.
	inner := '[in
		collect: [:each | [:num | num * num]
				value: each]]'.
	self
		assert: ((0 to: inner size - 1) + (editor sourceCode findString: inner))
		equals: editor scriptPointer.

	editor goDownToBottom.
	inner := '[:num | num * num]'.
	self
		assert: ((0 to: inner size - 1) + (editor sourceCode findString: inner))
		equals: editor scriptPointer.	