package com.nelzin.alexander
{
import com.codeazur.as3swf.SWF;

import flash.events.Event;
import flash.net.URLLoader;
import flash.net.URLLoaderDataFormat;
import flash.net.URLRequest;
import flash.utils.ByteArray;

import mx.core.Application;

import spark.components.TextArea;

public class PublisherTest
    {

        private var local_text:TextArea;

        public function PublisherTest()
        {
            
        }

        public function Test(text:TextArea):void {
            var request:URLRequest = new URLRequest("understanding-the-puremvc.swf");
            var loader:URLLoader = new URLLoader();
            loader.dataFormat = URLLoaderDataFormat.BINARY;
            loader.addEventListener(Event.COMPLETE, completeHandler);
            loader.load(request);
            local_text = text;
            local_text.text = "s222222";
        }
        private function completeHandler(e:Event):void {
            var swf:SWF = new SWF(URLLoader(e.target).data as ByteArray);
            trace(swf);
//            local_text.text = "safsdfsdf";
            local_text.text = URLLoader(e.target).data.toString();


//            text.text = URLLoader(e.target).data.toString();
        }


    }
}



