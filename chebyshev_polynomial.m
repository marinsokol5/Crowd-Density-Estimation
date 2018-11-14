function result = chebyshev_polynomial(order, N, q)

    if order == 0
        result = N ^ -0.5;
    elseif order == 1
        result = (sqrt(3) * (2*q + 1 - N))/(sqrt(N * (N ^2 - 1)));
    else
        t_order_1 = chebyshev_polynomial(order - 1, N, q);
        t_order_2 = chebyshev_polynomial(order - 2, N, q);    
        [alpha_1, alpha_2, alpha_3] = compute_alphas(order, N);
        result = alpha_1 * q * t_order_1 + alpha_2 * t_order_1 + alpha_3 * t_order_2;
    end
end

function [alpha_1, alpha_2, alpha_3] = compute_alphas(order, N)
    tmp1 = sqrt(4 * order^2 -1);
    tmp2 = order * sqrt(N^2 - order^2);
    alpha_1 = (2 * tmp1)/(tmp2);
    alpha_2 = ((1-N) * tmp1)/(tmp2);
    alpha_3 = ((order - 1) * sqrt(2 * order + 1) * sqrt(N^2 - (order-1)^2))/ ...
    (order * sqrt(2 * order - 3) * sqrt(N^2 - order^2));
end
