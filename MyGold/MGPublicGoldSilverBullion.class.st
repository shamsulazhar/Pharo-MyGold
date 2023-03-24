"
Public Gold silver bullion
"
Class {
	#name : #MGPublicGoldSilverBullion,
	#superclass : #MGPublicGoldProductGroup,
	#category : #MyGold
}

{ #category : #constants }
MGPublicGoldSilverBullion class >> priceTableKey: aDictionary [
	^ aDictionary keys
		detect: [ :key | 
			| value |
			value := aDictionary at: key.
			value size = 6 and: [ ((value at: 6) at: 1) = '5 kilogram' ] ]
]
