function [fractalDimension] = fractalDimension(edges)
    imageToProcess = (edges < 150);
    [n,r] = boxcount(imageToProcess);
    df = -diff(log(n))./diff(log(r));
    fractalDimension = mean(df(4:8));
end