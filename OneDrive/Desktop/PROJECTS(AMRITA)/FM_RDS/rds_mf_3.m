%% RDS Matched Filter
% Carsten Roppel, University of Applied Sciences Schmalkalden
% 02.10.2021

% Matched filter: Square root raised cosine filter for Manchester code
% alpha = 1, 64 samples/bit
rcos_man_3 = zeros(1, 225);
rcos_man_3(1:193) = rcosine(1, 32, 'fir/sqrt', 1);
rcos_man_3(33:225) = rcos_man_3(33:225) - rcosine(1, 32, 'fir/sqrt', 1);
% t_rcos = ((0:224) - 112)/64;
% figure; plot(t_rcos, rcos_man_3); xlabel('t/T_b'); ylabel('h(t)');
