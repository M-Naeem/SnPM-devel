### SnPM: Statistical nonParametric Mapping

The **S**tatistical **n**on-**P**arametric **M**apping (SnPM) toolbox provides an extensible framework for voxel level non-parametric permutation/randomisation tests of functional Neuroimaging experiments with independent observations. 

The SnPM toolbox provides an alternative to the Statistics section of [SPM](http://www.fil.ion.ucl.ac.uk/spm/). SnPM uses the General Linear Model to construct pseudo t-statistic images, which are then assessed for significance using a standard non-parametric multiple comparisons procedure based on randomisation/permutation testing. It is most suitable for single subject PET/SPECT analyses, or designs with low degrees of freedom available for variance estimation. In these situations the freedom to use weighted locally pooled variance estimates, or variance smoothing, makes the non-parametric approach considerably more powerful than conventional parametric approaches, as are implemented in SPM. Further, the non-parametric approach is always valid, given only minimal assumptions.
