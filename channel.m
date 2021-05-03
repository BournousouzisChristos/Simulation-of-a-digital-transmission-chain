%%%Channel%%%

%Add a dead-time tau_n
for i=1:N
    tau_n=Tb*rand(1)/1000;
    delayed (:,i) = delayseq(channel_input(:,i),tau_n);
end 
%Add a weakening constant alpha_n
signal = delayed * alpha_n;

%Add AWGN noise
channel_output = awgn(signal,SNR);

