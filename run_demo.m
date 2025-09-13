function run_demo()
% RUN_DEMO  Trajectory Simulation quickstart
% Loads truth.csv and sim.csv from ./data and produces XY and vy plots.

close all; clc;
ensure_dir('results'); ensure_dir('data');

truth_csv = find_csv({'truth.csv'});
sim_csv   = find_csv({'sim.csv'});

if isempty(truth_csv) || isempty(sim_csv)
    warning('Place truth.csv and sim.csv under ./data and re-run.');
    return;
end

Ttruth = readtable(truth_csv);
Tsim   = readtable(sim_csv);

% XY plot
fig = figure;
plot(nanfill(Ttruth,'truth_x'), nanfill(Ttruth,'truth_y'), 'DisplayName','Truth XY'); hold on;
plot(nanfill(Tsim,'simulation_x'), nanfill(Tsim,'simulation_y'), '--', 'DisplayName','Simulation XY');
xlabel('X'); ylabel('Y'); title('Trajectory: Truth vs Simulation (XY)'); legend;
saveas(fig, fullfile('results','trajectory_xy.png'));

% vy vs index
fig = figure;
plot(1:height(Ttruth), nanfill(Ttruth,'truth_vy'), 'DisplayName','Truth v_y'); hold on;
plot(1:height(Tsim),   nanfill(Tsim,'simulation_vy'), '--', 'DisplayName','Simulation v_y');
xlabel('Time step'); ylabel('v_y'); title('Velocity Comparison (v_y)'); legend;
saveas(fig, fullfile('results','velocity_time.png'));

% Optional helpers
try_run('scripts/Trajectory_generator.m');
try_run('scripts/Trajectory_generator_ver2.m');

disp('Done. Results saved under results/');
end

function ensure_dir(p); if ~exist(p,'dir'), mkdir(p); end; end
function p = find_csv(cands)
    p = '';
    for i = 1:numel(cands)
        if exist(fullfile('data', cands{i}),'file')
            p = fullfile('data', cands{i}); return;
        end
    end
end
function v = nanfill(T, name)
    if any(strcmpi(T.Properties.VariableNames, name))
        v = T.(name);
    else
        v = nan(height(T),1);
    end
end
function try_run(f)
    if exist(f,'file')
        try, run(f); catch ME, warning('Failed %s: %s', f, ME.message); end
    end
end
