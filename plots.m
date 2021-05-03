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
plot(channel_input(:,1))
title ("Transmitter Output : Canal 1")
nexttile
plot(channel_input(:,2))
title ("Transmitter Output : Canal 2")
nexttile
plot(channel_input(:,3))
title ("Transmitter Output : Canal 3")
nexttile
plot(channel_input(:,4))
title ("Transmitter Output : Canal 4")
%%%Plot Channel Output%%%
figure
t = tiledlayout(2,2);
nexttile
plot(channel_output(:,1))
title ("Channel Output : Canal 1")
nexttile
plot(channel_output(:,2))
title ("Channel Output : Canal 2")
nexttile
plot(channel_output(:,3))
title ("Channel Output : Canal 3")
nexttile
plot(channel_output(:,4))
title ("Channel Output : Canal 4")