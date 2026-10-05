%% Truss force analysis: Cases 1, 2A, 2B, and Step 5 (n-cell Family A & B)
% Quadcopter arm lab
%
% Positive member force = tension
% Negative member force = compression
%
% The motor thrust P acts upward at the tip.

clear;
clc;

%% Nominal geometry and load

P = 250;        % upward motor thrust [gf]
h = 30;         % truss depth [mm]
L = 60;         % cell width [mm] for 2-cell baseline

ell = sqrt(L^2 + h^2);
c = L/ell;
s = h/ell;

fprintf('TRUSS GEOMETRY AND LOAD\n');
fprintf('=======================\n');
fprintf('P   = %.1f gf\n',P);
fprintf('L   = %.1f mm\n',L);
fprintf('h   = %.1f mm\n',h);
fprintf('ell = %.4f mm\n',ell);
fprintf('c   = %.6f\n',c);
fprintf('s   = %.6f\n\n',s);


%% ============================================================
% CASE 1
%% ============================================================

fprintf('CASE 1\n');
fprintf('======\n');

H1 = [ ...
    -1, -c;
     0, -s];

f1 = [ ...
     0;
    -P];

N1 = H1\f1;
memberNames1 = {'AB','AC'};

for i = 1:length(N1)
    if N1(i) > 0
        state = 'tension';
    elseif N1(i) < 0
        state = 'compression';
    else
        state = 'zero force';
    end

    fprintf('N_%s = %10.3f gf   (%s)\n', memberNames1{i}, N1(i), state);
end

fprintf('\nValues to enter in force-results.csv:\n');
fprintf('  N_AB = %.3f gf\n', N1(1));
fprintf('  N_AC = %.3f gf\n\n', N1(2));


%% ============================================================
% CASE 2A: left-cell diagonal EB
%% ============================================================

fprintf('CASE 2A\n');
fprintf('=======\n');

H2A = [ ...
    -1, -c,  0,  0,  0,  0;
     0, -s,  0,  0,  0,  0;
     1,  0,  0, -1,  0, -c;
     0,  0, -1,  0,  0, -s;
     0,  c,  0,  0, -1,  0;
     0,  s,  1,  0,  0,  0];

f2A = [0; -P; 0; 0; 0; 0];
N2A = H2A\f2A;
memberNames2A = {'AB','AC','BC','BD','CE','BE'};

for i = 1:length(N2A)
    if abs(N2A(i)) < 1e-10*P
        state = 'zero force';
    elseif N2A(i) > 0
        state = 'tension';
    else
        state = 'compression';
    end
    fprintf('N_%s = %10.3f gf   (%s)\n', memberNames2A{i}, N2A(i), state);
end

[maxAbs2A, iCrit2A] = max(abs(N2A));
criticalForce2A = N2A(iCrit2A);

fprintf('\nCase 2A summary:\n');
fprintf('  Critical member       = %s\n', memberNames2A{iCrit2A});
fprintf('  Critical member force = %.3f gf\n', criticalForce2A);
fprintf('  Maximum |N|           = %.3f gf\n\n', maxAbs2A);


%% ============================================================
% CASE 2B: left-cell diagonal DC
%% ============================================================

fprintf('CASE 2B\n');
fprintf('=======\n');

% Equilibrium matrix assembled from free-body diagrams at joints A, B, and C
% Unknown vector: N2B = [N_AB, N_AC, N_BC, N_BD, N_CE, N_DC]'
H2B = [ ...
    -1, -c,  0,  0,  0,  0;   % Joint A sum Fx = 0
     0, -s,  0,  0,  0,  0;   % Joint A sum Fy = -P
     1,  0,  0, -1,  0,  0;   % Joint B sum Fx = 0
     0,  0, -1,  0,  0,  0;   % Joint B sum Fy = 0
     0,  c,  0,  0, -1, -c;   % Joint C sum Fx = 0
     0,  s,  1,  0,  0,  s];  % Joint C sum Fy = 0

f2B = [0; -P; 0; 0; 0; 0];
N2B = H2B\f2B;
memberNames2B = {'AB','AC','BC','BD','CE','DC'};

for i = 1:length(N2B)
    if abs(N2B(i)) < 1e-10*P
        state = 'zero force';
    elseif N2B(i) > 0
        state = 'tension';
    else
        state = 'compression';
    end
    fprintf('N_%s = %10.3f gf   (%s)\n', memberNames2B{i}, N2B(i), state);
end

[maxAbs2B, iCrit2B] = max(abs(N2B));
criticalForce2B = N2B(iCrit2B);

fprintf('\nCase 2B summary:\n');
fprintf('  N_BC                  = %.3f gf\n', N2B(3));
fprintf('  Critical member       = %s\n', memberNames2B{iCrit2B});
fprintf('  Critical member force = %.3f gf\n', criticalForce2B);
fprintf('  Maximum |N|           = %.3f gf\n\n', maxAbs2B);


%% ============================================================
% STEP 5: Multi-Cell Analysis (n = 3, 4, 6) for Families A & B
%% ============================================================

fprintf('=======================================================\n');
fprintf('STEP 5: MULTI-CELL ANALYSIS (L_total = 120 mm, h = 30 mm)\n');
fprintf('=======================================================\n\n');

L_total = 120;
n_vals = [3, 4, 6];

for family = {'Family A', 'Family B'}
    famName = family{1};
    fprintf('--- %s ---\n', famName);
    
    for n = n_vals
        cell_L = L_total / n;
        ell_n = sqrt(cell_L^2 + h^2);
        s_n = h / ell_n;
        c_n = cell_L / ell_n;
        
        diag_abs_N = P / s_n;
        max_abs_N = (P * L_total) / h;
        
        if strcmp(famName, 'Family A')
            crit_state = 'compression (top chord at root)';
        else
            crit_state = 'tension (bottom chord at root)';
        end
        
        fprintf('  n = %d: cell width = %.1f mm | diag_abs_N = %8.3f gf | max_abs_N = %8.3f gf (%s)\n', ...
            n, cell_L, diag_abs_N, max_abs_N, crit_state);
    end
    fprintf('\n');
end