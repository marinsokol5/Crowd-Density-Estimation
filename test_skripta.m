for i = 1:length(images)
    ig = rgb2gray(images{i});
    igd = mat2gray(ig);
    igd = phasecong3(igd, 'k', 10);
    tmp_v(1) = tiocm(igd, 0, 0);
    tmp_v(2) = tiocm(igd, 1, 0);
    tmp_v(3) = tiocm(igd, 0, 1);
    tmp_v(4) = tiocm(igd, 1, 1);
    tmp_v(5) = tiocm(igd, 2, 0);
    tmp_v(6) = tiocm(igd, 0, 2);
    dataset{i} = tmp_v;
end