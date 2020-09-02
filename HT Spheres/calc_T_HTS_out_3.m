function [T_HTS_out] = calc_T_HTS_out_3(Q, T_HTS_in, cp_HTS, m_HTS)
%CALC_T_HTS_OUT Summary of this function goes here
%   Detailed explanation goes here

T_HTS_out=T_HTS_in-(Q/(cp_HTS*m_HTS));

end

