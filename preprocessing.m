function [grayscale, edges] = preprocessing(image, phase_cong_k)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
grayscale = rgb2gray(image);
edge_preparation = mat2gray(grayscale);
edges = phasecong3(edge_preparation, 'k', phase_cong_k);
end

