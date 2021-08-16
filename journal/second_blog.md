@def title = " Plotting using the visit-cli"

@def published = "19 August 2021"

@def tags = ["first", "try"]

[Visit](https://wci.llnl.gov/simulation/computer-codes/visit) is a visualization software developed by Lawrence Livermore National Laboratory for visualization of large scale data sets. A detailed discussion of the software can be found [here](https://www.visitusers.org/index.php?title=500words), which is a 500 words essay. I use visit for visualizing the 3-dimensional datasets. Although their GUI is pretty intuitive, it is nice to use the [python API](https://visit-sphinx-github-user-manual.readthedocs.io/en/v3.2.1/cli_manual/index.html)'s to loop over many data sets residing in remote server and plot them simultaneously. Surely one will appreciate the advantage when the internet connection is poor.


# The pledge
  ~~~
   <div class="row">
     <div class="container">
     <center>
      <img src="/journal/fig/second_blog_wf.png" alt="drawing" width="100"/>
     </center>
       <p>
       The chart summarizes the workflow that I want to achieve
       </p>
       <div style="clear: both"></div>      
     </div>
   </div>
   ~~~



# The turn

I will start by creating a [hdf5](https://hdf5group.org) file which can be read very easily in visit. I will use the following code block to store random data in a file called `test_file.h5`. I have basically created a dataset "x" and stored a three dimensional array in it.

```python
import numpy as np
import h5py 
n1 = 64
u = np.sin(np.random.random(n1*n1*n1)*np.pi*2)
u = u.reshape(n1,n1,n1)
with h5py.File('test_file.h5','w') as f:
  f.create_dataset('x',data=u)
```

I will now make a different file `visit_plot.py` where I will call necessary visit API's to make a contour plot of "x". [Emacs](https://www.gnu.org/software/emacs/) users can create a python source block with headers `:tangle visit_plot.py` and run `M-x org-babel-tangle` to export the content.

The call to visit API's follow a general procedure. First one needs to import all the `visit_utils`.

```python
from visit_utils import *
```

The above call will allow one to change the different plot attributes of visit given in <https://visit-sphinx-github-user-manual.readthedocs.io/en/v3.2.1/cli_manual/index.html>. Out of the hundreds, of API's I will call a few and change its attributes.  First I will fix the view by setting the normal vector to face outwards the computer screen and the up vector towards positive of z axis.

```python
ResetView()
v = GetView3D()
v.viewNormal = (0.5, -0.4, 0.1)
v.viewUp = (0, 0, 1)
SetView3D(v)
```

I will set some of the box-attributes where I will set the triad, the information on the database and the bounding box to be visible. If you like the default picture from the visit then this block can be ignored.

```python
ats = AnnotationAttributes()
ats.axes3D.visible = 0
ats.axes3D.triadFlag = 1
ats.axes3D.bboxFlag = 1
ats.userInfoFlag = 0
ats.databaseInfoFlag = 1
ats.legendInfoFlag = 1
ats.axes3D.xAxis.grid = 0
ats.axes3D.yAxis.grid = 0
ats.axes3D.zAxis.grid = 0
ats.axes3D.yAxis.label.font.bold = 0
ats.axes3D.yAxis.label.font.scale = 1
ats.axes3D.setBBoxLocation = 1
ats.axes3D.lineWidth = 3
ats.axes3D.bboxLocation = (1, 64, 1, 64, 1, 64) 
SetAnnotationAttributes(ats)
```

The next part is to set the format and file name of the saved image. Out of the available formats, BMP, CURVE, JPEG, OBJ, PNG, POSTSCRIPT, POVRAY, PPM, RGB, STL, TIFF, ULTRA, VTK, PLY, and EXR, I will save a png image of size 768x512 pixels.

```python
s = SaveWindowAttributes()
s.format = s.PNG
s.fileName = 'fig/test_out' 
s.outputDirectory = "./"
s.width, s.height = 768,512
s.screenCapture = 0
SetSaveWindowAttributes(s)
```

Finally the code below will make the contour of the data we had stored and save the image. Basically, I am plotting the contours of iso-values 0.2 and 0.4 and coloring them with `SetMulticolor` calls.

```python
OpenDatabase('test_file.h5')
AddPlot("Contour", "x")
pc = ContourAttributes()
pc.contourMethod = pc.Value
pc.contourValue = (0.2, 0.4)
pc.SetMultiColor(0, (255, 127,   0, 255) )
pc.SetMultiColor(1, (106,  61, 154, 255) )
SetPlotOptions(pc)
DrawPlots() 
SaveWindow()
CloseDatabase()
exit()
```


# The Prestige

To get the desired image open a terminal and run the following.

```shell
/path/to/visit -nowin -cli -s visit_plot.py
```

![img](/journal/fig/test_out.png)
