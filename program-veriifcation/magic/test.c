int vulnerable(char* arg) {

    if(arg[0] == 'm') {
        if(arg[1] == 'a') {
            if(arg[2] == 'g') {
                if(arg[3] == 'i') {
                    if(arg[4] == 'c') {
                        return 0;
                    } else {
                        return 1;
                    }
                }
            }
        }
    }
    return -1;
}

int main(){
vulnerable("magic");
}
