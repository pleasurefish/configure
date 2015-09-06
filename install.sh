#!/bin/sh

installto ()
{
    DIRNAME=$1
    DEST=$2
    DESTPREFIX=$3
    if [ $# -ne 3 ]; then
        echo "args failed\n"
        return 0;
    fi

    FILELIST=`ls ${DIRNAME}`

    for file in ${FILELIST}
    do
        if [ -f ${DIRNAME}/${file} ]; then
            if [ -f ${DEST}/${DESTPREFIX}${file} ]; then
                echo "${DEST}/${DESTPREFIX}${file} already exits"
            else
               ln -s ${DIRNAME}/${file} ${DEST}/${DESTPREFIX}${file}
            fi
        else
            echo "${file} is not a file"
        fi
    done
}

lftp_alias ()
{
    if [ -f $HOME/.lftp/bookmarks ];then
        echo " $HOME/.lftp/bookmarks already exits"
    else
        ln -s other/lftp-bookmarks $HOME/.lftp/bookmarks
    fi

}

# install teh configure file 
PWD=`pwd`
installto ${PWD}/cfg ${HOME} .
