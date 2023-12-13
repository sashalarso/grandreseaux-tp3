gawk '
BEGIN {
    block = 0;
    access_group_set = 0;
    interface="";
}
{
    if ($1 == "interface")
    {
        block = NR;
        interface = $2;
        next;
        
    }

    if (block != 0 && $2 == "access-group")
    {
        access_group_set = 1;
        next;
    }

    if (block != 0 && $1 == "!" && access_group_set == 0)
    {
        print " ip access-group unset for " FILENAME
        
        block = 0;
        access_group_set = 0;
        next;
    }
    else if (block != 0 && $1 == "!" && access_group_set == 1)
    {
        block = 0;
        access_group_set = 0;
        next;
    }
} 
END {
    
}
' $*