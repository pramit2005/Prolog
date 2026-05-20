facility(Pers,Fac):-
    book_overdue(Pers,Book),
    !,
    basic_facility(Fac).
%A person can't access basic facilities if a book is overdue
facility(Pers,Fac):-general_facility(Fac).
basic_facility(reference).
basic_facility(enquiries).
additional_facility(inter_library_loan).
general_facility(X):- basic_facility(X).
general_facility(X):- additional_facility(X).
%A database for clients
client('A. Jones').
client('W. Metesk').
book_overdue('A. Jones',book10214).
book_overdue('W. Metesk',book29981).