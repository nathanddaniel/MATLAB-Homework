x_values = 1:6;
x_prob = ones(1, 6) / 6; 

y_values = 3:18;

y_prob = zeros(1, length(y_values));

for i = 1:6
    for j = 1:6
        for k = 1:6
            sum_value = i + j + k; 
            y_prob(sum_value - 2) = y_prob(sum_value - 2) + 1; 
        end
    end
end

y_prob = y_prob / (6^3);

figure;
subplot(2, 1, 1);
stem(x_values, x_prob, 'filled');
title('PMF of X (Single Die)');
xlabel('Value');
ylabel('Probability');

subplot(2, 1, 2);
stem(y_values, y_prob, 'filled');
title('PMF of Y (Sum of Three Dice)');
xlabel('Value');
ylabel('Probability');