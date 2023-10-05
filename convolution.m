x = [1,2,3,4];
h = [-1,1,-1,1];

zeropadding =length(h)-1;
i=1:zeropadding;
zp = i*0;

zx = [zp, x, zp];
hr = h(end:-1:1);

f = zeros(1, length(x)+length(h)-1);

for i=1:length(zx)-zeropadding % cardinality of answer becomes this 
    %len of x + len of zeropadding on one side. 
    for j=1:length(hr)
        f(i) = f(i) + hr(j)*zx(i+j-1);
%i sets the starting index - whether it'll start at 0 from 0 2 9 3 4 or 2,
%9 etc. + j is the index of h. -1 because j obviously starts from index 1, 
% so wherever i starts if there isn't -1 and say i is supposed to start at
% 2, it'll start at 9 instead (because we are doing i+j - we want j to have
% the effect of 0 at the start so the initial starting point is at i. Then 
% we want to iterate over j, so it's the second element of j, so we add. 
% Since j always starts at index 1 (that's the first index), we subtract 1.
    end
end
f

w = conv([1,2,3,4],[1,1]);
w = conv([1,2,3,4],[1,-1]);
w = conv([1,2,3,4],[-1,-1]);
w = conv([1,2,3,4],[-1,1]);
w = conv([1,2,3,4],[1,1,1,-1]);
w = conv([1,2,3,4],[-1,1,-1,1]);