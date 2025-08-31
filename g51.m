
c = 1:5;                                      % Περιπτώσεις για πέντε διαφορετικές ταχύτητες κίνησης
Dt = -0.3:0.003:0.3;                          % Διάστημα τιμών
T = 100;                                      % Περίοδος 
for i = 1:length(c)
cmap = hsv(length(c));
s = 1;                                         
K = s*abs(sin(c(i)*T*Dt/2)./(c(i)*T*Dt/2));   % Ζητούμενη συνάρτηση
plot(Dt,K,'color',cmap(i,:));                 % Σχεδιασμός  γραφημάτων ανά περίπτωση
title(['Linear Velocity = ' num2str(c(i))]);
hold on
pause(0.5)
end

