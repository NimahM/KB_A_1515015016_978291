PREDICATES
   nondeterm anak (symbol,symbol)
    nondeterm  istri (symbol,symbol)
    nondeterm  pria (symbol)
   nondeterm wanita (symbol)
   nondeterm  usia (symbol,integer)
   nondeterm adik (symbol,symbol)
  
CLAUSES
   adik(X,Y):-
        usia(X,10),
        usia(Y,13).

   anak (jhon, james).
   anak (james, peter).
   anak (andi, peter).
   anak (sue, ann).

   istri (mary, peter).
   istri (ann, james).

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
   adik (X,Y).
