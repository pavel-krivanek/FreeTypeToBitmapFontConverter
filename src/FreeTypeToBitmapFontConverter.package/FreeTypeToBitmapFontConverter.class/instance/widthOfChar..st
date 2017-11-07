instance creation
widthOfChar: aCharacter

	^ ((font widthOf: aCharacter) * self widthMultiplier) ceiling.
