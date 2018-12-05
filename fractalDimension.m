function fractalDimension(path)
    i = imread(path);
    ig = rgb2gray(i);
    igd = mat2gray(ig);
    ph = phasecong3(igd, 'k', 5);
    imageToProcess = (ph < 0.5);
    [n,r] = boxcount(imageToProcess,'slope');
    df = -diff(log(n))./diff(log(r));
    fractalDimension = mean(df(4:8))
end