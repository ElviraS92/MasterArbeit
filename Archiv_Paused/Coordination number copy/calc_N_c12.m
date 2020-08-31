function [N_c12] = calc_N_c12(d_p, d_HTS, N_c11)
%CALC_COORDINATION_NUMBER:      N_c12 - Coordination Number, contacts of small particles to one large particle, here  p1= HTS and p2=p [-] 

% two-component mixture of non-cohesive spheres, Suzuki et. al. (1983)

N_c12=(2*0.067*N_c11+(d_HTS/d_p+1))/(1+d_HTS/d_p-((d_HTS/d_p)*((d_HTS/d_p)+2))^(1/2));


if N_c12<2              
    N_c12=2;                % minimum contact number in a particle bed

end
end

