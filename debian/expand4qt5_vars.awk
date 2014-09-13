function readfile(file)
{
    while (getline < file) {
        process()
    }
}

function process()
{
    gsub(/#RECOMMENDED4QT5_BACKEND#/,recommended4qt5_backend);
    if (/^#INCLUDE [^#]+#$/) {
        readfile(substr($0,10,length($0)-9-1));
        return
    } else if (/^INCLUDE#: .+/) {
        readfile(substr($0,11,length($0)-10));
        return
    }
    print
}

{
    process()
}
