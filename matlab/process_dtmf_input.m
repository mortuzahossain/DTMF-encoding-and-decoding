
function [ my_output ] = process_dtmf_input( my_input )

    [f1,f2] = return_frequency( my_input );

    % Signal Generation Part

    t= 0:0.000125:.05;
    fs=8000;
    y1= sin(2*pi*f1*t);
    y2= sin(2*pi*f2*t);
    y=y1+y2;sound(y,fs)
    figure;
    plot(t,y);
    title(strcat('DTMF Input ' , num2str(my_input)));xlabel('Time');
    ylabel('Amplitude');grid;

    % The Decoding Part
	%{
	@ Mortuza Hossain
	ID : 150102099
	%}

    % I take this code snippet from internet. I have no contribution on it, only
    % i just modified it with my desire .
    rmain=2048*2;rmag=1024*2;
    cn=9;cr=0.5;
    cl=.25;ch=.28;
    [b,a]=cheby1(cn,cr,cl);
    yfilt1=filter(b,a,y);
    figure;
    plot(yfilt1);grid;
    title(strcat('Filtered Low Freq. Signal', num2str(my_input)));
    xlabel('Time');ylabel('Amplitude');


    h2=fft(yfilt1,rmain);
    hmag2=abs(h2(1:rmag));
    [b1,a1]=cheby1(cn,cr,ch,'high');
    yfilt2=filter(b1,a1,y);


    figure;
    plot(yfilt2);grid;
    title(strcat('Filtered High Freq. Signal', num2str(my_input)));
    xlabel('Time');ylabel('Amplitude');


    h3=fft(yfilt2,rmain);
    hmag3=abs(h3(1:rmag));
    
    hlow=fft(yfilt1,rmain);
    hmaglow=abs(hlow);
    
    figure;
    plot(hmaglow(1:rmag));
    title(strcat('FFT Low Pass', num2str(my_input)));grid;
    xlabel('Time');ylabel('Amplitude');


    hhigh=fft(yfilt2,rmain);
    hmaghigh=abs(hhigh);
    figure;
    plot(hmaghigh(1:rmag));
    title(strcat('FFT High Pass', num2str(my_input)));grid;
    xlabel('Time');ylabel('Amplitude');


    m=max(abs(hmag2));n=max(abs(hmag3));
    o=find(m==hmag2);p=find(n==hmag3);
    n=((o-1)*fs)/rmain;
    k=((p-1)*fs)/rmain;

    % Condition For The Output Frequency

    my_output = get_output_from_frequency(n,k);

end

