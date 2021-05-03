%%%Receiver%%%
transmitter_input=interpft(sum(channel_output,2),length(channel_output)*gamma);
%Analog Filter
for i=1:N
    if i == 1
       fc = BP;
       [num,den] = butter(order,fc/(fs/2),'low');
       analog_filter(i,:) = freqs(num,den);
    else
        fn = (2*(i-1))/Tb;
        fc = [(fn-BP),(fn+BP)];
        [b(i-1,:),a(i-1,:)] = butter(order,fc/(fs/2),'bandpass');
        analog_filter(i,:) = freqs(b(i-1,:),a(i-1,:));
    end
end
fvtool(num,den,b(1,:),a(1,:),b(2,:),a(2,:),b(3,:),a(3,:))

impulse_response = real(ifft(ctranspose(analog_filter),'symmetric'));
%Filter convolution with the channel's signal
figure
for i=1:N
    signals(i,:) = conv(transmitter_input,impulse_response(:,i), "same");
    subplot(2,2,i)
    plot(signals(:,i))
    title("Signal reçu filtre avec le filtre analogique numéro " + i)
end

%Adapted Receiver