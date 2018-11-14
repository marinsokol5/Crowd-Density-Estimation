function result = tiocm(image, m, n)
%UNTITLED3 Summary of this function goes here
%   Image is the image i am doing this for
% m and n are orders of image, chebyshev moment has order m+n

    if nargin == 1
        m = 0;
        n = 0;
    end

    [row_size, col_size] = size(image);
    result = 0;

    M_0_0 = raw_moment(image, 0, 0);
    M_0_1 = raw_moment(image, 0, 1);
    M_1_0 = raw_moment(image, 1, 0);
    i_c = M_1_0 / M_0_0;
    j_c = M_0_1 / M_0_0;

    for i = 0:(row_size-1)
        q_i = i - i_c;
        for j = 0:(col_size-1)
            q_j = j - j_c;
            result = result + double(chebyshev_polynomial(m, row_size, q_i) * chebyshev_polynomial(n, col_size, q_j) * image(i+1, j+1));
        end
    end
end





