tests - updates and script selection
test08KeepCurrentScript
	"If some objects make the script change to a more generic one, that generic script will stay even if the original objects return somehow."
	
	| pane script newScript |
	pane := ViPane new.
	script := self addScript: { [:num | num + num] -> { #inputKind -> Integer }}.
	pane script: script.
	
	pane objects: #(1 2 3).
	self assert: script equals: pane script.
	
	pane objects: #(a b c).
	self deny: script equals: pane script.

	pane objects: #(1 2 3).
	self deny: script equals: pane script.