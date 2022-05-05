plot(xd,yd)
title('Circular Desired path for the Robot')
 xlabel ('X-axis')
ylabel ('Y-axis')
xlim([0 2])
ylim([0 2])
figure 
plot(x,y)
xlabel ('X-axis')
ylabel ('Y-axis')
xlim([0 2])
ylim([0 2])
title('Circular path drawn by the robot')
figure
plot(tout,des_th1)
hold on 
plot(tout,actual_th1)
title('Graph between Actual and Desired theta1')
xlim([0 360])
ylim([0 0.6])
xlabel ('time')
ylabel ('Amplitude')

figure
plot(tout,des_th2)
hold on 
plot(tout,actual_th2)
title('Graph between Actual and Desired theta2')
xlim([0 360])
ylim([2 2.9])
xlabel ('time')
ylabel ('Amplitude')

figure
plot(tout,x)
hold on 
plot(tout,xd)
title('Graph between Actual and Desired X-cordinates')
xlim([0 360])
ylim([2 2.9])
xlabel ('time')
ylabel ('Amplitude')