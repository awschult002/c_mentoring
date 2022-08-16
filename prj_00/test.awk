BEGIN { color_green = "\033[92m";
        color_clear = "\033[0m";
        color_red = "\033[91m";}
{print$0; i++}

END {

    if(i == arg1){
        print color_green "SUCCESS" color_clear;
    }
    else {
        print color_red "FAILURE" color_clear;
    }
}
