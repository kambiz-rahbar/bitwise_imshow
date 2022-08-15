clc
clear
close all

img = imread('cameraman.tif');

figure(1);
for k = 7:-1:0
    selected_bits = k:-1:0;
    subplot(3, 3, 8-k);
    bitwise_imshow(img, selected_bits);
    title(sprintf('%d:0', k));
end
