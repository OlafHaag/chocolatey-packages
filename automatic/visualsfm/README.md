# [visualsfm](https://chocolatey.org/packages/visualsfm)

VisualSFM is a GUI application for 3D reconstruction using structure from motion (SFM).  The reconstruction system integrates several of Changchang Wu's previous projects: [SIFT on GPU(SiftGPU)](http://www.cs.unc.edu/~ccwu/siftgpu/), [Multicore Bundle Adjustment](http://grail.cs.washington.edu/projects/mcba/), and [Towards Linear-time Incremental Structure from Motion](http://ccwu.me/vsfm/vsfm.pdf). VisualSFM runs fast by exploiting multicore parallelism for feature detection, feature matching, and bundle adjustment.

For dense reconstruction, this program integrates the execution of Yasutaka Furukawa's [PMVS/CMVS](http://grail.cs.washington.edu/software/cmvs/) tool chain. The SfM output of VisualSFM works with several additional tools, including [CMP-MVS](http://ptak.felk.cvut.cz/sfmservice/websfm.pl?menu=cmpmvs) by Michal Jancosek, [MVE](http://www.gris.informatik.tu-darmstadt.de/projects/multiview-environment/) by Michael Goesele's research group, [SURE](http://www.ifp.uni-stuttgart.de/publications/software/sure/index.en.html) by Mathias Rothermel and Konrad Wenzel, and [MeshRecon](http://www-scf.usc.edu/~zkang/software.html) by Zhuoliang Kang.

This package already installs the dependencies for PMVS/CMVS. Included binaries originate from [Pierre Moulon's repository](https://github.com/pmoulon/CMVS-PMVS).

* VisualSFM is free for personal, non-profit or academic use. See [README](http://ccwu.me/vsfm/README) for more details.
* Please cite VisualSFM according to [README](http://ccwu.me/vsfm/README) in your publication.

* Post questions about the software (not about this package) and see discussions and tutorials at the [Google Group](http://groups.google.com/group/vsfm) or write to wucc1130[at]gmail.com.
