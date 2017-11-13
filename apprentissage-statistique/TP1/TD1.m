x = rand(40,1);
y = exp(3*x) + randn(40,1);
plot(x,y,'bx');
hold on;
fplot('exp(3*x)',[0 1]);
hold on;

x_train = x(1:20);
y_train = y(1:20);
x_test = x(21:40);

X = [ones(20,1) x_train];

w = (X'*X)\ (X' * y_train);




