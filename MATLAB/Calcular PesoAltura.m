%IDM = masa / altura^2 =  (kg/m^2) en unidades 
disp('Índice de masa corporal.')
disp(' ')
weightingFilter = input('Ingrese su peso (lbs), o escriba 0 si unidades:');
if weightingFilter == 0;
    weightingFilter = input('Ingrese su peso (kg) : ')
    height = input ('Ingrese su altura (m ):')
    IDM  = (weightingFilter / (height^2)) %kg/m^2
else
    height = input('Ingrese su altura (ft) : ')
    %conversion en unidades
    IDM = (weightingFilter / (height^2)) * 4.882427111 %kg/m^2
end
if (IDM < 16.5) ;
    disp(' Tienes muy bajo peso' )
else if ((IDM > 16.5) && (BMI <= 18.5));
        disp(' Tienes peso bajo ')
else if ((IDM > 18.5) && (IDM <=25));
        disp('Tienes un peso normal')
else if ((IDM > 25) && (IDM <=30));
     disp('Tienes sobrepeso')
else if ((IDM > 30) && (IDM <= 35));
        disp('Estás clasificado con obesidad I')
else if ((IDM > 35) && (IDM <= 40));
        disp('Estás clasificado con obsesidad II')
else if (IDM > 40);
        disp('Estás clasificado con obesidad III')
end
end
end
end
end
end
end
disp('')