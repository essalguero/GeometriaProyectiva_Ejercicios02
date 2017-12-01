% mOri -> mOriginales
% mCor -> mCorrespondencias

function homografia = GenerarHomografia(mOri, mCor)
  
  M = [mOri(1, 1), mOri(1, 2), 1, 0, 0, 0, -mOri(1, 1) * mCor(1, 1), -mOri(1, 2) * mCor(1, 1);
       0, 0, 0, mOri(1, 1), mOri(1, 2), 1, -mOri(1, 1) * mCor(1, 2), -mOri(1, 2) * mCor(1, 2);
       
       mOri(2, 1), mOri(2, 2), 1, 0, 0, 0, -mOri(2, 1) * mCor(2, 1), -mOri(2, 2) * mCor(2, 1);
       0, 0, 0, mOri(2, 1), mOri(2, 2), 1, -mOri(2, 1) * mCor(2, 2), -mOri(2, 2) * mCor(2, 2);
       
       mOri(3, 1), mOri(3, 2), 1, 0, 0, 0, -mOri(3, 1) * mCor(3, 1), -mOri(3, 2) * mCor(3, 1);
       0, 0, 0, mOri(3, 1), mOri(3, 2), 1, -mOri(3, 1) * mCor(3, 2), -mOri(3, 2) * mCor(3, 2);
       
       mOri(4, 1), mOri(4, 2), 1, 0, 0, 0, -mOri(4, 1) * mCor(4, 1), -mOri(4, 2) * mCor(4, 1);
       0, 0, 0, mOri(4, 1), mOri(4, 2), 1, -mOri(4, 1) * mCor(4, 2), -mOri(4, 2) * mCor(4, 2);
       
       ];
  
  homografia = M;
end
  