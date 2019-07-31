package ;



import openfl.display.Sprite;

import openfl.events.Event;

import openfl.Lib;



class Main extends Sprite

{

    var inited:Bool;



    /* ENTRY POINT */



    function resize(e)

    {
        trace('stage resized');
        if (!inited) init();

        // else (resize or orientation change)

    }



    function init()

    {

        if (inited) return;

        inited = true;



        // code

    }



    /* SETUP */



    public function new()

    {

        super();

        addEventListener(Event.ADDED_TO_STAGE, added);

    }



    function added(e)

    {

        removeEventListener(Event.ADDED_TO_STAGE, added);

        stage.addEventListener(Event.RESIZE, resize);

        #if ios

		haxe.Timer.delay(init, 100); // iOS 6

		#else

        init();

        #end

    }



    public static function main()

    {

        // static entry point

        Lib.current.stage.align = cast openfl.display.StageAlign.TOP_LEFT;

        Lib.current.stage.scaleMode = cast openfl.display.StageScaleMode.NO_SCALE;

        Lib.current.addChild(new Main());

        //

    }

}

