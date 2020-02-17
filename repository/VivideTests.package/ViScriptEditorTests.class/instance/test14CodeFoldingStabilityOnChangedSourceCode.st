tests - single
test14CodeFoldingStabilityOnChangedSourceCode
	"If it is possible to find the visible code in the updated script, adjust the interval accordingly."
	
	| text |
	script := '[:in :out | out addAll: ([:objects | objects collect: [:n | n * n]] value: in)]' asScript.
	editor object: script.
	
	editor goUp.	
	text := editor visibleSourceCode.
	self assert: '[:objects | objects collect: [:n | n * n]]' equals: text.
	
	"Refactor the script code."
	script sourceCode: '[:in :out | ([:objects | objects collect: [:n | n * n]] value: in) do: [:result | out addAll: result asList]]'.
	self forceGuiUpdate.
	
	self assert: text equals: editor visibleSourceCode