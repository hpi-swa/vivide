tests - open
test03OpenScriptEditor
	"The environment must always open all steps in a script when opening a single script part."

	| script |
	script := {
		[:num | num + num].
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.

	{	"There are several ways to open a script editor."
		(#artifacts openScriptWith: {script}).
		(vivide openArtifact: script).
		(vivide openArtifacts: {#(1 2 3). script}).
		script editScript.
		(script editScriptWith: #(1 2 3)).
		(script openScriptWith: #(1 2 3)) "tool" editScript "script editor".
	} do: [:pane |
		self
			assert: (organization stepById: #artifacts) equals: pane script;
			assert: 3 equals: script steps size; "Did the script editor corrupt the script?"
			assert: script steps equals: (pane objects last: 3) ].