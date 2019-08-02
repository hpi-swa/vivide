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
		(#artifacts openScriptWith: {script}) pane.
		(vivide openArtifact: script) pane.
		(vivide openArtifacts: {#(1 2 3). script}) pane.
		script editScript pane.
		(script editScriptWith: #(1 2 3)) pane.
		(script openScriptWith: #(1 2 3)) pane "tool" editScript pane "script editor".
	} do: [:pane |
		self
			assert: (organization stepById: #artifacts) equals: pane script;
			assert: 3 equals: script steps size; "Did the script editor corrupt the script?"
			assert: script steps equals: (pane objects last: 3) ].