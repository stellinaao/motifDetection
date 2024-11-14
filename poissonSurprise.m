function [spikeTimes] = poissonSpikeGen(firingRate, duration, dt)
    nSteps = round(duration / dt); 
    spikes = rand(1, nSteps) < firingRate * dt; 
    spikeTimes = find(spikes) * dt; 
end

firingRate = 10; % Hz
duration = 1; % seconds
dt = 0.001; % seconds (1 ms time step)

spikeTimes = poissonSpikeGen(firingRate, duration, dt);

figure;

plot(spikeTimes, ones(size(spikeTimes)), '|', 'MarkerSize', 20);
xlabel('Time (s)');
ylabel('Trial');
title('Poisson Spike Train');
ylim([0.5 1.5]);