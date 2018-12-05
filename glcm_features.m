function [features] = glcm_features(img, offset, rec_size)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
img = rbg2gray(img);
[y1,x1,~] = size(img);
features = zeros(16,(fix((x1 - rec_size(1) + offset) / offset) * fix((y1 - rec_size(2) + offset) / offset)));
i = 1;
for x = 1:offset:x1
    if x1 - x < rec_size(1)
        break
    end
    for y = 1:offset:y1
        if y1 - y < rec_size(2)
            break
        end
        cropped_image = imcrop(img, [x, y, rec_size(1), rec_size(2)]);
        [glcms, ~] = graycomatrix(cropped_image, 'Offset', [0 1; -1, 1; -1, 0; -1, -1]);
        stats = graycoprops(glcms);
        for stat = stats
            features(1:4, i) = stats.Contrast;
            features(5:8, i) = stats.Correlation;
            features(9:12, i) = stats.Energy;
            features(13:16, i) = stats.Homogeneity;
        end
        i = i + 1;
    end
end
end
