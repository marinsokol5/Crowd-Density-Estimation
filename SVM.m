SVMModel_fractal = fitcsvm(fractal_svm, l_svm,'Standardize',true)
loss_fractal = SVMModel.loss(fractal_svm, l_svm)

%SVMModel_tiocm = fitcsvm(tiocm_svm, l_svm,'Standardize',true)
%loss_tiocm = SVMModel.loss(tiocm_svm, l_svm)