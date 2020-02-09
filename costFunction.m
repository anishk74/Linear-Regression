function [jval,gradient1]=costFunction(initialTheta,X,y)
	
	h = X * initialTheta;
	m=length(y);
	jval=(1/(2*m))*sum((h-y).^2); 
	gradient1=zeros(size(initialTheta));

	for i=1:length(initialTheta)
		gradient1(i)=(1/m)*(X(:,i)'*(h-y));
	endfor
	

end