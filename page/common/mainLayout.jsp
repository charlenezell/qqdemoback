<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%-- <meta name="theme-color" content="#FFDE00"> --%>
    <meta name="theme-color" content="#3BBDE8">
    <title>${mainLayout__title}</title>
    <script type="text/javascript">
        ;
        (function () {
            var htmlEle = document.querySelector("html");

            function cal() {
                var w = document.documentElement.getBoundingClientRect().width;
                var fontSize = w / 30; //30rem作为最大宽度
                htmlEle.style.fontSize = fontSize + 'px';
            }
            if (document.readyState === "complete") {
                cal();
            } else {
                document.addEventListener("DOMContentLoaded", function () {
                    cal();
                });
            }
            window.addEventListener("resize", function () {
                cal()
            });
        })();
    </script>
    <meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1.0, maximum-scale=1.0,user-scalable=no">
    ${mainLayout__topStyle}
</head>
<body ontouchstart="">
    ${mainLayout__content}
</body>
</html>