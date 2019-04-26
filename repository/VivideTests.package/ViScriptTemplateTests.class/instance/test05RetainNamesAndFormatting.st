tests
test05RetainNamesAndFormatting
	
	#(
	'[:object | object]'
	'[:in :out | out addAll: (
	in do: [:ea | out add: ea])]'
	'[  :a  :b  | a < b   ]'
	'[:num |
	"Square the given number."
	num * num]'
	) do: [:snippet |
		self assert: (snippet asScript sourceCode includesSubstring: snippet caseSensitive: true)]