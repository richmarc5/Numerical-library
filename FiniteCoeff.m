## Copyright (C) 2024 richa
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} FiniteCoeff (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: richa <richa@RICHDELLPC>
## Created: 2024-08-09

function finiteMat = FiniteCoeff (del)

##del=[-2,-1,0,1,2]';
##k=5;
##del=[-k:k]';
 n=length(del);
 V=(del.^(0:n-1));

 facI=diag(1./factorial(0:n-1));

 finiteMat=inv(V*facI);



endfunction
