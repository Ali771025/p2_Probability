
function y = p2_Probability ( p1,p2 )

SNR_DB=0:1:14;
l=length(SNR_DB);
for i=1:l
    SNR(i)=(10^(SNR_DB(i)/10));
end
for i=1:l
  PAM(i)=qfunc(sqrt(SNR(i)*2));
  PPM(i)=qfunc(sqrt(SNR(i)));
end
semilogy(SNR_DB,PAM,'b-*');
hold;
semilogy(SNR_DB,PPM,'r--.');
xlabel('SNR/bit(dB)');
ylabel('P2 Probability');
legend('PAM','PPM');
grid on
end

