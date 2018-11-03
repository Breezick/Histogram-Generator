image = imread('la_defense.jpg');
gray_image = rgb2gray(image);

H = zeros(1,255, 'uint8');

im_size = size(gray_image)
N_rows = im_size(1)
N_cols = im_size(2)

for r = 1:N_rows;
    for c = 1:N_cols;
        index = gray_image(r,c);
        if index == 0
            index =1;H
        end
        H(index) = H(index) + 1;
    end
end