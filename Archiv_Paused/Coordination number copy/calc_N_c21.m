function [N_c21] = calc_N_c21(d_p, d_HTS, N_c22)
%CALC_N_C21:    N_c21 - Coordination Number, contacts of large particles to one small particle, here  p1= HTS and p2=p [-] 

% two-component mixture of non-cohesive spheres, Suzuki et. al. (1983)

N_c21=(2*0.067*N_c22+(d_p/d_HTS+1))/(1+d_p/d_HTS-((d_p/d_HTS)*((d_p/d_HTS)+2))^(1/2));

if N_c21<2              
    N_c21=2;                % minimum contact number in a particle bed

end

end

