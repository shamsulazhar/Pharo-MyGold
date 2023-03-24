Class {
	#name : #MGMaybankPaperProductGroup,
	#superclass : #MGMaybankProductGroup,
	#instVars : [
		'buyingRMPerGram',
		'sellingRMPerGram'
	],
	#category : #MyGold
}

{ #category : #assertions }
MGMaybankPaperProductGroup class >> checkHeader: aHeader [
	self assert: (aHeader at: 1) = 'Date'.
	self assert: (aHeader at: 2) = 'Selling (RM/g'.
	self assert: (aHeader at: 3) = 'Buying (RM/g'
]

{ #category : #accessing }
MGMaybankPaperProductGroup >> buyingRMPerGram [
	^ buyingRMPerGram
]

{ #category : #accessing }
MGMaybankPaperProductGroup >> buyingRMPerGram: anObject [
	buyingRMPerGram := anObject
]

{ #category : #testing }
MGMaybankPaperProductGroup >> isSimilarTo: anObject [
	^ anObject timeStamp = self timeStamp
]

{ #category : #accessing }
MGMaybankPaperProductGroup >> sellingRMPerGram [
	^ sellingRMPerGram
]

{ #category : #accessing }
MGMaybankPaperProductGroup >> sellingRMPerGram: anObject [
	sellingRMPerGram := anObject
]

{ #category : #initialization }
MGMaybankPaperProductGroup >> setData: aData [
	self sellingRMPerGram: (aData at: 2).
	self buyingRMPerGram: (aData at: 3)
]
