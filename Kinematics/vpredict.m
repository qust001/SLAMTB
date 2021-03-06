function [v,Vv,Va] = vpredict(v,a,dt)

% VPREDICT Velocity prediction.
%   VPREDICT(V) performs the time update V = V
%
%   VPREDICT(V,A,DT) performs the time update V = V + A*DT
%
%   [V,Vv,Va] = ... returns the Jacobian matrices wrt velocity V and 
%   acceleration A.
%
%   See also RPREDICT, QPREDICT.

%   Copyright 2008-2009 Joan Sola @ LAAS-CNRS.

Vv = eye(length(v));

if nargin == 3
    v  = v + a*dt;
    Va = dt*Vv;
end




% ========== End of function - Start GPL license ==========


%   # START GPL LICENSE

%---------------------------------------------------------------------
%
%   This file is part of SLAMTB, a SLAM toolbox for Matlab.
%
%   SLAMTB is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation, either version 3 of the License, or
%   (at your option) any later version.
%
%   SLAMTB is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%
%   You should have received a copy of the GNU General Public License
%   along with SLAMTB.  If not, see <http://www.gnu.org/licenses/>.
%
%---------------------------------------------------------------------

%   SLAMTB is Copyright 2007,2008,2009 
%   by Joan Sola, David Marquez and Jean Marie Codol @ LAAS-CNRS.
%   See on top of this file for its particular copyright.

%   # END GPL LICENSE

