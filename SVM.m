SVMModel_fractal = fitcecoc(fractal_svm', l_svm')
loss_fractal = SVMModel_fractal.loss(fractal_svm', l_svm')
h_SVM_fractal = SVMModel_fractal.predict(fractal_svm')
SVMModel_tiocm = fitcecoc(tiocm_svm, l_svm')
loss_tiocm = SVMModel_tiocm.loss(tiocm_svm, l_svm')
h_SVM_tiocm = SVMModel_tiocm.predict(tiocm_svm)

%ne radi za glcm, potrebno napraviti features selection!
%SVMModel_glcm = fitcecoc(glcm_svm, l_svm')
%loss_glcm = SVMModel_glcm.loss(glcm_svm, l_svm')
%h_SVM_glcm = SVMModel_glcm.predict(glcm_svm)