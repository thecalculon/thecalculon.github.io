@def title = "  Writing python script for visualization"
@def published = "19 August 2021"
@def tags = ["first", "try"]

# Introduction 

If you have somehow stumbled here, then I believe you must have struggled as I have
to use visit cli for visualizations
## Basic import
```python
from visit_utils import *
```
## The call format

The basic calls follows. For example to set a view 

```python
ResetView()
v = GetView3D()
v.viewNormal = (0.5, -0.4, 0.1)
v.viewUp = (0, 0, 1)
SetView3D(v)

```

```python
ats = AnnotationAttributes()
ats.axes3D.visible = 0
ats.axes3D.triadFlag = 1
ats.axes3D.bboxFlag = 0
ats.userInfoFlag = 0
ats.databaseInfoFlag = 1
ats.legendInfoFlag = 1
ats.axes3D.xAxis.grid = 0
ats.axes3D.yAxis.grid = 0
ats.axes3D.zAxis.grid = 0
ats.axes3D.yAxis.label.font.bold = 0
ats.axes3D.yAxis.label.font.scale = 1
ats.axes3D.setBBoxLocation = 1
ats.axes3D.lineWidth = 6
ats.axes3D.bboxLocation = (n1l, n1u, n2l, n2u, n3l, n3u) 
SetAnnotationAttributes(ats)
```

```python
s = SaveWindowAttributes()
s.format = s.POSTSCRIPT
s.fileName = ofl 
s.outputDirectory = "./"
s.width, s.height = 768,512
s.screenCapture = 0
SetSaveWindowAttributes(s)
```

The different available formats are PNG, BMP, CURVE, JPEG, OBJ, PNG, POSTSCRIPT, POVRAY, PPM, RGB, STL, TIFF, ULTRA, VTK, PLY, and EXR.

# The plotting

Finally to plot the 
```python
OpenDatabase('infile.h5')
AddPlot("Contour", "database_name")
pc = ContourAttributes()
pc.contourMethod = pc.Value
pc.contourValue = (-0.01, 0.01)
pc.SetMultiColor(0, (255, 127,   0, 255) )
pc.SetMultiColor(1, (106,  61, 154, 255) )
SetPlotOptions(pc)
DrawPlots() 
SaveWindow()
CloseDatabase()
exit()
```



