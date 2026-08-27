function N3_2 = fun_base_1var_3orden_1a(x)

lambda_1 = -1.0;
lambda0  = 2.0;
lambda1  = 5.0;
lambda2  = 8.0;


if x>=lambda_1&&x<lambda0
     N1_0 = 1;
  else
     N1_0 = 0;
 end
 
 if x>=lambda0&&x<lambda1
     N1_1 = 1;
  else
     N1_1 = 0;
 end
 
 if x>=lambda1&&x<lambda2
     N1_2 = 1;
  else
     N1_2 = 0;
 end
 
N2_1   = ((x-lambda_1)/(lambda0-lambda_1))*N1_0 + ((lambda1-x)/(lambda1-lambda0))*N1_1;
N2_2   = ((x-lambda0)/(lambda1-lambda0))*N1_1   + ((lambda2-x)/(lambda2-lambda1))*N1_2;

N3_2   = ((x-lambda_1)/(lambda1-lambda_1))*N2_1   + ((lambda2-x)/(lambda2-lambda0))*N2_2;


















