
soundBeep = new Audio("sounds/Complete1.m4a")
#sounds/beep1.wav"


FINALTABLE_TIMEREMAIN = new VideoLayer
	width: 1920
	height: 1080
	video: "images/FINALTABLE_TIMEREMAIN.mp4"

class TimerData
  DAY:0
  HOUR:0
  MINUTE:0
  SECOND:0
timeDistance=new TimerData
  
CLOCKEndVALUE= new Date
CLOCKNOWVALUE= new Date
CLOCKEndVALUE.setHours(CLOCKNOWVALUE.getHours()+1)
CLOCKEndVALUE.setMinutes(CLOCKNOWVALUE.getMinutes()+40)
CLOCKEndVALUE.setSeconds(CLOCKNOWVALUE.getSeconds()+3)

SettingDistance=()->
	CLOCKNOWVALUE= new Date

	distance = CLOCKEndVALUE - CLOCKNOWVALUE;
	days = Math.floor(distance / (1000 * 60 * 60 * 24));
	hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	seconds = Math.floor((distance % (1000 * 60)) / 1000);
# 	value=days + "d " + hours + "h "+ minutes + "m " + seconds + "s "
	timeDistance.DAY=days
	timeDistance.HOUR=hours
	
	timeDistance.MINUTE=minutes
	timeDistance.SECOND=seconds
	return timeDistance

isShow=false
Utils.interval 1,->
# 	CLOCKStartVALUE.set
	if isShow
		if TIMELINEFRAME.states.current.name=="Hide"
			soundBeep.volume = 0.3
		else
			soundBeep.volume=1
			
		soundBeep.play()
	SettingDistance()
	clockLabel.animate
		template:
			SECOND:timeDistance.SECOND
			Hour:timeDistance.HOUR
			MIN:timeDistance.MINUTE	 
Framer.Extras.Preloader.enable()
Framer.Extras.Hints.disable()
Utils.insertCSS """
	@font-face {
		font-family: "Avenir_font";
		src: url("fonts/Avenir_LT_95_Black.ttf");
	}
"""

Utils.insertCSS """
	@font-face {
		font-family: "Avenir_font_thin";
		src: url("fonts/Avenir_LT_65_Medium.ttf");
	}
"""
#Setting TIMELINEFRAME
TIMELINEFRAME.y=972
TIMELINEFRAME.x=0
TIMELINEFRAME.visible=true
TIMELINEFRAME.bringToFront()

TIMELINEFRAME.states.INIT=
	x:0
	opacity: 0
TIMELINEFRAME.states.SHOW=
	x:0
	opacity: 1
TIMELINEFRAME.states.END=
	x:-80
	opacity: 0.9
	animationOptions:
		time: 3.8
		curve:"linear"
TIMELINEFRAME.states.Hide=
	x:-100
	opacity: 0
	animationOptions:
		time: 1
		curve:"linear"		
TIMELINEFRAME.on Events.StateSwitchEnd, (from, to) ->
	if to =="SHOW"
		Utils.delay 0.2,->
			TIMELINEFRAME.animate("END")
	if to=="END"
		TIMELINEFRAME.animate("Hide")
	if to=="Hide"
		isShow=false	
TIMELINEFRAME.stateSwitch("INIT",false)		


layerMask=new Layer
	size: Screen.size
	image:"https://farm5.staticflickr.com/4808/39779421263_a77e22474b_o.jpg"

MyPlayBtnFrame.bringToFront()
MyPlayBtnFrame.parent=layerMask
MyPlayBtnFrame.y=900
MyPlayBtnFrame.centerX()
	
layerMask.on Events.Click,->
	layerMask.visible=false
	FINALTABLE_TIMEREMAIN.player.play()
	

FINALTABLE_TIMEREMAIN.player.loop=true
FINALTABLE_TIMEREMAIN.player.muted=false

#Setting timeremaing
timeremaing=new TextLayer
	font: "Avenir_font"
	text:"TIME REMAINING"
	fontSize:43
	x:200
	y:823
	color: "#DBDCD8"
	letterSpacing:22
timeremaing.states.INIT=
	x:200
	opacity: 0
timeremaing.states.SHOW=
	x:200
	opacity: 1
timeremaing.states.END=
	x:230
	opacity: 0.9
	animationOptions:
		time: 2.3
		curve:"linear"
timeremaing.states.Hide=
	x:235
	opacity: 0
	animationOptions:
		time: 0.7
		curve:"linear"		
timeremaing.on Events.StateSwitchEnd, (from, to) ->
	if to =="SHOW"
		Utils.delay 0.2,->
			timeremaing.animate("END")
	if to=="END"
		timeremaing.animate("Hide")
	
timeremaing.stateSwitch("INIT",false)		
# SETTING CLOCK
clockLabel=new TextLayer
	font: "Avenir_font_thin"
	text:"{Hour}:{MIN}:{SECOND}"
	fontSize:89
	x:410
	y:876
	color: "white"
	shadowY:2
	shadowY:4
	shadowBlur:13
	shadowColor: "rgba(255,255,255,0.9)"
	letterSpacing:22
clockLabel.templateFormatter = 
	SECOND:(value)->
		Utils.round(value,0)
	Hour:(value)->
		Utils.round(value,0)
	MIN:(value)->
		Utils.round(value,0)		
clockLabel.states.INIT=
	x:410
	opacity: 0
clockLabel.states.SHOW=
	x:410
	opacity: 1
clockLabel.states.END=
	x:473
	opacity: 0.9
	animationOptions:
		time: 3.8
		curve:"linear"
clockLabel.states.Hide=
	x:489
	opacity: 0
	animationOptions:
		time: 1
		curve:"linear"	
clockLabel.stateSwitch("INIT",false)
clockLabel.on Events.StateSwitchEnd, (from, to) ->
	if to =="SHOW"
		Utils.delay 0.2,->
			clockLabel.animate("END")
	if to=="END"
		clockLabel.animate("Hide")

Events.wrap(window).addEventListener "keydown", (event) ->

	if event.keyCode is 67  #c clock
		clockLabel.stateSwitch("SHOW")
		timeremaing.stateSwitch("SHOW")
		TIMELINEFRAME.stateSwitch("SHOW")
		isShow=true
	if event.keyCode is 82 #R reset
		CLOCKEndVALUE= new Date
		CLOCKNOWVALUE= new Date
		CLOCKEndVALUE.setHours(CLOCKNOWVALUE.getHours()+1)
		CLOCKEndVALUE.setMinutes(CLOCKNOWVALUE.getMinutes()+40)
		CLOCKEndVALUE.setSeconds(CLOCKNOWVALUE.getSeconds()+2)
