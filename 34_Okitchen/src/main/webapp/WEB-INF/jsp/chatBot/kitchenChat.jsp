<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
//챗봇
if ("${loginUser.userId}" != "") {
    var ht = null;
    var userId = "${loginUser.userId}";
    (function(id, scriptSrc, callback) {
        var d = document,
            tagName = 'script',
            $script = d.createElement(tagName),
            $element = d.getElementsByTagName(tagName)[0];

        $script.id = id;
        $script.async = true;
        $script.src = scriptSrc;

        if (callback) { $script.addEventListener('load', function (e) { callback(null, e); }, false); }
        $element.parentNode.insertBefore($script, $element);
    })('happytalkSDK', 'https://chat-static.happytalkio.com/sdk/happytalk.chat.v2.min.js', function() {
        ht = new Happytalk({
            siteId: '1000228017',
            siteName: '오키친',
            categoryId: '172847',
            divisionId: '172848',
            partnerId: '2',
            shopId: '1',
            params:'site_uid=' + userId
        });
    });
}
</script>
</body>
</html>