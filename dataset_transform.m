
for l = 1: 21
   l_svm(l) = labels{1, l};
   fractal_svm(l) = fractal_dataset{1, l};
end
tiocm_svm = zeros(21, 6);
for l = 1: 21
    for j = 1: 6
        tiocm_svm(l, j) = tiocm_dataset{1, l}(j);
    end
end

glcm_svm = zeros(21,16, 1521);
for l = 1: 21
    for j = 1: 16
        for k = 1: 1521
            glcm_svm(l, j, k) = glcm_dataset{1, l}(j, k);
        end
    end
end
