#= require_tree .
(($) ->
    #If Scroll position is x less than end.
    #Find difference
    #set bottom position to the difference
    $(window).scroll ->
        scrollPos = $(window).scrollTop() + $(window).innerHeight()
        if scrollPos < ($(document).height() - (5*16))
            $(".MetaFooter-social").css("position","fixed")
            $(".MetaFooter-social").css("bottom",48)
            $("#MetaFooter-meta").addClass('col-9-12-s2')
            $('#MetaFooter-meta').removeClass('col-9-12')
        else
            $(".MetaFooter-social").css("position","relative")
            $(".MetaFooter-social").css("bottom",0)
            $("#MetaFooter-meta").removeClass('col-9-12-s2')
            $('#MetaFooter-meta').addClass('col-9-12')

    controller = new ScrollMagic.Controller();

) jQuery

$ ->
    # init controller
    controller = new (ScrollMagic.Controller)
    # build scene
    tween = (new TimelineMax)
        .add("start",0)
        .to('#animate', 0.5,{
            opacity: 1.0,
            ease:Power4.easeOut},"start")
        .to('.showContrast', 0.5,{
            color: "white",
            ease:Power4.easeOut},"start")
        .to('#animate', 0.5,{
            css: {"box-shadow":"0 4px 4px rgba(0, 0, 0, .1),0 8px 8px rgba(0, 0, 0, .1),0 16px 16px rgba(0, 0, 0, .1),0 32px 32px rgba(0, 0, 0, .15),0 64px 64px rgba(0, 0, 0, .15)","background":"#2F343B"},
            ease:Power4.easeInOut},1)
        .to('#slideIn', 0.5, {
            width: (($(window).width()-64)*1/3)+32
            ease:Power4.easeInOut},"start")

    tween2 = (new TimelineMax)
        .to('.showContrast', 0.5,{
            color: "white",
            ease:Power4.easeOut})
        .to('#animate', 0.5,{
            css: {"box-shadow":"0 4px 4px rgba(0, 0, 0, .1),0 8px 8px rgba(0, 0, 0, .1),0 16px 16px rgba(0, 0, 0, .1),0 32px 32px rgba(0, 0, 0, .15),0 64px 64px rgba(0, 0, 0, .15)","background":"#EBF1F7"},
            ease:Power4.easeInOut})
        .to('#slideIn', 0.5, {
            css: {"background-color": "#AFB8CB"},
            ease:Power4.easeInOut})

    tween3 = (new TimelineMax)
        .to('.showContrast', 0.5,{
            color: "white",
            ease:Power4.easeOut})
        .to('#animate', 0.5,{
            css: {
                "box-shadow":"0 4px 4px rgba(0, 0, 0, .1),0 8px 8px rgba(0, 0, 0, .1),0 16px 16px rgba(0, 0, 0, .1),0 32px 32px rgba(0, 0, 0, .15),0 64px 64px rgba(0, 0, 0, .15)","background-color":"#EBF1F7"
                "background": "#f9553c"
                "background": "-moz-linear-gradient(top, #f9553c 0%, #df144e 100%)"
                "background": "-webkit-linear-gradient(top, #f9553c 0%,#df144e 100%)"
                "background":"linear-gradient(to bottom, #f9553c 0%,#df144e 100%)"},
            ease:Power4.easeInOut})
        .to('#slideIn', 0.5, {
            css: {
                "background": "#4C3E53"},
            ease:Power4.easeInOut})

    scene = new (ScrollMagic.Scene)(
        triggerElement: '#trigger1')
        .setTween(tween)
        .addIndicators()
        .addTo(controller)

    scene2 = new (ScrollMagic.Scene)(
        triggerElement: '#trigger2')
        .setTween(tween2)
        .addIndicators()
        .addTo(controller)

    scene3 = new (ScrollMagic.Scene)(
        triggerElement: '#trigger3')
        .setTween(tween3)
        .addIndicators()
        .addTo(controller)

