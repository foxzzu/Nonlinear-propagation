% ftAxis
% Cr�ation de deux tableaux (fr�quence et temps) calibr�s l'un par rapport � l'autre pour
% une FFT. L'espacement entre deux points de fr�quence est l'inverse de la largeur totale
% dans l'espace des temps. Inversement, l'espacement entre deux points de temps est l'inverse
% de la largeur totale en fr�quence.
% Les axes de fr�quence et de temps sont suppos�s centr� sur z�ro
%
% nPoints : Nombre de points (de pr�f�rence une puissance de 2)
% nuMax   : Valeur maximale de la fr�quence (ie moiti� de la largeur totale)
% nu : Axe des fr�quences. Le point d'indice nPoints/2 vaut toujours z�ro
% t  : Axe des temps. Le point d'indice nPoints/2 vaut toujours z�ro
function [nu, t] = ftAxis(nPoints, nuMax)
  deltaNu = 2*nuMax/nPoints;
  deltaT = 1/(2*nuMax);
  nu = -nuMax:2*nuMax/nPoints:nuMax-(2*nuMax/nPoints);
  t = -nPoints/2*deltaT:deltaT:(nPoints/2-1)*deltaT;
