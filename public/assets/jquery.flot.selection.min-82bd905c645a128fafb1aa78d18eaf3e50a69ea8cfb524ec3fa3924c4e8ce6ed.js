!function(e){function t(t){function n(e){h.active&&(a(e),t.getPlaceholder().trigger("plotselecting",[s()]))}function o(t){1==t.which&&(document.body.focus(),document.onselectstart!==undefined&&null==m.onselectstart&&(m.onselectstart=document.onselectstart,document.onselectstart=function(){return!1}),document.ondrag!==undefined&&null==m.ondrag&&(m.ondrag=document.ondrag,document.ondrag=function(){return!1}),l(h.first,t),h.active=!0,x=function(e){i(e)},e(document).one("mouseup",x))}function i(e){return x=null,document.onselectstart!==undefined&&(document.onselectstart=m.onselectstart),document.ondrag!==undefined&&(document.ondrag=m.ondrag),h.active=!1,a(e),g()?r():(t.getPlaceholder().trigger("plotunselected",[]),t.getPlaceholder().trigger("plotselecting",[null])),!1}function s(){if(!g())return null;if(!h.show)return null;var n={},o=h.first,i=h.second;return e.each(t.getAxes(),function(e,t){if(t.used){var s=t.c2p(o[t.direction]),r=t.c2p(i[t.direction]);n[e]={from:Math.min(s,r),to:Math.max(s,r)}}}),n}function r(){var e=s();t.getPlaceholder().trigger("plotselected",[e]),e.xaxis&&e.yaxis&&t.getPlaceholder().trigger("selected",[{x1:e.xaxis.from,y1:e.yaxis.from,x2:e.xaxis.to,y2:e.yaxis.to}])}function c(e,t,n){return t<e?e:t>n?n:t}function l(e,n){var o=t.getOptions(),i=t.getPlaceholder().offset(),s=t.getPlotOffset();e.x=c(0,n.pageX-i.left-s.left,t.width()),e.y=c(0,n.pageY-i.top-s.top,t.height()),"y"==o.selection.mode&&(e.x=e==h.first?0:t.width()),"x"==o.selection.mode&&(e.y=e==h.first?0:t.height())}function a(e){null!=e.pageX&&(l(h.second,e),g()?(h.show=!0,t.triggerRedrawOverlay()):u(!0))}function u(e){h.show&&(h.show=!1,t.triggerRedrawOverlay(),e||t.getPlaceholder().trigger("plotunselected",[]))}function d(e,n){var o,i,s,r,c=t.getAxes();for(var l in c)if((o=c[l]).direction==n&&(e[r=n+o.n+"axis"]||1!=o.n||(r=n+"axis"),e[r])){i=e[r].from,s=e[r].to;break}if(e[r]||(o="x"==n?t.getXAxes()[0]:t.getYAxes()[0],i=e[n+"1"],s=e[n+"2"]),null!=i&&null!=s&&i>s){var a=i;i=s,s=a}return{from:i,to:s,axis:o}}function f(e,n){var o,i=t.getOptions();"y"==i.selection.mode?(h.first.x=0,h.second.x=t.width()):(o=d(e,"x"),h.first.x=o.axis.p2c(o.from),h.second.x=o.axis.p2c(o.to)),"x"==i.selection.mode?(h.first.y=0,h.second.y=t.height()):(o=d(e,"y"),h.first.y=o.axis.p2c(o.from),h.second.y=o.axis.p2c(o.to)),h.show=!0,t.triggerRedrawOverlay(),!n&&g()&&r()}function g(){var e=t.getOptions().selection.minSize;return Math.abs(h.second.x-h.first.x)>=e&&Math.abs(h.second.y-h.first.y)>=e}var h={first:{x:-1,y:-1},second:{x:-1,y:-1},show:!1,active:!1},m={},x=null;t.clearSelection=u,t.setSelection=f,t.getSelection=s,t.hooks.bindEvents.push(function(e,t){null!=e.getOptions().selection.mode&&(t.mousemove(n),t.mousedown(o))}),t.hooks.drawOverlay.push(function(t,n){if(h.show&&g()){var o=t.getPlotOffset(),i=t.getOptions();n.save(),n.translate(o.left,o.top);var s=e.color.parse(i.selection.color);n.strokeStyle=s.scale("a",.8).toString(),n.lineWidth=1,n.lineJoin=i.selection.shape,n.fillStyle=s.scale("a",.4).toString();var r=Math.min(h.first.x,h.second.x)+.5,c=Math.min(h.first.y,h.second.y)+.5,l=Math.abs(h.second.x-h.first.x)-1,a=Math.abs(h.second.y-h.first.y)-1;n.fillRect(r,c,l,a),n.strokeRect(r,c,l,a),n.restore()}}),t.hooks.shutdown.push(function(t,i){i.unbind("mousemove",n),i.unbind("mousedown",o),x&&e(document).unbind("mouseup",x)})}e.plot.plugins.push({init:t,options:{selection:{mode:null,color:"#e8cfac",shape:"round",minSize:5}},name:"selection",version:"1.1"})}(jQuery);