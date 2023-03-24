"
Public gold bullion
"
Class {
	#name : #MGPublicGoldGoldBar24K,
	#superclass : #MGPublicGoldProductGroup,
	#category : #MyGold
}

{ #category : #constants }
MGPublicGoldGoldBar24K class >> priceTableKey: aDictionary [ 
^aDictionary  keys detect: [ :key | |value| 
	value := aDictionary at: key.
	value size = 7 and: [  ((value at: 7) at: 1) = '1000 gram'] ]
]
