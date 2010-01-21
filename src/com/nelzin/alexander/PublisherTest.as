package com.nelzin.alexander
{
import com.codeazur.as3swf.SWF;

import flash.events.Event;
import flash.net.URLLoader;
import flash.net.URLLoaderDataFormat;
import flash.net.URLRequest;
import flash.utils.ByteArray;

import mx.core.Application;

public class PublisherTest
    {
        public function PublisherTest()
        {
            
        }

        public function Test():void {
            var request:URLRequest = new URLRequest("understanding-the-puremvc.swf");
            var loader:URLLoader = new URLLoader();
            loader.dataFormat = URLLoaderDataFormat.BINARY;
            loader.addEventListener(Event.COMPLETE, completeHandler);
            loader.load(request);
        }
        private function completeHandler(e:Event):void {
            var swf:SWF = new SWF(URLLoader(e.target).data as ByteArray);
            trace(swf);
            Application.setText(URLLoader(e.target).data.toString());


//            text.text = URLLoader(e.target).data.toString();
        }


    }
}



