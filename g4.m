image = 'basket.jpg';
num_coeff = 2000;

array = imread(image);
[~, ~, p] = size(array);      % Αποθηκεύουμε το μέγεθος της εικόνας σε ένα array

if p == 3
    array = rgb2gray(array);  % Η εικόνα γίνεται ασπρόμαυρη (grayscale)
end
    
dbl = double(array);         % Μετατρέπουμε την εικόνα σε μορφή double

dft = dct2(dbl);             % Διακριτός μετασχηματισμός

sqr = (dft).^2;              % Υπολογίζουμε το τετράγωνο του μετασχηματισμού
sqr = sqr(:);
[~,index] = sort(sqr);       % Τοποθετούμε τις τιμές σε αύξουσα σειρά 

index = flipud(index);

compressed_dft = zeros(size(dbl));   

for i = 1:num_coeff
    compressed_dft(index(i)) = dft(index(i));   
end

output = idct2(compressed_dft); % Ξαναμετατρέπουμε την εικόνα για να την προβάλλουμε 
output = uint8(output);

%% Προβάλλουμε την εικόνα
imwrite(output, 'basketcompressed.jpg');
subplot 121; imshow(array); title('Πριν');
subplot 122; imshow(output); title('Μετά');