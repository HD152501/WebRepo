function greeting(nation) {
    var result = document.getElementById("result");
    if (nation=='k') {
        result.innerHTML = "안녕하세요";
    } else if (nation == 'a') {
        result.innerHTML = "Hello";
    } else if (nation == 'c') {
        result.innerHTML = "니 하오";
    }
}