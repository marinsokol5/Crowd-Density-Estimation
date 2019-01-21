
SVMModel_fractal = fitcecoc(fractal_svm(:,1:45)', l_svm(1:45))
loss_fractal = SVMModel_fractal.loss(fractal_svm(:,45:60)', l_svm(45:60))

SVMModel_tiocm = fitcecoc(tiocm_svm(1:45,:), l_svm(1:45)')
loss_tiocm = SVMModel_tiocm.loss(tiocm_svm(45:60,:), l_svm(45:60)')

glcm_coeff = pca(glcm_svm)
glcm_5_dim_coef = glcm_coeff(:, 1:5)
glcm_extracted_svm = mtimes(glcm_svm, glcm_5_dim_coef)
SVMModel_glcm = fitcecoc(glcm_extracted_svm(1:45,:), l_svm(1:45)')
loss_glcm = SVMModel_glcm.loss(glcm_extracted_svm(45:60,:), l_svm(45:60)')