function result = raw_moment(image, p, q)
result = 0;
[row_size, col_size] = size(image);

for i = 1:row_size
    for j = 1:col_size
        if image(i,j) > 0
            image(i,j);
        end
        result = result + double(i^p * j^q * image(i,j));
    end
end

end