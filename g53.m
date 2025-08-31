image = 'basket.jpg';
output = 'basketblurred.jpg';

c = 1;
T = 30;

Input = imread(image);

P = 1/(c*T)*ones(1,c*T+1);      %Δημιουργία του πηρύνα που δίνεται

Blurred_image = imfilter(Input,P,'replicate');  %Συνέλιξη χρησιμοποιώντας συνάρτηση του matlab

imwrite(Blurred_image, output);
figure
subplot 121; imshow(Input); title('Input');
subplot 122; imshow(Blurred_image); title(['Blurred']);