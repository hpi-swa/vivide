tests - updates and script selection
test03MatchIdentityScript
	"If nothing else matches, create a new identity script."

	| numSteps pane script1 script2 |
	numSteps := organization steps size.
	pane := ViPane new.

	"1) For the first auto-created identity script, do not adopt the outer organization."
	pane objects: #(1 2 3).
	script1 := pane script.
	self
		assert: #(1 2 3) equals: pane allResults;
		assert: numSteps equals: organization steps size;
		deny: organization equals: script1 organization.

	"2) For the second auto-generated identity script, do adopt the organization of the first one."
	pane objects: #( (1 2) (3 4) ).
	script2 := pane script.
	self
		assert: #( (1 2) (3 4) ) equals: pane allResults;
		assert: numSteps equals: organization steps size;
		assert: script1 organization equals: script2 organization.