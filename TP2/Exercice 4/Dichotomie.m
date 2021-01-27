function [iterations,estimation_resultat] = Dichotomie(fonction,debut,fin,erreur_max,always_0)
% fonction cr�e pour une racine nulle, rapide mais bien sp�cifique !!
% Attention, les tests de continuit� et des bornes de l'intervalle devront
% etre faits dans le script principale, sinon notre m�thode r�cursive fera
% des tests inutiles � chaque appel r�cursif, et dans le cas �ch�ant, si la
% solution n'appartient pas a notre intervalle, on aura une boucle infinie
% :/
tempo = (debut+fin)/2;
tempo = fonction(tempo);
if abs(tempo) <= erreur_max 
    % TRADUCTION EN LANGUAGE HUMAIN !
    % si la distance entre l'image du milieu de l'intervalle [a,b] et racine est
    % inf�rieure ou �gale � l'erreur impos�e, on a notre approximation, qui
    % est bien sur output = f((debut+fin)/2)
    estimation_resultat = (debut+fin)/2;
    iterations = always_0;
    
    
elseif tempo*fonction(debut) < 0
    % TRADUCTION EN LANGUAGE HUMAIN !
    % si l'image du milieu de l'intervalle est sup�rieure � notre racine,
    % alors la solution se trouve dans l'intervalle [a,(a+b)/2]
    clear tempo
    [iterations,estimation_resultat] = Dichotomie(fonction,debut,(debut+fin)/2,erreur_max,always_0+1);
    
elseif tempo*fonction(fin) < 0
    % TRADUCTION EN LANGUAGE HUMAIN !
    % si l'image du milieu de l'intervalle est inf�rieure � notre racine,
    % alors la solution se trouve dans l'intervalle [(a+b)/2,b]
    clear tempo
    [iterations,estimation_resultat] = Dichotomie(fonction,(debut+fin)/2,fin,erreur_max,always_0+1);
    
else
    % Et bien si on arrive l� c'est purement une belle erreur de tests sur
    % la continuit� ou l'existence de la solution, sinon t'auras un beau 0, faudra faire plus
    % attention mon bonhomme !
    
    clear tempo
    estimation_resultat = 'Erreur !';
    iterations = -1;
    
end

end

