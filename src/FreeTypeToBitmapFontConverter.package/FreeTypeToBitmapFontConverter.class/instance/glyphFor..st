instance creation
glyphFor: aCharacter

	| w form port text |
	
	w := font widthOf: aCharacter.
	form := Form 
			extent: w @ fontHeight
			depth: 32.
	form fillWhite.		
			
	port := form getCanvas privatePort.
	port combinationRule: Form paint.

	font installOn: port foregroundColor: Color black backgroundColor: Color white.

	text := aCharacter asText.
	text addAttribute: (TextFontReference toFont: font).

	font displayString:  text on: port from: 1 to: text size at: 0@0 kern: 3.

	^ form.
		