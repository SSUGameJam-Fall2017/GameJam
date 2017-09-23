/// @param string
/// @param delimiter

var msg = argument[0];
var splitBy = argument[1];

var slot = 0;
var splits;
var str2 = "";

var i;
for (i = 1; i < (string_length(msg)+1); i++) {
    var currStr = string_copy(msg, i, 1);
    if (currStr == splitBy) {
        splits[slot] = str2;
        slot++;
        str2 = "";
    } else {
        str2 = str2 + currStr;
        splits[slot] = str2;
    }
}