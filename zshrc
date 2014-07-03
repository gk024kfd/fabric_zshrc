function _fab {
    command_list=(`fab -l | grep -v '^Available commands:' | grep -v "^$" | sed "s/ //g"`)
    compadd ${command_list}
    return 1;
}

compdef _fab fab
