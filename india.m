% MATLAB code to draw Indian flag 

% initialising a zero matrix of 300X600X3 
flag=uint8(zeros(300, 600, 3)); 
flag(:, :, :)=255; 
%Saffron Color 
flag(1:100, :, 1)=255; 
flag(1:100, :, 2)=153; 
flag(1:100, :, 3)=51; 

%Green Color 
flag(200:300, :, 1)=19; 
flag(200:300, :, 2)=136; 
flag(200:300, :, 3)=8; 

%Ashok Chakra 
for i=1:300 
	for j=1:600 
		if sqrt(power(i-150, 2)+ power(j-300, 2))>=40 
			if sqrt(power(i-150, 2)+ power(j-300, 2))<=45 
				flag(i, j, 1:2)=0; 
			end
		end
	end
end
for i=110:190 
	for j=260:340 
		dist= (sqrt(power(i-150, 2)+power(j-300, 2))); 
		k=round(atand((300-j)/(150-i))); 
		if dist<=40 && mod(k, 15)==0 
			flag(i, j, 1:2)=0; 
		end
	end
end
% displaying the matrix as image 
figure, imshow(flag); 
