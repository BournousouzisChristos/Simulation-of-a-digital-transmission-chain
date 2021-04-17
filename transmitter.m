%%%Transmitter%%%

%Generation of the binary data sequence
data=round(rand(Md,N));
%Copy the pilot sequence (Ms) for each channel
pilote_sequ = Ms(:,ones(N,1));

%Create the message
M = [pilote_sequ; data];

%PAM : Transforms 0 in -1
M(M==0)=-1;

%Raised-Cosine filter
FIR = rcosfir(alpha, L , beta, Tb)';
%Temporal Vector
t= ((-L*Tb):Tn:(L*Tb))';
%Modulations Factors
n=(0:1:N-1);
wn = ((4*pi)/Tb)*n;
%Final filter
p = FIR.*cos(t.*wn);

%Oversampling
M_beta = upsample(M,beta);

%Convolution
s=zeros((size(p,1)+size(M_beta,1)-1),N);
for(i=1:N)
s(:,i)=conv(M_beta(:,i),p(:,i));
end 

%Power Adjustment
gain = sqrt(Pt*Zc);
s = s*gain;

%Interpolation
channel_input=interpft(sum(s,2),length(s)*gamma);

