SVMModel_fractal = fitcecoc(fractal_svm', l_svm')
loss_fractal = SVMModel_fractal.loss(fractal_svm', l_svm')

SVMModel_tiocm = fitcecoc(tiocm_svm, l_svm')
loss_tiocm = SVMModel_tiocm.loss(tiocm_svm, l_svm')

glcm_coeff = pca(glcm_svm)
glcm_5_dim_coef = glcm_coeff(:, 1:4)
glcm_extracted_svm = mtimes(glcm_svm, glcm_5_dim_coef)
SVMModel_glcm = fitcecoc(glcm_extracted_svm, l_svm')
loss_glcm = SVMModel_glcm.loss(glcm_extracted_svm, l_svm')