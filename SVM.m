SVMModel_fractal = fitcecoc(fractal_svm', l_svm')
%rade kad ih transponiras, cini mi se da im ne pase kad im das vise 
%y vrijednosti u jednom retku pa treba ic po stupcima. Osim toga, 
%SVM ne radi za vise klasa, pa je zato tu metoda fitcecoc koja koristi
%SVM za binarni klasifikator i one vs one 

%loss_fractal = SVMModel.loss(fractal_svm', l_svm')

%SVMModel_tiocm = fitcsvm(tiocm_svm, l_svm,'Standardize',true)
%loss_tiocm = SVMModel.loss(tiocm_svm, l_svm)