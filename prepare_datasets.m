function [glcm_dataset, fractal_dataset, tiocm_dataset] = prepare_datasets(images)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
for i = 1:length(images)
   [grayscale, edges] = preprocessing(images{i}, 10);
   glcm_dataset{i} = glcm_features(grayscale, 10, [20 20]);
   fractal_dataset{i} = fractalDimension(grayscale);
   tiocm_dataset{i} = tiocm_features(edges);
end

