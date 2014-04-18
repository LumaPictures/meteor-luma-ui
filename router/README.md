

# Layouts

Each of these layouts is an [Iron Router Layout](https://github.com/EventedMind/iron-router#using-a-layout-with-yields).

A layout may contain several `yields` which are meant to be placeholders for dynamic content specified by the layout or page controller.

A layout is composed of :
* [layout template](page/page.layout.html)
* [layout controller](page/page.controller.coffee)
* [layout view](page/page.layout.coffee)

## Layout Template

The layout template is responsible for basic markup, specifying yields, and extremely basic template logic.

The layout template should strive to remain as basic as possible in order for it to remain useful to a wide variety of pages.

## Layout Controller

The layout controller is the brains of the application and is responsible for generating the data contexts for each layout yield.

## Layout View

The layout view is just a coffeescript file that handles event binding and any helpers that the layout may require