function [res_img] = bitwise_imshow(img, selected_bits)

% img = imread('cameraman.tif');
img = double(img);
bin_img = dec2bin(img);
bin_img = reshape(bin_img, [size(img), 8]);

%selected_bits = 1:-1:0;
selected_bits = 8-selected_bits;
res_img = uint8(zeros(size(img)));
for row = 1:size(img, 1)
    for col =  1:size(img, 2)
        bit_img = bin_img(row, col, selected_bits);
        bit_img = reshape(bit_img, 1, length(bit_img));
        res_img(row, col) = bin2dec(bit_img);
    end
end

imshow(res_img,[]);






