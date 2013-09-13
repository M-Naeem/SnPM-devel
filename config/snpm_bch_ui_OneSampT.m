function snpmui = snpm_bch_ui_OneSampT
% Example script that creates an cfg_exbranch to sum two numbers. The
% inputs are entered as two single numbers, the output is just a single
% number.
%
% This code is part of a batch job configuration system for MATLAB. See 
%      help matlabbatch
% for a general overview.
%_______________________________________________________________________
% Copyright (C) 2007 Freiburg Brain Imaging

% Volkmar Glauche
% $Id: Thomas Nichols, Emma Thomas $


snpm_defaults

rev = '$Rev: 1716 $';

DesNm = 'MultiSub: One Sample T test on diffs/contrasts';
DesFile = mfilename;
DesHelp = {'',...
	  'stuff.',...
	  '',...
	  'stuff ',...
	  '    stuff',...
	  'stuff.',...
	  };
  
% cv_none         = cfg_const;
% cv_none.tag     = 'cv_none';
% cv_none.name    = 'None';
% cv_none.val     = {1};
% cv_none.help    = {'Covariate value = none'};
% 
% cov_Val         = cfg_entry;
% cov_Val.tag     = 'cov_Val';
% cov_Val.name    = 'Enter Number of Covariate';%arbitary name
% cov_Val.help    = {'Help'};
% cov_Val.strtype = 'e';
% cov_Val.num     = [Inf 1];
% 
% cv_one         = cfg_branch;
% cv_one.tag     = 'cv_one';
% cv_one.name    = 'Enter Different Covariate Value';
% cv_one.val     = {cov_Val};
% cv_one.help    = {'Help'};
% 
% covariate         = cfg_choice;
% covariate.tag     = 'covariate';
% covariate.name    = 'Covariate'; %arbitary name
% covariate.val     = {cv_none };
% covariate.help    = {'Help'};
% covariate.values  = {cv_none cov_Val };

% ---------------------------------------------------------------------
% c Vector
% ---------------------------------------------------------------------
c         = cfg_entry;
c.tag     = 'c';
c.name    = 'Vector';
c.help    = {'Vector of covariate values'};
c.strtype = 'e';
c.num     = [Inf 1];
% ---------------------------------------------------------------------
% cname Name
% ---------------------------------------------------------------------
cname         = cfg_entry;
cname.tag     = 'cname';
cname.name    = 'Name';
cname.help    = {'Name of covariate'};
cname.strtype = 's';
cname.num     = [1 Inf];

% ---------------------------------------------------------------------
% mcov Covariate
% ---------------------------------------------------------------------
mcov         = cfg_branch;
mcov.tag     = 'mcov';
mcov.name    = 'Covariate';
mcov.val     = {c cname };
mcov.help    = {'Add a new covariate to your experimental design'};
% ---------------------------------------------------------------------
% generic Covariates
% ---------------------------------------------------------------------
generic         = cfg_repeat;
generic.tag     = 'generic';
generic.name    = 'Covariates';
generic.help    = {'Covariates'};
generic.values  = {mcov };
generic.num     = [0 Inf];


%% Executable Branch
snpmui = snpm_bch_ui(DesNm,DesFile,DesHelp,{generic});
