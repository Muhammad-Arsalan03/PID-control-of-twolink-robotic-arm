
%plots
plot(x,y);
hold on 
plot(xd,yd);
xlabel ('Input (RED) Vs Output (BLUE) trajectory')
figure;
for i=1:1:361
    error_x(i)=xd(i)-x(i);
end
for i=1:1:361
    error_y(i)=yd(i)-y(i);
end
plot(time,error_x)
hold on 
plot(time,error_y)
plot(x,y);