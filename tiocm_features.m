function [features] = tiocm_features(edges)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    features = zeros(6, 1);
    features(1) = tiocm(edges, 0, 0);
    features(2) = tiocm(edges, 1, 0);
    features(3) = tiocm(edges, 0, 1);
    features(4) = tiocm(edges, 1, 1);
    features(5) = tiocm(edges, 2, 0);
    features(6) = tiocm(edges, 0, 2);
end

