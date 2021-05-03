%%%Parameters%%%

%Message's Length (Ms,Md)
Md = 4;

%Message's Nature
Ms = [1 0 1 1 0]';

%Number of Modules K
K = 3;

%Number of frequency channel N
N = 4;

%Duration of a bit Tb
Tb = 0.001;

%Bit rate R
R = 1/Tb;

%OverSampling Factor beta
beta = 64;

%Duration of a numerical sample
Tn=Tb/beta;

%FIR Parameters : alpha, L, nb
alpha = 0.4; %Facteur de rolloff
L = 2;

%Power on the output of the channel Pt
Pt = 1;
%Caracteristic impedance on the cable Zc
Zc = 75;

%OverSampling Factor for continuous signal gamma
gamma = 10;

%Channel parameters : gain alpha_n, délais tau_n
N0 = 10;
alpha_n = 0.8;
SNR = N0/2;

%Ratio Eb/N0 for the receiver

%Parameters for analogic filter : nature, order, ripple, attenuation
fs = 1/Tn;
BP = ((1+1)/(2*Tb));
order = 6;
%Threshold V for the simplified receiver

