function [h, outputids, inputids] = impulseresponse(sfg, N, p_plot, title_str);
% This function returns the impulse response.

% Check number of input arguments
if nargin < 2
    error('Not enough input arguments');
end
if nargin > 4
    error('Too many input arguments');
end
if nargin < 3
    p_plot = 0;
end

% Set a title
if nargin < 4
    title_str = 'Impulse response';
else
    if ~isstr(title_str)
        error('The title must be a string');
    end
end

% Load operand mapping
operandmapping;

% Find inputs
inputids = sfg(find(sfg(:, 1) == op_in), 2);
numin = length(inputids);
if ~numin
    error('There is no input in the SFG');
end

% Find outputs
outputids = sfg(find(sfg(:, 1) == op_out), 2);
numout = length(outputids);
if ~numout
    error('There is no output in the SFG');
end

% Apply an impulse at one input at a time
impulse = zeros(numin, N);
h = zeros(numout, N, numin);
for id = 1:numin
    impulse(id, 1) = 1;
    h(:, :, id) = simulate(sfg, impulse, inputids);
    impulse(id, 1) = 0;
end

% Plot
if p_plot
    for inid = 1:numin
        for outid = 1:numout
            figure;
            stem(0:N - 1, h(outid, :, inid), '.');
            if numin + numout > 2
                title(strcat(title_str, ' (in: ', int2str(inputids(inid)), ', out: ', int2str(outputids(outid)), ')'));
            else
                title(title_str);
            end
        end
    end
end
