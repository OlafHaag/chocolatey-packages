# <img src="https://cdn.jsdelivr.net/gh/olafhaag/chocolatey-packages@master/automatic/mve/umve.png" width="48" height="48"/> [mve](https://chocolatey.org/packages/mve)

The __Multi-View Environment__, MVE, is an implementation of a complete end-to-end pipeline for image-based geometry reconstruction. It features **Structure-from-Motion**, **Multi-View Stereo** and **Surface Reconstruction**. The individual steps of the pipeline are available as command line applications, but most features are also available from our user interface UMVE. The project is developed at TU-Darmstadt by Michael Goesele's research group.
If you use their system and want to mention MVE in your publications, please cite the following paper:

**MVE – A Multi-View Reconstruction Environment** [[Paper, 10MB]](http://www.gcc.tu-darmstadt.de/media/gcc/papers/Fuhrmann-2014-MVE.pdf)
*Simon Fuhrmann, Fabian Langguth and Michael Goesele*
In: Proceedings of the Eurographics Workshop on Graphics and Cultural Heritage, Darmstadt, Germany, 2014.

## Features
On a high level, MVE features:

* An incremental Structure-from-Motion (SfM) algorithm [[FLG14]](http://www.gcc.tu-darmstadt.de/media/gcc/papers/Fuhrmann-2014-MVE.pdf).
* A Multi-View Stereo implementation based on [[GSC+07]](http://www.gcc.tu-darmstadt.de/media/gcc/papers/Goesele-2007-MVS.pdf).
* Tools to export SfM points or dense MVS point clouds.
* A surface reconstruction algorithm based on [[FG14]](http://www.gcc.tu-darmstadt.de/media/gcc/papers/Fuhrmann-2014-FSS.pdf).

### Structure from Motion
SfM reconstruction is part of MVE (using the sfmrecon application), but can also be performed by external aplications. The bundler output can then be imported to an MVE scene using the makescene command line application, which is included in the distribution.

* [VisualSFM](https://chocolatey.org/packages/visualsfm), a GPU-based bundler by Changchang Wu.
* [OpenMVG](http://imagine.enpc.fr/~moulonp/openMVG/) with incremental and global SfM approaches by Pierre Moulon.
* [Bundler](http://phototour.cs.washington.edu/bundler/) by Noah Snavely.

### Multi-View Stereo
MVE includes an implementation of Michael Goesele's Multi-View Stereo algorithm that computes dense, highly accurate depth maps even from uncontrolled image collections.

**Multi-View Stereo for Community Photo Collections** [[PDF, 9MB]](http://grail.cs.washington.edu/projects/mvscpc/) [Website](http://grail.cs.washington.edu/projects/mvscpc/)
*Michael Goesele, Noah Snavely, Brian Curless, Hugues Hoppe and Steven M. Seitz*
In: Proceedings of ICCV 2007 (oral presentation), Rio de Janeiro, Brasil, October 14-20, 2007.

### Surface Reconstruction
MVE includes the Floating Scale Surface Reconstruction code to create a global surface mesh from dense MVS. The following project websites might be interesting:

[Floating Scale Surface Reconstruction](http://www.gcc.tu-darmstadt.de/home/proj/fssr/index.en.jsp) [[Paper]](http://www.gcc.tu-darmstadt.de/media/gcc/papers/Fuhrmann-2014-FSS.pdf)
*Simon Fuhrmann and Michael Goesele*
In: ACM Transactions on Graphics (Proceedings of ACM SIGGRAPH 2014), Vancouver, Canada, 2014.
**Surface Reconstruction from Multi-Resolution Sample Points** [[Paper]](http://www.gcc.tu-darmstadt.de/media/gcc/papers/Muecke_2011_SRM.pdf)
*Patrick Mücke, Ronny Klowsky and Michael Goesele*
In: Proceedings of Vision, Modeling, and Visualization (VMV 2011), Berlin, Germany, October 4-6, 2011.

### Surface Texturing
A high-quality texture from the input images for the final mesh model can be generated using the following approach. Please find the code on their website.

**Let There Be Color! – Large-Scale Texturing of 3D Reconstructions** [Website with code](http://www.gcc.tu-darmstadt.de/home/proj/texrecon/index.en.jsp)
*Michael Waechter, Nils Moehrle and Michael Goesele*
In: Proceedings of European Conference on Computer Vision 2014, Zurich, Switzerland, 2014.
