var list = ["index", "newvaline", "benben", "luogu", "test"];

//获取 url 参数
function getQueryVariable(variable) {
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split("=");
        if (pair[0] == variable) { return pair[1]; }
    }
    return (false);
}
//导入 CSS
function importcss(path) {
    if (!path || path.length === 0) {
        throw new Error('函数importcss: 参数"path"错误');
    }
    var head = document.getElementsByTagName('head')[0];
    var link = document.createElement('link');
    link.href = path;
    link.rel = 'stylesheet';
    link.type = 'text/css';
    head.appendChild(link);
}
//主函数
function main() {
    var csspath = "./css/",
        theme = getQueryVariable("theme");
    if (theme) {
        for (var i = 0; i <= list.length; i++) {
            if (i === list.length) { csspath += "index.css"; }
            if (theme === list[i]) { csspath += theme + ".css"; break; }
        }
    }
    else { csspath += "index.css"; }
    importcss(csspath);
}
main();