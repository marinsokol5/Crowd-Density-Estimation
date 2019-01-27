K = 4
dataset_size = 60

errors_fractal = zeros(K, 1)
CVO = cvpartition(dataset_size,'KFold', K)
for i = 1:CVO.NumTestSets
    trIdx = CVO.training(i);
    teIdx = CVO.test(i);
    SVMModel_fractal = fitcecoc(fractal_svm(:,trIdx)', l_svm(trIdx))
    errors_fractal(i, 1) = SVMModel_fractal.loss(fractal_svm(:,teIdx)', l_svm(teIdx))
end
fractal_average_error = mean(errors_fractal)

errors_tiocms = zeros(K, 1)
CVO = cvpartition(dataset_size,'KFold', K)
for i = 1:CVO.NumTestSets
    trIdx = CVO.training(i);
    teIdx = CVO.test(i);
    SVMModel_tiocm = fitcecoc(tiocm_svm(trIdx,:), l_svm(trIdx)')
    errors_tiocms(i, 1) = SVMModel_tiocm.loss(tiocm_svm(teIdx,:), l_svm(teIdx)')
end
tiocm_average_error = mean(errors_tiocms)

errors_glcm = zeros(K, 1)
CVO = cvpartition(dataset_size,'KFold', K)
for i = 1:CVO.NumTestSets
    trIdx = CVO.training(i);
    teIdx = CVO.test(i);
    glcm_coeff_train = pca(glcm_svm(trIdx,:))
    glcm_5_dim_coef_train = glcm_coeff_train(:, 1:5)
    glcm_extracted_svm = mtimes(glcm_svm(trIdx,:), glcm_5_dim_coef_train)
    SVMModel_glcm = fitcecoc(glcm_extracted_svm, l_svm(trIdx)')
    
    glcm_coeff_test = pca(glcm_svm(teIdx,:))
    glcm_5_dim_coef_test = glcm_coeff_train(:, 1:5)
    glcm_extracted_svm = mtimes(glcm_svm(teIdx,:), glcm_5_dim_coef_test)
    errors_glcm(i, 1) = SVMModel_glcm.loss(glcm_extracted_svm, l_svm(teIdx)')
end
glcm_average_error = mean(errors_glcm)

fprintf("Fractal average error %f\n", fractal_average_error)
fprintf("TIOCM average error %f\n", tiocm_average_error)
fprintf("GLCM average error %f\n", glcm_average_error)