clear
clc

target = 'ryujeokyeon'

panjang_target = length(target);

gen_baru = create_gen(panjang_target)
fitness = calculate_fitness(gen_baru,target)

% REPRESENTASI GENETIK
function gen = create_gen(panjang_gen)
    random_number = randi([32,126],1,panjang_gen);
    gen = char(random_number);
end

% FITNESS FUNCITON
function fitness = calculate_fitness(gen,target)
    fitness = (sum(target == gen)/length(target))*100;
end