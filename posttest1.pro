predicates
  nondeterm food(symbol,long,integer,long) 
  nondeterm drink(symbol,long,integer,long)
  nondeterm pesanan(symbol,long,integer,long)
  nondeterm person(symbol)
  nondeterm likes(symbol,symbol)
  nondeterm for_sale(symbol)
  nondeterm who(symbol,symbol)
  
  
 clauses
   who(P,O):-
   person(P),
     likes(P,O),
     for_sale(O).
 
  food(hamburger,10000,2,20000).
  food(pizza,30000,2,60000).
  
  drink(cola,7000,2,14000).
  drink(mocachino,10000,2,20000).
 
 person(ely).
 person(kiky).
 person(adel).  
 
 likes(ely,cakes).
 likes(adel,food).
 likes(kiky,drink).
 
 
 for_sale(food).
   
  pesanan(Order,Harga,Jumlah_Pesanan,Harga_Total):-
	food(Order,Harga,Jumlah_Pesanan,Harga_Total);
	drink(Order,Harga,Jumlah_Pesanan,Harga_Total).

goal
 who(Who,What);
 food(Order,30000,Jumlah_Pesanan,Harga_Total).
 
 