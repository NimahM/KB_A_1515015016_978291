PREDICATES

   nondeterm anak (symbol,symbol)
    nondeterm istri (symbol,symbol)
    nondeterm pria (symbol)
   nondeterm wanita (symbol)
    nondeterm usia (symbol,integer)
   nondeterm cucu (symbol,symbol)
  
CLAUSES
   cucu (X,Z):-
   anak (X,Y),
   anak (Y,Z).
  
   cucu (X,Y):-
        anak (X,W),
        istri (W,Z),
        anak (Z,Y).
       
   anak (jhon,james).
   anak (james,peter).
   anak (andi,peter).
   anak (sue,ann).

   istri (mary,peter).
   istri (ann,james).

   pria (jhon).
   pria (james).
   pria (peter).
   pria (andi).

   wanita (mary).
   wanita (sue).
   wanita (ann).

   usia (john,10).
   usia (sue,13).
  
GOAL
   cucu (X,Y). 