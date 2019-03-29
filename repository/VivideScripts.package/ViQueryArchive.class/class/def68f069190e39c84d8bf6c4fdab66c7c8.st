definitions
def68f069190e39c84d8bf6c4fdab66c7c8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{group first asString asText
		addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
		
		addAttribute: (TextColor
				color: (Color gray: 0.66));
		 yourself}}}. group}]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'68f06919-0e39-c84d-8bf6-c4fdab66c7c8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 March 2019 2:44:51.107235 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{group first asString asText
		addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
		
		addAttribute: (TextColor
				color: (Color gray: 0.66));
		 yourself}}}. group}]]
		value: in) do: [:result | out addAll: result asList]]')})