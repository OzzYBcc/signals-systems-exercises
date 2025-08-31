fs = 8000;     % Συχνότητα Δειγματοληψίας στα 8000Hz
Dt = 0.4;      % Διάρκεια Νότας
Notes_Array = ['A ';'A#';'B ';'C ';'C#';'D ';'D#';'E ';'F ';'F#';'G ';'G#'];

for i = 1:1:length(Notes_Array)%για κάθε νότα καλείται η συνάρτηση sound(έτοιμη από το MATLAB)
        sound(g3function(Notes_Array(i,1:end),Dt,fs,1));
        sound(0);
end


