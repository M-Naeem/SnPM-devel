function [cfg, def] = cfg_mlbatch_appcfg(varargin)
% function [cfg, def] = cfg_mlbatch_appcfg(varargin)
% Application initialisation for matlabbatch example application. This
% application only has a cfg_ file, no defaults. The main application
% body will just add the path to the example directory to MATLAB path and
% call cfg_ui. This will initialise cfg_util with all cfg_mlbatch_appcfg
% files found on the MATLAB path.
%
% This code is part of a batch job configuration system for MATLAB. See 
%      help matlabbatch
% for a general overview.
%_______________________________________________________________________
% Copyright (C) 2007 Freiburg Brain Imaging

% Based on cfg_mlbatch_appcfg (v 3184) & cfg_example_master (v 1716)

cfg = snpm_cfg_master;
def = [];