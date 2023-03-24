"
no comment
"
Class {
	#name : #MGMaybankProductGroup,
	#superclass : #MGProductGroup,
	#category : #MyGold
}

{ #category : #'data retrieval' }
MGMaybankProductGroup class >> extractDateTimeDictFromNodeValue: aString [
	| substrings prefix dateStr timeStr date time |
	substrings := aString substrings.
	prefix := (substrings at: 1) , (substrings at: 2).
	dateStr := (substrings at: 3) , (substrings at: 4)
		, (substrings at: 5).
	timeStr := (substrings at: 6) , (substrings at: 7).
	date := dateStr asDate.
	time := timeStr asTime.
	^ Dictionary
		newFrom:
			{(#prefix -> prefix).
			(#date -> date).
			(#time -> time)}
]

{ #category : #constants }
MGMaybankProductGroup class >> vendorClass [ ^MGMaybank 
]
