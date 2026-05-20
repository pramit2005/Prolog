start :-
    write('--- RVD Expert System ---'), nl,
    write('Enter symptom (fever/cough/headache/cold): '),
    read(Symptom),
    diagnose(Symptom).

diagnose(fever) :-
    write('Possible Disease: Viral Fever'), nl.

diagnose(cough) :-
    write('Possible Disease: Throat Infection'), nl.

diagnose(headache) :-
    write('Possible Disease: Migraine'), nl.

diagnose(cold) :-
    write('Possible Disease: Common Cold'), nl.

diagnose(_) :-
    write('No matching disease found.'), nl.