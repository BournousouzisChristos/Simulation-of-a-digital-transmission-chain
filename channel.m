%%%Channel%%%

%Add a dead-time tau_n
delayed = delayseq(channel_input,tau_n);

%Add a weakening constant alpha_n
signal = delayed * alpha_n;

%Add AWGN noise
channel_output = awgn(signal,SNR);

