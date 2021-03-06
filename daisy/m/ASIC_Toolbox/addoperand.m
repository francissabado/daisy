function sfg = addoperand(sfg, operandname, number, innodes, outnodes, operanddata, operandtype);
% This function is used to add an operand to a signal flow graph
% 
% Inputs: sfg - signal flow graph
%         operandname - operand name as a string
%         number - operand ID number
%         innodes - operand innodes in a row vector
%                   (can be the outnode in case of an IN operand)
%         outnodes - operand outnodes in a row vector
%         operanddata - operand data in a row vector
%         operandtype - operand type as a string
% Output: sfg - updated signal flow graph


if nargin < 4
   error('Not enough input arguments');
end
if nargin < 5
   outnodes = [];
end
if nargin < 6
   operanddata = [];
end
if nargin > 7
   error('Too many input arguments');
end

% Load operand mapping
operandmapping;

adaptor = 0; type = 0;
switch lower(operandname)
   case 'in',
      op = op_in; numarg = 2;
   case 'out',
      op = op_out; numarg = 2;
   case 'add',
      op = op_add; numarg = 4;
   case 'sub',
      op = op_sub; numarg = 4;
   case 'mult',
      op = op_mult; numarg = 4;
   case 'division',
      op = op_division; numarg = 4;
   case 'delay',
      op = op_delay; numarg = 3;
   case 'invert',
      op = op_invert; numarg = 3;
   case 'shift',
      op = op_shift; numarg = 4;
      switch lower(operandtype)
         case 'left', type = shift_left;
         case 'right', type = shift_right;
         otherwise, error('Unknown shift type');
      end
   case 'twoport',
      op = op_twoport; numarg = 6;
      adaptor = 1;
   case 'threeport',
      op = op_threeport; numarg = 9;
      adaptor = 1;
   case 'fourport',
      op = op_fourport; numarg = 12;
      adaptor = 1;
   case 'butterfly',
      op = op_butterfly; numarg = 6;
      switch lower(operandtype)
         case 'dit', type = butterfly_dit;
         case 'dif', type = butterfly_dif;
         otherwise, error('Unknown butterfly type');
      end
   case 'quant',
      op = op_quant; numarg = 4;
      switch lower(operandtype)
         case {'truncation', 'trunc'}, type = quant_truncation;
         case {'rounding', 'round'}, type = quant_rounding;
         case {'magnitudetruncation', 'magtrunc'}, type = quant_magnitudetruncation;
         otherwise, error('Unknown quantization type');
      end
   case 'overflow',
      op = op_overflow; numarg = 3;
      switch lower(operandtype)
         case 'twosc', type = overflow_twosc;
         case {'saturation', 'sat'}, type = overflow_saturation;
         otherwise, error('Unknown overflow type');
      end
   case 'mux',
      op = op_mux; numarg = 5;
   case 'demux',
      op = op_demux; numarg = 5;
   case 'mac',
      op = op_mac; numarg = 5;
   case 'quant2',
      op = op_quant2; numarg = 5;
    case 'quant_1bit',
        op = op_quant_1bit; numarg = 4;
   otherwise,
      error('Unknown operand');
end

if adaptor
   switch lower(operandtype)
      case {'series', 'ser'}, type = adaptor_ser;
      case {'parallel', 'par'}, type = adaptor_par;
      case {'symmetric', 'sym'}, type = adaptor_sym;
      otherwise, error('Unknown adaptor type');
   end
end

op_arg = [number, innodes, outnodes, operanddata];

if length(op_arg) ~= numarg
   error('Not correct number of operand arguments');
end

if type
   op_arg = [op_arg, type];
end

sfg = addrow(sfg, [op, op_arg]);
