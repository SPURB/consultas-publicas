!function(t,e){"use strict";t=t||"docReady";var n=[],o=!1,d=!1;function a(){if(!o){o=!0;for(var t=0;t<n.length;t++)n[t].fn.call(window,n[t].ctx);n=[]}}function c(){"complete"===document.readyState&&a()}(e=e||window)[t]=function(t,e){if("function"!=typeof t)throw new TypeError("callback for docReady(fn) must be a function");o?setTimeout(function(){t(e)},1):(n.push({fn:t,ctx:e}),"complete"===document.readyState||!document.attachEvent&&"interactive"===document.readyState?setTimeout(a,1):d||(document.addEventListener?(document.addEventListener("DOMContentLoaded",a,!1),window.addEventListener("load",a,!1)):(document.attachEvent("onreadystatechange",c),window.attachEvent("onload",a)),d=!0))}}("docReady",window);

// docReady =~> $(document).ready{}
docReady(function() {
    var el = document.querySelector('.materialboxed');
    var instance = M.Materialbox.init(el);
    document.getElementById("preloader").style.display = "none";
});

