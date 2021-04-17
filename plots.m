%%%%%%%%%%%%%%%%%%PLOT%%%%%%%%%%%%%%%%%%
%%%Plot PAM Oversampled%%%
figure
t = tiledlayout(2,2);
nexttile
plot(M_beta(:,1))
title("Pulse Amplitude Modulation OverSampled : Canal 1")
nexttile
plot(M_beta(:,2))
title("Pulse Amplitude Modulation OverSampled : Canal 2")
nexttile
plot(M_beta(:,3))
title("Pulse Amplitude Modulation OverSampled : Canal 3")
nexttile
plot(M_beta(:,4))
title("Pulse Amplitude Modulation OverSampled : Canal 4")
%%%Plot p(t)%%%
figure
t = tiledlayout(2,2);
nexttile
plot(p(:,1))
title ("Raised-Cosine Filter : Canal 1")
nexttile
plot(p(:,2))
title ("Raised-Cosine Filter : Canal 2")
nexttile
plot(p(:,3))
title ("Raised-Cosine Filter : Canal 3")
nexttile
plot(p(:,4))
title ("Raised-Cosine Filter : Canal 4")
%%%Plot Transmitter Output%%%
figure
t = tiledlayout(2,2);
nexttile
plot(s(:,1))
title ("Transmitter Output : Canal 1")
nexttile
plot(s(:,2))
title ("Transmitter Output : Canal 2")
nexttile
plot(s(:,3))
title ("Transmitter Output : Canal 3")
nexttile
plot(s(:,4))
title ("Transmitter Output : Canal 4")
figure
plot(canal_input)
title ("Transmitter Output : Sum of all channels")
%%%Canal Output%%%
figure
plot(canal_output)
title("Channel Output")