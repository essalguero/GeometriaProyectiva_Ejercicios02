function resultado = MultiplicarVectores(P1, P2)
  
  m = eye(4);
  
%  for i = [1:4]
%    for j = [1:4]
%      m(i, j) = P1(i) * P2(j);
%    end
%  end
%  

m = P1'.*P2;

  resultado = m;
  
end