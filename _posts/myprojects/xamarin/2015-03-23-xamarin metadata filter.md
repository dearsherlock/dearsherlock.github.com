

### Xamarin的metadata語法

#### 把function name和屬性更名
ex:

Rename FillOutsideLine.GetType() and FillOutsideLine.Type to GetBehaviorType() and FillOutsideLineBehaviorType in Metadata.xml to remove ambiguity:

<attr path="/api/package[@name='org.achartengine.renderer']/class[@name='XYSeriesRenderer.FillOutsideLine']/method[@name='getType' and count(parameter)=0]" name="managedName">GetBehaviorType</attr>


<attr path="/api/package[@name='org.achartengine.renderer']/class[@name='XYSeriesRenderer.FillOutsideLine.Type']" name="managedName">FillOutsideLineBehaviorType</attr>