tests - updates and script selection
test01MatchInputKind
	"On new objects, switch to a script with a fitting input kind."
	
	| script1 script2 pane |
	script1 := self addScript: {
		[:num | num * num] -> {#label -> #a. #inputKind -> Number}.
		[:num | #text -> num asString] }.
	script2 := self addScript: {
		[:morph | morph color] -> {#label -> #b. #inputKind -> Morph}.
		[:color | #text -> color name] }.
	
	pane := ViPane new.
	
	pane objects: #(6).
	self assert: script1 equals: pane script.
	
	pane objects: {Morph new}.
	self assert: script2 equals: pane script.

	pane objects: #(apple).
	self deny: script1 equals: pane script.
	self deny: script2 equals: pane script.	